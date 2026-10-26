# P2-play-data：旧播放进度 JSON、模型和缓存闭包

状态：**技术门禁已通过，待提交合入；这 3 个类型尚未标记处理完成。**

- 分支 `feature/restore-play-data-b02`，起点/回退目标 `1f237233a2aafd55699e6ded451fddcd37d5e1e3`，开始记录 2026-10-26 17:26:42 +08:00。
- 完整闭包 3 类：`com.mogu.tv.utils.PlayDataSaveUtils`、`com.mogu.tv.model.SavePlayVod`、`com.mogu.tv.model.SavePlayVod$VodData`。依赖原 `SpUtil`、`CacheKey`、Gson，保持它们不变；未发现当前生产代码直接调用工具成员，仍完整承接而不删除功能。
- 需保持：原类/字段/方法/可见性、Kotlin Metadata、nullable getter/setter、id 比较的 equals（不新增 hashCode）、ArrayList 顺序及首个匹配项更新、progress=0 提前返回、负数/异常、Gson 缺省/显式 null 和旧 JSON、全局缓存及重新读取时点。
- 原存储键 `save_playdata`，通过原 SpUtil 获取已隔离的 offline SharedPreferences；不绕开 App 的模式隔离，不读取其他键。测试逐例保存并恢复这一键和缓存，重启用例仅保留受控样本到独立进程读取后恢复。
- 基线测试：`PlayDataBaselineTest` 的 6 个契约用例；`$RestartSeed` 和 `$RestartRead` 分两次 instrumentation，在中间实际 force-stop，检查 PID 不同及旧格式磁盘读取。普通用例覆盖旧 JSON、缺省/null/损坏/错误形态、equals/contains/indexOf、重复项、缓存 stale、零/负进度及异常顺序。
- 先在当前已验收主 APK 的原 smali 上执行并冻结观测；未取得可接受结果前不替换这 3 类。编译期 ABI 不能当作运行实现。
- 门禁：原/新同输入断言及 JSON/重启对照，app 主机测试，Debug/测试/研究 Release，APK/实际资源/合并 Manifest/签名、相关存储行为和消费者检查；阶段结束再执行完整集。
- 本地证据 `.local/migration/P2-play-data/`；批次起点累计验收 2 个类型，生产 smali 3,156；本批验证后的工作区剩余 3,153，合入前不增加已完成计数。

原行为已冻结于 [P2-play-data-original-observations.json](P2-play-data-original-observations.json)。六例契约通过；实际先写入受控记录，再 force-stop，独立进程读取值 8765，确认 PID 不同且初始缓存为空，读取后恢复原键。首次嵌套测试调用中的 `$` 被设备 shell 展开，实际运行了父类六例；测试名称/数量门禁拒绝将其计作重启证据。修正远端转义为 `PlayDataBaselineTest\$RestartSeed` / `\$RestartRead` 后，两次正确嵌套用例分别 1/1 通过，错误调用原记录保留。

已用两份 Java 源码承接 3 个原类型：保留原 Metadata d1/d2/k/mv/xi、全部私有字段和公开 ABI，不新增 hashCode；保留重复列表读取、首个 id 匹配更新、null id 的 Integer 0 回退比较、Gson 默认省略 null/丢弃未知字段及缓存读取时点。只移除对应 3 份 smali，没有改 SpUtil、CacheKey 或 App 模式隔离。

Java 六例契约及独立重启写/读各一例全部通过，三个观测文件与原实现逐值相等。另验证**原 smali APK 写入后，force-stop 并 `install -r` 覆盖为 Java APK，新的进程直接读取旧磁盘记录**，两步各 1/1，读到 id/name/progress 原值且完成原键恢复。未把只清空静态字段当作进程重启，也未清除应用数据。

app 两个 suite / 6 个主机用例、Debug/测试/研究 Release、APK/实际 7,141 资源 ID/合并清单/签名/对齐均通过；原 16 条 Lint 同规则/位置。恢复 DEX 剩余 3,153 类，原 3,158 类型仍各一份，这 5 个已恢复类型都在正常 Java DEX 中且不在 ABI JAR。Debug 当前有 19 个 DEX，按实际恢复标记定位，不依赖历史 shard 编号或以 DEX 数量判行为。

本批未触及诊断、依赖、生成流程、资源、清单和 UI 消费者；没有生产直接成员调用者可作新增页面覆盖声明。未重跑诊断 88 例、完整 47 例页面集及诊断专门 Release 隔离脚本，未计作本批通过。当前为执行者契约复核及实测，不声称独立人员验收。

Debug APK SHA-256：`2637822d1750520a4a17db6c429afc257ed52ab13c6e7c15e083f643a69a5744`；研究 Release：`0bc38a7a070b0f034240ec8ab671fe9e3da1413575e347c3eeafe34a018295e9`。实际安装摘要及全部原始证据哈希见 [P2-play-data-validation.json](P2-play-data-validation.json)。回退使用新撤销提交恢复本批两个 Java 文件和 3 份 smali，以起点 `1f23723` 为实现目标；不会自动改写真实存储或其他设备状态。真实用户旧数据与多版本设备未验证，测试使用受控合成旧格式。
