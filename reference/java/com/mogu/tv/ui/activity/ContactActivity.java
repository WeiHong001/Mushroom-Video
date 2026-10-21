package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActContactBinding;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.model.QQInfo;
import com.qushare.news.utils.ShareUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContactActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"Lcom/mogu/tv/ui/activity/ContactActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActContactBinding;", "()V", "initData", "", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ContactActivity extends CommonBaseActivity<ActContactBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ContactActivity.initView.1
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
                ContactActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("联系我们");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        ApiManager.INSTANCE.getMoguConfig("qqinfo", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.ui.activity.ContactActivity.initData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, MoguConfig moguConfig) {
                invoke(num.intValue(), str, moguConfig);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, MoguConfig moguConfig) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || moguConfig == null) {
                    return;
                }
                final QQInfo qQInfo = (QQInfo) new Gson().fromJson(moguConfig.getValue(), QQInfo.class);
                ContactActivity.this.getBinding().tvQQqun.setText(qQInfo.getQqqun());
                LinearLayout linearLayout = ContactActivity.this.getBinding().llQQ;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llQQ");
                AndroidutilsKt.click(linearLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ContactActivity.initData.1.1
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
                        ShareUtils.INSTANCE.copyText(qQInfo.getQqqun());
                    }
                });
            }
        });
        LinearLayout linearLayout = getBinding().llEmail;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llEmail");
        AndroidutilsKt.click(linearLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ContactActivity.initData.2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ShareUtils.INSTANCE.copyText("mogudizhi@gmail.com");
            }
        });
        LinearLayout linearLayout2 = getBinding().llTele;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.llTele");
        AndroidutilsKt.click(linearLayout2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ContactActivity.initData.3
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
                ArouterUtils.INSTANCE.toUrlPraseJump(ContactActivity.this, "https://t.me/mogutv");
            }
        });
        LinearLayout linearLayout3 = getBinding().llPotato;
        Intrinsics.checkNotNullExpressionValue(linearLayout3, "binding.llPotato");
        AndroidutilsKt.click(linearLayout3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ContactActivity.initData.4
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
                ArouterUtils.INSTANCE.toUrlPraseJump(ContactActivity.this, "https://www.ptcc.in/mogutv");
            }
        });
    }
}
