# 网络诊断接入

功能从 `codex/network-inspector` 分支接入。参考来源是 Flix2 的 `dev` 提交 `355b40e510fb22148dd024335e9a27c9022652b8`，读取时该仓库工作区干净。本次只迁移诊断、纯文本协议工具和必要交互契约，没有复制 Flix2 业务模块。

实现基于 Mushroom 主分支 `e93ab2d`，包含生命周期/播放器默认回调及实际 APK 输出目录的修复。

## 技术栈与模块接线

目标是 Java/XML + 业务 smali 的 Android 工程，原网络是 OkHttp 3.12、Retrofit 2.9；不是 Compose 应用。新增 `core:network-inspector`，保留 Compose 诊断界面，通过 `InspectorHost` 的 ComposeView 嵌入原生 Activity。业务页面及其二进制方法签名保留。

- 构建工具：JDK 17、Gradle 8.11.1（固定 SHA-256）、AGP 8.10.1、Kotlin 2.2.10、compileSdk 36。升级是为了编译迁入的 Compose 选择菜单、稳定底部面板和 Chucker 适配 API；不修改 targetSdk 32。Debug 最低 API 26，Release 最低 API 21。
- 公共 OkHttp 升为 4.12.0，以提供 one-shot/duplex 识别及 Chucker 4.1.0 所需接口；保留 Retrofit 2.9/Gson、原超时、重试、认证、重定向及 TLS 策略。
- App.onCreate 创建一个应用级 DiagnosticsRuntime；Debug 创建 InspectorHost、隐私状态和 NetworkInspector，并在任何 Activity 恢复前绑定原生保护与展示策略。Release 使用无操作 Java 门面。
- ApiClient 只接收通用 `List<Interceptor>`，不引用 Chucker 或诊断 UI。顺序为：研究只读/来源检查 → Accept/x-token 注入 → 原 UuidParamInterceptor → 诊断动态门控 → 自有记录/内部 Chucker → 原研究传输/OkHttp。没有重复注册 Chucker。
- 离线合成响应也经过两套诊断，标记 `X-Mushroom-Data-Source: synthetic-local`；线上被只读检查拒绝的操作保持原返回约定，不进入诊断。没有改变业务 HTTP 状态或业务 JSON code 的含义。
- 合成响应补齐本地开始/完成时间，避免 Chucker 将缺省的 0 当作 1970 年时间，影响历史排序/保留；这不是线上下载耗时。
- 所有 `com.mogu.tv.*` 且为 ComponentActivity 的页面挂载同一个 inspector 的悬浮入口，包括详情/播放页面；每个宿主有独立的面板开合状态。普通 Activity、Chucker Activity 和研究控制台不自动挂载。研究控制台提供独立诊断设置入口。
- 键盘可见时隐藏浮标，保持已有面板和采集状态。原设置页的新区域继承宿主明暗模式与强调色，支持在剩余空间内滚动；详情 Tab 在大字体下横向滚动，避免文字截断。小高度列表与参考实现相同，压缩统计并隐藏原生历史按钮，恢复正常高度后可访问。

## 使用

在原“设置”页下方开启 **Chucker 网络捕获**。也可通过顶部“研究入口” → **网络诊断** 打开设置。开关默认关闭；独立的 **保护诊断内容** 默认开启，需要关闭该保护后才采集和查看内容。该隐私状态是全应用诊断专用状态，不是整个蘑菇业务界面的文字/媒体脱敏系统。

开启后浮标可拖动并左右贴边，位置按纵向比例保存。点击打开列表，支持搜索、全部/异常/进行中/慢请求、暂停、清空及原生 Chucker 历史。详情支持概览/请求/响应点击和滑动切换、Headers、查询参数、美化/原文、正文逻辑行搜索、换行、连续跨行选择和复制。

enabled、recording、浮标位置分别存储在 `network_inspector` 偏好中；目标 Application 会添加 offline/live 前缀。隐私偏好也按模式隔离。关闭总开关停止后续采集并关闭 Compose 面板，保留历史与暂停偏好；暂停前已开始的请求可完成。关闭面板不暂停，重新开启不会自动打开面板。关闭总开关不是原生历史的访问权限控制，隐私保护才负责强制隐藏原生页面和阻止输出。

