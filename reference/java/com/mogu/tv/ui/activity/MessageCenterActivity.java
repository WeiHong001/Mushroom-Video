package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.adapter.MessageAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActivityHistoryBinding;
import com.mogu.tv.model.MessageModel;
import com.mogu.tv.model.MoguConfig;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessageCenterActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lcom/mogu/tv/ui/activity/MessageCenterActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityHistoryBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/MessageAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/MessageAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/MessageAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/MessageModel;", "Lkotlin/collections/ArrayList;", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "getServerData", "", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MessageCenterActivity extends CommonBaseActivity<ActivityHistoryBinding> {
    private MessageAdapter mAdapter = new MessageAdapter();
    private int mPage = 1;
    private ArrayList<MessageModel> mData = new ArrayList<>();

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.MessageCenterActivity.initView.1
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
                MessageCenterActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("消息中心");
    }

    public final MessageAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(MessageAdapter messageAdapter) {
        Intrinsics.checkNotNullParameter(messageAdapter, "<set-?>");
        this.mAdapter = messageAdapter;
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.MessageCenterActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                MessageCenterActivity.m204initData$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.MessageCenterActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                MessageCenterActivity.m205initData$lambda1(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new LinearLayoutManager(getMActivity()));
        getBinding().rvList.setAdapter(this.mAdapter);
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.MessageCenterActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MessageCenterActivity.m206initData$lambda2(baseQuickAdapter, view, i);
            }
        });
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m204initData$lambda0(MessageCenterActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m205initData$lambda1(MessageCenterActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m206initData$lambda2(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ArouterUtils.INSTANCE.toMessageDetails();
    }

    private final void getServerData() {
        ApiManager.INSTANCE.getMoguConfig("messagecenter", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.ui.activity.MessageCenterActivity.getServerData.1
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
                if (MessageCenterActivity.this.isDestroyed() || MessageCenterActivity.this.getBinding() == null) {
                    return;
                }
                if (MessageCenterActivity.this.getMPage() == 1) {
                    MessageCenterActivity.this.getBinding().refreshLayout.finishRefresh();
                    MessageCenterActivity.this.mData.clear();
                } else {
                    MessageCenterActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
                if (i == 200 && moguConfig != null) {
                    MessageCenterActivity.this.mData.add((MessageModel) new Gson().fromJson(moguConfig.getValue(), MessageModel.class));
                    MessageCenterActivity.this.getMAdapter().notifyDataSetChanged();
                }
                if (MessageCenterActivity.this.getBinding() != null) {
                    MessageCenterActivity.this.getBinding().refreshLayout.finishRefresh();
                }
            }
        });
    }
}
