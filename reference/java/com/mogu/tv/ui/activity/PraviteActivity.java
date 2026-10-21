package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.adapter.ActivityAdAdapter;
import com.mogu.tv.databinding.ActPraviteBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PraviteActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/mogu/tv/ui/activity/PraviteActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActPraviteBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/ActivityAdAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/ActivityAdAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/ActivityAdAdapter;)V", "initData", "", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PraviteActivity extends CommonBaseActivity<ActPraviteBinding> {
    private ActivityAdAdapter mAdapter = new ActivityAdAdapter();

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.PraviteActivity.initView.1
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
                PraviteActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("用戶隱私");
    }

    public final ActivityAdAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(ActivityAdAdapter activityAdAdapter) {
        Intrinsics.checkNotNullParameter(activityAdAdapter, "<set-?>");
        this.mAdapter = activityAdAdapter;
    }
}
