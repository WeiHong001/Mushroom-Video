# 仓库协作规则

## 分支规范

- `main` 为主分支，`dev` 为日常开发集成分支。
- 每次开始新需求前，先更新 `dev`，再从 `dev` 新建独立需求分支；不得直接在 `main` 或 `dev` 上开发需求。
- 需求分支命名为 `feature/<需求简述>`，例如 `feature/login-validation`。名称应简短、明确，多个英文单词用连字符连接；不要使用开头的 `/`，Git 不允许分支名以 `/` 开头。
- 一个需求对应一条分支，后续新需求必须另建分支，不复用已有需求分支。
- 需求完成并通过相应验证后，将需求分支合入 `dev`。

## 提交规范

- 提交说明使用中文，格式为 `类型(范围): 具体改动说明`。
- 类型使用 `功能`、`修复`、`重构`、`文档`、`测试`、`构建`、`维护` 或 `合并`；范围填写受影响的功能或模块。
- 说明应写清楚修改了什么、解决了什么问题，避免使用“更新”“修改代码”“修复问题”等含糊描述；复杂改动在正文补充原因、影响和验证结果。
- 示例：`功能(登录): 增加手机号验证码登录并处理验证码过期`。
- 示例：`修复(播放): 修复退出全屏后画面比例异常`。

## 提交身份

- 后续所有新提交的作者（Author）和提交者（Committer）均使用 `Kum <805589465@qq.com>`。
- 新克隆的仓库开始工作前，设置仓库级 Git 身份：

  ```powershell
  git config --local user.name Kum
  git config --local user.email 805589465@qq.com
  ```

- 提交前用 `git var GIT_AUTHOR_IDENT` 和 `git var GIT_COMMITTER_IDENT` 确认身份，避免环境变量或命令参数覆盖配置。

## smali 迁移启动约束

- 迁移依据为 `dev/smali-migration-plan.md` 中经审批通过的版本及实际审批意见。
- 实际 smali 迁移须同时满足“计划已获审批通过”和“已收到明确启动通知”；缺少任一条件时，仅可审阅、修订计划，不得实施迁移。
- 拉取代码、合并计划书或一般审阅意见不构成启动通知。满足启动条件后，先执行计划的 P0，再逐批实施并记录验证结果。

<!-- CODEGRAPH_START -->
## CodeGraph

In repositories indexed by CodeGraph (a `.codegraph/` directory exists at the repo root), reach for it BEFORE grep/find or reading files when you need to understand or locate code:

- **MCP tool** (when available): `codegraph_explore` answers most code questions in one call — the relevant symbols' verbatim source plus the call paths between them, including dynamic-dispatch hops grep can't follow. Name a file or symbol in the query to read its current line-numbered source. If it's listed but deferred, load it by name via tool search.
- **Shell** (always works): `codegraph explore "<symbol names or question>"` prints the same output.

If there is no `.codegraph/` directory, skip CodeGraph entirely — indexing is the user's decision.
<!-- CODEGRAPH_END -->
