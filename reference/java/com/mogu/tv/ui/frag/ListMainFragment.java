package com.mogu.tv.ui.frag;

import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.ClickUtils;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.adapter.HomeGridMenuAdapter;
import com.mogu.tv.adapter.ImageBannerAdapter;
import com.mogu.tv.adapter.VideoTypesListAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragmentListmainBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.GridUiModel;
import com.mogu.tv.model.IndexLables;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.model.Upload24;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.model.VideoUiLists;
import com.mogu.tv.ui.activity.ActivityPageActivity;
import com.mogu.tv.ui.activity.AdCenterAppActivity;
import com.mogu.tv.ui.activity.LabelsSelectActivity;
import com.mogu.tv.ui.activity.NvYouActivity;
import com.mogu.tv.ui.activity.RankActivity;
import com.mogu.tv.utils.AnimUtil;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.youth.banner.Banner;
import com.youth.banner.indicator.CircleIndicator;
import com.youth.banner.listener.OnBannerListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ListMainFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\u000bH\u0002J\b\u00102\u001a\u00020/H\u0002J\b\u00103\u001a\u00020/H\u0016J\b\u00104\u001a\u00020/H\u0002J\b\u00105\u001a\u00020/H\u0016J\b\u00106\u001a\u00020/H\u0016J\u0010\u00107\u001a\u00020/2\u0006\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u00020/H\u0002J\b\u0010;\u001a\u00020/H\u0002J\b\u0010<\u001a\u00020/H\u0002J\u0010\u0010=\u001a\u00020/2\u0006\u0010>\u001a\u000209H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR*\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R*\u0010*\u001a\u0012\u0012\u0004\u0012\u00020+0\u001dj\b\u0012\u0004\u0012\u00020+`\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010!\"\u0004\b-\u0010#¨\u0006?"}, d2 = {"Lcom/mogu/tv/ui/frag/ListMainFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragmentListmainBinding;", "()V", "adapterGridHome", "Lcom/mogu/tv/adapter/HomeGridMenuAdapter;", "getAdapterGridHome", "()Lcom/mogu/tv/adapter/HomeGridMenuAdapter;", "setAdapterGridHome", "(Lcom/mogu/tv/adapter/HomeGridMenuAdapter;)V", "firstLoadAllList", "", "getFirstLoadAllList", "()Z", "setFirstLoadAllList", "(Z)V", "indexRecomand", "Lcom/mogu/tv/model/IndexLables;", "getIndexRecomand", "()Lcom/mogu/tv/model/IndexLables;", "setIndexRecomand", "(Lcom/mogu/tv/model/IndexLables;)V", "mAdapter", "Lcom/mogu/tv/adapter/VideoTypesListAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/VideoTypesListAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/VideoTypesListAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoUiLists;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mServerCount", "", "getMServerCount", "()I", "setMServerCount", "(I)V", "menugridData", "Lcom/mogu/tv/model/GridUiModel;", "getMenugridData", "setMenugridData", "getNotice", "", "getServerData", "isAll", "getUpload24", "initData", "initLists", "initView", "onResume", "refreshServerTypeData", "lablesId", "", "showBanner", "showGridView", "showIndexLables", "showNoticeMarqueen", "text", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ListMainFragment extends CommonBaseFragment<FragmentListmainBinding> {
    private boolean firstLoadAllList;
    private IndexLables indexRecomand = new IndexLables();
    private ArrayList<GridUiModel> menugridData = new ArrayList<>();
    private HomeGridMenuAdapter adapterGridHome = new HomeGridMenuAdapter();
    private ArrayList<VideoUiLists> mData = new ArrayList<>();
    private VideoTypesListAdapter mAdapter = new VideoTypesListAdapter();
    private int mServerCount = 1;

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        Banner banner;
        showBanner();
        FragmentListmainBinding binding = getBinding();
        if (binding != null && (banner = binding.banner) != null) {
            banner.addBannerLifecycleObserver(requireActivity());
        }
        getNotice();
        showGridView();
        initLists();
        showIndexLables();
        getUpload24();
    }

    public final IndexLables getIndexRecomand() {
        return this.indexRecomand;
    }

    public final void setIndexRecomand(IndexLables indexLables) {
        this.indexRecomand = indexLables;
    }

    private final void showIndexLables() {
        ApiManager.INSTANCE.getIndexLables(new Function3<Integer, String, IndexLables, Unit>() { // from class: com.mogu.tv.ui.frag.ListMainFragment.showIndexLables.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, IndexLables indexLables) {
                invoke(num.intValue(), str, indexLables);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, IndexLables indexLables) {
                ArrayList<IndexLables.Lables> list;
                ArrayList<IndexLables.Lables> list2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || indexLables == null) {
                    return;
                }
                IndexLables indexRecomand = ListMainFragment.this.getIndexRecomand();
                if (indexRecomand != null && (list2 = indexRecomand.getList()) != null) {
                    list2.addAll(indexLables.getList());
                }
                IndexLables indexRecomand2 = ListMainFragment.this.getIndexRecomand();
                if (indexRecomand2 != null && (list = indexRecomand2.getList()) != null) {
                    ListMainFragment listMainFragment = ListMainFragment.this;
                    for (IndexLables.Lables lables : list) {
                        VideoUiLists videoUiLists = new VideoUiLists();
                        videoUiLists.setLabelsId(String.valueOf(lables.getId()));
                        videoUiLists.setLabelsName(lables.getName());
                        videoUiLists.setTypeName(lables.getName());
                        listMainFragment.getMData().add(videoUiLists);
                    }
                }
                ListMainFragment listMainFragment2 = ListMainFragment.this;
                listMainFragment2.setMServerCount(listMainFragment2.getMData().size());
                ListMainFragment.this.getServerData(false);
            }
        });
    }

    private final void getUpload24() {
        ApiManager.INSTANCE.get24upload(new Function3<Integer, String, Upload24, Unit>() { // from class: com.mogu.tv.ui.frag.ListMainFragment.getUpload24.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, Upload24 upload24) {
                invoke(num.intValue(), str, upload24);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, Upload24 upload24) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || upload24 == null) {
                    return;
                }
                ListMainFragment.this.getMenugridData().get(0).setNumber(Integer.parseInt(upload24.getTotal()));
                ListMainFragment.this.getAdapterGridHome().notifyItemChanged(0);
            }
        });
    }

    public final ArrayList<GridUiModel> getMenugridData() {
        return this.menugridData;
    }

    public final void setMenugridData(ArrayList<GridUiModel> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.menugridData = arrayList;
    }

    public final HomeGridMenuAdapter getAdapterGridHome() {
        return this.adapterGridHome;
    }

    public final void setAdapterGridHome(HomeGridMenuAdapter homeGridMenuAdapter) {
        Intrinsics.checkNotNullParameter(homeGridMenuAdapter, "<set-?>");
        this.adapterGridHome = homeGridMenuAdapter;
    }

    private final void showGridView() {
        RecyclerView recyclerView;
        this.menugridData.add(new GridUiModel("最近更新", R.mipmap.menu_5, "pianku", true, 100));
        this.menugridData.add(new GridUiModel("女友海選", R.mipmap.menu_1, "nvyou", false, 0, 24, null));
        this.menugridData.add(new GridUiModel("排行榜", R.mipmap.menu_2, "rank", false, 0, 24, null));
        this.menugridData.add(new GridUiModel("自主精選", R.mipmap.menu_3, "selecttag", false, 0, 24, null));
        this.menugridData.add(new GridUiModel("应用中心", R.mipmap.ic_menu_appcenter, "appcenter", false, 0, 24, null));
        this.menugridData.add(new GridUiModel("优惠活動", R.mipmap.menu_8, "activity", false, 0, 24, null));
        FragmentListmainBinding binding = getBinding();
        if (binding != null && (recyclerView = binding.rvMenu) != null) {
            recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 3));
            recyclerView.setAdapter(this.adapterGridHome);
            recyclerView.addItemDecoration(new GridItemDecorationColumns(14, 3));
            this.adapterGridHome.setNewData(this.menugridData);
        }
        this.adapterGridHome.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.ListMainFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ListMainFragment.m266showGridView$lambda1(this.f$0, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: showGridView$lambda-1, reason: not valid java name */
    public static final void m266showGridView$lambda1(ListMainFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String url = this$0.adapterGridHome.getData().get(i).getUrl();
        switch (url.hashCode()) {
            case -1715955426:
                if (url.equals("selecttag")) {
                    this$0.startActivity(new Intent(this$0.getContext(), (Class<?>) LabelsSelectActivity.class));
                    break;
                }
                break;
            case -1655966961:
                if (url.equals("activity")) {
                    this$0.startActivity(new Intent(this$0.getContext(), (Class<?>) ActivityPageActivity.class));
                    break;
                }
                break;
            case -988533808:
                if (url.equals("pianku")) {
                    ArouterUtils.INSTANCE.toPianku("");
                    this$0.menugridData.get(0).setShowNumber(false);
                    this$0.menugridData.get(0).setName("全部片库");
                    this$0.adapterGridHome.notifyItemChanged(0);
                    break;
                }
                break;
            case 3492908:
                if (url.equals("rank")) {
                    this$0.startActivity(new Intent(this$0.getContext(), (Class<?>) RankActivity.class));
                    break;
                }
                break;
            case 105222487:
                if (url.equals("nvyou")) {
                    this$0.startActivity(new Intent(this$0.getContext(), (Class<?>) NvYouActivity.class));
                    break;
                }
                break;
            case 1943955894:
                if (url.equals("appcenter")) {
                    this$0.startActivity(new Intent(this$0.getContext(), (Class<?>) AdCenterAppActivity.class));
                    break;
                }
                break;
        }
    }

    private final void getNotice() {
        ApiManager.INSTANCE.getMoguConfig("notice", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.ui.frag.ListMainFragment.getNotice.1
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
                ListMainFragment.this.showNoticeMarqueen(moguConfig.getValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showNoticeMarqueen(String text) {
        TextView textView;
        FragmentListmainBinding binding = getBinding();
        if (binding == null || (textView = binding.tvSmv) == null) {
            return;
        }
        textView.setText(text);
        textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        textView.setSingleLine(true);
        textView.setSelected(true);
        textView.setFocusable(true);
        textView.setFocusableInTouchMode(true);
    }

    public final ArrayList<VideoUiLists> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<VideoUiLists> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    public final VideoTypesListAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(VideoTypesListAdapter videoTypesListAdapter) {
        Intrinsics.checkNotNullParameter(videoTypesListAdapter, "<set-?>");
        this.mAdapter = videoTypesListAdapter;
    }

    public final boolean getFirstLoadAllList() {
        return this.firstLoadAllList;
    }

    public final void setFirstLoadAllList(boolean z) {
        this.firstLoadAllList = z;
    }

    private final void initLists() {
        RefreshLayout refreshLayout;
        RefreshLayout refreshLayout2;
        RefreshLayout refreshLayout3;
        FragmentListmainBinding binding;
        NestedScrollView nestedScrollView;
        FragmentListmainBinding binding2 = getBinding();
        RecyclerView recyclerView = binding2 != null ? binding2.rvRecommend : null;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        FragmentListmainBinding binding3 = getBinding();
        RecyclerView recyclerView2 = binding3 != null ? binding3.rvRecommend : null;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mAdapter);
        }
        if (Build.VERSION.SDK_INT >= 23 && (binding = getBinding()) != null && (nestedScrollView = binding.scrollView) != null) {
            nestedScrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.mogu.tv.ui.frag.ListMainFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnScrollChangeListener
                public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    ListMainFragment.m261initLists$lambda3(this.f$0, view, i, i2, i3, i4);
                }
            });
        }
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setTag(true);
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.frag.ListMainFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ListMainFragment.m262initLists$lambda4(this.f$0, baseQuickAdapter, view, i);
            }
        });
        FragmentListmainBinding binding4 = getBinding();
        if (binding4 != null && (refreshLayout3 = binding4.refreshLayout) != null) {
            refreshLayout3.finishLoadMoreWithNoMoreData();
        }
        FragmentListmainBinding binding5 = getBinding();
        if (binding5 != null && (refreshLayout2 = binding5.refreshLayout) != null) {
            refreshLayout2.setEnableLoadMore(false);
        }
        FragmentListmainBinding binding6 = getBinding();
        if (binding6 == null || (refreshLayout = binding6.refreshLayout) == null) {
            return;
        }
        refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.ListMainFragment$$ExternalSyntheticLambda3
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout4) {
                ListMainFragment.m263initLists$lambda6(this.f$0, refreshLayout4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3, reason: not valid java name */
    public static final void m261initLists$lambda3(ListMainFragment this$0, View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Math.abs(i2) <= 400 || this$0.firstLoadAllList) {
            return;
        }
        this$0.firstLoadAllList = true;
        this$0.getServerData(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-4, reason: not valid java name */
    public static final void m262initLists$lambda4(ListMainFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getId() != R.id.ll_live_change || ClickUtils.INSTANCE.isDoubleClick()) {
            return;
        }
        this$0.refreshServerTypeData(this$0.mAdapter.getData().get(i).getLabelsId());
        AnimUtil.animRolateAndScale(view.findViewById(R.id.iv_live_change));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-6, reason: not valid java name */
    public static final void m263initLists$lambda6(ListMainFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        for (VideoUiLists videoUiLists : this$0.mData) {
            videoUiLists.setPage(videoUiLists.getPage() + 1);
            if (videoUiLists.getPage() >= 5) {
                videoUiLists.setPage(1);
            }
        }
        this$0.getServerData(true);
    }

    public final int getMServerCount() {
        return this.mServerCount;
    }

    public final void setMServerCount(int i) {
        this.mServerCount = i;
    }

    private final void refreshServerTypeData(String lablesId) {
        for (final VideoUiLists videoUiLists : this.mData) {
            if (Intrinsics.areEqual(videoUiLists.getLabelsId(), lablesId)) {
                videoUiLists.setPage(videoUiLists.getPage() + 1);
                if (videoUiLists.getPage() >= 5) {
                    videoUiLists.setPage(1);
                }
                HashMap<String, Object> map = new HashMap<>();
                HashMap<String, Object> map2 = map;
                map2.put("limit", "4");
                map2.put("page", String.valueOf(videoUiLists.getPage()));
                map2.put("labels", videoUiLists.getLabelsId());
                ApiManager.INSTANCE.getVideoList(map, new Function3<Integer, String, VideoListModel, Unit>() { // from class: com.mogu.tv.ui.frag.ListMainFragment$refreshServerTypeData$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoListModel videoListModel) {
                        invoke(num.intValue(), str, videoListModel);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i, String msg, VideoListModel videoListModel) {
                        ArrayList<VideoListModel.Video> arrayList;
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        if (this.this$0.isDetached() || this.this$0.getBinding() == null) {
                            return;
                        }
                        if (i == 200) {
                            videoUiLists.getList().clear();
                            ArrayList<VideoListModel.Video> list = videoUiLists.getList();
                            if (videoListModel == null || (arrayList = videoListModel.getList()) == null) {
                                arrayList = new ArrayList<>();
                            }
                            list.addAll(arrayList);
                            int iRandom = RangesKt.random(new IntRange(0, 7), Random.INSTANCE);
                            if (iRandom <= 3 && videoUiLists.getList().size() >= 3) {
                                videoUiLists.getList().get(iRandom).setShowAd(true);
                            }
                        }
                        if (this.this$0.getBinding() != null) {
                            this.this$0.getMAdapter().notifyItemRangeChanged(0, 4);
                        }
                    }
                });
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        TextView textView;
        super.onResume();
        FragmentListmainBinding binding = getBinding();
        if (binding == null || (textView = binding.tvSmv) == null) {
            return;
        }
        textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        textView.setSingleLine(true);
        textView.setSelected(true);
        textView.setFocusable(true);
        textView.setFocusableInTouchMode(true);
    }

    private final void showBanner() {
        Banner banner;
        List<AllAdsModel.Item> banner2;
        FragmentListmainBinding binding = getBinding();
        if (binding == null || (banner = binding.banner) == null) {
            return;
        }
        banner.addBannerLifecycleObserver(requireActivity());
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final ImageBannerAdapter imageBannerAdapter = new ImageBannerAdapter((adData == null || (banner2 = adData.getBanner()) == null) ? null : CollectionsKt.shuffled(banner2));
        imageBannerAdapter.setOnBannerListener(new OnBannerListener() { // from class: com.mogu.tv.ui.frag.ListMainFragment$$ExternalSyntheticLambda4
            @Override // com.youth.banner.listener.OnBannerListener
            public final void OnBannerClick(Object obj, int i) {
                ListMainFragment.m265showBanner$lambda11$lambda9(imageBannerAdapter, this, (AllAdsModel.Item) obj, i);
            }
        });
        banner.setLoopTime(4500L);
        banner.setBannerRound(15.0f);
        if (Build.VERSION.SDK_INT >= 21) {
            banner.setBannerRound2(15.0f);
        }
        banner.setIndicator(new CircleIndicator(requireActivity()));
        banner.setAdapter(imageBannerAdapter);
        banner.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.frag.ListMainFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ListMainFragment.m264showBanner$lambda11$lambda10(this.f$0);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showBanner$lambda-11$lambda-9, reason: not valid java name */
    public static final void m265showBanner$lambda11$lambda9(ImageBannerAdapter imageBannerAdapter, ListMainFragment this$0, AllAdsModel.Item item, int i) {
        String action;
        Intrinsics.checkNotNullParameter(imageBannerAdapter, "$imageBannerAdapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AllAdsModel.Item data = imageBannerAdapter.getData(i);
        ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
        FragmentActivity fragmentActivityRequireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
        FragmentActivity fragmentActivity = fragmentActivityRequireActivity;
        if (data == null || (action = data.getAction()) == null) {
            action = "";
        }
        arouterUtils.toUrlPraseJump(fragmentActivity, action);
        ArouterUtils.INSTANCE.clickAd(String.valueOf(data != null ? Integer.valueOf(data.getId()) : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showBanner$lambda-11$lambda-10, reason: not valid java name */
    public static final void m264showBanner$lambda11$lambda10(ListMainFragment this$0) {
        Banner banner;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentListmainBinding binding = this$0.getBinding();
        if (binding == null || (banner = binding.banner) == null) {
            return;
        }
        banner.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getServerData(boolean isAll) {
        if (this.mData.isEmpty()) {
            return;
        }
        if (isAll) {
            this.mServerCount = this.mData.size();
            for (VideoUiLists videoUiLists : this.mData) {
                HashMap<String, Object> map = new HashMap<>();
                HashMap<String, Object> map2 = map;
                map2.put("limit", "4");
                map2.put("page", String.valueOf(videoUiLists.getPage()));
                map2.put("labels", videoUiLists.getLabelsId());
                ApiManager.INSTANCE.getVideoList(map, new ListMainFragment$getServerData$1$1(this, videoUiLists));
            }
            return;
        }
        VideoUiLists videoUiLists2 = this.mData.get(0);
        HashMap<String, Object> map3 = new HashMap<>();
        HashMap<String, Object> map4 = map3;
        map4.put("limit", "4");
        map4.put("page", String.valueOf(videoUiLists2.getPage()));
        map4.put("labels", videoUiLists2.getLabelsId());
        ApiManager.INSTANCE.getVideoList(map3, new ListMainFragment$getServerData$2$1(this, videoUiLists2));
    }
}
