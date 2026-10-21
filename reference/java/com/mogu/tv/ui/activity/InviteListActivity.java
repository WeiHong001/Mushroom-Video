package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.widget.RVDividerHeightMargin;
import com.mogu.tv.adapter.InviteListAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.ActivityHistoryBinding;
import com.mogu.tv.model.UserShareList;
import com.mogu.tv.view.QsEmptyView;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InviteListActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0018\u001a\u00020\u0016H\u0016J\b\u0010\u0019\u001a\u00020\u0016H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/mogu/tv/ui/activity/InviteListActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityHistoryBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/InviteListAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/InviteListAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/InviteListAdapter;)V", "mLimit", "", "getMLimit", "()I", "setMLimit", "(I)V", "mPage", "getMPage", "setMPage", "qsEmptyView", "Lcom/mogu/tv/view/QsEmptyView;", "addEmptyView", "", "getServerData", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InviteListActivity extends CommonBaseActivity<ActivityHistoryBinding> {
    private InviteListAdapter mAdapter = new InviteListAdapter();
    private int mLimit = 20;
    private int mPage = 1;
    private QsEmptyView qsEmptyView;

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.InviteListActivity.initView.1
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
                InviteListActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("我的邀请");
    }

    public final InviteListAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(InviteListAdapter inviteListAdapter) {
        Intrinsics.checkNotNullParameter(inviteListAdapter, "<set-?>");
        this.mAdapter = inviteListAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.InviteListActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                InviteListActivity.m200initData$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.InviteListActivity$$ExternalSyntheticLambda0
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                InviteListActivity.m201initData$lambda1(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new LinearLayoutManager(getMActivity()));
        getBinding().rvList.addItemDecoration(new RVDividerHeightMargin(this, 1, 2, true, AndroidutilsKt.color(R.color.dividerClolor)));
        getBinding().rvList.setAdapter(this.mAdapter);
        addEmptyView();
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m200initData$lambda0(InviteListActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getBinding().refreshLayout.resetNoMoreData();
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m201initData$lambda1(InviteListActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    private final void addEmptyView() {
        QsEmptyView qsEmptyView = new QsEmptyView(getMActivity());
        this.qsEmptyView = qsEmptyView;
        qsEmptyView.setEmprtyText("还没有邀请好友哦，快去邀请吧，获取积分后续福利满满");
        QsEmptyView qsEmptyView2 = this.qsEmptyView;
        QsEmptyView qsEmptyView3 = null;
        if (qsEmptyView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
            qsEmptyView2 = null;
        }
        qsEmptyView2.setResIcon(R.mipmap.ic_empty_data);
        QsEmptyView qsEmptyView4 = this.qsEmptyView;
        if (qsEmptyView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
            qsEmptyView4 = null;
        }
        qsEmptyView4.showState(3);
        InviteListAdapter inviteListAdapter = this.mAdapter;
        QsEmptyView qsEmptyView5 = this.qsEmptyView;
        if (qsEmptyView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
        } else {
            qsEmptyView3 = qsEmptyView5;
        }
        inviteListAdapter.setEmptyView(qsEmptyView3);
    }

    public final int getMLimit() {
        return this.mLimit;
    }

    public final void setMLimit(int i) {
        this.mLimit = i;
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    private final void getServerData() {
        ApiManager.INSTANCE.getUserShareList(this.mLimit, this.mPage, new Function3<Integer, String, UserShareList, Unit>() { // from class: com.mogu.tv.ui.activity.InviteListActivity.getServerData.1
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
                if (InviteListActivity.this.getMPage() == 1 && (!userShareList.getList().isEmpty())) {
                    QsEmptyView qsEmptyView = InviteListActivity.this.qsEmptyView;
                    if (qsEmptyView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
                        qsEmptyView = null;
                    }
                    qsEmptyView.showState(0);
                    InviteListActivity.this.getBinding().refreshLayout.finishRefresh();
                    InviteListActivity.this.getMAdapter().setNewData(userShareList.getList());
                } else {
                    InviteListActivity.this.getMAdapter().addData((Collection) userShareList.getList());
                }
                if (InviteListActivity.this.getMAdapter().getData().size() >= userShareList.getTotal()) {
                    InviteListActivity.this.getBinding().refreshLayout.finishLoadMoreWithNoMoreData();
                } else {
                    InviteListActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
            }
        });
    }
}
