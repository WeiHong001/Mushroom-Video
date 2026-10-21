# 实际验证记录

验证日期：2026-10-21。运行设备为新建的 Android 14 / API 34、Google APIs x86_64 模拟器 `Mushroom_Research_API34`，序列号 `emulator-5580`。未对连接的实体手机执行安装或数据操作。

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

## 测试层次

| 检查 | 数量 | 实际断言 |
|---|---:|---|
| JVM 加解密契约 | 4 个用例 | 固定 HLS 密钥/密文向量、两种图片解密、普通图片回退、播放 URL 与内容 ID 对应 |
| Android 媒体/API 契约 | 4 个用例 | 官方解析器解析普通及加密 HLS、错误密钥拒绝、真实 Glide 取图、ApiClient 鉴权与收藏持久化、错误请求拒绝、Exo reason/state 回归 |
| 业务与交互 | 5 个用例 | 五个原 Fragment 导航、两种 HLS 播放进度与暂停恢复、加载绘制/爱心手势、真实短视频滑动、原 ARouter 到详情并记录历史 |
| 独立业务页面 | 36 个用例 | 逐个启动剩余原 Activity，传入对应样本参数，完成显示并截图，检查 Activity 未销毁 |

设备脚本共 **42 次检查调用、45 个 AndroidJUnit 用例**；加上 4 个 JVM 用例，共 49 个测试用例。逐项结果见 [device-validation.json](device-validation.json)。两个播放样本均检查了播放器实际进度至少推进 750ms，并检查暂停/恢复；没有把“页面出现播放器”当作播放成功。

上述页面检查覆盖原 38 个业务 Activity：36 个独立启动，`MainActivity` 由五栏导航及路由流程检查，`LoadingActivity` 另做清空本机研究数据后的首次启动检查。五栏中的 Fragment、子列表等不是额外虚构的 Activity 数量。

## 代表性截图

截图来自实际模拟器，内容均为明确标识的本机合成样本。原 APK 的本地图标、布局和字体继续使用；空广告区域表示离线样本没有广告，未伪造在线广告投放。

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
- **外部阻塞**：原后台 TLS 只读探测未成功，真实登录、短信、媒体资源、上传、邀请结算、在线更新和外部网页未验证。真实模式只读；没有执行线上发帖、上传、删除、付款等操作。探测见 [service-probes.json](service-probes.json)。

未测试其他 Android 版本、实体机音视频/相机/投屏表现，也没有执行生产发布、R8 混淆或原签名验证。此处的通过结论针对离线研究构建及列明的检查，不表示全部线上业务可用。
