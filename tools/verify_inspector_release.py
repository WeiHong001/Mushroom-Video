"""Verify the resolved Release graph, merged manifest, and actual APK, not just hidden UI."""
import argparse
import json
from pathlib import Path
from zipfile import ZipFile
from verify_apk import classes

ROOT = Path(__file__).resolve().parents[1]


def verify(apk_path, dependencies, output):
    graph = dependencies.read_text(encoding="utf-8-sig", errors="replace").lower()
    assert "releaseruntimeclasspath" in graph and "build successful" in graph, "Dependency resolution did not succeed"
    for forbidden in ("chucker", "network-inspector", "androidx.compose"):
        assert forbidden not in graph, f"Release runtime dependency leaked: {forbidden}"
    manifests = list((ROOT / "app/build/intermediates/merged_manifests/release").rglob("AndroidManifest.xml"))
    assert manifests, "Build Release first"
    for manifest in manifests:
        text = manifest.read_text(encoding="utf-8")
        assert "chucker" not in text.lower() and "com.mogu.inspector" not in text
    with ZipFile(apk_path) as apk:
        names = []
        for name in apk.namelist():
            if name.startswith("classes") and name.endswith(".dex"):
                data = apk.read(name)
                names += classes(data)
                for hook in (b"ChuckerOutputGuard", b"ChuckerInteractions", b"InspectorOverlay", b"NetworkLogStore"):
                    assert hook not in data, f"Debug hook in DEX: {hook!r}"
        assert not any(name.startswith(("com.chuckerteam.", "com.mogu.inspector.")) for name in names)
        assert "com.mogu.research.DiagnosticsRuntime" in names, "Release Java no-op facade is missing"
        resources = apk.read("resources.arsc")
        for marker in ("inspector_", "chucker_"):
            assert marker.encode() not in resources and marker.encode("utf-16le") not in resources, marker
        assert not any("chucker" in name.lower() or "inspector" in name.lower() for name in apk.namelist())
    result = dict(apk=str(apk_path.relative_to(ROOT)), runtime_graph_clean=True,
                  merged_manifest_clean=True, dex_clean=True, resources_clean=True,
                  release_facade_present=True, classes_checked=len(names))
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--apk", type=Path, default=ROOT / "app/build/outputs/apk/release/app-release.apk")
    parser.add_argument("--dependencies", type=Path, required=True)
    parser.add_argument("--output", type=Path, default=ROOT / ".local/diagnostics/release-verification.json")
    args = parser.parse_args()
    verify(args.apk.resolve(), args.dependencies, args.output)
