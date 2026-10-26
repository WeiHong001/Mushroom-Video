# P0：迁移基线确认

**当前补充结论（2026-10-26）：P0 必需设备缺口已关闭。新建专用 API 34 模拟器后，完整原实现离线回归 43 次调用 / 47 个用例及 CommentFilter 原实现 6 个用例通过，详见 [设备补充基线](P0-device-baseline.md)、[验证摘要](P0-device-validation.json) 与 [当前进度](progress.md)。按 V1.1 和最新用户授权自动接续 P1。以下为原 P0 会话的历史记录，保留其当时未执行、受阻及“仅 P0”的事实，不回填历史结果。**

**状态：基线材料已交付，设备行为基线受阻，P0 暂不标记完成；P1 未启动。**

本次已复现清理后的离线 Debug、测试 APK、研究 Release、94 个主机用例、APK 完整性与 Release 诊断隔离，并检查重复合入。未发现可用的专用研究模拟器，没有执行设备业务回归，尚不能提供原 smali 的本次运行行为 oracle。按用户“受阻不得标记 P0 完成”的要求，保留该受阻状态，本轮止于 P0。

## 1. 审批、启动与冻结基线

| 项目 | 本次实际登记 |
| --- | --- |
| 已批准计划 | [V1.0 迁移计划](../smali-migration-plan.md)，交付提交 `2b882ad1ca2cae2fb81812b0973ef32a67d89fb3` |
| 审批及通知来源 | 当前项目会话：**用户转达领导已同意，并明确通知启动**；明确仅执行 P0，结束后不自动进入 P1 |
| 登记日期 | 2026-10-26，Asia/Shanghai；不把登记日期当成实际审批日期 |
| 未提供的信息 | 领导姓名、实际审批日期、预算、正式人员任命与安排均待补充；原计划估算不是已批预算 |
| 原调研基线 | 保留原计划的 `3f0775262f02e49c4a31b83e7022103432583e36`，没有改写历史盘点或计划阶段内容 |
| 本次实施基线 / 回退锚点 | 从最新 `origin/dev` 的 `2b882ad1ca2cae2fb81812b0973ef32a67d89fb3` 创建 `feature/migration-p0-baseline` |
| 工作区与既有改动 | 开始时工作区干净；已有两个 stash 原样保留，包括此前切换 dev 保存的文档改动；未恢复、删除或计入本次盘点 |
| Git 身份 | 仓库级 Author / Committer 均为 `Kum <805589465@qq.com>`，以 `git var GIT_AUTHOR_IDENT` / `GIT_COMMITTER_IDENT` 核对 |
| CodeGraph | 已读根目录 [AGENTS.md](../../AGENTS.md)。根目录不存在 `.codegraph/`，按规则跳过 CodeGraph，未擅自建立索引 |
| 实施边界 | 未恢复或删除业务 smali，未重写业务实现、升级主要依赖或移除混合构建；只提交计划登记、P0 文档、盘点工具及脱敏摘要 |

全部构建均使用原 `2b882ad` 的应用、测试、资源、依赖和构建脚本。收集证据时核对 `git diff --exit-code 2b882ad -- app core tools gradle gradlew gradlew.bat build.gradle settings.gradle gradle.properties` 返回 0；最终交付相对于该基线只增加/调整本阶段材料，因此不是把历史 APK 冒充本轮产物。阶段交付提交见本文件对应的 Git 提交和最终汇报。

## 2. 材料与证据索引

