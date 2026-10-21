package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.VideoListsAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActRankBinding;
import com.mogu.tv.model.RankVideoModel;
import com.mogu.tv.model.VideoListModel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RankActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010$\u001a\u00020\"H\u0002J\b\u0010%\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020\u0005H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/mogu/tv/ui/activity/RankActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActRankBinding;", "()V", "cureentSelectIndex", "", "getCureentSelectIndex", "()I", "setCureentSelectIndex", "(I)V", "currentRequestType", "", "getCurrentRequestType", "()Ljava/lang/String;", "setCurrentRequestType", "(Ljava/lang/String;)V", "mAdapter", "Lcom/mogu/tv/adapter/VideoListsAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/VideoListsAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/VideoListsAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoListModel$Video;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mTextsizePress", "", "mTextsizeSmall", "getServerData", "", "initData", "initLists", "initView", "notifyTab", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RankActivity extends CommonBaseActivity<ActRankBinding> {
    private int cureentSelectIndex = -1;
    private String currentRequestType = "day";
    private float mTextsizeSmall = 16.0f;
    private float mTextsizePress = 20.0f;
    private ArrayList<VideoListModel.Video> mData = new ArrayList<>();
    private VideoListsAdapter mAdapter = new VideoListsAdapter();

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.RankActivity.initView.1
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
                RankActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("排行榜");
        initLists();
    }

    public final int getCureentSelectIndex() {
        return this.cureentSelectIndex;
    }

    public final void setCureentSelectIndex(int i) {
        this.cureentSelectIndex = i;
    }

    public final String getCurrentRequestType() {
        return this.currentRequestType;
    }

    public final void setCurrentRequestType(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.currentRequestType = str;
    }

    public final ArrayList<VideoListModel.Video> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<VideoListModel.Video> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    public final VideoListsAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(VideoListsAdapter videoListsAdapter) {
        Intrinsics.checkNotNullParameter(videoListsAdapter, "<set-?>");
        this.mAdapter = videoListsAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        notifyTab(0);
        TextView textView = getBinding().tvMenu0;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvMenu0");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.RankActivity.initData.1
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
                RankActivity.this.notifyTab(0);
            }
        });
        TextView textView2 = getBinding().tvMenu1;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvMenu1");
        AndroidutilsKt.click(textView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.RankActivity.initData.2
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
                RankActivity.this.notifyTab(1);
            }
        });
        TextView textView3 = getBinding().tvMenu2;
        Intrinsics.checkNotNullExpressionValue(textView3, "binding.tvMenu2");
        AndroidutilsKt.click(textView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.RankActivity.initData.3
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
                RankActivity.this.notifyTab(2);
            }
        });
        TextView textView4 = getBinding().tvMenu3;
        Intrinsics.checkNotNullExpressionValue(textView4, "binding.tvMenu3");
        AndroidutilsKt.click(textView4, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.RankActivity.initData.4
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
                RankActivity.this.notifyTab(3);
            }
        });
    }

    private final void initLists() {
        ActRankBinding binding = getBinding();
        binding.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.RankActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                RankActivity.m219initLists$lambda2$lambda0(this.f$0, refreshLayout);
            }
        });
        binding.refreshLayout.setEnableLoadMore(false);
        binding.rvList.setLayoutManager(new GridLayoutManager(getMActivity(), 2));
        binding.rvList.addItemDecoration(new GridItemDecorationColumns(10, 2));
        binding.rvList.setAdapter(this.mAdapter);
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.RankActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                RankActivity.m220initLists$lambda2$lambda1(this.f$0, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-2$lambda-0, reason: not valid java name */
    public static final void m219initLists$lambda2$lambda0(RankActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-2$lambda-1, reason: not valid java name */
    public static final void m220initLists$lambda2$lambda1(RankActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toVideoDetails(this$0.mAdapter.getData().get(i).getId());
    }

    private final void getServerData() {
        ApiManager.INSTANCE.getRankVideo(this.currentRequestType, new Function3<Integer, String, String, Unit>() { // from class: com.mogu.tv.ui.activity.RankActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, String str2) {
                invoke(num.intValue(), str, str2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, String str) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (RankActivity.this.isDestroyed() || RankActivity.this.getBinding() == null) {
                    return;
                }
                RankActivity.this.getMData().clear();
                String str2 = str;
                if (!(str2 == null || str2.length() == 0)) {
                    RankVideoModel rankVideoModel = (RankVideoModel) new Gson().fromJson(str, RankVideoModel.class);
                    if (rankVideoModel.getCode() == 200) {
                        com.kotlin.basiclib.widget.RefreshLayout refreshLayout = RankActivity.this.getBinding().refreshLayout;
                        if (refreshLayout != null) {
                            refreshLayout.finishRefresh();
                        }
                        RankActivity.this.getMData().clear();
                        if (i == 200 && str != null) {
                            RankActivity.this.getMData().addAll(rankVideoModel.getData());
                        }
                    }
                }
                RankActivity.this.getMAdapter().notifyDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyTab(int index) {
        if (this.cureentSelectIndex == index) {
            return;
        }
        this.cureentSelectIndex = index;
        ActRankBinding binding = getBinding();
        binding.refreshLayout.autoRefresh();
        binding.tvMenu0.setSelected(this.cureentSelectIndex == 0);
        binding.tvMenu1.setSelected(this.cureentSelectIndex == 1);
        binding.tvMenu2.setSelected(this.cureentSelectIndex == 2);
        binding.tvMenu3.setSelected(this.cureentSelectIndex == 3);
        binding.tvMenu0.setTextSize(this.mTextsizeSmall);
        binding.tvMenu1.setTextSize(this.mTextsizeSmall);
        binding.tvMenu2.setTextSize(this.mTextsizeSmall);
        binding.tvMenu3.setTextSize(this.mTextsizeSmall);
        int i = this.cureentSelectIndex;
        if (i == 0) {
            binding.tvMenu0.setTextSize(this.mTextsizePress);
            this.currentRequestType = "day";
            return;
        }
        if (i == 1) {
            binding.tvMenu1.setTextSize(this.mTextsizePress);
            this.currentRequestType = "week";
        } else if (i == 2) {
            binding.tvMenu2.setTextSize(this.mTextsizePress);
            this.currentRequestType = "month";
        } else {
            if (i != 3) {
                return;
            }
            binding.tvMenu3.setTextSize(this.mTextsizePress);
            this.currentRequestType = "own";
        }
    }
}
