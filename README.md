# 蘑菇视频 1.1.4 客户端研究工程

由公司提供的 `com.amogu6.tv` 1.1.4 APK 恢复。工程保留原生 View/XML、38 个业务 Activity、五栏首页、原路由、资源、业务模型和调用链。默认使用**明确标识的离线合成数据**，运行的是原业务页面和播放器。

这不是遗失 Git 仓库的原始源码备份。当前采用 **Java/XML + 可重新汇编的业务 smali**：重点网络、加解密和自定义 View 已恢复为 Java；其余 Kotlin 编译产物保留真实 smali 控制流。`reference/java` 是限定业务包的反编译对照，不参与编译，修改那里不会改变 APK。没有把整个 AndroidX、Kotlin、ExoPlayer、Glide 等反编译代码塞入项目，也不依赖原 APK 或 `.local` 中的分析目录构建。

## 打开、构建、运行

实测组合：JDK 17、Gradle Wrapper 8.7、AGP 8.5.1、Android SDK 34 / Build Tools 34.0.0。研究包 `applicationId` 为 `com.amogu6.tv.research`，版本 `1.1.4-research`，最低 Android 5.0，targetSdk 32，使用 Android 默认调试签名。

1. 用 Android Studio 的 **Open** 打开本目录，等待 Gradle 同步。
2. 将 Gradle JDK 设为 **JDK 17**，不要直接使用本机新 Android Studio 附带的 JBR 25 运行 Gradle 8.7。
3. 安装 Android SDK Platform 34 与 Build Tools 34.0.0。SDK 路径放在不提交的 `local.properties` 中，例如：

   ```properties
   sdk.dir=E:/Android/SDK
   ```

4. 选择 `app` / `debug`，运行到 Android 模拟器或研究设备。启动会经原 `LoadingActivity` 进入完整首页。

命令行（PowerShell）：

```powershell
.\gradlew.bat assembleDebug testDebugUnitTest assembleDebugAndroidTest
python tools/verify_apk.py
adb -s emulator-5580 install -r app/build/outputs/apk/debug/app-debug.apk
adb -s emulator-5580 shell am start -n com.amogu6.tv.research/com.mogu.tv.ui.LoadingActivity
```

APK 输出：`app/build/outputs/apk/debug/app-debug.apk`。不需要 apktool、jadx、Python 或原 APK 才能执行 Gradle 构建；Python 只用于额外核验和设备测试。

本机 JDK 的 Windows AF_UNIX 临时套接字连接存在故障。`gradlew.bat` 已通过**当前进程环境**启用 Java 的 TCP 回退，不修改系统环境或其他工程。如果 Android Studio GUI 同步也报 `Unable to establish loopback connection`，从继承以下环境的新进程启动 IDE，再选择 JDK 17：

```powershell
$env:JAVA_TOOL_OPTIONS='-Djdk.net.unixdomain.tmpdir=D:/Code/Mushroom-Video/.gradle/research-uds-disabled'
& 'E:/Android/Android Studio/bin/studio64.exe' 'D:/Code/Mushroom-Video'
```

该指定路径保持不存在，以触发 Java 自身的 TCP 回退。若 Android Studio 已在运行，需要让新 IDE 进程继承此环境。Gradle 构建已实际执行；未使用 GUI 自动化操作 Android Studio。

## 离线研究与真实请求

默认无需配置。所有页面顶部都有“离线研究 · 合成样本”入口，可查看请求路径记录、登录本机研究账号并返回原首页。

- 本机研究账号：`13800000000`，密码 `study114`；图形码和模拟短信码为 `0000`。这是本机合成账号，不对应原后台账号。
- 原登录表单、请求参数、响应解析、鉴权头继续运行；也可通过研究入口直接建立本机研究会话。
- 收藏、历史、关注、评论、资料编辑和样例解锁使用本机持久状态；缺失 ID、错误密码等返回错误，不是统一返回成功。
- 头像上传等缺少受控服务的操作明确返回未发送；投稿认证原 APK 本身就是“暂未开放线上自动认证”提示，保留原行为。
- 媒体是本机生成的 8 秒 H.264/AAC 测试图，提供普通 HLS、加密清单、普通/加密图片。封面引用 APK 原图标，不冒充恢复的服务端海报或原视频。

