# P2-url-utils：原查询字符串解析及路由参数

状态：**已验收并合入推送 dev。实现 `edffdd3`，dev 合并 `8930e9e`。合入后已关闭类型去向；仅补交付元数据，运行源码/测试输入不变。**

- 分支 `feature/restore-url-utils-b01`，起点/回退目标 `0342617df948b4480aafa048c7658b1cfe92c070`；开始记录 2026-10-26 17:09:58 +08:00。
- 唯一类型 `com.kotlin.basiclib.utils.UrlUtils`，没有关联内部类。原 public 类、公有无参构造器、public static `getURLparams(String): Map<String,String>`、private static `TruncateUrlPage(String): String` 均须保持。
- 真实直接消费者只有 `ArouterUtils.toUrlPraseJump(Activity,String)` 的 `moguapp://vod?` 分支，非空 Map 的 id 交给 `toVideoDetails` / ARouter。该具体路径没有 ClickUtils 调用，不能将 ArouterUtils 其他方法的时间依赖误加到本闭包。
- 原行为待实测固定：trim 后仅取问号分割的第 2 段；每个参数按等号分割后仅取前两段，重复键后覆盖、不 URLDecode、不去 fragment、不改空串引用比较或空数组异常。不能借恢复改成标准 URI parser。
- 新增 `UrlUtilsBaselineTest`：30 组正常/空值/多分隔/编码/Unicode/异常输入；实际运行类及 generic ABI；原路由的普通 id、重复 id、缺失 id 和空 query 导航分支。先保留所有原观测，再核对候选预期；有差异时按原 Android 结果冻结，不改业务。
- 原目标 APK 继续为已验收 P1 的 offline 包；编译期 ABI 不进入 instrumentation 运行依据。全部设备命令明确 `emulator-5580`，核对安装包身份。
- 本批门禁：原/新同测试与观测、app 主机测试、Debug/测试/研究 Release、APK/实际资源/合并清单/签名、受影响路由消费者及现有路由历史设备用例。诊断、资源、清单和依赖未变，不将未重跑的无关测试计作本批通过。
- 原始证据路径 `.local/migration/P2-url-utils/`；原 P0 与 P1 证据保留。当前迁移类型验收数仍为 1（只有 P1 CommentFilter），本类型尚未完成。

原实现第一次 3 例中 1 例因候选预期不符失败，完整 30 组观测均已保存：`u??a=1` 返回 `{"":""}`，`u?a=1&&b=2` 也包含空键。按实际结果修订两条测试预期后，原实现第二轮 **3/3 通过**，两轮观测 JSON 完全一致，原始结果已冻结于 [P2-url-utils-original-observations.json](P2-url-utils-original-observations.json)。未修改原解析器来消除差异。

Java 逐分支承接原 trim/split、引用比较、Map 覆盖、null 与空数组异常，仅移除 UrlUtils 一份 smali。原消费者不动，测试输入和断言在替换后保持不变。

实际验证：原 / 新各 **3/3 通过**，30 组输入、两个方法的 ABI/generic 类型及真实路由观测 JSON 完全一致；app 两个 suite / **6 个主机用例通过**，既有路由/播放历史设备用例 **1/1 通过**。Debug / 测试 / 研究 Release 构建成功；实际 APK 类、7,141 固定资源 ID、合并 Manifest、签名/对齐均通过，原 16 条 Lint 的规则/位置多重集相同。剩余恢复 DEX 3,156 类，原 3,158 类在 APK 中仍各一份，两个已恢复工具均退出 ABI JAR。

本批未修改诊断、资源、清单或依赖，未重跑诊断 88 例、完整 47 例设备集或 Release 诊断专门隔离检查，不把 P1 的这些通过结果计为本批新执行结果。既有路由历史用例只检查历史包含样例 id，本批未重置其初始历史，故不将该断言称为“新增写入次数”证明；解析器的消费者验收以本批原/新相同 Intent 参数及空 query 不导航为依据。

Debug APK：`defdfee2ecb8f2447f9f7dffffa19df8cc4e1ba44cf172061b897b234f5661de`；研究 Release：`988b2fbde52640ed22cf10851985039ff2995b5455c5758502a56d063c739172`。已核对实际安装应用和测试 APK 摘要。

实现/验证摘要及原始证据哈希见 [P2-url-utils-validation.json](P2-url-utils-validation.json)。本批回退以起点 `0342617` 为目标，通过新的撤销提交恢复该 Java/smali 变动并复验；未改存储、默认模式或线上数据。真实外部 URL/app、不同 Android 版本和生产发布仍未验收。
