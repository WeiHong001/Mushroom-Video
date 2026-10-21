# 必要兼容修改与原行为差异

| 修改 | 原情况 | 恢复后的行为及影响 |
|---|---|---|
| JDK 17 / Gradle 8.7 / AGP 8.5.1 / SDK 34 | APK 记录 compile/target 32，未携带原构建脚本 | 使用本机可用且完成实际构建的组合；target 32 保留，研究包不是商店发布配置 |
| minSdk 21 | APK 声明 19 | 当前构建使用系统原生 MultiDex；未宣称 Android 4.4 已验证或保持支持 |
| 独立 applicationId | 原 `com.amogu6.tv` | `com.amogu6.tv.research`，Provider authority 使用占位符；保留原业务包名与深链线索，调试签名，不覆盖原正式包 |
| Provider 合并 | 合并后 APK 有多种 FileProvider 对同一 authority 的重复声明 | 每组保留一个，沿原 file_paths/filepath 配置，消除恢复工程中的合并冲突 |
| 资源 ID 固定 | 业务 smali 与生成的 styleable 数组包含原 ID | AAPT2 `--stable-ids` 使用最终资源包名，保留 7,141 个原 ID；ID 文件作为任务输入；核验实际生成结果 |
| 7 个 `$` 资源名 | AAPT 自动生成的 `$...` 文件名无法作为普通源资源交给 Gradle merger | 改成 `recovered_...`，同步引用，数值 ID 不变；清单见 resource-renames.json |
| 依赖属性声明 | APK 中的合并 attrs 与重新接入的官方 AAR 重复 | 由官方 AAR 提供其属性定义；原自定义属性、资源、主题与 ID 保留；清单见 library-provided-attrs.json |
| TLS | `App.trustAllHosts` 和 `SSLOkhttp` 接受任意证书/主机名 | 使用系统信任与主机名校验。过期、名称不匹配或不受信任证书的旧服务会失败，未降级为信任全部证书 |
| 请求日志 | 原网络日志可能记录请求/响应正文 | 新 LogInterceptor 仅记方法、路径、状态和耗时，不记录 token、账号或正文 |
| 分离变更原因与状态 | 原 Exo 监听复用 `onPlayWhenReadyChanged` 并将 reason 当作 state | 新的内部 `reportPlaybackState` 接收实际状态；有定向回归及真实暂停/恢复测试 |
| `DYLoadingView.onDraw` | JADX 分支合并错误导致局部半径变量未初始化 | 依据 smali 的三段缩放和 Path 交集重写 Java 绘制；边界 fraction 避免除零；原默认参数下运动方式保留 |
| `HttpMyUrlFetcher` | 解密回退返回已消耗的流 | 保留原字节后回退；普通和两种加密图片均通过实际 Glide 取图验证 |
| 初始存储权限 | Loading/Main 要求共享存储权限才能/在首页继续使用，描述为缓存权限 | 缓存使用应用目录，移除启动时无关的共享存储权限门槛；图片选择等功能仍保留原按功能请求路径 |
| 统计 SDK | 原 App 初始化 Umeng，基础 Activity 上报 resume/pause | 研究包去除统计初始化和这些上报；没有复制其原生追踪库；其他业务入口保留 |
| 离线/真实数据隔离 | 原 APK 无研究模式 | 增加清晰标识与受控数据适配，分开偏好和缓存；真实失败不自动显示样例成功 |
| APK 合入与签名 | 普通 Java 编译不能表达未恢复的原 Kotlin 控制流 | 从 smali 重新汇编，不从原 APK 复制 DEX；合入保持资源表 STORED，重新 zipalign、debug sign；重复合入会先移除旧恢复 DEX |
| Windows Java 套接字 | 本机 AF_UNIX loopback 失败 | Wrapper 为自身及子进程配置不存在的 socket 临时目录，使 Java 回退 TCP；不修改全局 JDK/环境 |
| 导入资源的 Lint | 合并/反编译 XML 使用原 `@id`，保留库主题与动态控件关系 | 记录 16 条 Lint vital 诊断及人工核对依据，不阻断研究构建、不捏造默认布局；详见 lint-findings.json；未宣称生产质量门禁通过 |

研究包不做无关 Compose/架构重写、不重命名业务类来隐藏来源，也没有恢复原发布私钥。`release` 同样使用调试签名且不启用 R8；当前交付以 debug 研究构建为准，不把它当作生产发布验证。

反编译失败的参考方法（基础 Activity/Fragment、播放器准备、缓存释放、剪贴板等）仍保留可对照 smali。编译期 ABI JAR 不包含运行实现、不会打入 APK；核验脚本检查这一点，运行代码没有 JADX 失败占位。
