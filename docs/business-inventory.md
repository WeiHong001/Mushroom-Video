# APK 业务入口清单

来源：原 Manifest、ARouter 生成表、业务 Activity 与 ViewBinding。此表是静态证据；运行结论见 validation.md。

| Activity | 原布局 | 参数线索 |
|---|---|---|
| `com.mogu.tv.ui.LoadingActivity` | `act_loadpage` |  |
| `com.mogu.tv.ui.RegistActivity` | `fragment_regist` |  |
| `com.mogu.tv.ui.activity.SettingActivity` | `act_setting` |  |
| `com.mogu.tv.ui.activity.ShangwuActivity` | `act_shangwu` |  |
| `com.mogu.tv.ui.activity.SheQuUserActivity` | `activity_history` | `id` |
| `com.mogu.tv.ui.ForgetPassWordActivity` | `act_forgetpass` |  |
| `com.mogu.tv.ui.activity.SqNoticeActivity` | `act_sqgg` |  |
| `com.mogu.tv.ui.activity.TouGaoActivity` | `act_tougao` |  |
| `com.mogu.tv.ui.CommentNewsActivity` | `dialog_comment` | `id`, `type` |
| `com.mogu.tv.ui.DetailsActivity` | `act_details` | `ids` |
| `com.mogu.tv.ui.DetailVipVideoActivity` | `act_vipdetails` |  |
| `com.mogu.tv.ui.activity.ImglookActivity` | `act_imglook` |  |
| `com.mogu.tv.ui.activity.ShequDetailsActivity` | `act_shequinfo` | `id` |
| `com.mogu.tv.ui.activity.ShortDetailsActivity` | `act_shortdetails` | `comments`, `content`, `favorites`, `id`, `isZan`, `name`, `photo`, `playUrl` |
| `com.mogu.tv.ui.activity.CollectActivity` | `activity_collect` |  |
| `com.mogu.tv.ui.activity.AppLockActivity` | `act_applock` |  |
| `com.mogu.tv.ui.activity.PiankuActivity` | `frag_pianku` | `id` |
| `com.mogu.tv.ui.activity.PraviteActivity` | `act_pravite` |  |
| `com.mogu.tv.ui.activity.UserContractActivity` | `act_contract` |  |
| `com.mogu.tv.ui.activity.BiaoQianListActivity` | `frag_bqlist` | `id`, `name` |
| `com.mogu.tv.ui.activity.AdviceSuggestActivity` | `frag_advice_report` | `id` |
| `com.mogu.tv.ui.activity.ActivityPageActivity` | `activity_history` |  |
| `com.mogu.tv.ui.activity.AdCenterAppActivity` | `activity_history` |  |
| `com.mogu.tv.ui.activity.FocusUserListActivity` | `activity_history` |  |
| `com.mogu.tv.ui.activity.MessageCenterActivity` | `activity_history` |  |
| `com.mogu.tv.ui.activity.MessageDetailsActivity` | `activity_msg_details` |  |
| `com.mogu.tv.ui.activity.NvYouActivity` | `act_nvyou` |  |
| `com.mogu.tv.ui.activity.ContactActivity` | `act_contact` |  |
| `com.mogu.tv.ui.activity.EditUserInfoActivity` | `act_new_userinfo` |  |
| `com.mogu.tv.ui.activity.UserInfoActivity` | `activity_topic` | `id` |
| `com.mogu.tv.ui.activity.HistoryActivity` | `activity_history` |  |
| `com.mogu.tv.ui.activity.LabelsSelectActivity` | `act_labels` |  |
| `com.mogu.tv.ui.activity.InviteListActivity` | `activity_history` |  |
| `com.mogu.tv.ui.activity.QiuPianActivity` | `act_qiupian` |  |
| `com.mogu.tv.ui.activity.RankActivity` | `act_rank` |  |
| `com.mogu.tv.ui.activity.SearchActivity` | `act_search` |  |
| `com.mogu.tv.ui.activity.WebViewActivity` | `act_webview` |  |
| `com.mogu.tv.MainActivity` | `activity_main` |  |

首页保留原五栏：HomeFragment、ShortIndexFragment、JpHomeFragment、ShequFragment、MineFragment。

注意：部分参数来自常量而不是字符串字面量；详情使用 `ids`，图片预览使用 `url` 字符串列表和 `position`，精品详情通过 DetailVipVideoActivity.Companion.vipData 传入。
