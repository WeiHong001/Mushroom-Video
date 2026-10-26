# P0-device：专用模拟器与原实现行为基线

- 状态：**已验收**；当前用户已授权连续执行，不需另行通知 P1。
- 需求分支 `feature/migration-p0-device-baseline`；起点及回退目标 `7e9384c`；原业务/构建身份 `2b882ad`。
- 范围：新建专用 API 34 AVD，补充 `CommentFilterBaselineTest` 和实际 APK 资源/合并清单核验脚本，建立进度及原 3,158 类型的去向表。业务和旧库 smali 移除数 **0**，替代验收类型数 **0**。
- 原实现完整类名 `com.mogu.tv.utils.CommentFilter`；三个消费者 `NewCommentAdapter`、`ShortCommentAdapter`、`EditUserInfoActivity$initData$3$1` 及后者的网络回调均保留原实现。两个 `item_*comment_layout` 与 `act_new_userinfo` 资源未变。
- 设备：`Mushroom_Research_API34` / `emulator-5580`，Android 14、API 34、x86_64；明确 offline 模式并核对安装的应用和测试 APK SHA-256。
- 通过：原 CommentFilter 6/6（22 组输入及异常/ABI/消费者），最终完整离线回归 43 次调用 / 47 个用例，主机 17 suites / 94 用例，Debug/测试/研究 Release 构建，APK/实际资源 ID 7,141、合并清单、恢复 DEX 3,158 类、签名/对齐与 Release 隔离。
- 失败与返工：初测预期误判换行及 Unicode 空白，按原 smali 实测冻结；首次全量短视频手势被系统 Bluetooth 崩溃弹窗阻挡，正常关闭专用设备蓝牙及弹窗后完整复跑通过。失败原记录未改写。WebView 全量截图错帧，以独立冷启动 instrumentation / 截图补证，根因仍待其后续批次排查。
- 复核：检查本批未改主业务/构建、无 smali 移除、未加入 ABI 运行依赖、未改变模拟器/离线/安装摘要保护，原 16 条 Lint 规则/位置多重集相同。未安排独立人员验收，不将本次自查称作独立复核。
- 限制：真实账号、外设、相机/投屏、线上服务写入及生产发布未验收；模拟器蓝牙关闭。页面用例主要断言入口/未销毁，未覆盖每个按钮；WebView 原全量截图不可用，采用单独补证。
- 回退：如需撤销本批共享提交，使用新撤销提交；不会自动删除本地专用 AVD 或还原设备状态。原 P0 快照和用户 stash 保留。

命令、环境、APK 摘要和逐项结果见 [设备补充报告](../P0-device-baseline.md)；完整脱敏索引见 [P0-device-validation.json](../P0-device-validation.json)。本批源码/测试实际取证身份以索引中的文件哈希和本文件 Git 历史追溯，交付提交不替代先前实际执行时间。
