"""Read-only P0 inventory of tracked implementation; no build or device actions.

Run from any directory: python dev/migration/p0_inventory.py
Counts are files/classes, never completion percentages or effort estimates.
The dependency graph is lexical DEX type/member evidence, not dynamic dispatch.
"""
import csv
import hashlib
import json
from collections import Counter, defaultdict
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent
BASELINE = "2b882ad1ca2cae2fb81812b0973ef32a67d89fb3"
TYPE = re.compile(r"L([A-Za-z0-9_$/-]+);")
MEMBER = re.compile(r"L([A-Za-z0-9_$/-]+);->([^\s,}]+)")
INTEGRATIONS = (
    "com.chad.library", "com.luck.picture", "com.yalantis.ucrop",
    "com.scwang.smartrefresh", "com.github.like", "com.github.lzyzsd",
    "com.qiniu.android", "com.youth.banner", "com.azhon.appupdate",
    "com.zhangke.websocket", "com.uuzuche.lib_zxing", "com.yanbo.lib_screen",
    "me.yokeyword", "net.lucode", "site.gemus", "top.zibin",
    "com.github.promeg", "org.ahocorasick", "org.fourthline", "org.seamless",
)
CANDIDATES = (
    "com.kotlin.basiclib.utils.ClickUtils",
    "com.kotlin.basiclib.utils.DateUtil",
    "com.kotlin.basiclib.utils.UrlUtils",
    "com.mogu.tv.utils.CommentFilter",
    "com.mogu.tv.utils.PlayDataSaveUtils",
)


def group(name):
    if name in ("com.mogu.tv.BuildConfig", "com.kotlin.basiclib.BuildConfig") or name.rsplit(".", 1)[-1] in ("GlideApp", "GlideOptions", "GlideRequest", "GlideRequests", "GeneratedAppGlideModuleImpl", "GeneratedRequestManagerFactory"):
        return "G01-generated"
    if name.startswith("com.alibaba.android.arouter.routes."):
        return "G01-generated"
    if ".databinding." in name or name.endswith((".BR", ".DataBinderMapperImpl")):
        return "G01-generated"
    if name.startswith("com.kotlin.basiclib."):
        if ".utils." in name:
            return "F02-basic-utils"
        if ".api." in name or ".http." in name:
            return "F03-network"
        return "F01-basic-framework"
    if name.startswith("com.mogu.tv."):
        part = name.removeprefix("com.mogu.tv.")
        if part.startswith(("api.", "net.")):
            return "F03-network"
        if part.startswith(("model.", "bean.")):
            return "F04-models"
        if part.startswith("adapter."):
            return "F05-adapters"
        if part.startswith("utils.exo.") or part.startswith("view.") and "Video" in part:
            return "F06-media"
        if part.startswith("utils."):
            return "F07-app-utils"
        if part.startswith("view."):
            return "F08-widgets"
        if part.startswith(("ui.", "MainActivity", "main.")):
            outer = part.split("$")[0]
            if re.search(r"Shequ|SheQu|SqNotice|TouGao|Imglook|CommentNews", outer):
                return "F11-community"
            if re.search(r"Mine|User|Login|Regist|PassWord|Collect|History|Focus|Invite|Lock|Setting|Pravite|Contract|Contact|Advice|Shangwu|Message|QiuPian", outer):
                return "F12-account-state"
            if re.search(r"Detail|Short|Video", outer):
                return "F10-detail-short"
            return "F09-entry-browse"
        return "F13-other-business"
    if name.startswith(("com.qushare.news.", "com.wgq.wangeqiu.")):
        return "F13-other-business"
    return "X-" + next((p for p in INTEGRATIONS if name.startswith(p + ".")), name.rsplit(".", 1)[0])


def role(name, scope):
    if scope == "recovered-libraries":
        return "third-party-integration"
    simple = name.rsplit(".", 1)[-1]
    if ".databinding." in name or simple in ("BR", "DataBinderMapperImpl"):
        return "binding-generated"
    if name.startswith("com.alibaba.android.arouter.routes."):
        return "router-generated"
    if simple in ("GlideApp", "GlideOptions", "GlideRequest", "GlideRequests", "GeneratedAppGlideModuleImpl", "GeneratedRequestManagerFactory"):
        return "glide-generated"
    if simple == "BuildConfig" or simple == "R" or simple.startswith("R$"):
        return "resource-build-generated"
    return "business-implementation"