这是 Activity 内覆盖层，没有系统悬浮窗权限、Service、VPN、系统代理或中间人证书。其他应用的流量不会被采集。

## 采集范围

实际接入只有 ApiClient 创建的业务 Retrofit 客户端。`app/src/debug/java/com/mogu/research/DiagnosticsCapturePolicy.java` 是项目策略的唯一清单，检查实时 baseHost 的 scheme/host/port、GET、明确路径及已登记查询字段；`captureRequest` 与 `decodeResponse` 独立。

| 范围 | 行为 |
|---|---|
| 内容分类、列表、详情、排行、标签、推荐、社区及评论列表 | 清单内 GET 采集 |
| `/api/vlog/list`、短视频评论和收藏列表 | 同源且查询字段在清单内时采集 |
| 配置、广告列表、CDN 配置，部分用户公开资料/收藏/历史列表 | 清单内 GET 采集，详情见策略源文件 |
| 登录、注册、短信、重置密码、用户私有 info、验证码、cache | 排除，防止凭据进入 URL/正文/导出 |
| 写操作、上传、未知路径/查询字段、带 URL 用户信息、事件流 Accept | 进入任何采集器之前排除 |
| DNS 动态发现 | 排除，仍保持原业务发现行为 |
| Glide/HttpMyUrlFetcher 图片、Exo/GSY 媒体、HLS 清单/密钥/分片、下载及独立客户端 | 未注入，排除 |

头字段遮盖增加项目实际使用的 `x-token`，同时保留 Authorization、Proxy-Authorization、Cookie、Set-Cookie、X-Api-Key，忽略大小写，只处理诊断副本。允许的 API 响应可能包含媒体链接及其参数；头遮盖不等于正文或 URL 全面脱敏。新增接口/查询字段应先审查凭据位置再加入清单。

目标协议是普通 JSON，业务 Gson 转换不变，没有添加 Base91 Converter 或业务注解，也不启用任何响应的 Base91 展示策略。迁入的 Base91Codec/Base91JsonDecoder/LosslessJson 仅作为 Debug 可选纯文本工具及对应测试保留，未来启用时必须显式指定来源和接口。自有 JSON 美化用显式栈验证原文并调整空白，保留大整数、重复键、顺序和转义，深度与输出长度均有上限。

## 原文、存储与输出

- 自有记录只保存在进程内，最多 200 条，URL/头/正文合计 2,000,000 字符，正文预览 65,536 字节。该字符预算不是进程堆内存上限；当前详情快照可能在记录被淘汰后仍被持有。
- Chucker 使用独立 Room 历史、64 KiB 内容保留限制及一小时保留策略；维护按请求触发，不是精确 60 分钟销毁。禁用通知、快捷方式，保持 alwaysReadResponseBody=false。
- 清空面板只清内存记录，不清 Chucker 历史。清空/淘汰后的迟到响应不会复活记录。
- “原文”是按字符集解码后采集到的文本，可能只是前缀，不是包含 TLS、压缩与分帧的原始字节。自有复制复制当前展示模式，局部复制不带行号。
- 原生全部复制、响应文件与 HAR 使用 Chucker 原始存储正文；文本分享使用上游 formatted getter。当前未启用任何 Base91 展示策略，原生继续使用上游格式化。保留的补丁可在未来为明确匹配策略的响应启用无损展示，不能把这解释成当前所有原生正文均已使用无损美化。
- Chucker 包装响应流，自有层只做有界 peek；正常路径业务仍读取同一内容。耗时截至有界预读结束，不是完整下载耗时。Chucker 可能完整序列化可重复请求体后才截取；本项目入口仅允许无 body 的 API GET，未将上传或持续流接入。
- 隐私状态未读取、开启、保存中及失败时均保护。Compose 根剪贴板和原生复制、分享、文件 sink/output stream 按实际执行时状态检查，与状态切换共用锁；已创建输出流的每次 write 仍检查。原生 Activity 生命周期和 pre-draw 防止恢复时闪出内容。隐私保护不删除历史数据库、外部文件或此前剪贴板内容。

## 变体与升级边界

app 只使用 `debugImplementation project(':core:network-inspector')`。Release 不依赖完整 Chucker、no-op Chucker、Compose 诊断模块或补丁 hook；只保留 app 的空 DiagnosticsRuntime。诊断模块也提供同名 NetworkInspector Release 门面，供未来需要该 API 的消费方使用；其 Release 不含 Debug 资源或实现。