| 材料 | 内容与性质 |
| --- | --- |
| [P0-function-groups.md](P0-function-groups.md) | 静态功能分组、具体调用链、资源/反射/序列化/本地数据及旧集成边界 |
| [P0-smali-inventory.csv](P0-smali-inventory.csv) | 3,158 个 smali 的完整类名、归属、职责、形态、父类/接口、成员数量、路径和 SHA-256 |
| [P0-source-inventory.csv](P0-source-inventory.csv) | app/core 受跟踪 Java/Kotlin 源文件，按 sourceSet、语言、用途分别登记 |
| [P0-inventory-summary.json](P0-inventory-summary.json) | 数量、职责/形态分布及静态组间类型引用对 |
| [P0-static-signals.csv](P0-static-signals.csv) | 业务 smali 中显式资源、反射、序列化、本地数据线索；不是完整动态依赖证明 |
| [P0-candidate-contracts.json](P0-candidate-contracts.json) | 五个候选的完整字段/方法描述符、内部类、成员调用者及源码/资源名字命中 |
| [P0-pilot-recommendation.md](P0-pilot-recommendation.md) | 推荐功能组、完整契约、其他候选取舍、P1 前后差分验证方案；未实施 P1 |
| [P0-validation.json](P0-validation.json) | 本次环境、实际命令、测试逐类数量、APK 摘要、Lint 清单、检查结果及原始证据 SHA-256 索引 |
| [p0_inventory.py](p0_inventory.py) | 只读盘点脚本；`python dev/migration/p0_inventory.py`，不操作设备或构建实现 |

原始日志、首轮/复跑 APK、测试 APK、JUnit XML、aapt2 输出及历史快照保存在本机被忽略的 **`.local/migration/p0-20261026-1528/`**。可追溯摘要及文件哈希随 Git 提交，二进制、大型日志和配置不提交；换机器后须从受控证据存储取回或按记录重建，Git 不能单独提供这些本机原始文件。

清单 CSV/JSON 使用本目录 `.gitattributes` 固定 LF，保证提交后的清单快照哈希不受检出换行转换影响。清单中源文件 SHA-256 指本机采集时的原始字节；跨平台源码身份应同时依据冻结 Git 提交，不能把换行转换误报成实现变化。

## 3. 当前实际实现盘点

### 3.1 smali 与生成代码

以下为本次重新扫描受跟踪文件的结果，与原计划对应目录总数相符；不是引用历史报告作为本次扫描结果。

| 范围 / 职责 | 文件数 | 说明 |
| --- | ---: | --- |
| `app/src/main/smali` 合计 | 1,068 | 业务、基础组件及遗留生成代码 |
| 其中业务实现类型 | 940 | 含业务内部类、Lambda、Continuation、Kotlin 文件门面等，不等于 940 个独立功能 |
| 其中 Binding 生成代码 | 117 | 两个业务包的 Binding 类型，保留原资源及静态 bind/inflate 契约 |
| 其中 ARouter 生成表 | 3 | Root / Group / Providers，生成表名称与注册关系已静态核对 |
| 其中 Glide 生成代码 | 6 | GlideApp / Options / Request(s) 及模块实现/工厂；不能漏掉 `com.bumptech.glide.GeneratedRequestManagerFactory` |
| 其中 BuildConfig | 2 | 遗留业务/基础库配置，与 Gradle 新生成 namespace 的 BuildConfig 区分 |
| `app/src/main/recovered-libraries` 合计 | 2,090 | 20 个旧集成定位组，版本、定制与许可另查，不算作业务恢复完成量 |

“职责”和“类形态”为正交统计：业务目录全部类型按形态分为顶层 377、具名内部类 74、匿名内部类 141、编译器生成类型 476，合计 1,068；旧集成为 1,201 / 461 / 383 / 45，合计 2,090。业务职责 940 个类型中分别为 252 / 71 / 141 / 476。生成证据包括 synthetic 标记、Lambda/Continuation/FunctionReference 父类、D8 命名、Kotlin helper 和文件门面；没有把所有带 `$` 的类都判为编译器生成。

编译器生成类型可能包含真正的异步业务控制流；Binding/路由/Glide 属于另一种生成职责。此处的分组用于完整性和替换闭包分析，不提供“已迁移百分比”，也不换算人日。

### 3.2 Java/Kotlin

