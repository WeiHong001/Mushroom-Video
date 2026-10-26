# P0 功能、调用与依赖分组

状态：**静态确认**；基线 `2b882ad1ca2cae2fb81812b0973ef32a67d89fb3`。本文件不是设备行为通过报告。

完整类名、父类、接口、内部/生成类型、成员数量及文件 SHA-256 见 [smali 清单](P0-smali-inventory.csv)；Java/Kotlin 见 [源码清单](P0-source-inventory.csv)。可用 `python dev/migration/p0_inventory.py` 重建清单；脚本会拒绝将相对基线已改变的受跟踪 app/core 源码标记为原始基线。

## 口径与局限

下表是冻结的定位分组：F01～F13 共 13 个业务定位组、G01 一个生成代码组；旧集成另分 20 组。分组按完整类名规则归属，数字包含内部类和编译器生成类型，不是功能完成率、迁移批次数或工期。跨组调用存在，后续必须按实际闭包拆批，不能照表逐目录翻译。

[依赖汇总](P0-inventory-summary.json) 的 `group_edges` 是 smali 中唯一“引用类→被引用类”对的分组计数，包含注解和类型引用，**不是调用频次、动态分派图或完整可达性证明**。下表的具体链路另外核对了 smali 的 `invoke-*` 和已有 Java 实现。Java 组装链、XML 和运行反射不能仅靠该词法图判定。[风险信号](P0-static-signals.csv) 仅标记显式资源/反射/序列化/本地数据线索；没有信号不能证明无依赖，尤其 Gson 反射模型不要求每个类显式引用 Gson。

## 业务与生成代码

以下相对类名在未另注明时位于 `com.mogu.tv`；基础框架、基础工具位于 `com.kotlin.basiclib`。数量仅统计 `app/src/main/smali`，不含表内同时提及的已有 Java 实现。

