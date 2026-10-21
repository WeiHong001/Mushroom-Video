package com.mogu.tv.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.cardview.widget.CardView;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.databinding.ActSettingBinding;
import com.mogu.tv.main.UserManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SettingActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"Lcom/mogu/tv/ui/activity/SettingActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActSettingBinding;", "()V", "initData", "", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SettingActivity extends CommonBaseActivity<ActSettingBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SettingActivity.initView.1
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
                SettingActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("设置");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        if (UserManager.INSTANCE.isLogin()) {
            CardView cardView = getBinding().cardExt;
            Intrinsics.checkNotNullExpressionValue(cardView, "binding.cardExt");
            AndroidutilsKt.setVisible(cardView, true);
        }
        CardView cardView2 = getBinding().cardExt;
        Intrinsics.checkNotNullExpressionValue(cardView2, "binding.cardExt");
        AndroidutilsKt.click(cardView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SettingActivity.initData.1
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
                UserManager.INSTANCE.clearUserInfo();
                ToastUtil.INSTANCE.toast("已退出");
                SettingActivity.this.finish();
            }
        });
        String str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        ActSettingBinding binding = getBinding();
        binding.tvVerison.setText(str);
        CardView carUser = binding.carUser;
        Intrinsics.checkNotNullExpressionValue(carUser, "carUser");
        AndroidutilsKt.click(carUser, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SettingActivity$initData$2$1
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
                this.this$0.startActivity(new Intent(this.this$0.getMActivity(), (Class<?>) UserContractActivity.class));
            }
        });
        CardView carPrivate = binding.carPrivate;
        Intrinsics.checkNotNullExpressionValue(carPrivate, "carPrivate");
        AndroidutilsKt.click(carPrivate, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SettingActivity$initData$2$2
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
                this.this$0.startActivity(new Intent(this.this$0.getMActivity(), (Class<?>) PraviteActivity.class));
            }
        });
    }
}
