# P0 设备与原实现补充基线

状态：**已验收；P0 必需设备缺口已关闭，可以按 V1.1 自动进入 P1。**

记录日期：2026-10-26，Asia/Shanghai。连续执行授权以当前用户指令和 V1.1（`7e9384c`）第十三节为准。原 [P0-baseline.md](P0-baseline.md) 与 CSV/JSON 冻结快照保留其历史事实。

## 取证身份与设备准备

- 起始提交 `7e9384c`，实现/构建与 `2b882ad` 相同；`git diff --quiet 2b882ad -- app/src/main app/src/debug app/src/release core app/build.gradle tools/business-abi.gradle` 返回 0。新增测试源文件的 SHA-256 随验证索引保存，不能把尚未提交的测试声称为起点提交已有内容。
- 实际工作路径 `F:\Code\Mushroom`；JDK Microsoft 17.0.19，SDK `F:\Environment\Android\SDK`，Gradle 8.11.1 / AGP 8.10.1 / compileSdk 36 / Build Tools 35.0.0，未升级项目工具链。
- 初始 `adb devices -l` 和 emulator `-list-avds` 均为空。SDK 已有 API 34 Play x86_64 镜像；AEHD 2.0 检查可用，磁盘空间充足。
- 旧 SDK Tools 26.1.1 的 avdmanager 缺少 JAXB，无法在本机 JDK 17/11 启动。下载 Google 官方 command-line tools 11076708，独立安装于 `SDK/cmdline-tools/migration-20261026` 后，用现有镜像创建新的 `Mushroom_Research_API34`。没有删除或重置任何旧 AVD，未使用 `-wipe-data`。
- AVD 数据仅位于 `.local/migration/Mushroom_Research_API34.avd`，专用于本任务，新设备安装前无第三方应用；Android 14 / API 34 / x86_64，设备指纹 `google/sdk_gphone64_x86_64/emu64xa:14/UE1A.230829.036.A4/12096271:user/release-keys`。
- 启动参数 `-avd Mushroom_Research_API34 -port 5580 -no-window -no-audio -no-snapshot -gpu swiftshader_indirect`。全部设备命令显式选择 `emulator-5580`；核对 AVD 名、`ro.kernel.qemu=1`、`sys.boot_completed=1`、已安装 APK 摘要及离线 BuildConfig。未操作实体机或用户 stash。

## 实际执行及结果

| 检查 | 本次结果与证据 |
| --- | --- |
| Debug / 测试 APK / 研究 Release | 显式 `-PresearchMode=offline` 构建成功；新增测试首次直接导入未恢复类型编译失败，改为反射加载实际安装 DEX 后成功，未将 ABI JAR 加入运行依赖 |
| 主机测试 | 使用任务选项 `--rerun` 实际重跑 app 与 network-inspector：17 suites，94 tests，0 failures / errors / skipped；`.local/migration/P0-device/host-tests.log` 与 `test-results/` |
| CommentFilter 原实现 | 最终 `CommentFilterBaselineTest` **6/6 通过**（`comment-filter-original-03.log`）；22 组默认输入、8,192 字符对象身份、可变规则/全串匹配、四种 null 调用、运行时字段/方法/构造器、三个消费者 |
| 完整离线回归首轮 | 43 次调用中 42 次通过，`short-swipe` 失败；失败原因及环境修复见下文，首轮不能记作全量通过 |
| 完整离线回归环境复验 | **43/43 次调用、47/47 个设备用例通过**，无失败；`device-full-02.json` 和 `full-02-logs/`。45 张截图已复核，WebView 另做独立冷启动补证 |
| APK 完整性 | Debug / Release 重复类 0、占位/反编译失败文本泄漏 0、50 个主清单 Activity 实现存在、固定 ID 7,141 一致 |
| 实际资源及合并清单 | `verify_delivery.py` 对实际 APK 的 AAPT 资源表逐项核对 7,141 个 ID；Debug 合并清单 53 / Release 50 个 Activity 全部在对应 DEX 中；resources.arsc 均 STORED |
| 签名 / 对齐 / 隔离 | Debug/Release apksigner 与 zipalign 检查通过；Release 依赖图、合并清单、DEX、资源中的诊断隔离检查通过；仍为研究调试签名、未启用 R8 |
| 既有 Lint | 保留 Release vital 的原 16 条诊断，不把构建成功称为 Lint 清零；测试准备未改 app 主源码/资源或 Lint 配置 |

Debug APK：`3a745152f7bc63dad9d998a366cc02c496b9ebb4fe4f94ea9994aea946326ab4`。