| 模块 / sourceSet | Java 文件 | Kotlin 文件 | 用途 |
| --- | ---: | ---: | --- |
| app / main | 30 | 0 | 20 个业务实现文件、2 个兼容桥接、6 个研究支持、2 个 R 兼容文件 |
| app / debug | 2 | 0 | Debug 诊断运行时及采集策略 |
| app / release | 1 | 0 | Release 无诊断实现门面 |
| app / test + testDebug | 2 | 0 | 本次实际运行的 app 主机测试 |
| app / androidTest | 5 | 0 | 已构建测试 APK；本轮设备用例未运行 |
| core/network-inspector / main | 0 | 1 | 共用诊断设置 |
| core/network-inspector / debug | 0 | 21 | Debug 诊断实现 |
| core/network-inspector / release | 0 | 1 | Release 门面源码，app Release 不依赖该模块 |
| core/network-inspector / testDebug | 0 | 15 | 本次实际运行的诊断主机测试 |
| 上述 sourceSet 合计 | 40 | 38 | 是源文件数量，不是运行时 class 数量 |

`reference/java` 仅为反编译对照，不参与构建；`tools/SyntheticMedia.java` 是工具源码，也未混入 app 业务源码数量。编译输出、依赖缓存及自动生成的 R/BuildConfig 不计为受跟踪源码恢复成果。已有 Java 包括 API、加解密、媒体和控件，不意味着所有 30 个 main 文件均为已验收的业务迁移。

### 3.3 功能组与依赖结论

冻结 13 个业务定位组：基础框架 86、基础工具 38、网络 65、模型 88、适配器 66、媒体 20、应用工具 53、控件 30、启动浏览 147、详情短视频 87、社区 66、账号本地状态 181、路由及旧包桥接 13；另有生成代码组 128。分组、关联资源和跨组调用逐项见 [功能分组](P0-function-groups.md)，不能直接作为后续批次数或完成率分母。

关键约束已经静态确认：Binding 通过泛型与 `bind` / `inflate` 反射接入；ARouter 表、XML 控件、Manifest Glide 模块依赖类名；Gson 依赖模型字段、构造器及泛型；SpUtil/ACache/UserManager/播放状态涉及旧数据。`App` 对偏好和 files/cache 等目录做 offline/live 隔离，不能在迁移时绕开。旧包名 `com.wgq.wangeqiu`、`com.qushare.news` 内的业务桥接仍属于业务目录，未误归为可删除第三方。

旧集成 2,090 个文件单独保留。缺失精确制品版本、原 Gradle 锁定信息、定制说明或原许可材料时，不得直接用“最新版”替换；详见 [第三方来源清单](../../third_party/README.md) 和功能分组的逐包数量/耦合表。

## 4. 构建环境与混合机制

### 4.1 本次实际环境

| 项目 | 实测/核对值 |
| --- | --- |
| 系统、工作目录 | Windows 11 amd64；`F:\Code\Mushroom` |
| Gradle 运行 JDK | `F:\Environment\jdk17`，Microsoft OpenJDK `17.0.19+10-LTS` |
| Gradle / AGP | Wrapper 8.11.1 / Android Gradle Plugin 8.10.1；未升级 |
| SDK | `local.properties` 指向 `F:\Environment\Android\SDK`，平台 36 和 Build Tools 35.0.0 已安装；本机配置未提交 |
| 编译与运行目标 | compileSdk 36、targetSdk 32；实际 APK Debug minSdk 26、Release minSdk 21 |
| app 源码/字节码目标 | Java 1.8；app 未应用 Kotlin 编译插件 |
| 诊断模块 | Kotlin/Compose 插件 2.2.10，Java/Kotlin JVM target 17；Gradle 自带 Kotlin 2.0.20 与该插件版本区分 |
| 既有依赖解析 | app 声明 Kotlin stdlib 1.7.10，Release 实际解析至 1.9.10；Release coroutines 1.6.0。此为当前依赖图事实，未作依赖升级 |
| Python | 3.13.2，使用现有 Python 执行核验工具 |
| Windows TCP 回退 | 沿用 gradlew.bat 的进程级 JAVA_TOOL_OPTIONS，不创建指定 UDS 目录，不修改全局 JDK/系统环境 |
| 业务运行模式 | 每次应用构建/回归显式指定 `-PresearchMode=offline`；没有修改默认 live 模式或私有配置 |

