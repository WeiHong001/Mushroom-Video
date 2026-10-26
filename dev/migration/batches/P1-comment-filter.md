# P1-comment-filter：评论展示与昵称过滤试点

状态：**已验收并合入推送 dev。实现提交 `a64854f`，合并提交 `03108ab`；本次仅补齐已发生的交付元数据，不改运行源码或测试输入。**

- 分支：`feature/restore-comment-filter`；起点/回退目标 `349817160a3ee1c2ac2667b78d3b6cea70cc924a`。
- 开始：2026-10-26 16:46:48 +08:00。投入按实际分析/实现/验证及返工记录，不将机器等待时间折成人日。
- 唯一迁移类型：`com.mogu.tv.utils.CommentFilter`，由 Java 承接，仅移除其一份 smali。两个评论适配器、昵称输入及网络回调继续原 smali 实现。
- ABI：public final 类、私有无参构造器、public static final INSTANCE、两个 private static Kotlin Regex、六个 public final 实例方法、原拼写与 Intrinsics null 检查均保持。
- 行为：保留全串 matches 和短路顺序、字符串对象原样返回、两个可变规则及 getter/setter。P0 22 组默认输入和所有异常/消费者断言保持不变。
- Metadata：仓库三个直接消费者使用字段/方法调用，未发现针对本类的 XML、字符串反射或 Metadata 消费。仍保留原 Metadata 的 d1/d2/k/mv/xi，降低仓库外 Kotlin 反射兼容风险；不启用 Kotlin 插件。
- 依赖/资源：沿用 Kotlin stdlib、原布局及现有混合构建，无依赖、资源 ID、清单、applicationId 或 namespace 变更。
- 验证计划：同一 `CommentFilterBaselineTest` 六例及冻结 JSON 差分、94 个既有主机用例、Debug/测试/研究 Release、APK/实际资源表/合并 Manifest/签名、Release 隔离、完整离线设备回归。
- 原证据：见 [P0 设备基线](../P0-device-baseline.md)；本批原始输出位于 `.local/migration/P1-comment-filter/`。
- 已验证：原测试保持不变，Java 6/6 通过，观测 JSON 与 P0 完全一致；主机 17 suites / 94 用例通过；Debug/测试/研究 Release 构建、APK/资源表/清单/签名/隔离通过；原 16 条 Lint 的规则/位置多重集一致。完整离线设备回归 **43/43 次调用、47/47 用例通过**，无失败或跳过。
- 类型来源：原 3,158 个类型在实际 APK 中各一份；恢复 DEX 为原集合减去 CommentFilter（3,157 个），CommentFilter 位于正常 Java 编译 DEX，且已退出 compileOnly ABI JAR。
- 过程说明：首次 APK 检查发生在 Gradle 尚未执行完恢复 DEX 合入时，完整性保护拒绝中间包，未安装该包；等待构建完成后正式产物检查通过，未改检查规则。
- 复核边界：高风险独立复核不作本低耦合试点的虚构通过项；本批仍为执行者自查及实际测试。

45 张完整回归截图已复核；WebView 本轮为正确白色离线空页。部分短视频全量采集帧为黑色，未将其当作画面等价证据；停止应用后独立重跑同一滑动用例 **1/1 通过**，补充截图可见真实合成视频色条及第二页内容。没有调整播放器、断言或样本，也未以这张补图证明完整媒体生命周期。

Debug APK SHA-256：`add055aa35f69907c038f2d3cbb65d80243682cf7d33aa3263da544035d825fe`。

研究 Release APK SHA-256：`0635b7dd65d2e8be15805d8c1cb2138ccf632ff45d013a7c643eba028e56cd5a`。

构建/主机命令耗时 6m8s，六例原/新对照为 9.975s instrumentation 时间，短视频补测 16.192s；完整回归逐项秒数见 [P1-comment-filter-validation.json](P1-comment-filter-validation.json)。本单类试点从 16:46:48 开始，至 17:06:10 的主要验证窗口约 19 分 22 秒，包含自动等待、契约复核和截图复测；不折算人日，也不据此推算其余 3,157 类工期。业务实现未发生语义返工，发生一次提前核验中间 APK 的执行顺序纠正。

回退：合入后使用新的撤销提交恢复本批 Java/smali 变动并重跑相同门禁，目标实现为起点 `3498171`。本批未修改存储或真实数据，撤销代码不自动回退专用模拟器的合成状态。已知真实服务、相机/投屏/蓝牙外设、R8 和生产发布限制沿用 P0；混合构建继续保留，不能宣称 P5 完成。
