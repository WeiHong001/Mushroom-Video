# P2-click-utils：共享点击时钟、同步和消费者去重

状态：**技术门禁已通过，待提交合入；此类型尚未标记处理完成。**

- 分支 `feature/restore-click-utils-b03`，起点 `c33ea849ad68c312f685016f1cb8bfed895f8e9e`；开始记录 2026-10-26 18:00:43 +08:00。
- 唯一类型 `com.kotlin.basiclib.utils.ClickUtils`。保持单例、private static final SPACE_TIME=1200（原在 clinit 赋值）、private static long lastClickTime、私有构造器、5 个 public final 方法；三个判定 API 保持同步，getter/setter 保持原非同步属性。
- 4 个真实直接消费者均调用无参 isDoubleClick：ArouterUtils.clickAd（广告计数请求）、QiuPianActivity$initData$1（验证码图片刷新）、ListMainFragment / ListIndexTabFragment 的换批子项回调。不是点击视频导航，也不是求片提交；不把静态大类依赖当作此路径调用。
- 必须实测：允许分支写入时钟、拒绝分支保留时钟；0<elapsed 的零毫秒边界；未来 lastClickTime 模拟回拨；long 溢出、0/负/大窗口；共享状态；三个同步方法的实际 monitor 与非同步访问器；matchTimeDouble 的 Main Looper Toast 及无 Looper 线程行为。
- 时间测试使用相同输入生成规则和调用前/后时钟界限，不伪称两次运行的系统绝对毫秒数相同。精确零间隔通过实际同毫秒窗口观测，不替换系统时钟。
- 消费者用原 Activity/Fragment、真实离线传输及原回调，固定拒绝/允许请求或页码变化；不执行线上广告计数、账号或生产写入。
- 原始证据 `.local/migration/P2-click-utils/`。批次起点累计验收 5、生产 smali 3,153；验证后工作区剩余 3,152，合入前不增加完成计数。

原首轮 7 例中 6 通过、1 候选预期不符。无 Looper 的实际平台 Toast 抛出 NullPointerException，消息为 `Can't toast on a thread that has not called Looper.prepare()`；核对堆栈来自 `android.widget.Toast` 后按原行为固定，第二轮 **7/7 通过**。同步/非同步、同毫秒边界、回拨和溢出、共享窗口及四消费者拒绝/允许均已取证，见 [原观测](P2-click-utils-original-observations.json)。未改生产类来消除预期差异。

Java 保留原 clinit 顺序，SPACE_TIME 在静态块赋值，保留五个实例 API 的同步属性、Kotlin Metadata、日志与原 Toast/异常；仅移除对应一份 smali。Kotlin SMAP/源码行号改由 Java 编译信息承接，不冒称旧 Kotlin 行号与新源码对应。

复核时补充三个 API 的精确窗口上界（默认 1200ms、自定义/Toast 10000ms），使用真实同毫秒采样固定“小于”而非“小于等于”的分支。先回装已保存原 APK 跑最终七例 **7/7 通过**，原既有观测不变；再安装 Java 正式 APK，用完全不变的测试 **7/7 通过**，整个 JSON（含异常诊断、Toast 文本、原方法 modifiers、4 个消费者和上下界）逐值相等。

消费者边界：使用原 Loading→Main/求片 Activity、原 Fragment 与真实离线数据，直接调用原回调主体；不声称覆盖所有触摸包装。广告和验证码的拒绝分支不发请求，允许分支各多一个真实离线请求；两种换批拒绝时页码不变、允许时各由 1→2，原成员调用者源码哈希不变。

app 两个 suite / 6 主机用例、Debug/测试/研究 Release、APK 类唯一性/无占位、7,141 个实际资源 ID、合并清单、研究签名/对齐及原 16 条 Lint 同规则/位置全部通过。原 3,158 类型仍各一份，恢复 DEX 剩余 3,152，6 个已恢复类型均由正常 Java DEX 提供且退出 ABI JAR。

本批未改诊断、依赖、资源、清单、生成流程；未重跑诊断 88 例和完整 47 例页面集/专门 Release 隔离脚本，未转记旧结果。测试全部在 API 34 专用离线模拟器完成，不推定其他 Android 版本的 Toast 异常实现相同；真实外设、账号和生产发布限制继续保留。

Debug APK SHA-256：`a186ba50147abbe7e3ba76c63c30d018f211f54341e4401900f4e5f340c3128a`；研究 Release：`7c3021c261eff7b0b57dd51609db2725315809020058e3bd8d40a01adb6c5f4c`。详细索引见 [P2-click-utils-validation.json](P2-click-utils-validation.json)。回退以 `c33ea84` 为实现目标，用新撤销提交恢复本类 Java/smali 并复验；本批没有存储变更。复核为执行者契约审查及实测，不冒称独立人员验收。