`offline` 是业务样本模式，不等于 Gradle `--offline`；首次构建仍可能需要声明的 Maven 仓库。没有将历史说明中的 Gradle 8.7 / AGP 8.5.1 / SDK 34 当成当前环境。

### 4.2 已确认的替换约束

1. [business-abi.gradle](../../tools/business-abi.gradle) 用 ASM 9.6 从业务和旧集成全部 smali 生成 `app/build/generated/business-abi.jar`，仅通过 **compileOnly** 引用。已核对本次 JAR 的 3,158 个类名与 smali 清单完全一致。其方法体为抛出 `AssertionError` 的编译占位，不能用作运行实现、业务测试 oracle 或 implementation 依赖；生成的内部类访问标记也不替代原 ABI 审查。
2. [app/build.gradle](../../app/build.gradle) 的 `assembleBusinessDex` 使用 smali 2.5.2、`assemble --api 32`，一次汇编 `smali` 与 `recovered-libraries`。本次 APK 中恢复 DEX 的 3,158 个类名也与清单完全一致。
3. `integrate<Variant>BusinessDex` 在 package 后读取 AGP 实际输出位置，用 `META-INF/mushroom-recovered-dex.txt` 找并移除上次恢复 DEX，再选择空闲 `classesN.dex`。本次 Debug 为 `classes18.dex`，Release 为 `classes5.dex`；不能把 DEX 序号当成固定协议。
4. 合入保留 ZIP 中原 STORED 条目及资源表，对齐后重新使用现有调试签名。Debug/Release 的 `resources.arsc` 均为 STORED，zipalign 和签名检查通过。重复构建会重打包，因此 APK 整体 SHA-256 可以变化；本轮 18 个 DEX、资源表、清单和恢复标记共 21 个组件字节一致，未累加重复类。
5. 资源由 AAPT2 `--stable-ids` 与 `app/resource-ids.txt` 固定。除了旧脚本对 R.txt 的核对，本轮额外 dump **实际 APK 资源表**，Debug/Release 各核对 7,141 个固定 ID，差异均为 0。Debug/Release 总资源条目分别为 8,672 / 7,281，含研究和依赖资源，不能把该总数当原固定 ID 数。
6. 现有 Java 的 `BindingLifecycleObserver`、`ExoListenerMediaPlayer` 由 D8 提供接口默认实现，避免恢复 smali 直接依赖旧编译器 `$-CC`。后续不能回退这些桥接。普通/设备定向构建可能产生不同辅助类型，APK 核验仍须执行。
7. Java 恢复后只能移除由它完整承接的同名 smali 及必要内部类；必须保留所有未迁移消费者需要的字段、实例/静态方法、默认参数辅助入口、构造器、泛型、序列化及反射契约。标准 Binding/路由/Glide 生成流程当前没有全面启用，直接启用可能与恢复类重复。
8. Release 当前 `minifyEnabled false`、调试签名，Debug 才依赖诊断模块；本轮验证仅针对研究构建及隔离，未验证生产私钥、R8 或商店发布。

## 5. 本次实际执行与结果

下列命令在项目根目录执行。日志重定向至上述 `.local` 目录；详细路径、SHA-256 和逐类测试数量见 [验证摘要](P0-validation.json)。所有构建/校验命令退出码均为 0，但 Lint 诊断明确单列，**不能由 Gradle 返回 0 推导 Lint 无错误**。