`core/network-inspector/chucker-display.gradle.kts` 固定 Chucker **4.1.0**，ASM **9.8** 仅用于构建。变换保留 AAR 资源、Manifest、许可等内容，不改下载缓存。必须命中 1 个 transaction 类、2 个展示 getter、9 类各一次 UI/导航补丁，并找到复制、Activity 启动、文件 sink、文档输出流出口，否则失败。包名已同步改为 `com/mogu/inspector`。升级 Chucker 必须重新核对内部签名和实际变换后类的测试，不能仅改版本号。

## 验证命令

只使用合成数据；`-PresearchMode=offline` 临时覆盖本地模式配置，不改 `research.local.properties`。

```powershell
.\gradlew.bat :core:network-inspector:testDebugUnitTest :app:testDebugUnitTest -PresearchMode=offline
.\gradlew.bat :app:assembleDebug :app:assembleDebugAndroidTest :app:assembleRelease -PresearchMode=offline
.\gradlew.bat :app:dependencies --configuration releaseRuntimeClasspath --console=plain > .local/diagnostics/release-dependencies.txt
python tools/verify_inspector_release.py --dependencies .local/diagnostics/release-dependencies.txt
```

2026-10-26 在此目标项目实际执行：

| 验证 | 结果 |
|---|---|
| 诊断模块完整 JUnit/MockWebServer/Robolectric/Compose 套件 | 88 项通过，0 失败/跳过 |
| UI 适配后的定向回归 | 25 项通过，覆盖选择、返回、搜索、筛选、浮标拖动/贴边/穿透、暂停/清空及状态保存 |
| 项目原加解密契约 + 新采集策略测试 | 6 项通过 |
| Android 13 / API 33，M2012K11AC 真机 | 4 项通过：真实 ApiClient/Chucker Room 动态采集、实际设置/浮标/详情/暂停/原生历史往返、主分支两项默认回调回归 |
| Debug APK、Debug 测试 APK、Release APK，诊断模块 Release 门面编译 | 通过 |
| 实际 APK 原业务完整性 | 38 个原业务 Activity、7,141 个固定资源 ID 保留，无重复类、无占位类或缺失的旧 desugar companion |
| Release 运行时依赖 / 合并 Manifest / DEX / 资源 | 无 Chucker、Compose 诊断模块、补丁 hook、采集器及悬浮页面，保留空 Java 门面 |

原生展示/搜索/选择/返回、复制/文本分享/响应文件/HAR 数据来源以及保护后的迟到输出，由实际变换后 Chucker 类的测试覆盖。两个真实存储的一致性有 MockWebServer 和真机 Room 验证。已检查本项目生成的标准、小屏大字体、横屏图，以及真机设置、列表、响应和原生历史截图。执行日志和合成截图只保留在被忽略的 `.local/diagnostics`；模块报告位于 `core/network-inspector/build/reports/tests/testDebugUnitTest`。参考项目历史结果未计入本次通过数。

本次构建摘要、APK 哈希和验证计数见 [network-inspector-validation.json](network-inspector-validation.json)，不包含请求正文或设备数据库。

具体限制：真机本轮没有逐项手动操作系统分享目标、文档选择器和长按拖动选择手柄；这些数据来源、搜索定位、跨行选择及输出保护通过上述 Robolectric/Compose 测试验证。未访问真实账号/后台验证采集，也未宣称验证全部业务页面或持续媒体播放。Release 构建沿用仓库 `lint.abortOnError=false`，现有恢复资源仍报告 16 项 lint 问题（样式潜在父循环、缺省布局和旧布局引用）；构建通过不等于 lint 全绿，也不等于已完成全部业务验收。

独立设备测试使用 `-PinspectorDeviceTest=true`，安装包名为 `com.amogu6.tv.research.inspector`，避免覆盖其他研究会话。该参数同时为隔离包生成对应的固定资源 ID 映射，保证 smali 内联 ID 不变；常规构建不带此参数。设备测试需要允许 USB 安装，测试从导出的启动页进入前台后再打开内部设置页，以兼容 MIUI 的后台启动限制。