需要尝试原只读服务时，复制 `research.local.properties.example` 为 **不提交的** `research.local.properties`，修改后重建：

```properties
mode=live
apiBase=https://47.97.188.179
```

真实模式保持原接口定义、动态域名发现、请求参数和 `x-token` 协议；仅允许只读请求。POST/PUT/DELETE、广告点击和精品解锁会在本机阻止。真实请求失败不会回退为离线成功结果。两种模式的偏好设置、文件和缓存分开，防止离线缓存污染真实结果。

上例 IP 来自 2026-10-21 原 DNS TXT 发现结果，不应当作永久地址。原默认域名的 TLS 探测未成功，但该 IP 的分类、列表、详情已通过模拟器中的原 ApiClient 请求链验证；真实封面经 Glide 解码成功，真实加密 HLS 清单经原派生算法解析出 462 个分片。没有关闭 TLS 校验，没有把线上原始数据、封面或视频提交到仓库。证据见 [只读接口验证](docs/live-device-validation.json)、[媒体验证](docs/live-media-validation.json) 和 [服务探测](docs/service-probes.json)。这不表示全部账号业务或真实视频段播放均已验证，也没有恢复服务端源码、数据库、原签名私钥或真实账号。

## 业务与研究入口

完整页面、原布局和参数清单见 [业务入口清单](docs/business-inventory.md)，原 60 个接口声明见 [api-inventory.json](docs/api-inventory.json)。

| 入口 | 主要代码 | 原资源/职责 |
|---|---|---|
| 启动、首页 | `ui/LoadingActivity`、`MainActivity`、`ui/HomeFragment`、`ui/frag/ListMainFragment` | `act_loadpage`、`activity_main`、分类标题、菜单、推荐列表 |
| 分类、搜索、排行、标签 | `PiankuActivity`、`SearchActivity`、`RankActivity`、`LabelsSelectActivity` 及其 Fragment/Adapter | 保留原筛选、历史搜索、列表和详情跳转 |
| 详情、播放 | `DetailsActivity`、`DetailVipVideoActivity`、`view/DetailsVideoView` | `act_details`、`act_vipdetails`；原 GSY/Exo 状态链 |
| 短视频 | `ShortIndexFragment`、`ShortVideoMainFragment`、`ShortVideoItemFragment`、`ShortDetailsActivity` | 原竖向 ViewPager2、加载动画、评论和点赞按钮 |
| 社区 | `ShequFragment`、`ShequListAdapter`、`ShequDetailsActivity`、`ImglookActivity` | 九宫格、图片预览、评论、用户页 |
| 我的与账号 | `MineFragment`、`RegistActivity`、登录/注册 Fragment、`UserManager` | 登录/注册、收藏、历史、关注、资料、邀请、设置、协议 |
| 网络与数据 | `api/ApiService.java`、`api/ApiClient.java`、原 `ApiManager` / `NetCallBack` | 原请求、鉴权、Gson 解析、错误码、JSON 缓存 |
| 加解密 | `CXAESUtil.java`、`MD5EncryptNf.java`、`HttpMyUrlFetcher.java`、`HlsMyPlaylistParser.java` | 图片及清单的密钥派生、AES-CBC、Glide 和播放器接入 |

上述相对类名均位于 `com.mogu.tv`，基础工具位于 `com.kotlin.basiclib`。可编译 Java 在 `app/src/main/java`；其他实际业务实现位于 `app/src/main/smali`，对应对照文件位于 `reference/java`。

重点自定义 UI 的接入结论：