| 实际命令 | 本次结果 |
| --- | --- |
| `.\gradlew.bat --version` | 确认 JDK 17.0.19、Gradle 8.11.1 |
| `.\gradlew.bat :app:clean :core:network-inspector:clean :app:assembleDebug :app:testDebugUnitTest :app:assembleDebugAndroidTest -PresearchMode=offline --console=plain` | 1m18s，87 个任务实际执行，Debug/测试 APK 成功；app 6 个用例通过 |
| `python tools/verify_apk.py app/build/outputs/apk/debug/app-debug.apk` | 首轮 Debug 完整性通过；写入的历史路径报告已立即快照 |
| `.\gradlew.bat :core:network-inspector:testDebugUnitTest :app:assembleRelease -PresearchMode=offline --console=plain` | 2m26s，78 个任务（58 执行/20 up-to-date）；诊断 88 个用例通过；Release 成功，Lint vital 复现 16 条既有错误 |
| `python tools/verify_apk.py app/build/outputs/apk/release/app-release.apk` | Release 完整性通过，另存为本轮 Release 摘要 |
| `.\gradlew.bat :app:dependencies --configuration releaseRuntimeClasspath -PresearchMode=offline --console=plain` | 成功；依赖图保存在本轮目录，非历史依赖图 |
| `python tools/verify_inspector_release.py --dependencies .local/migration/p0-20261026-1528/release-dependencies.txt --output .local/migration/p0-20261026-1528/release-isolation.json` | 运行依赖、合并清单、DEX、资源均无诊断泄漏；Release Java 门面存在 |
| `.\gradlew.bat :app:assembleDebug -PresearchMode=offline --console=plain` | 7s；再次执行合入，53 个任务（1 执行/52 up-to-date） |
| `python tools/verify_apk.py app/build/outputs/apk/debug/app-debug.apk` | 复跑 Debug 再次通过；最终 Debug 摘要见下表 |
| `adb devices -l`；`F:/Environment/Android/SDK/emulator/emulator.exe -list-avds` | 设备清单为空；AVD 清单为空；没有安装、启动或操作个人设备 |

此外分别对 Debug/Release 执行以下命令，实际展开路径和各日志哈希见 JSON；`<variant>` / `<build-tools>` 仅为此处展示缩写：

```text
<build-tools>/aapt2.exe dump resources app/build/outputs/apk/<variant>/app-<variant>.apk
<build-tools>/aapt2.exe dump badging app/build/outputs/apk/<variant>/app-<variant>.apk
<build-tools>/zipalign.exe -c -p 4 app/build/outputs/apk/<variant>/app-<variant>.apk
<build-tools>/apksigner.bat verify --verbose app/build/outputs/apk/<variant>/app-<variant>.apk
```

`<build-tools>` 实际为 `F:/Environment/Android/SDK/build-tools/35.0.0`。将 aapt2 `resource 0x... type/name` 与固定 ID 文件按 AAPT 名称归一化后逐项比对，无缺失/变号；另从本次 APK 读取恢复 DEX，与完整类清单集合比对，并核对全部合并清单 Activity 的运行类均在 APK 中。原核验脚本只以主源码 Manifest 和生成 R.txt 为依据，不能单靠它宣称覆盖了 Debug 追加的 Activity 或实际资源表；上述补充检查已弥补该次检查范围。

### 5.1 测试数量与 APK

| 主机测试 | 通过 / 失败 / 错误 / 跳过 | 证据 |
| --- | --- | --- |
| `CryptoContractTest` | 4 / 0 / 0 / 0 | 本次清理后 JUnit XML |
| `DiagnosticsCapturePolicyTest` | 2 / 0 / 0 / 0 | 本次清理后 JUnit XML |
| core/network-inspector 的 15 个 suite | 88 / 0 / 0 / 0 | 逐 suite 数量及 XML SHA-256 已录入 JSON，原 XML 已快照 |
| 合计 | **94 / 0 / 0 / 0** | 不是设备业务测试数，也未声称覆盖全部未迁移 smali 的行为 |

| 产物 | SHA-256 |
| --- | --- |
| 首轮离线 Debug（已留存） | `09ddb30ca3bc1ea74f8b441d9288f10d1f06dfb638b517e4c9af1a931babd1cb` |
| 最终离线 Debug | `f5e994e794c6ef6294275cac3cb0056a166ec76173e66ebb95c183460739a69c` |
| 离线研究 Release | `5b3bab1e0ce872171b210e5477b48b6f2c7733d847055fb97d2a59f34b0f4759` |
| AndroidTest APK（仅构建） | `79d52ff6e8e725b8ffe966a3ae252b8c88265b5bd84ba4a72c6500b0122d5845` |

