# P0 首批试点建议：评论展示与昵称文本过滤

状态：**静态确认的 P1 建议，未实施**。基线为 `2b882ad1ca2cae2fb81812b0973ef32a67d89fb3`；本轮不恢复、不删除 smali，也未添加 P1 行为测试。

## 推荐边界

推荐功能组为“评论展示与昵称文本过滤契约”，实现对象仅 **`com.mogu.tv.utils.CommentFilter`**，建议使用 **Java**，保留现有 Kotlin `Regex` / `Intrinsics` 依赖，不启用 app Kotlin 编译插件。这是一个由三个现存调用者共同使用的输入输出边界，不依据文件长度作出选择。

该类没有继承业务基类，没有关联 `$` 内部类、`Companion` 或独立 Lambda 类型；它仅依赖 `java.lang.*`、`kotlin.text.Regex`、`kotlin.jvm.internal.Intrinsics` 及 Kotlin Metadata。未发现指向该类的 XML、Manifest、Java/Kotlin 源码引用或反射类名字面量。该结论来自受跟踪源码扫描，不能排除运行时拼接类名或仓库外调用。

三个调用者均保留原 smali；它们不是本建议中要同步迁移的实现对象，但必须加入回归范围。

| 完整调用者 | 当前成员调用及实际作用 | 相邻资源/依赖 |
| --- | --- | --- |
| `com.mogu.tv.adapter.NewCommentAdapter` | `convert(BaseViewHolder, CommentLists$CommentItem)` 读取 `INSTANCE`，调用 `getegularTxt(String)`，结果交给 TextView | `ItemNewcommentLayoutBinding.tvCommentContent`、`item_newcomment_layout`、`CommentLists$CommentItem`、旧 BRVAH |
| `com.mogu.tv.adapter.ShortCommentAdapter` | 同一模型的 `convert` 读取 `INSTANCE`，调用 `getegularTxt(String)` | `ItemShortcommentLayoutBinding.tvCommentContent`、`item_shortcomment_layout`、短视频评论列表 |
| `com.mogu.tv.ui.activity.EditUserInfoActivity$initData$3$1` | `getContent(String)` 调用 `INSTANCE.isRegularText(String)`；拒绝时 Toast，通过时进入 ApiManager 的用户修改链 | `EditUserInfoActivity`、`DialogUtils` 的输入回调、`act_new_userinfo`、UserManager；本轮未执行资料提交 |

第三个调用者本身是 `EditUserInfoActivity` 的回调类，关联外层及 `$initData$3$1$getContent$1` 网络回调应在调用者回归中保留，不能误当作 CommentFilter 的内部类删除。完整引用与字段/方法原文见 [候选契约 JSON](P0-candidate-contracts.json)。

## 必须保留的二进制契约

类保持 `public final`，父类为 `java.lang.Object`。smali 现有字段如下，含拼写 `replce1`：

```text
public static final INSTANCE:Lcom/mogu/tv/utils/CommentFilter;
private static regular:Lkotlin/text/Regex;
private static replce1:Lkotlin/text/Regex;
```

必须保留字段的静态性、可见性和类型；不得用 `java.util.regex.Pattern` 替换对外 `Regex` 类型，也不得把实例 API 改成只提供 static 方法。

```text
static constructor <clinit>()V
private constructor <init>()V
public final getRegular()Lkotlin/text/Regex;
public final setRegular(Lkotlin/text/Regex;)V
public final getReplce1()Lkotlin/text/Regex;
public final setReplce1(Lkotlin/text/Regex;)V
public final getegularTxt(Ljava/lang/String;)Ljava/lang/String;
public final isRegularText(Ljava/lang/String;)Z
```

已有调用者直接用到 `INSTANCE`、`getegularTxt` 和 `isRegularText`；其他公开访问器虽未发现外部直接调用，也必须保留。`regular`、`replce1` 是可变静态状态，getter/setter 不能因“暂未调用”被删掉或变成固定常量。

## 当前行为及风险

静态核对了完整 smali，并以不参与编译的 reference Java 交叉阅读；以下仍是**静态行为推导，尚无本次设备运行证据**。

- `<clinit>` 创建唯一实例，初始化 `regular` 为正则 `^.*\d{5}.*$`，`replce1` 为 `\s*`，未指定 DOT_MATCHES_ALL 等额外选项。
- `getegularTxt` 仅执行 `Intrinsics.checkNotNullParameter(str, "str")` 并原样返回同一 String。不得因类名叫 Filter 就新增删除数字、修剪空格或敏感词替换。
- `isRegularText` 依次调用两个 Regex 的 **`matches`（全串匹配）**；任一匹配则返回 false，否则 true。不能替换成 `find`、简单“包含五位数字”或先 trim，换行/Unicode 空白的表现须在原实现上固定。
- 两个 setter 用 `Intrinsics.checkNotNullParameter(value, "<set-?>")` 拒绝 null；两个字符串 API 同样拒绝 null。保留异常类型及兼容的空值检查，不以空串兜底。
- 静态扫描未发现本类直接依赖资源、Gson/Serializable/Parcelable、本地偏好/文件、线程或 Android Context。调用者的昵称流程会继续访问用户状态和 API，因此回归必须使用离线样本。
- 原类型带 `kotlin.Metadata`。未发现针对 CommentFilter 的 Metadata/反射消费；Java 恢复时仍须专门审查该注解和二进制消费者，按实际需要保留兼容元数据，不因换语言就假定没有影响。