| 类 | 实际接入情况 |
|---|---|
| `DYLoadingView` | 接入 `ShortVideoView` 和 `video_layout_shortview.xml`，随短视频准备/播放状态启停；已恢复 Java 绘制并验证交集效果 |
| `NineGridLayout` | 接入社区列表、收藏的社区列表及社区详情；原单图、双列、三列布局和点击预览路径保留 |
| `SizeFlipPagerTitleView` | 用于首页、搜索、登录、短视频、社区、详情和用户页的标题切换 |
| `ColorFlipPagerTitleView` | 发现类定义，未发现业务代码或布局接入；保留供研究 |
| `LikeLayout` | 发现完整单击/双击爱心实现，但未发现业务/布局接入；已恢复 Java 并验证手势定时、取消和动画；不把它冒充短视频正在使用的点赞实现 |
| `ViewPagerLayoutManager` | 未发现业务接入；短视频实际使用 `ViewPager2`，已验证真实滑动换页及仅一个页面处于播放状态 |
| `MNestedScrollView`、`RefreshSlideLayout`、`PhotoViewPager` | 保留原触摸协调与图片缩放冲突处理；入口和布局见源码及页面清单 |

调用关系、密钥输入输出和缓存位置见 [网络与媒体说明](docs/network-and-media.md)。

## 构建机制与修改源码

日常构建是标准 Android Gradle 工程，加两项恢复步骤：

1. 为尚未迁移的 smali 生成**仅编译期**签名 JAR，使 Java 能引用原业务类型；这个 JAR 不进入运行包。
2. 重新汇编真实业务及少数旧集成 smali，合入正常 Gradle APK，保留 STORED 资源/原资源 ID，重新对齐并使用调试密钥签名。重复构建会替换上次合入的 DEX，避免累加重复类。

`tools/verify_apk.py` 检查实际 APK 的 Activity 覆盖、重复类、编译期占位泄漏、反编译失败文本及原资源 ID。`reference/java` 中仍可看到原反编译失败标记；它们不在运行包中。相应运行方法来自原 DEX 的真实 smali，不是空方法。

新增 Java 恢复时，需要移除同名 smali 及已被 Java 重建的内部类，保持二进制类名/方法签名兼容，运行构建和核验脚本，再做对应设备回归。不要直接把整个 `reference/java` 加入编译。

必要兼容修复及原行为差异见 [compatibility.md](docs/compatibility.md)。第三方版本证据和许可见 [third_party/README.md](third_party/README.md)。

## 验证范围与尚缺材料

实测结果与截图索引见 [validation.md](docs/validation.md)，逐项机器结果见 [device-validation.json](docs/device-validation.json)。页面启动通过不代表该页面的所有后台操作都已验证。

已恢复并进行受控运行验证的范围包括：五栏首页、原 Activity 页面启动、路由到详情、普通/加密 HLS 真实播放进度、暂停恢复、短视频实际滑动及播放器协调、图片解密、收藏持久化、播放历史记录、加载绘制与爱心手势逻辑。具体次数以结果文件为准。

仍有明确边界：

- 部分原公共接口和媒体资源目前仍可访问，已完成上述只读验证；APK 不包含的服务端源码、数据库及原签名私钥未恢复，真实内容/海报没有复制进仓库。
- 没有使用真实账号验证登录、短信、头像上传、邀请归因、真实积分结算、广告投放、在线更新和外部网页；客户端代码保留，离线样例和受阻操作明确标识。
- DLNA/投屏代码与入口保留，缺少实际接收设备，未验证真实投屏；原 IJK 原生 `.so` 没有从 APK 整包复制，默认仍使用原来配置的 Exo 播放链。
- APK 未提供独立支付 SDK 或成套离线下载客户端入口，没有自行添加会员支付、下载管理等新功能。应用更新下载服务与视频离线下载分开说明。
- 仍有大量逻辑为可汇编 smali；这是完整可运行研究客户端，不是全量原始 Java/Kotlin 工程已找回的声明。
- 部分旧集成的精确版本/来源仍无法仅凭 APK 确认；已有上游许可单独保留，未确认项在第三方清单列出。

如需继续验证真实服务，集中需要：受控 API 地址及其证书/域名配置、测试账号或服务方测试鉴权材料、媒体/上传/短信测试配置、投屏接收设备；若能提供原 Gradle 依赖锁定信息，可进一步核对旧集成版本。上述缺口不影响默认离线研究工程构建运行。

仓库不包含原 APK、整包反编译目录、真实账号数据、签名私钥、构建缓存或私有配置。请勿把 `.local`、`local.properties`、`research.local.properties`、设备数据和调试密钥加入提交。
