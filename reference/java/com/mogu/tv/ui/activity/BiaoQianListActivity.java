package com.mogu.tv.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.VideoListsAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragBqlistBinding;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.utils.AnimUtil;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BiaoQianListActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010*\u001a\u00020+H\u0002J\b\u0010,\u001a\u00020+H\u0016J\b\u0010-\u001a\u00020+H\u0002J\b\u0010.\u001a\u00020+H\u0002J\b\u0010/\u001a\u00020+H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00060"}, d2 = {"Lcom/mogu/tv/ui/activity/BiaoQianListActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/FragBqlistBinding;", "()V", "distance", "", "getDistance", "()I", "setDistance", "(I)V", "mAdapter", "Lcom/mogu/tv/adapter/VideoListsAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/VideoListsAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/VideoListsAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoListModel$Video;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mPage", "getMPage", "setMPage", "requestLabels", "", "getRequestLabels", "()Ljava/lang/String;", "setRequestLabels", "(Ljava/lang/String;)V", "selectId", "getSelectId", "setSelectId", "topVisible", "", "getTopVisible", "()Z", "setTopVisible", "(Z)V", "getServerData", "", "initData", "initLists", "initRetrnTop", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class BiaoQianListActivity extends CommonBaseActivity<FragBqlistBinding> {
    private int distance;
    private boolean topVisible;
    private String requestLabels = "";
    private int mPage = 1;
    private ArrayList<VideoListModel.Video> mData = new ArrayList<>();
    private VideoListsAdapter mAdapter = new VideoListsAdapter();
    private String selectId = "";

    public final String getRequestLabels() {
        return this.requestLabels;
    }

    public final void setRequestLabels(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.requestLabels = str;
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        RelativeLayout relativeLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.llHead");
        fitStatubar(relativeLayout);
        getBinding().headLayout.tvHeaderTitle.setText("筛选");
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity.initView.1
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
                BiaoQianListActivity.this.onBackPressed();
            }
        });
        initLists();
        initRetrnTop();
    }

    public final int getDistance() {
        return this.distance;
    }

    public final void setDistance(int i) {
        this.distance = i;
    }

    public final boolean getTopVisible() {
        return this.topVisible;
    }

    public final void setTopVisible(boolean z) {
        this.topVisible = z;
    }

    private final void initRetrnTop() {
        ImageView imageView = getBinding().ivReturnTop;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivReturnTop");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity.initRetrnTop.1
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
                BiaoQianListActivity.this.getBinding().rvList.scrollToPosition(0);
            }
        });
        getBinding().rvList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity.initRetrnTop.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
                if (BiaoQianListActivity.this.getDistance() < (-ViewConfiguration.getTouchSlop()) && !BiaoQianListActivity.this.getTopVisible()) {
                    AnimUtil.showFABAnimation(BiaoQianListActivity.this.getBinding().ivReturnTop);
                    BiaoQianListActivity.this.setDistance(0);
                    BiaoQianListActivity.this.setTopVisible(true);
                } else if (BiaoQianListActivity.this.getDistance() > ViewConfiguration.getTouchSlop() && BiaoQianListActivity.this.getTopVisible()) {
                    AnimUtil.hideFABAnimation(BiaoQianListActivity.this.getBinding().ivReturnTop);
                    BiaoQianListActivity.this.setDistance(0);
                    BiaoQianListActivity.this.setTopVisible(false);
                }
                if ((dy <= 0 || !BiaoQianListActivity.this.getTopVisible()) && (dy >= 0 || BiaoQianListActivity.this.getTopVisible())) {
                    return;
                }
                BiaoQianListActivity biaoQianListActivity = BiaoQianListActivity.this;
                biaoQianListActivity.setDistance(biaoQianListActivity.getDistance() + dy);
            }
        });
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

    private final void initLists() {
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                BiaoQianListActivity.m184initLists$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                BiaoQianListActivity.m185initLists$lambda1(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new GridLayoutManager(getMActivity(), 2));
        getBinding().rvList.addItemDecoration(new GridItemDecorationColumns(10, 2));
        getBinding().rvList.setAdapter(this.mAdapter);
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BiaoQianListActivity.m186initLists$lambda2(this.f$0, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-0, reason: not valid java name */
    public static final void m184initLists$lambda0(BiaoQianListActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-1, reason: not valid java name */
    public static final void m185initLists$lambda1(BiaoQianListActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-2, reason: not valid java name */
    public static final void m186initLists$lambda2(BiaoQianListActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toVideoDetails(this$0.mAdapter.getData().get(i).getId());
    }

    public final String getSelectId() {
        return this.selectId;
    }

    public final void setSelectId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectId = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.selectId = stringExtra;
        if (!TextUtils.isEmpty(stringExtra)) {
            this.requestLabels = this.selectId;
        }
        TextView textView = getBinding().tvLabelsName;
        String stringExtra2 = getIntent().getStringExtra("name");
        textView.setText(stringExtra2 != null ? stringExtra2 : "");
        getServerData();
    }

    private final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        map2.put("labels", this.requestLabels);
        ApiManager.INSTANCE.getVideoList(map, new Function3<Integer, String, VideoListModel, Unit>() { // from class: com.mogu.tv.ui.activity.BiaoQianListActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoListModel videoListModel) {
                invoke(num.intValue(), str, videoListModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, VideoListModel videoListModel) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (BiaoQianListActivity.this.isDestroyed() || BiaoQianListActivity.this.getBinding() == null) {
                    return;
                }
                BiaoQianListActivity.this.getBinding().refreshLayout.finishRefresh();
                if (BiaoQianListActivity.this.getMPage() == 1) {
                    BiaoQianListActivity.this.getMData().clear();
                } else {
                    BiaoQianListActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
                if (i == 200 && videoListModel != null) {
                    BiaoQianListActivity.this.getMData().addAll(videoListModel.getList());
                }
                BiaoQianListActivity.this.getMAdapter().notifyDataSetChanged();
            }
        });
    }
}