研究 Release APK：`e2b0496e8599e2dbbb56a0b73a77c13e2dd216ef57e17d39a744762d09016746`。

原始证据、APK、测试 APK 和历史报告字节快照均保存在 `.local/migration/P0-device/`；Git 仅交付脱敏摘要和哈希索引。工具对 `docs/` 历史报告的输出在快照后恢复，避免覆盖历史结论。

## 失败、原行为及环境复验

1. 新增基线初测 6 例中 1 例失败：最初预期 `"x12345\n"` 为 false，原 smali 在 Android 实际为 true。第二轮完整采集了所有 22 组输入，发现 NBSP / 全角空格 / EM SPACE 的实际结果均为 false。预期按原实现实测修订，第三轮同样调用真实 DEX，6/6 通过。未修改过滤实现，也未使用 JVM ABI、参考 Java 或静态推断代替原结果。
2. 默认矩阵及四个 null 异常诊断、两个适配器和昵称回调结果冻结于 [P0-comment-filter-observations.json](P0-comment-filter-observations.json)。`getegularTxt` 保留字符串对象；Unicode 数字触发五位数字规则；换行边界及 Unicode 空白以该原始观测为准。
3. 三个真实消费者均保留 smali。两个适配器实际 inflate 原布局并调用原 `convert`，断言数字/HTML/emoji/换行文本与空内容可见性；昵称原回调拒绝五位数字且不产生请求，允许中文昵称后真实离线 API 回调更新 UserManager、页面和本地合成资料，finally 恢复合成昵称。未请求真实服务。
4. 首轮短视频手势抛出 `IllegalArgumentException: Targeted input event injection ... not directed at a window owned by uid ...`。实际截图、窗口焦点和系统 crash buffer 证实 `com.google.android.bluetooth` 的 HCI 初始化崩溃弹窗抢占焦点。通过专用设备 `svc bluetooth disable` 和关闭已观察的系统弹窗恢复，未删除测试断言、未改变应用行为或跳过短视频用例。第二轮完整回归在同一原实现 APK 上重跑；该模拟器不提供真实蓝牙外设验收。
5. 第二轮 WebView 截图仍显示旧播放器画面，该张截图不作为 WebView 可视通过证据。停止应用后，使用 instrumentation 单独运行同一 `pageUnderTest` / WebView route：1/1 通过，补充截图显示原 WebView 与 `about:blank` 白色内容正常。未确定首次全量采集错帧的根因，保留原图及限制，后续 WebView 批次补页面焦点/帧同步检查。尝试 shell 直接启动非 exported Activity 被系统正常拒绝，未放开清单导出权限。`CommentNewsActivity` 为原透明主题的评论对话框，看到后方桌面不是缺失布局。
6. 另做保留现有合成数据的冷启动：`am force-stop` 后从 exported `LoadingActivity` 启动，系统报告 COLD / Status ok，随后实际窗口焦点进入 `MainActivity`，首页及离线标识已截图；未清除应用数据，不将其称为全新安装首次引导验证。

## 可复用命令与当前下一步

```powershell
.\gradlew.bat :app:assembleDebug :app:testDebugUnitTest :app:assembleDebugAndroidTest -PresearchMode=offline --console=plain
.\gradlew.bat :app:assembleDebugAndroidTest :core:network-inspector:testDebugUnitTest :app:assembleRelease -PresearchMode=offline --console=plain
.\gradlew.bat :app:testDebugUnitTest --rerun :core:network-inspector:testDebugUnitTest --rerun -PresearchMode=offline --console=plain
adb -s emulator-5580 install -r app/build/outputs/apk/debug/app-debug.apk
adb -s emulator-5580 install -r app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk
adb -s emulator-5580 shell am instrument -w -e class com.mogu.research.CommentFilterBaselineTest com.amogu6.tv.research.test/androidx.test.runner.AndroidJUnitRunner
python tools/run_device_validation.py --serial emulator-5580
```

验证脚本的模拟器、离线模式和安装摘要保护保持原样。完整回归及原行为门禁通过，详见 [P0-device-validation.json](P0-device-validation.json) 和 [批次记录](batches/P0-device.md)。P0 当前无阻止 CommentFilter 试点的未关闭项；交付后自动进入 P1。原始 `.local` 证据不入 Git，哈希索引不能冒充日志本身。

真实账号、短信、上传、结算、在线更新、相机、真实投屏/蓝牙设备和多系统实体设备仍未验收；原 P0 的限制不因本补充而自动变为通过。当前替代类型验收数为 0，混合构建继续保留。
