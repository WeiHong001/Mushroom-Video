package com.mogu.tv.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.databinding.ActTougaoBinding;
import com.mogu.tv.utils.DialogUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TouGaoActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0006\u0010\u0007\u001a\u00020\u0005¨\u0006\b"}, d2 = {"Lcom/mogu/tv/ui/activity/TouGaoActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActTougaoBinding;", "()V", "initData", "", "initView", "showDialog", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class TouGaoActivity extends CommonBaseActivity<ActTougaoBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.initView.1
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
                TouGaoActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("投稿认证");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        TextView textView = getBinding().tvSubmit;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvSubmit");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.initData.1
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
                TouGaoActivity.this.showDialog();
            }
        });
        RelativeLayout relativeLayout = getBinding().rl1;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.rl1");
        AndroidutilsKt.click(relativeLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.initData.2
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
                TouGaoActivity.this.showDialog();
            }
        });
        RelativeLayout relativeLayout2 = getBinding().rl2;
        Intrinsics.checkNotNullExpressionValue(relativeLayout2, "binding.rl2");
        AndroidutilsKt.click(relativeLayout2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.initData.3
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
                TouGaoActivity.this.showDialog();
            }
        });
        RelativeLayout relativeLayout3 = getBinding().rl3;
        Intrinsics.checkNotNullExpressionValue(relativeLayout3, "binding.rl3");
        AndroidutilsKt.click(relativeLayout3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.initData.4
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
                TouGaoActivity.this.showDialog();
            }
        });
    }

    public final void showDialog() {
        DialogUtils.INSTANCE.showSimpleDialog(this, "暂未开放线上自动认证，请联系管理员进行认证", new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.showDialog.1
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
                TouGaoActivity.this.startActivity(new Intent(TouGaoActivity.this, (Class<?>) ContactActivity.class));
            }
        }, new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.TouGaoActivity.showDialog.2
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
}
