# P2-date-utils：日期格式、解析、线程局部及旧显示分支

状态：**技术门禁已通过，待提交合入；这 5 个类型尚未标记处理完成。**

- 分支 `feature/restore-date-utils-b04`，起点/回退目标 `adce137075e2eab80b2b500af6e994e8d718b77e`，开始记录 2026-10-26 18:47:17 +08:00。
- 闭包 5 类型：`com.kotlin.basiclib.utils.DateUtil` 和 `$1`～`$4`。外层 33 个普通公开静态方法，另有构造器/clinit；内部各有构造器、protected SimpleDateFormat initialValue 及 protected bridge Object initialValue。反编译参考的 public 修饰符不作为依据。
- 6 个私有静态字段：4 个 final ThreadLocal 和 2 个非 volatile long 点击时钟。初始化顺序保留 dateFormater4、5、2、3，以常规匿名类保留 `$1`～`$4` 名称；未发现其他生产类型直接引用这四个匿名类型。
- 12 个直接调用者已核对：MainActivity$onStart$1、History/InviteList/Message/NewComment/ShequList/ShequLoveList/ShortComment/VideoListsAdapter、MessageDetailsActivity$getServerData$1、ShequDetailsActivity、VideoDetailsFragment。其他类型未批量算作本批范围。
- 固定输入覆盖 UTC/上海/纽约及 US/中文/阿拉伯 Locale，null/空串/损坏/宽松解析/DST/负数和极值，原 formatTime 的 8 秒显示 00:00 等分支；不改成“更合理”的时间算法。
- 补 ThreadLocal 的首次默认值、跨线程隔离、默认时区变更后的旧缓存；两类静态同步时钟的零/上界/未来时间及相互独立状态。
- 消费者采用受控模型+原适配器/布局，以及原页面和 Main 的受控回调。日期生成的客户端签名只在离线传输内核对布尔结果，不提交设备 UUID/签名/原响应，不写实际剪贴板。
- 本批跨度大，验收增加全部主机、完整离线设备集和 Release 诊断隔离；只记录本批实际执行，保留 P0 快照。
- 原始证据 `.local/migration/P2-date-utils/`。批次起点累计验收 6、生产 smali 3,152；原八例通过后才替换，工作区现剩余 3,147，合入前不增加完成计数。

原 / 新各 **8/8 通过**，冻结观测逐值完全相同：4 个 Locale/时区组合的 **1,372 个固定结果条目**、当前/相对日期规则、33 个普通公开方法的描述符和修饰符、4 个匿名类 ABI、缓存默认时区与跨线程隔离、两类静态点击时钟的零/上界/未来/溢出和 Class monitor。

8 个原适配器使用受控模型、原布局和 convert，实际时间字段均渲染正确；视频 8 秒保留 `00:00`。3 个原详情页面显示本机合成日期。Main 原 `onStart` 回调直接接受受控 `mogushare_31337`，经真实 ApiClient 离线传输验证日期参与的摘要片段与独立平台日期一致；仅记录布尔结果，未保存 UUID/签名/响应、未改剪贴板，并恢复原 loadshare 键和客户端组装。12 个原成员调用者及测试源码哈希保持不变。

本批另重跑 **17 suites / 94 个主机用例**，名称和场景与 P0 主机集核对一致，无失败/错误/跳过。完整离线回归 **43/43 调用、47/47 设备用例通过**，45 张截图已复核，视频色条和 WebView 本轮均可见正常。Debug/测试/研究 Release、实际 7,141 资源 ID、合并清单、重复类/占位检查、研究签名/对齐与 Release 依赖/清单/DEX/资源诊断隔离均通过。原 16 条 Lint 同规则/位置，无新增忽略。

一份 Java 保留原 4 个匿名类名称、可见性和 protected/bridge 修饰符，5 份 smali 已由真实源码承接。原 3,158 运行类型仍各一份，恢复 DEX 剩余 3,147，11 个源码类型均退出 ABI JAR；混合构建继续保留。

Debug APK SHA-256：`3d99c50bb5d207475dd793cf6b6060b95a52ec0c1b04d80861e202e1eca8ce0c`；研究 Release：`ddf5218b12f6b01905328e2cfa1ed774ea70282787928754546b4a951dd1bf91`。证据索引见 [P2-date-utils-validation.json](P2-date-utils-validation.json)。回退以 `adce137` 为实现目标，用新撤销提交恢复本批 Java/5 smali 并复验，不重置共享历史。

本批固定控制 UTC 日为 2026-10-26；相对时钟用同一生成规则和场景断言，绝对毫秒数不宣称相同。将来日期变化后不能仅重命名本轮结果作新基线，须在留存原 APK 上重取相关动态场景。真实多系统/账号/外设和生产发布限制仍在；复核为执行者源/ABI 审查和实测，不冒称独立人员验收。