| 组 / smali 数 | 当前调用关系与边界 | 资源、反射、序列化及本地依赖 | 后续替换约束 |
| --- | --- | --- | --- |
| F01 基础框架 / 86 | `base.BaseApplicaiton` 初始化 ARouter；`base.CommonBaseActivity`、`CommonBaseFragment`、`ActivityBinding*`、`FragmentBinding*`、`ViewBindingUtil` 被各页面复用；部分通用 widget 也在本组 | `ViewBindingUtil` 及 3 个辅助类通过泛型父类和反射找 `bind` / `inflate`；`StatusBarUtil` 反射 MIUI/魅族字段；基础布局、主题及 lifecycle owner | 必须保留泛型签名、静态 Binding 方法、委托和生命周期释放；已有 Java `BindingLifecycleObserver` 承接接口默认方法，不能还原成旧 `$-CC` 调用 |
| F02 基础工具 / 38 | `utils.SpUtil`→SharedPreferences，`ACache`→文件缓存；`HttpGlideUrlLoader`→已有 Java `HttpMyUrlFetcher`；`ClickUtils` 被路由及列表调用；`DateUtil` 被 12 个外部 smali 类调用 | `SpUtil$prefs$2` / `$name$2` 为延迟初始化；缓存、媒体扫描、文件与权限、线程局部日期格式、系统时间、Toast 都不能按“工具”忽略 | 对象 `INSTANCE`、`$default`、访问器、默认值和同步语义均是兼容入口；不能以 JVM 测试跑通 ABI 占位类作为行为验证 |
| F03 网络 / 65 | `api.ApiManager`→已有 Java `ApiClient.getService()`→`ApiService`→Retrofit/Rx；`NetCallBack` / `NetStringCallBack` 及内联回调解析模型并回调页面 | Gson 字段/泛型、UUID 偏好、JSON 缓存；已有 Java 请求组装为访问限制→鉴权→UUID→可选诊断→离线拦截；TLS 使用现有系统校验 | 保留 60 个接口契约、错误码、线程/回调顺序、只读限制；`offline` 不代表 Gradle 断网，运行样本不得变成线上写入 |
| F04 模型 / 88 | API / Gson→`model.*`→Adapter/页面；事件模型经 EventBus；`SavePlayVod` / `$VodData` 由 `PlayDataSaveUtils` 序列化 | 字段名、缺失字段默认值、构造函数、Kotlin data class 的 `copy` / `componentN` / `$default`；部分类有 Serializable，不能据此推定所有模型均实现它 | 必须按真实模型逐个固定 JSON；只保留 getter 而改变字段、注解或构造器会影响反射解析和旧数据 |
| F05 适配器 / 66 | `adapter.*`→BaseRecyclerViewAdapterHelper；评论适配器→`CommentFilter.getegularTxt`；列表→`ArouterUtils` / 详情；社区列表→`NineGridLayout` | 原 `item_*` 布局、Binding 字段、图片与模型；点击回调及 ViewHolder 的运行类 | 不能只迁移外层 Adapter 而遗漏匿名/编译器回调；旧 BRVAH API 和资源保持 |
| F06 媒体 / 20 | 详情/短视频→`view.*Video*`→GSY→`utils.exo.ExoMyPlayerManager` / `IjkExoMyMediaPlayer`→Exo；Java `HlsMyPlaylistParser` 承接播放清单解密 | 原播放布局、音视频状态、播放 URL 对内容 ID 的映射、缓存文件及释放顺序；`HlsMyMediaSource` 内部类必须同组核对 | 保留 Java `ExoListenerMediaPlayer` 桥接、reason/state 修复、默认监听方法、取消/释放；缺少设备时无法验收播放进度和唯一活动播放器 |
| F07 应用工具 / 53 | `utils.ImageUtil*`→Glide/PictureSelector/Luban；`DialogUtils*`→页面/回调；`CommentFilter`→评论展示和昵称校验；`PlayDataSaveUtils`→SpUtil/Gson | 对话框布局和主题、图片资源/输出文件；`save_playdata` 和 `SavePlayVod` 模型；图片协程/回调；过滤器本身无直接资源/持久化依赖 | 生成 Glide API 已移至 G01；图片处理和播放状态工具有外部依赖，不能以名称或短小确定低风险 |
| F08 自定义控件 / 30 | `view.*` 的非视频控件、弹窗、显示帮助；已有 Java `NineGridLayout`、`DYLoadingView`、`LikeLayout` 等另计源码 | XML 全类名、自定义 attrs、尺寸、触摸与动画；部分发现定义但未发现接入的控件不得宣称正在被业务使用 | 按 XML/调用者核对接入，保留资源 ID 和构造器；绘制、手势、滑动需设备断言 |
| F09 启动及浏览 / 147 | Java `main.App`→研究运行时、User/网络/播放器/旧集成初始化；`ui.LoadingActivity`→`MainActivity`→五栏及列表；搜索/排行/标签继续走 ApiManager/Adapter/路由 | `act_loadpage`、`activity_main`、`act_search`、`act_rank`、`frag_pianku` 等；搜索历史、首次启动、夜间模式、Binding、协程 | 原 38 个业务 Activity 是入口索引，不是全部操作验收数；启动权限/TLS 等已记录修复不能撤回 |
| F10 详情及短视频 / 87 | `ui.DetailsActivity`、`DetailVipVideoActivity`、`Short*Fragment` / `ShortDetailsActivity`→API/评论/视频 View→F06 | `act_details`、`act_vipdetails`、`act_shortdetails`；详情参数 `ids`，短视频 ID/封面/播放地址等；精品通过 `Companion.vipData`；历史、点赞及播放器生命周期 | 必须连同关联匿名类、参数和跨页播放器管理核对；页面能打开不足以证明播放和释放 |
| F11 社区 / 66 | `Shequ*` / `SheQu*`、`TouGao*`、图片预览及相关页面→社区 API/Adapter/Glide/图片选择；`CommentNewsActivity` 也在本组 | `act_shequinfo`、`act_tougao`、`act_imglook`、`dialog_comment`；详情 `id`，预览 `url` 列表和 `position`；评论缓存、本地合成状态 | 图片上传、发帖属于外部写入，P0 不执行；离线显示/样例不能冒充真实上传完成 |
| F12 账号及本地状态 / 181 | `Mine*`、登录注册、收藏历史、设置、用户资料等→`main.UserManager`→ApiManager / SpUtil；昵称回调→CommentFilter→修改资料 API | 原账号、收藏、历史、设置布局；`user_token`、锁屏、夜间模式；JSON 模型、EventBus；Java `App` 对偏好与目录追加 offline/live 隔离 | 真实登录/短信/上传/结算等无受控服务与账号，未执行；不提交偏好文件、鉴权内容或设备数据 |
| F13 路由、共享与旧包名桥接 / 13 | `common.arouter.ArouterUtils`→ClickUtils / UrlUtils→ARouter 或页面；`com.wgq.wangeqiu.main.H5toNative`、`com.qushare.news.utils.ShareUtils` 等保留旧入口 | `ArouterUrls`、`H5Url`、请求码、Web/JS 桥、Intent；`common.cache.CacheKey` 定义共享键；旧包名不自动归入第三方 | 检查字符串反射、JS 调用与外部 URI；不能因不在 `com.mogu.tv` 就删除或当正式依赖替换 |
| G01 生成代码 / 128 | 117 个 Binding、3 个 ARouter 表、6 个 Glide API/模块工厂、2 个 BuildConfig | Binding 由 `bind` / `inflate` 反射及页面直接调用；路由为 `ARouter$$Root$$app`、`ARouter$$Group$$module`、`ARouter$$Providers$$app`；Manifest 声明 Glide 模块 | app 目前未启用标准 Data/ViewBinding 生成或 ARouter/Glide annotationProcessor；不能直接开启后与现有生成 smali 重复打包。`com.mogu.tv.BuildConfig` 与实际 Gradle namespace `com.amogu6.tv.BuildConfig` 不同 |

