# P2-cache-keys：本地存储键单例契约

状态：**已验收并合入推送 dev。实现 `cb2fa7d`，dev 合并 `ab15dca`；实际合入后关闭类型，按用户要求暂停，当前仅补检查点。**

- 分支 `feature/restore-cache-keys-b05`，起点/回退目标 `8555c85c8fbcbcdae8a979d65184d875dcb7a63a`，开始记录 2026-10-26 19:43:09 +08:00。
- 唯一类型 `com.mogu.tv.common.cache.CacheKey`。保留 public final 单例、私有构造器、9 个私有 static final String、9 个 public final 实例 getter 和原 Kotlin Metadata；保留 clinit 的先 INSTANCE 后各键顺序。
- 原键包括评论草稿、夜间模式、用户 token、搜索历史、进度、锁屏、短视频页码、首次版本和来源标记。只验证键名字面值，不读取或提交其偏好值/账号资料。
- 新 instrumentation 测试验证原 9 个键、字段/方法/构造器和 getter 返回原字段对象、运行时 Metadata。之后复跑现有播放状态消费者，并因影响广增加全部主机、完整离线设备集及 Release 隔离。
- 生产数据格式和键名不变；不借此重做偏好实现、不迁移 SpUtil 或账号业务。相关真实账号/生产发布仍未验收。
- 原始证据 `.local/migration/P2-cache-keys/`；批次起点已验收 11，剩余 smali 3,147。

原实现 **1/1 通过**，9 个 getter/原字段对象和运行时 Metadata 全部取证，见 [原观测](P2-cache-keys-original-observations.json)。只读取键名而不读取偏好值；原 clinit 顺序和非 const 属性以 Java 静态块保持，仅移除该类一份 smali。

首次 Java 增量构建失败于 packageDebug：此前后合入的恢复 `classes19.dex` 与本轮 AGP 普通分片同名，增量 Zipflinger 拒绝覆盖。保留 `build-java.log` 及原 APK；执行正常 `:app:clean` 清理生成输出后重建，不删除业务/源 smali，不改 APK 检查或资源规则。此为混合打包机制限制，相同冲突可从相同源码干净重建，失败包不计通过。

干净重建 **48s 成功**。Java 同一例 1/1，所有键名、原字段/getter 身份、ABI 和完整运行时 Metadata 与原实现逐值一致；现有 PlayDataBaselineTest 六例通过且与已冻结原存储观测一致。键名以外的实际偏好值未作为本测试观测读取或提交。

本批 **17 suites / 94 主机用例通过**；完整离线回归 **43/43 调用、47/47 设备用例通过**，45 张截图已复核，WebView 与滑动后视频色条可见正常。Debug/测试/研究 Release、7,141 实际固定 ID、合并清单、无重复/占位、研究签名/对齐及 Release 诊断隔离通过；16 条原 Lint 同规则/位置。原 3,158 类型仍各一份，恢复 DEX 剩余 3,146，12 个源码类型不在 ABI JAR 中。

Debug SHA-256：`e19665cfe02b0573de3b1bd658a036c5cadab88a5a0fdae013b429abc96f33ff`；研究 Release：`bbc2b05d0e6c366ab50904e49943e4a98ed49811e7a203f37996927c9ad83d86`。证据索引见 [P2-cache-keys-validation.json](P2-cache-keys-validation.json)。回退以 `8555c85` 为实现目标，使用新撤销提交恢复本类 Java/smali 并复验，不修改已共享历史。

用户在本批执行中要求“做完这个可以先暂停一下，然后记录一下计划书，等下次再继续”。本批交付后记录计划书/进度并暂停，后续事件载荷草稿尚未纳入 app、构建或迁移；暂停不代表全量完成或全部外部受阻。真实账号/外设/生产发布、原 Lint 和混合构建限制继续保留，复核未冒称独立人员验收。