最终产物仍在 `app/build/outputs/apk/`；P0 证据副本在 `.local/migration/p0-20261026-1528/artifacts/`，包括首轮 Debug，便于未来对原 smali 取证。完整 APK 哈希不同不等同 DEX/业务变化；本轮仅确认上述 21 个组件一致，未宣称产物逐字节可重复。

| 完整性项 | Debug | Release |
| --- | ---: | ---: |
| APK 全部运行类（含正式依赖） | 32,320 | 19,210 |
| 恢复 DEX / 清单匹配类数 | 3,158 | 3,158 |
| 主源码 Manifest 的 Activity 有实现 | 50（其中原业务 38） | 50（其中原业务 38） |
| 合并 Manifest 的全部 Activity 有实现 | 53 | 50 |
| 重复类 / 缺失默认方法辅助类 | 0 / 0 | 0 / 0 |
| ABI 占位 / JADX 失败文本泄漏 | 无 / 无 | 无 / 无 |
| 实际 APK 原固定资源 ID / 差异 | 7,141 / 0 | 7,141 / 0 |
| 对齐 / 签名 | 通过；v2/v3 | 通过；v1/v2/v3 |

类存在检查不等于全部字段/方法、动态反射或业务操作等价；P1 仍需该批专门契约与设备差分检查。

### 5.2 历史证据的保留

`verify_apk.py` 会覆盖 `docs/apk-verification.json`。运行前已将该报告、`docs/device-validation.json`、`docs/network-inspector-validation.json`、`docs/lint-findings.json` 复制到本轮 `historical/`，登记原提交、Git blob 和 SHA-256。每次脚本运行后分别保存 `apk-debug.json` / `apk-release.json` / `apk-debug-repeat.json`，最后恢复原 `docs/apk-verification.json` 的字节内容。本次未改写历史设备/诊断报告，也未将旧设备通过数计入 94 个主机用例。

历史 `Mushroom_Research_API34`、2026-10-21 页面/媒体结果、2026-10-25 真机默认回调结果、2026-10-26 真实接口结果都仅是历史证据。当前机器 `-list-avds` 未列出该研究 AVD；历史存在过不表示本轮可用。

## 6. 已知问题、未执行和受阻范围

| 状态 | 项目与本次结论 | 影响 / 解决条件 |
| --- | --- | --- |
| 已验证：既有错误复现 | 本次 Release Lint vital 报 **16 errors**：ResourceCycle 12、UnknownId 2、MissingDefaultResource 1、NotSibling 1；文件+行号+规则的多重集与历史报告一致，明细见 JSON | 既有 `abortOnError false` 未改动；构建成功不表示 Lint 清零或可生产发布。后续不得新增未处理问题，也不通过关闭检查消除基线 |
| 已验证：工具警告 | Gradle 提示旧 API 不兼容 Gradle 9；Java/Compose API 有弃用警告；ChuckerInteractions 使用 INVISIBLE_REFERENCE 等抑制的 Kotlin 编译器警告 | 本轮保留现有可运行组合，未升级或扩大修复范围；工具升级需单独评估 |
| 已验证：签名边界 | apksigner 验证通过；Release 提示 `META-INF/com/android/build/gradle/app-metadata.properties` 不受 JAR 签名保护，v2/v3 均通过 | 保存原输出；研究调试签名，不是原生产签名或发布验收 |
| 受阻 | 无连接设备，无可用 AVD，专用研究模拟器条件缺失 | 本次设备执行数 **0**。现有离线脚本静态计划为 43 次调用 / 47 个 instrumentation 用例，但全部未运行；不将其写成通过 |
| 受阻 | CommentFilter 原 smali 的运行行为、空值/换行/规则修改等差分 oracle 尚未建立 | P1 替换前须在专用模拟器上先运行原实现，保存测试结果及对应 APK SHA-256；ABI JAR 不可替代 |
| 未执行 | 冷启动、五栏导航、页面渲染、手势、普通/加密播放进度与暂停恢复、短视频唯一活动播放器、生命周期、持久化重启；设备诊断集成 | 测试 APK 已构建不等于用例执行；需专用 emulator、明确样本数据和安装包匹配校验 |
| 未执行 / 外部条件不足 | 真实登录、短信、上传、结算、在线更新、真实媒体分片、相机/投屏/多系统实体设备 | 未操作个人日常设备、未执行线上写入；后续相关功能需受控服务、账号或外设。本试点不应为此扩大到线上验证 |
| 静态确认 / 待补材料 | 旧库精确版本、制品可用性、定制和部分许可不充分；原发布签名/服务端不在 APK 中 | 继续保留旧实现，按第三方清单收集；不是恢复某个短工具类时顺带替换旧库的理由 |
| 未执行 | 全量 Debug Lint、R8、生产签名、商店发布、全业务所有反射/序列化/异常路径 | 本轮仅实际执行表内门禁，不能将 APK 完整性检查推广为全业务行为验证 |
| 待补充 | 领导姓名/实际审批日期、预算、正式实施/复核/验收人员安排 | 仅登记缺失，不虚构日期或人名，不将原建议当实际承诺 |

