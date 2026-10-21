# 依赖来源、版本与许可

公司提供的 APK 是业务恢复材料。项目包与第三方来源分别记录；包名本身不作为“完全原创”的证明，也没有为遗失的许可信息捏造许可证。

## 独立官方依赖

构建声明见 `app/build.gradle`。AndroidX、Material、Kotlin/coroutines、Glide、ExoPlayer、GSY/IJK Java 接口、Danmaku、Retrofit/OkHttp/Okio、Gson、RxJava/RxAndroid、ARouter、EventBus、EasyPermissions、Flexbox、RoundedImageView、AutoSize、PatternLocker、Marquee、DNSJava、Java-WebSocket、Jetty/Servlet 等通过独立依赖恢复，不提交它们的整包反编译代码或构建缓存。

APK 中可直接确认的版本汇总在 [original-dependency-versions.json](../docs/original-dependency-versions.json)，包括 ExoPlayer 2.18.1、Glide 4.5.0、Kotlin 1.7.10、coroutines 1.6.0、Material 1.6.1、多个 AndroidX 版本、AutoSize 1.2.1、PatternLocker 2.5.7、Marquee 1.1.3、RoundedImageView 2.3.0、Flexbox 1.1.0、Danmaku 0.9.25。没有证据的依赖版本记为兼容选择，尤其不能把 GSY 8.3.4 说成从 APK 确认的精确版本。

构建工具使用 smali 2.5.2、ASM 9.6，均为构建期依赖。测试使用 JUnit 和 AndroidX Test。原码中自带的媒体解析修改保留在 `com.mogu.tv.utils.exo`；标准 HLS 解析委托给匹配的官方版本，具体公司修改点见 [network-and-media.md](../docs/network-and-media.md)。

## 选择保留的旧集成

`app/src/main/recovered-libraries` 只保留尚不能确认可替换制品或可能包含修改的旧集成。它不是整个 APK 的 smali 目录；AndroidX、Kotlin、Glide、Exo、GSY 等主体均被排除。

| 包前缀 | 来源/处理 |
|---|---|
| `com.chad.library` | BaseRecyclerViewAdapterHelper，精确旧版待核对，上游许可已保存 |
| `com.luck.picture` / `com.yalantis.ucrop` | PictureSelector/uCrop 旧集成；BuildConfig 的通用 2.0.0 不足以确认整个具体发布版本；保留原行为，上游许可已保存 |
| `com.scwang.smartrefresh` | SmartRefreshLayout 旧版，精确版本待核对，上游许可已保存 |
| `com.github.like` | LikeButton，精确版本待核对，上游许可已保存 |
| `com.github.lzyzsd` | JsBridge，精确版本待核对，上游许可已保存 |
| `com.qiniu.android` | HappyDNS，精确版本待核对，上游许可已保存 |
| `com.youth.banner` | Banner，精确版本待核对，上游许可已保存 |
| `com.azhon.appupdate` | AppUpdate，保留原更新客户端代码，上游许可已保存；研究数据不触发真实 APK 更新 |
| `com.zhangke.websocket` | AndroidWebSocket 旧封装，APK 有 3.0 常量；原上游地址当前未取得许可文件，需原依赖材料核对；底层 Java-WebSocket 为独立依赖 |
| `com.uuzuche.lib_zxing` | 旧扫码封装；底层 ZXing 为独立依赖；旧封装的原许可文件尚未从材料取得，需原依赖材料核对 |
| `com.yanbo.lib_screen` | 工程内投屏集成模块，不能仅凭包名确认作者/原来源，保留代码并标明来源待核对；未声称已核实其许可 |
| `me.yokeyword` / `net.lucode` | IndexableRecyclerView / MagicIndicator，保留上游许可与原 API，精确版本待核对 |
| `site.gemus` | OpeningStartAnimation/FancyView，保留原启动动效与上游 Apache 许可；精确源码版本未从 APK 确认 |
| `top.zibin` | Luban 压缩旧集成，保留原行为与上游许可 |
| `com.github.promeg` / `org.ahocorasick` | TinyPinyin / Aho-Corasick，保留字典相关原路径及上游许可 |
| `org.fourthline` / `org.seamless` | Cling / Seamless 投屏基础库，原制品仓库已不可直接解析；保留原汇编实现和上游许可，Cling 2.1.2 仅为来源比对候选，未冒充精确原版本 |

上游许可文本保存在 `licenses/`，下载来源和摘要记录在 `license-sources.json`。部分许可从上游 README 的许可段保存；这不等于已经确认旧 APK 中每一文件都与当前上游逐字相同。来源未确认的三项继续明确列出，需公司原 Gradle/依赖包材料补全。

没有把原 APK 中的 Umeng 原生库、IJK 原生库和其他跟踪 `.so` 整包复制进仓库。默认原播放链已指向自定义 Exo manager；实时流依赖所带 RTMP `.so` 由官方制品提供。
