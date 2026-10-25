# 实际验证记录

原恢复验证日期：2026-10-21。该轮运行设备为新建的 Android 14 / API 34、Google APIs x86_64 模拟器 `Mushroom_Research_API34`，序列号 `emulator-5580`。该轮未对连接的实体手机执行安装或数据操作。

## 2026-10-25 启动崩溃回归

用户设备（Android 16 / API 36）上的旧 APK 缺少 `DefaultLifecycleObserver$-CC`、`Player$Listener$-CC`、`AnalyticsListener$-CC`，恢复的 smali 仍直接调用它们。新增的 APK 核验可以拒绝该旧包。修复通过正常编译的 Java 基类继承官方默认回调，保留原 smali 业务方法。

普通 Debug 构建和带 `-Pandroid.injected.build.api=36 -Pandroid.injected.testOnly=true` 的设备定向构建均通过。普通构建的 4 个 JVM 用例通过；普通 APK 已在该手机覆盖安装并通过 `RecoveredListenerDefaultsTest` 的 2 个用例：完整生命周期及延迟绑定释放、原播放器的两类监听器默认回调。`LoadingActivity` 冷启动后已进入并恢复 `MainActivity`。

干净的设备定向构建还发现原合入脚本固定修改 `outputs/apk/debug`，但本轮 IDE 构建实际输出在 `intermediates/apk/debug`，已改为读取 package 任务的实际输出。该目录中的真实 APK 已通过类覆盖、重复类、缺失兼容类和全部 7,141 个资源 ID 核验；其中上述三个 `$-CC` 类均未生成，恢复代码也不再依赖它们。用户更换为红米 M2012K11AC（Android 13 / API 33）后，该真实设备定向 APK 已安装并通过两个 `RecoveredListenerDefaultsTest` 用例，确认原生接口默认方法路径可用。

Android 16 手机上的五栏导航及播放 UI 自动化未通过：首次被系统 `SwipeUpClean` 清理进程中断，重试发生 `ActivityTestRule` 启动 Activity 的 45 秒超时，线程转储显示主线程在 `MessageQueue.nativePollOnce`。不将这些用例计作该设备上的通过结果，也不将下方历史模拟器结果当作本轮真机结果。

红米上最终安装普通离线 Debug APK，两个定向回归用例通过；安装后核对 SHA-256 为 `30c9ae4b13c5cbeaaf711f4e96e49657e71da2b1b11075718aa264185e783f37`，已通过启动入口打开首页。红米完整 UI 自动化遇到 MIUI `Abort background activity starts`，随后另一次安装替换主包及测试包导致中断，未计为通过；重新安装本轮产物后完成上述定向回归和校验。

## 2026-10-26 K70 真实接口验证

按用户要求将本工作目录的不提交配置 `research.local.properties` 设置为 `mode=live`、`apiBase=https://47.97.188.179`。当日原 DNS TXT 发现仍返回该地址，分类接口返回 200 和 9 个分类；没有修改仓库默认的离线构建配置。

重新构建并覆盖安装到 Redmi K70 Ultra（Android 16 / API 36），安装包摘要与当前 [APK 核验记录](apk-verification.json) 一致。`LiveReadOnlyTest` 的两个真机用例通过：分类、列表和详情返回 200，真实封面经 Glide 解码成功，加密播放清单经原解析器得到 449 个分片，写请求在本地拦截的断言通过。冷启动后记录到首页列表及详情的 `LIVE GET` 请求；本轮未将播放清单解析通过等同于完整视频播放验证。

## 构建与运行包

```powershell
.\gradlew.bat assembleDebug testDebugUnitTest assembleDebugAndroidTest
python tools/verify_apk.py
adb -s emulator-5580 install -r app/build/outputs/apk/debug/app-debug.apk
adb -s emulator-5580 install -r app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk
python tools/run_device_validation.py --serial emulator-5580
```

实际使用 JDK 17 / Gradle 8.7 / AGP 8.5.1 / SDK 34。APK 摘要与检查结果见 [apk-verification.json](apk-verification.json)：38 个原业务 Activity、Manifest 中全部 50 个 Activity 均有运行类；7,141 个原资源 ID 一致；没有重复类、编译期 ABI 占位泄漏或 JADX 失败占位文本。

独立本地克隆的构建结果另见 [standalone-build.json](standalone-build.json)。构建不读取原 APK、apktool/jadx 输出或原分析目录。依赖制品仍需从声明的 Maven 仓库下载，未承诺完全断网的首次构建。

该克隆的 Debug、研究用 Release 和 4 个 JVM 用例均构建通过；只读真实模式另作配置编译、安装及下述公共接口/媒体验证。Release 采用调试签名、未启用 R8，只做构建/运行类/资源 ID/签名/对齐检查，没有用它代替 Debug 的设备验证。

Release Lint vital 报告了 16 条导入资源诊断，保留于 [lint-findings.json](lint-findings.json)，未声称 Lint 清零。包括显式父样式与点分隐式父级的判断、原 `@id` 声明、只从横屏布局引用的资源，以及 UCrop 在运行时加入的同级控件。研究构建保留原资源且不因这些诊断中止；这不是生产发布质量门禁。

## 测试层次

