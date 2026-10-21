package com.mogu.tv.ui.frag;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.ToastUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.MainActivity;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragMineBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.EventSwitchPage;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.UserModel;
import com.mogu.tv.model.UserShareList;
import com.mogu.tv.ui.activity.AdviceSuggestActivity;
import com.mogu.tv.ui.activity.AppLockActivity;
import com.mogu.tv.ui.activity.CollectActivity;
import com.mogu.tv.ui.activity.ContactActivity;
import com.mogu.tv.ui.activity.EditUserInfoActivity;
import com.mogu.tv.ui.activity.FocusUserListActivity;
import com.mogu.tv.ui.activity.HistoryActivity;
import com.mogu.tv.ui.activity.InviteListActivity;
import com.mogu.tv.ui.activity.MessageCenterActivity;
import com.mogu.tv.ui.activity.SettingActivity;
import com.mogu.tv.ui.activity.ShangwuActivity;
import com.mogu.tv.ui.activity.TouGaoActivity;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.SharePopDialog;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: MineFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u0005H\u0002J\b\u0010\u000f\u001a\u00020\u0005H\u0002¨\u0006\u0010"}, d2 = {"Lcom/mogu/tv/ui/frag/MineFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragMineBinding;", "()V", "getInvite", "", "initData", "initView", "loadUserData", "onDestroy", "onEventSwitchPage", NotificationCompat.CATEGORY_EVENT, "Lcom/mogu/tv/model/EventSwitchPage;", "onResume", "refreshUserInfo", "showAd", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MineFragment extends CommonBaseFragment<FragMineBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        FragMineBinding binding = getBinding();
        if (binding != null && (linearLayout2 = binding.llShare) != null) {
            AndroidutilsKt.click(linearLayout2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initView.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    new SharePopDialog(MineFragment.this.requireActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
                }
            });
        }
        FragMineBinding binding2 = getBinding();
        if (binding2 != null && (linearLayout = binding2.llContact) != null) {
            AndroidutilsKt.click(linearLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initView.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    MineFragment.this.startActivity(new Intent(MineFragment.this.requireActivity(), (Class<?>) ContactActivity.class));
                }
            });
        }
        EventBusUtil.INSTANCE.register(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusUtil.INSTANCE.unregister(this);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        LinearLayout linearLayout3;
        LinearLayout linearLayout4;
        LinearLayout linearLayout5;
        LinearLayout linearLayout6;
        LinearLayout linearLayout7;
        LinearLayout linearLayout8;
        LinearLayout linearLayout9;
        ImageView imageView;
        LinearLayout linearLayout10;
        LinearLayout linearLayout11;
        RelativeLayout relativeLayout;
        LinearLayout linearLayout12;
        loadUserData();
        FragMineBinding binding = getBinding();
        if (binding != null && (linearLayout12 = binding.rlClearCache) != null) {
            AndroidutilsKt.click(linearLayout12, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    AndroidutilsKt.toast("清除成功");
                }
            });
        }
        FragMineBinding binding2 = getBinding();
        if (binding2 != null && (relativeLayout = binding2.cardLogin) != null) {
            UserManagerKt.LoginClick(relativeLayout, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.2
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            });
        }
        FragMineBinding binding3 = getBinding();
        if (binding3 != null && (linearLayout11 = binding3.llFocus) != null) {
            UserManagerKt.LoginClick(linearLayout11, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.3
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) FocusUserListActivity.class));
                }
            });
        }
        FragMineBinding binding4 = getBinding();
        if (binding4 != null && (linearLayout10 = binding4.llMsg) != null) {
            UserManagerKt.LoginClick(linearLayout10, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.4
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) MessageCenterActivity.class));
                }
            });
        }
        FragMineBinding binding5 = getBinding();
        if (binding5 != null && (imageView = binding5.ivMsgCenter) != null) {
            UserManagerKt.LoginClick(imageView, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.5
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) MessageCenterActivity.class));
                }
            });
        }
        FragMineBinding binding6 = getBinding();
        if (binding6 != null && (linearLayout9 = binding6.llCollect) != null) {
            UserManagerKt.LoginClick(linearLayout9, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.6
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) CollectActivity.class));
                }
            });
        }
        FragMineBinding binding7 = getBinding();
        if (binding7 != null && (linearLayout8 = binding7.llHistory) != null) {
            UserManagerKt.LoginClick(linearLayout8, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.7
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) HistoryActivity.class));
                }
            });
        }
        FragMineBinding binding8 = getBinding();
        if (binding8 != null && (linearLayout7 = binding8.llInvite) != null) {
            UserManagerKt.LoginClick(linearLayout7, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.8
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) InviteListActivity.class));
                }
            });
        }
        FragMineBinding binding9 = getBinding();
        if (binding9 != null && (linearLayout6 = binding9.llLock) != null) {
            AndroidutilsKt.click(linearLayout6, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.9
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) AppLockActivity.class));
                }
            });
        }
        FragMineBinding binding10 = getBinding();
        if (binding10 != null && (linearLayout5 = binding10.llShangwu) != null) {
            AndroidutilsKt.click(linearLayout5, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.10
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) ShangwuActivity.class));
                }
            });
        }
        FragMineBinding binding11 = getBinding();
        if (binding11 != null && (linearLayout4 = binding11.llTougao) != null) {
            AndroidutilsKt.click(linearLayout4, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.11
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) TouGaoActivity.class));
                }
            });
        }
        FragMineBinding binding12 = getBinding();
        if (binding12 != null && (linearLayout3 = binding12.llData) != null) {
            UserManagerKt.LoginClick(linearLayout3, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.12
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) EditUserInfoActivity.class));
                }
            });
        }
        FragMineBinding binding13 = getBinding();
        if (binding13 != null && (linearLayout2 = binding13.llSetting) != null) {
            AndroidutilsKt.click(linearLayout2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.13
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) SettingActivity.class));
                }
            });
        }
        FragMineBinding binding14 = getBinding();
        if (binding14 == null || (linearLayout = binding14.llSuggest) == null) {
            return;
        }
        AndroidutilsKt.click(linearLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.initData.14
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                MineFragment.this.startActivity(new Intent(MineFragment.this.getContext(), (Class<?>) AdviceSuggestActivity.class));
            }
        });
    }

    private final void showAd() {
        ImageView imageView;
        ImageView imageView2;
        FragMineBinding binding;
        ImageView imageView3;
        List<AllAdsModel.Item> mine;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (mine = adData.getMine()) == null) ? null : AllAdsModelKt.getRandomAd(mine);
        String file = randomAd != null ? randomAd.getFile() : null;
        if ((file == null || file.length() == 0) && (binding = getBinding()) != null && (imageView3 = binding.ivMainAd) != null) {
            AndroidutilsKt.setVisible(imageView3, false);
        }
        FragMineBinding binding2 = getBinding();
        if (binding2 != null && (imageView2 = binding2.ivMainAd) != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.showAd.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    String action;
                    Intrinsics.checkNotNullParameter(it, "it");
                    ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                    FragmentActivity fragmentActivityRequireActivity = MineFragment.this.requireActivity();
                    Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
                    FragmentActivity fragmentActivity = fragmentActivityRequireActivity;
                    AllAdsModel.Item item = randomAd;
                    if (item == null || (action = item.getAction()) == null) {
                        action = "";
                    }
                    arouterUtils.toUrlPraseJump(fragmentActivity, action);
                    ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                    AllAdsModel.Item item2 = randomAd;
                    arouterUtils2.clickAd(String.valueOf(item2 != null ? Integer.valueOf(item2.getId()) : null));
                }
            });
        }
        FragMineBinding binding3 = getBinding();
        if (binding3 == null || (imageView = binding3.ivMainAd) == null) {
            return;
        }
        ImageUtilKt.with(imageView, randomAd != null ? randomAd.getFile() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadUserData() {
        TextView textView;
        RoundedImageView roundedImageView;
        LinearLayout linearLayout;
        RoundedImageView roundedImageView2;
        if (UserManager.INSTANCE.isLogin()) {
            FragMineBinding binding = getBinding();
            textView = binding != null ? binding.tvUsername : null;
            if (textView != null) {
                textView.setText(UserManager.INSTANCE.getName());
            }
            FragMineBinding binding2 = getBinding();
            if (binding2 != null && (roundedImageView2 = binding2.ivUser) != null) {
                ImageUtilKt.withDefaltUserPhoto(roundedImageView2, UserManager.INSTANCE.getPicture());
            }
        } else {
            FragMineBinding binding3 = getBinding();
            textView = binding3 != null ? binding3.tvUsername : null;
            if (textView != null) {
                textView.setText("登錄/註冊");
            }
            FragMineBinding binding4 = getBinding();
            if (binding4 != null && (roundedImageView = binding4.ivUser) != null) {
                ImageUtilKt.with(roundedImageView, R.mipmap.default_user);
            }
        }
        FragMineBinding binding5 = getBinding();
        if (binding5 != null && (linearLayout = binding5.llJifen) != null) {
            AndroidutilsKt.setVisible(linearLayout, UserManager.INSTANCE.isLogin());
        }
        FragMineBinding binding6 = getBinding();
        if (binding6 != null) {
            if (UserManager.INSTANCE.isLogin()) {
                binding6.tvFocus.setText(UserManager.INSTANCE.getFocusNumber());
            } else {
                binding6.tvFocus.setText("0");
            }
            if (UserManager.INSTANCE.isLogin()) {
                binding6.tvJifen.setText("积分:" + UserManager.INSTANCE.getJifen());
                return;
            }
            binding6.tvJifen.setText("积分:0");
        }
    }

    private final void getInvite() {
        if (UserManager.INSTANCE.isLogin()) {
            ApiManager.INSTANCE.getUserShareList(10, 1, new Function3<Integer, String, UserShareList, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.getInvite.1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserShareList userShareList) {
                    invoke(num.intValue(), str, userShareList);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, UserShareList userShareList) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (i != 200 || userShareList == null) {
                        return;
                    }
                    FragMineBinding binding = MineFragment.this.getBinding();
                    TextView textView = binding != null ? binding.tvInviteNumber : null;
                    if (textView == null) {
                        return;
                    }
                    textView.setText(String.valueOf(Integer.valueOf(userShareList.getTotal())));
                }
            });
            return;
        }
        FragMineBinding binding = getBinding();
        TextView textView = binding != null ? binding.tvInviteNumber : null;
        if (textView == null) {
            return;
        }
        textView.setText("0");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (MainActivity.INSTANCE.getCurMainPage() == 4) {
            showAd();
            loadUserData();
            getInvite();
            refreshUserInfo();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventSwitchPage(EventSwitchPage event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getPage() == 4) {
            loadUserData();
            getInvite();
            refreshUserInfo();
        }
    }

    private final void refreshUserInfo() {
        if (UserManager.INSTANCE.isLogin()) {
            ApiManager.INSTANCE.getUserInfo(new Function3<Integer, String, UserModel, Unit>() { // from class: com.mogu.tv.ui.frag.MineFragment.refreshUserInfo.1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserModel userModel) {
                    invoke(num.intValue(), str, userModel);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, UserModel userModel) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (i == 200 && userModel != null) {
                        UserManager.INSTANCE.saveUserInfo(userModel);
                        MineFragment.this.loadUserData();
                    } else if (i == 403) {
                        ToastUtil.INSTANCE.toast("账号已过期,请重新登录");
                        UserManager.INSTANCE.clearUserInfo();
                    }
                }
            });
        }
    }
}