业务 smali 中的形态另行统计为顶层 377、具名内部类 74、匿名内部类 141、具有明确生成证据的类型 476；这与上述“职责”是两个维度，不能相加。编译器生成类型包括 Lambda/Continuation、`Companion`、默认接口辅助类型和 8 个 Kotlin 文件门面；这些类型可能承载关键业务控制流，不代表可以丢弃。

## 本地数据和模式边界

`common.cache.CacheKey` 的实际字符串包括 `replycachekey_news`、`nightmode`、`user_token`、`search_list_key`、`save_playdata`、`suopingstr`、`shortvideopage`、`firstloadversion_1`、`loadshare`。这是**键名清单**，未读取实际用户值。`SpUtil` 的委托和 `$default` 调用仍由 smali 实现。Java `App.getSharedPreferences` 在原名称前增加 `offline-` / `live-`，files/cache 等目录也按模式隔离，后续不应绕开该组装层。

`PlayDataSaveUtils` 虽未发现当前直接成员调用者，仍静态依赖 `SpUtil`、`CacheKey`、Gson、`SavePlayVod` / `$VodData`，含进度为零直接返回和旧数据更新逻辑；没有调用者证据不等同可以删除。`ApiClient` 的鉴权读取 UserManager，离线使用 ResearchInterceptor/OfflineRepository 合成内容；本轮未请求业务线上服务。

## 旧集成（单列，不纳入业务源码恢复数量）

| 包前缀 / smali 数 | 当前耦合与保留条件 |
| --- | --- |
| `com.chad.library` / 64 | 列表适配器基类；精确旧制品与 API 差异待核对 |
| `com.luck.picture` / 266；`com.yalantis.ucrop` / 86 | 选择/裁剪 Activity、资源、Provider、文件和权限；BuildConfig 的通用 2.0.0 不能证明整个制品版本 |
| `com.scwang.smartrefresh` / 151 | 列表刷新、footer、XML 属性；精确版本待核对 |
| `com.github.like` / 20 | LikeButton 控件与 attrs；不等同 Java LikeLayout；精确版本待核对 |
| `com.github.lzyzsd` / 14 | Web/JS 桥字符串调用；精确版本待核对 |
| `com.qiniu.android` / 40 | HappyDNS，网络发现基础能力；精确版本待核对 |
| `com.youth.banner` / 52 | 轮播控件、图片和布局；精确版本待核对 |
| `com.azhon.appupdate` / 53 | 更新下载/安装入口、Service、Provider；本轮不触发在线更新 |
| `com.zhangke.websocket` / 56 | App 初始化及网络广播；APK 的 3.0 常量仍需材料核对，原许可文件待补充 |
| `com.uuzuche.lib_zxing` / 51 | App 初始化、扫码 Activity、相机；旧封装许可材料待补充，底层 ZXing 独立依赖 |
| `com.yanbo.lib_screen` / 71 | App→VApplication 与投屏页面/服务；原来源及许可待核对，无接收设备 |
| `me.yokeyword` / 53；`net.lucode` / 48 | 索引列表、拼音/标题导航和自定义 attrs；精确版本待核对 |
| `site.gemus` / 19 | 启动动画；版本待核对 |
| `top.zibin` / 16 | Luban 图片压缩、文件回调；版本待核对 |
| `com.github.promeg` / 22；`org.ahocorasick` / 19 | 拼音/字典和匹配；保留字典资源与原 API，版本待核对 |
| `org.fourthline` / 842；`org.seamless` / 147 | Cling/Seamless 投屏、UPnP、网络与服务；原仓库制品不可直接解析，2.1.2 仅是来源比对候选，无真实投屏验收 |

合计 2,090。旧集成的类形态为顶层 1,201、具名内部类 461、匿名内部类 383、编译器生成类型 45；另含各库自身资源/BuildConfig 等，不能把顶层数量解释成业务功能数。版本/许可结论沿用 [来源清单](../../third_party/README.md) 的证据边界：已有上游许可不代表已确认原制品版本或无定制；尚缺材料的项目继续保留，本轮未替换任何旧库。

## 定位依据

- [业务入口清单](../../docs/business-inventory.md)、[Manifest](../../app/src/main/AndroidManifest.xml)、[路由表目录](../../app/src/main/smali/com/alibaba/android/arouter/routes)。历史页面通过结果仅见其原报告，不转记为本轮通过。
- [现有 Java API 组装](../../app/src/main/java/com/mogu/tv/api/ApiClient.java)、[App 初始化与模式隔离](../../app/src/main/java/com/mogu/tv/main/App.java)、[Binding 反射](../../app/src/main/smali/com/kotlin/basiclib/ViewBindingUtil.smali)、[用户状态](../../app/src/main/smali/com/mogu/tv/main/UserManager.smali)。
- [候选完整签名及调用者](P0-candidate-contracts.json)、[首批建议](P0-pilot-recommendation.md)、[基线与结论](P0-baseline.md)。
