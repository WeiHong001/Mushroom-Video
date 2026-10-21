package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.widget.RVDividerHeightMargin;
import com.mogu.tv.adapter.ActivityAdAdapter;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActivityHistoryBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.GlobeAppData;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ActivityPageActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/ui/activity/ActivityPageActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityHistoryBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/ActivityAdAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/ActivityAdAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/ActivityAdAdapter;)V", "getServerData", "", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ActivityPageActivity extends CommonBaseActivity<ActivityHistoryBinding> {
    private ActivityAdAdapter mAdapter = new ActivityAdAdapter();

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ActivityPageActivity.initView.1
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
                ActivityPageActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("优惠活动");
    }

    public final ActivityAdAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(ActivityAdAdapter activityAdAdapter) {
        Intrinsics.checkNotNullParameter(activityAdAdapter, "<set-?>");
        this.mAdapter = activityAdAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.ActivityPageActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                ActivityPageActivity.m176initData$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.ActivityPageActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                ActivityPageActivity.m177initData$lambda1(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new LinearLayoutManager(getMActivity()));
        getBinding().rvList.addItemDecoration(new RVDividerHeightMargin(this, 1, 2, true, AndroidutilsKt.color(R.color.dividerClolor)));
        getBinding().rvList.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.ActivityPageActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ActivityPageActivity.m178initData$lambda2(this.f$0, baseQuickAdapter, view, i);
            }
        });
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m176initData$lambda0(ActivityPageActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m177initData$lambda1(ActivityPageActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m178initData$lambda2(ActivityPageActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toUrlPraseJump(this$0, this$0.mAdapter.getData().get(i).getAction());
        ArouterUtils.INSTANCE.clickAd(String.valueOf(this$0.mAdapter.getData().get(i).getId()));
    }

    private final void getServerData() {
        getBinding().refreshLayout.finishRefresh();
        getBinding().refreshLayout.finishLoadMore();
        ActivityAdAdapter activityAdAdapter = this.mAdapter;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        activityAdAdapter.setNewData(adData != null ? adData.getActivity() : null);
    }
}