def write_json(name, value):
    (OUT / name).write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")


def write_csv(name, rows):
    with (OUT / name).open("w", encoding="utf-8", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]), lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def main():
    # Refuse to label a changed implementation as the frozen P0 baseline.
    subprocess.run(["git", "diff", "--exit-code", BASELINE, "--", "app/src", "core/network-inspector/src"],
                   cwd=ROOT, check=True, capture_output=True)
    tracked = subprocess.check_output(["git", "ls-files", "-z"], cwd=ROOT).decode().split("\0")
    tracked = sorted(p for p in tracked if p)
    records, texts, by_name = [], {}, {}
    for rel in tracked:
        if not rel.endswith(".smali") or not rel.startswith(("app/src/main/smali/", "app/src/main/recovered-libraries/")):
            continue
        path = ROOT / rel
        text = path.read_text(encoding="utf-8")
        declaration = re.search(r"^\.class (.+) L([^;]+);$", text, re.M)
        # Package-private declarations can have no access flags.
        if declaration is None:
            declaration = re.search(r"^\.class(.*?) L([^;]+);$", text, re.M)
        assert declaration, rel
        flags, descriptor = declaration.groups()
        name = descriptor.replace("/", ".")
        assert name not in by_name, name
        parent = re.search(r"^\.super L([^;]+);", text, re.M)
        parent = parent.group(1).replace("/", ".") if parent else ""
        source = re.search(r'^\.source "([^"]*)"', text, re.M)
        source = source.group(1) if source else ""
        scope = rel.split("/")[3]
        simple = name.rsplit(".", 1)[-1]
        evidence = []
        if "synthetic" in flags.split():
            evidence.append("synthetic-flag")
        if parent.startswith(("kotlin.jvm.internal.Lambda", "kotlin.coroutines.jvm.internal.", "kotlin.jvm.internal.FunctionReference")):
            evidence.append("kotlin-lambda-continuation-reference")
        if "$$ExternalSynthetic" in simple or "D8$$Synthetic" in source:
            evidence.append("d8-synthetic")
        if simple.endswith(("$Companion", "$DefaultImpls", "$WhenMappings")):
            evidence.append("kotlin-helper-name")
        if simple.endswith("Kt") and source.endswith(".kt"):
            evidence.append("kotlin-file-facade")
        shape = "compiler-generated" if evidence else (
            "anonymous-inner" if re.search(r"\$\d+(?:\$|$)", simple) else
            "named-inner" if "$" in simple else "top-level")
        record = dict(path=rel, class_name=name, scope=scope, role=role(name, scope),
                      shape=shape, compiler_evidence=";".join(evidence), source=source,
                      group=group(name), superclass=parent,
                      interfaces=";".join(v.replace("/", ".") for v in re.findall(r"^\.implements L([^;]+);", text, re.M)),
                      fields=len(re.findall(r"^\.field ", text, re.M)),
                      methods=len(re.findall(r"^\.method ", text, re.M)),
                      sha256=hashlib.sha256(path.read_bytes()).hexdigest())
        records.append(record)
        by_name[name] = record
        texts[name] = text
    write_csv("P0-smali-inventory.csv", records)

    source_rows = []
    for rel in tracked:
        if not rel.endswith((".java", ".kt")) or not rel.startswith(("app/src/", "core/network-inspector/src/")):
            continue
        text = (ROOT / rel).read_text(encoding="utf-8")
        module = "app" if rel.startswith("app/") else "core/network-inspector"
        source_set = rel.split("/src/", 1)[1].split("/", 1)[0]
        package = re.search(r"^package\s+([\w.]+)", text, re.M)
        name = (package.group(1) + "." if package else "") + Path(rel).stem
        if module != "app":
            category = "diagnostics-test" if "test" in source_set.lower() else "diagnostics-implementation"
        elif "test" in source_set.lower():
            category = "test"
        elif name.startswith("com.mogu.research."):
            category = "research-support"
        elif name.endswith(".R"):
            category = "resource-compatibility"
        elif name.endswith(("BindingLifecycleObserver", "ExoListenerMediaPlayer")):
            category = "compatibility-bridge"
        else:
            category = "business-implementation"
        source_rows.append(dict(path=rel, module=module, source_set=source_set,
                                language="Java" if rel.endswith(".java") else "Kotlin",
                                file_class_hint=name, role=category,
                                sha256=hashlib.sha256((ROOT / rel).read_bytes()).hexdigest()))
    write_csv("P0-source-inventory.csv", source_rows)

    edges = Counter()
    incoming = defaultdict(list)
    member_incoming = defaultdict(list)
    risk_rows = []
    for name, text in texts.items():
        refs = sorted({v.replace("/", ".") for v in TYPE.findall(text)} - {name})
        for target in refs:
            incoming[target].append(name)
            if target in by_name:
                edges[(by_name[name]["group"], by_name[target]["group"])] += 1
        for target, signature in sorted(set(MEMBER.findall(text))):
            member_incoming[target.replace("/", ".")].append(dict(caller=name, member=signature))
        if by_name[name]["scope"] == "smali":
            markers = {
                "reflection": r"Ljava/lang/Class;->(forName|getDeclared|getMethod|getField)|Ljava/lang/reflect/",
                "serialization": r"L(com/google/gson|com/alibaba/fastjson|java/io/Serializable|android/os/Parcelable)|SerializedName|CREATOR:",
                "local_data": r"L(android/content/SharedPreferences|android/database|com/tencent/mmkv)|Lcom/kotlin/basiclib/utils/(SpUtil|ACache)|Lcom/mogu/tv/utils/PlayDataSaveUtils",
                "resource": r"L[^;]*/R\$|0x7f[0-9a-f]{6}",
            }
            risk_rows.append(dict(class_name=name, group=group(name),
                                  **{key:bool(re.search(pattern, text)) for key, pattern in markers.items()}))
    write_csv("P0-static-signals.csv", risk_rows)

    scope_summary = {}
    for scope in ("smali", "recovered-libraries"):
        subset = [r for r in records if r["scope"] == scope]
        scope_summary[scope] = dict(files=len(subset), roles=dict(sorted(Counter(r["role"] for r in subset).items())),
                                    shapes=dict(sorted(Counter(r["shape"] for r in subset).items())))
    source_summary = Counter((r["module"], r["source_set"], r["language"]) for r in source_rows)
    summary = dict(baseline_commit=BASELINE, status="static-confirmed",
                   limitations="Lexical type references include annotations; edges count unique source-class/target-class pairs per group, not invocation frequency or dynamic reachability. Source inventory counts files, not generated runtime classes. Compiler categories are evidence-based, not inferred from every dollar sign.",
                   smali=scope_summary,
                   groups=dict(sorted(Counter(r["group"] for r in records).items())),
                   source_sets=[dict(module=k[0], source_set=k[1], language=k[2], files=v) for k,v in sorted(source_summary.items())],
                   app_main_java_roles=dict(sorted(Counter(r["role"] for r in source_rows if r["module"] == "app" and r["source_set"] == "main" and r["language"] == "Java").items())),
                   group_edges=[dict(source=k[0], target=k[1], class_pairs=v) for k,v in sorted(edges.items())])
    write_json("P0-inventory-summary.json", summary)

    contracts = {}
    for candidate in CANDIDATES:
        names = sorted(n for n in texts if n == candidate or n.startswith(candidate + "$"))
        contracts[candidate] = []
        for name in names:
            text = texts[name]
            external = []
            simple = name.rsplit(".", 1)[-1]
            for rel in tracked:
                if not rel.startswith(("app/src/", "core/network-inspector/src/")) or not rel.endswith((".java", ".kt", ".xml")):
                    continue
                body = (ROOT / rel).read_text(encoding="utf-8")
                hits = [i for i, line in enumerate(body.splitlines(), 1) if name in line or simple in line]
                if hits:
                    external.append(dict(path=rel, lines=hits))
            contracts[candidate].append(dict(class_name=name, path=by_name[name]["path"],
                superclass=by_name[name]["superclass"],
                fields=re.findall(r"^\.field (.*)$", text, re.M),
                methods=re.findall(r"^\.method (.*)$", text, re.M),
                referenced_types=sorted({v.replace("/", ".") for v in TYPE.findall(text)} - {name}),
                type_referenced_by=sorted(incoming[name]),
                member_references=sorted(member_incoming[name], key=lambda r:(r["caller"],r["member"])),
                source_resource_name_hits=external))
    write_json("P0-candidate-contracts.json", dict(baseline_commit=BASELINE, status="static-confirmed", candidates=contracts))
    print(json.dumps({"smali":scope_summary, "source_sets":summary["source_sets"], "app_main_java_roles":summary["app_main_java_roles"], "candidate_sizes":{k:len(v) for k,v in contracts.items()}}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
