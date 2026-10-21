package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.adapter.HistoryAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActivityCollectBinding;
import com.mogu.tv.model.HistoryLists;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.utils.DialogUtils;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lcom/mogu/tv/ui/activity/CollectActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityCollectBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/HistoryAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/HistoryAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/HistoryAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/HistoryLists$Item;", "Lkotlin/collections/ArrayList;", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "getServerData", "", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CollectActivity extends CommonBaseActivity<ActivityCollectBinding> {
    private HistoryAdapter mAdapter = new HistoryAdapter();
    private int mPage = 1;
    private ArrayList<HistoryLists.Item> mData = new ArrayList<>();

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.CollectActivity.initView.1
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
                CollectActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("我的喜爱");
        getBinding().headLayout.tvRightTitle.setText("清空");
        getBinding().headLayout.tvRightTitle.setVisibility(0);
        TextView textView = getBinding().headLayout.tvRightTitle;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.headLayout.tvRightTitle");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.CollectActivity.initView.2
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
                final CollectActivity collectActivity = CollectActivity.this;
                DialogUtils.showSimpleDialog$default(DialogUtils.INSTANCE, CollectActivity.this, "确认清空?", new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.CollectActivity.initView.2.1
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
                        CommonBaseActivity.showLoadingDialog$default(collectActivity, false, null, 3, null);
                        ApiManager apiManager = ApiManager.INSTANCE;
                        final CollectActivity collectActivity2 = collectActivity;
                        apiManager.starDel("0", new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.CollectActivity.initView.2.1.1
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                                invoke(num.intValue(), str, justReturnMsg);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                                Intrinsics.checkNotNullParameter(msg, "msg");
                                collectActivity2.dissmissLoading();
                                if (i == 200) {
                                    collectActivity2.setMPage(1);
                                    collectActivity2.mData.clear();
                                    collectActivity2.getServerData();
                                    return;
                                }
                                AndroidutilsKt.toast(msg);
                            }
                        });
                    }
                }, null, 8, null);
            }
        });
    }

    public final HistoryAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(HistoryAdapter historyAdapter) {
        Intrinsics.checkNotNullParameter(historyAdapter, "<set-?>");
        this.mAdapter = historyAdapter;
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.CollectActivity$$ExternalSyntheticLambda3
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                CollectActivity.m187initData$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.CollectActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                CollectActivity.m188initData$lambda1(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new LinearLayoutManager(getMActivity()));
        getBinding().rvList.setAdapter(this.mAdapter);
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.CollectActivity$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CollectActivity.m189initData$lambda2(this.f$0, baseQuickAdapter, view, i);
            }
        });
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.activity.CollectActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CollectActivity.m190initData$lambda3(this.f$0, baseQuickAdapter, view, i);
            }
        });
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m187initData$lambda0(CollectActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m188initData$lambda1(CollectActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m189initData$lambda2(CollectActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toVideoDetails(String.valueOf(this$0.mData.get(i).getVod().getId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-3, reason: not valid java name */
    public static final void m190initData$lambda3(final CollectActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, final int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getId() == R.id.iv_delete) {
            CommonBaseActivity.showLoadingDialog$default(this$0, false, null, 3, null);
            ApiManager.INSTANCE.starDel(String.valueOf(this$0.mData.get(i).getId()), new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.CollectActivity$initData$4$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                    invoke(num.intValue(), str, justReturnMsg);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i2, String msg, JustReturnMsg justReturnMsg) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    this.this$0.dissmissLoading();
                    if (i2 == 200) {
                        this.this$0.setMPage(1);
                        this.this$0.getMAdapter().remove(i);
                    } else {
                        AndroidutilsKt.toast(msg);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        ApiManager.INSTANCE.starLists(map, new Function3<Integer, String, HistoryLists, Unit>() { // from class: com.mogu.tv.ui.activity.CollectActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, HistoryLists historyLists) {
                invoke(num.intValue(), str, historyLists);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, HistoryLists historyLists) {
                ArrayList<HistoryLists.Item> arrayList;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (CollectActivity.this.isDestroyed() || CollectActivity.this.getBinding() == null) {
                    return;
                }
                if (CollectActivity.this.getMPage() == 1) {
                    CollectActivity.this.getBinding().refreshLayout.finishRefresh();
                    CollectActivity.this.mData.clear();
                } else {
                    CollectActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
                if (i == 200) {
                    HistoryAdapter mAdapter = CollectActivity.this.getMAdapter();
                    if (historyLists == null || (arrayList = historyLists.getList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    mAdapter.addData((Collection) arrayList);
                }
                if (CollectActivity.this.getBinding() != null) {
                    CollectActivity.this.getBinding().refreshLayout.finishRefresh();
                }
            }
        });
    }
}