主要风险是“看似修正命名/过滤逻辑”导致行为变化、把 `Regex` API 改成其他类型、全局正则可变状态污染用例，以及昵称测试误走线上。此组在当前仓库中的直接依赖比其他候选更窄，三个真实消费者能提供展示与校验两个方向的验证，适合首批演练。

## 可执行验证方案（进入 P1 后实施）

当前 app 的 JVM 编译类路径里，未恢复类型来自 `business-abi.jar`，方法体抛出 `AssertionError`。因此**不能在普通 JVM 测试中直接调用这个 ABI 类并声称验证了迁移前实现**。缺少研究模拟器时，只能固定静态契约，无法获得当前 smali 的运行结果。

P1 获得启动指令、具备专用离线研究模拟器后，先保留本次 APK/类清单，新增一个真正运行于 Android 的 `com.mogu.research.CommentFilterBaselineTest`（名称为建议，当前不存在），在未替换 smali 的 APK 上执行并保存结果，再恢复 Java，重复同一组用例。应用和测试 APK 必须显式离线构建、安装到核对过的专用 emulator；不得使用自动选择的个人设备。建议矩阵：

| 检查 | 必须固定的输入/断言 |
| --- | --- |
| 默认规则 | 空串、ASCII 空格、tab、换行、普通中文/英文、4/5/6 位连续数字、数字前后文字、含换行的五位数字、多字节空白及 Unicode 数字；逐项保存原 smali 的实际结果，不把静态推断作为 oracle |
| 原样展示 | `getegularTxt` 对上述非 null 内容及 HTML/emoji/较长文本返回同一对象且字符完全一致，两个评论适配器展示内容保持 |
| 可变状态 | getter 返回实际 Regex；分别替换两个规则、检查命中及未命中；每例 finally 恢复原 Regex，避免全局状态泄漏 |
| 异常 | 两个字符串 API、两个 setter 的 null 输入；保存原异常类型及所需诊断信息 |
| ABI | 反射核对 class/constructor、`INSTANCE` 类型和修饰符、两个私有 static 字段、六个 public final 方法的描述符；对照本 JSON 和最终 DEX，确保类唯一且 ABI 占位未泄漏 |
| 消费者 | 普通/短视频评论列表渲染；离线昵称的拒绝/允许分支及回调；网络通过离线拦截器，不进行线上资料修改 |

P1 测试建立后的设备命令示例（**本轮未执行，不能计入 P0 通过数**）：

```powershell
.\gradlew.bat :app:assembleDebug :app:assembleDebugAndroidTest -PresearchMode=offline --console=plain
# 核对专用研究模拟器、安装包 SHA-256 后，使用其实际序列号安装。
adb -s <专用模拟器序列号> shell am instrument -w -e class com.mogu.research.CommentFilterBaselineTest com.amogu6.tv.research.test/androidx.test.runner.AndroidJUnitRunner
```

替换后还需复跑本轮 94 个既有主机用例、Debug/测试 APK、研究 Release、APK 完整性、Release 隔离及 `run_device_validation.py --serial <专用模拟器序列号>`。不升级依赖、不启用新的源码插件、不调整资源或删除任何关联调用者；若契约无法等价承接，保留 smali 并停止该批合入。完整回退以 P1 起始提交及本 P0 APK 摘要为准，通过新撤销提交处理已共享历史。

## 暂不优先的候选

| 候选完整类名 / 关联类 | 实际依赖及暂不优先原因 |
| --- | --- |
| `com.kotlin.basiclib.utils.ClickUtils`；无内部类 | 4 个外部调用者为 ArouterUtils、`QiuPianActivity$initData$1`、ListIndexTabFragment、ListMainFragment。依赖 `System.currentTimeMillis`、共享 `lastClickTime`、synchronized 及 BaseApplicaiton/Toast/Log；三个防重复 API 的时间窗口、时钟回拨和状态更新路径不同，不能仅测 true/false 正常分支 |
| `com.kotlin.basiclib.utils.DateUtil`；`$1`、`$2`、`$3`、`$4` | 外层 35 个方法，4 个 ThreadLocal<SimpleDateFormat> 匿名类，12 个外部调用者；受默认 Locale、时区、解析宽松性、null、格式和快速点击状态影响。历史“8 秒显示 00:00”仅为历史/静态问题，迁移不得顺手修复。完整 47 个方法声明及调用者见 JSON |
| `com.kotlin.basiclib.utils.UrlUtils`；无内部类 | 一个外部调用者 ArouterUtils。虽仅依赖 JDK，但真实路径为路由参数解析；`split` 对空段/多 `?`/多 `=`、重复键覆盖、无 URLDecode、空值及可能异常需原实现差分。是第二候选，不将字符串切分改成标准 URI parser 来“优化” |
| `com.mogu.tv.utils.PlayDataSaveUtils`；直接依赖 `com.mogu.tv.model.SavePlayVod` / `$VodData`（不是它的内部类） | 未发现外部直接成员调用，不代表可删除；依赖 SpUtil、CacheKey、Gson、持久 JSON 和静态缓存，必须先准备旧样本、equals/contains/indexOf 行为及重启验证，缺少设备与旧数据兼容证据时不作首批 |

五个候选的全部字段、方法、关联类、直接成员引用者及源码/资源名字命中均已导出至 [P0-candidate-contracts.json](P0-candidate-contracts.json)。这份建议不构成启动 P1 的通知。