所有“已验证”均指本次命令或生成报告；“静态确认”未作设备运行声明；“历史证据”保留原时间/提交；“未执行”不计通过；“受阻”明确缺失条件及范围。

## 7. 首批推荐与进入 P1 的条件

建议首批仅处理 **`com.mogu.tv.utils.CommentFilter` 的评论展示/昵称过滤契约**，使用 Java 保留现有 Kotlin Regex API，无关联内部类；保留 NewCommentAdapter、ShortCommentAdapter、`EditUserInfoActivity$initData$3$1` 三个 smali 调用者并回归它们。完整字段/方法、相邻回调、资源、null/状态/异常和验证矩阵见 [首批建议](P0-pilot-recommendation.md)。

暂不选择 ClickUtils（全局时间/同步/Toast）、DateUtil（四个 ThreadLocal 内部类、12 个消费者、格式/时区/历史显示差异）、UrlUtils（路由参数与 split 边界）、PlayDataSaveUtils（旧 JSON/SpUtil/静态缓存），理由基于真实引用而非文件长短。

对 V1.0 的 P0 进入条件逐项判断：

| 计划条件 | 本次判断 |
| --- | --- |
| 构建可重复 | **已满足当前环境范围**：清理后构建和复跑均成功，APK/恢复 DEX/资源/隔离检查通过；不承诺二进制 ZIP 全字节一致或换机器首次断网构建 |
| 已验证与未验证范围明确 | **已满足记录要求**：静态/主机/历史/未执行/受阻均有标记，既有 Lint 和外部限制保留 |
| 首批有可执行验证方案 | **方案已明确，当前设备执行条件受阻**：缺少原 smali 设备行为 oracle，尚不能验收完整迁移前行为基线 |
| P0 阶段结论 | **材料与构建基线已交付，设备行为部分受阻，暂不标记 P0 完成，不进入 P1** |

后续先提供/恢复一台无个人重要数据的专用研究模拟器（Debug 要求 API 26+），核对离线模式、APK SHA-256 后执行原有离线设备回归和首批原实现基线，记录失败/差异并补齐本报告，才能关闭相应受阻项。其他真实账号/投屏等条件仅影响对应后续范围，不作为这个文本过滤试点必须接触线上业务的理由。

**本轮到此结束。P1 仍需用户后续明确指令；本建议、P0 材料合入或历史迁移总计划均不替代本轮“不得自动进入 P1”的限制。**

## 8. 提交范围与回退

本阶段只纳入 `dev/smali-migration-plan.md` 和 `dev/migration/` 的 P0 材料。APK、DEX、ABI JAR、日志、JUnit XML、本地 SDK 配置、设备数据、密钥及缓存不入 Git；原有 stash 保留。需求分支按中文说明提交后合入 `dev` 并推送，作者和提交者均为上述身份；没有以合入动作把受阻项目改记通过。

实现/构建回退锚点为 `2b882ad`；本轮没有业务或数据格式变更。若需撤回已共享文档，使用新的撤销提交，按实际普通/合并提交确定目标，不重置共享 `dev`。本地构建/样本产物与文档撤销是不同事项，现有证据副本应继续保留以便复核。