| 检查 | 数量 | 实际断言 |
|---|---:|---|
| JVM 加解密契约 | 4 个用例 | 固定 HLS 密钥/密文向量、两种图片解密、普通图片回退、播放 URL 与内容 ID 对应 |
| Android 媒体/API 契约 | 4 个用例 | 官方解析器解析普通及加密 HLS、错误密钥拒绝、真实 Glide 取图、ApiClient 鉴权与收藏持久化、错误请求拒绝、Exo reason/state 回归 |
| 业务与交互 | 5 个用例 | 五个原 Fragment 导航、两种 HLS 播放进度与暂停恢复、加载绘制/爱心手势、真实短视频滑动、原 ARouter 到详情并记录历史 |
| 独立业务页面 | 36 个用例 | 逐个启动剩余原 Activity，传入对应样本参数，完成显示并截图，检查 Activity 未销毁 |
| 真实只读链路 | 2 个用例 | 分类/列表/详情经原 ApiClient 和原模型解析；真实封面经 Glide 解码；非明文 HLS 经原解析器解密并解析出 462 个分片；写操作以不接触网络的假 Chain 验证拦截 |

2026-10-21 运行的离线设备脚本共 **42 次检查调用、45 个 AndroidJUnit 用例**；加上 4 个 JVM 用例和另外运行的 2 个真实只读用例，共 51 个测试用例通过。该轮离线逐项结果及所测 APK 摘要见 [device-validation.json](device-validation.json)；真实结果见 [live-device-validation.json](live-device-validation.json)、[live-media-validation.json](live-media-validation.json)。两个合成播放样本均检查了播放器实际进度至少推进 750ms，并检查暂停/恢复；没有把“页面出现播放器”当作播放成功。当前离线设备脚本另包含本次新增的两个默认回调回归用例，不将其计入该轮历史结果。

真实测试只在显式 `mode=live` 构建中执行 `com.mogu.research.LiveReadOnlyTest`，默认离线构建会跳过它。测试使用当时 DNS 返回的 IP，未使用真实账号；报告只保存状态、结构、数量和摘要，不保存原响应、媒体 URL、封面或视频。真实媒体检查只取封面及清单，未播放/下载真实视频分片。检查后恢复默认离线包并清除本研究模拟器中的测试数据。

上述页面检查覆盖原 38 个业务 Activity：36 个独立启动，`MainActivity` 由五栏导航及路由流程检查，`LoadingActivity` 另做清空本机研究数据后的首次启动检查。五栏中的 Fragment、子列表等不是额外虚构的 Activity 数量。

首次启动记录见 [first-launch.json](first-launch.json)：清除的仅是研究模拟器中的本机样本数据，原 `LoadingActivity` 自动进入原 `MainActivity`，研究数据标识可见，没有初始存储权限门槛或崩溃。

## 代表性截图

截图来自实际模拟器，内容均为明确标识的本机合成样本。原 APK 的本地图标、布局和字体继续使用；空广告区域表示离线样本没有广告，未伪造在线广告投放。

列表中 8 秒样本显示为 `00:00`，源于原 `DateUtil.formatTime` 在分钟为 0、秒数小于 10 时的分支条件。保留该原始显示逻辑供对照；播放器自身显示 `00:08`，实际进度已验证。

| 场景 | 截图 |
|---|---|
| 首次启动进入原首页 | [first-launch.png](screenshots/first-launch.png) |
| 原首页与分类列表 | [home.png](screenshots/home.png) |
| 短视频页 / 实际滑动后 | [short.png](screenshots/short.png) / [short-swipe.png](screenshots/short-swipe.png) |
| 精品页 | [vip.png](screenshots/vip.png) |
| 社区与九宫格详情 | [community.png](screenshots/community.png) / [community-details.png](screenshots/community-details.png) |
| 我的 | [mine.png](screenshots/mine.png) |
| 普通 / 加密 HLS 播放 | [playback-normal.png](screenshots/playback-normal.png) / [playback-encrypted.png](screenshots/playback-encrypted.png) |
| 搜索 / 登录 | [search.png](screenshots/search.png) / [login.png](screenshots/login.png) |
| 播放历史 / 用户资料 | [history.png](screenshots/history.png) / [user.png](screenshots/user.png) |
| 设置 / 手势锁 | [settings.png](screenshots/settings.png) / [lock.png](screenshots/lock.png) |

## 已验证、静态恢复与外部阻塞

- **运行验证**：上述页面/导航、原路由、普通与加密 HLS、原 GSY/Exo 状态链、Glide 加密图片、本机收藏持久化与播放历史、短视频换页、DYLoadingView 和未接入业务的 LikeLayout 定向测试。
- **离线样本**：分类、推荐、搜索、详情、短视频、社区、精品、用户信息等采用原响应模型；本机账号、收藏、历史、关注、评论、资料和样例解锁有本机状态。样例不是恢复的真实后台数据；并非每个页面上的每个按钮均经过自动交互测试。
- **静态恢复**：原网络接口/参数/响应及错误处理、投屏、图片选择/裁剪、扫码、应用更新等客户端代码保留。部分外部集成只核对了运行类存在及页面入口，没有真实外设/服务验证。
- **真实只读**：原默认域名探测未成功，但原 DNS 返回的 IP 提供的分类、列表、详情、封面及加密清单通过上述检查。结果是一次实际访问证据，不保证外部服务持续可用。
- **外部配置/未验证**：真实登录、短信、上传、邀请结算、在线更新、外部网页和真实媒体分片播放未验证；服务端源码和原账号资料不在 APK 内。真实模式只读，没有执行线上发帖、上传、删除、付款等操作。探测见 [service-probes.json](service-probes.json)。

未测试其他 Android 版本、实体机音视频/相机/投屏表现，也没有执行生产发布、R8 混淆或原签名验证。此处的通过结论针对离线研究构建及列明的检查，不表示全部线上业务可用。
