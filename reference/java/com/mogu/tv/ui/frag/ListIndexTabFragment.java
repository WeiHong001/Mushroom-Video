package com.mogu.tv.ui.frag;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.ClickUtils;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.adapter.ImageBannerAdapter;
import com.mogu.tv.adapter.VideoTypesListAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragmentListindexBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.model.VideoTypes;
import com.mogu.tv.model.VideoUiLists;
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

/* JADX INFO: compiled from: ListIndexTabFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001b\u001a\u00020\u0019H\u0016J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\b\u0010\u001f\u001a\u00020\u0019H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006 "}, d2 = {"Lcom/mogu/tv/ui/frag/ListIndexTabFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragmentListindexBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/VideoTypesListAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/VideoTypesListAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/VideoTypesListAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoUiLists;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mServerCount", "", "getMServerCount", "()I", "setMServerCount", "(I)V", "getServerData", "", "initData", "initView", "refreshServerTypeData", "typeId", "", "showBanner", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ListIndexTabFragment extends CommonBaseFragment<FragmentListindexBinding> {
    private ArrayList<VideoUiLists> mData = new ArrayList<>();
    private VideoTypesListAdapter mAdapter = new VideoTypesListAdapter();
    private int mServerCount = 1;

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

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        RefreshLayout refreshLayout;
        RefreshLayout refreshLayout2;
        FragmentListindexBinding binding = getBinding();
        if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
            refreshLayout2.setEnableLoadMore(false);
        }
        FragmentListindexBinding binding2 = getBinding();
        if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
            refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$$ExternalSyntheticLambda2
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout3) {
                    ListIndexTabFragment.m255initView$lambda1(this.f$0, refreshLayout3);
                }
            });
        }
        FragmentListindexBinding binding3 = getBinding();
        RecyclerView recyclerView = binding3 != null ? binding3.rvList : null;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        FragmentListindexBinding binding4 = getBinding();
        RecyclerView recyclerView2 = binding4 != null ? binding4.rvList : null;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mAdapter);
        }
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ListIndexTabFragment.m256initView$lambda2(baseQuickAdapter, view, i);
            }
        });
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ListIndexTabFragment.m257initView$lambda3(this.f$0, baseQuickAdapter, view, i);
            }
        });
        showBanner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-1, reason: not valid java name */
    public static final void m255initView$lambda1(ListIndexTabFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        for (VideoUiLists videoUiLists : this$0.mData) {
            videoUiLists.setPage(videoUiLists.getPage() + 1);
            if (videoUiLists.getPage() >= 5) {
                videoUiLists.setPage(1);
            }
        }
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-2, reason: not valid java name */
    public static final void m256initView$lambda2(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Object obj = baseQuickAdapter.getData().get(i);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.mogu.tv.model.VideoUiLists");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-3, reason: not valid java name */
    public static final void m257initView$lambda3(ListIndexTabFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getId() != R.id.ll_live_change || ClickUtils.INSTANCE.isDoubleClick()) {
            return;
        }
        this$0.refreshServerTypeData(this$0.mAdapter.getData().get(i).getTypeId());
        AnimUtil.animRolateAndScale(view.findViewById(R.id.iv_live_change));
    }

    private final void showBanner() {
        Banner banner;
        List<AllAdsModel.Item> banner2;
        FragmentListindexBinding binding = getBinding();
        if (binding == null || (banner = binding.banner) == null) {
            return;
        }
        banner.addBannerLifecycleObserver(requireActivity());
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final ImageBannerAdapter imageBannerAdapter = new ImageBannerAdapter((adData == null || (banner2 = adData.getBanner()) == null) ? null : CollectionsKt.shuffled(banner2));
        imageBannerAdapter.setOnBannerListener(new OnBannerListener() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$$ExternalSyntheticLambda3
            @Override // com.youth.banner.listener.OnBannerListener
            public final void OnBannerClick(Object obj, int i) {
                ListIndexTabFragment.m258showBanner$lambda6$lambda4(imageBannerAdapter, this, (AllAdsModel.Item) obj, i);
            }
        });
        banner.setLoopTime(4500L);
        banner.setBannerRound(15.0f);
        if (Build.VERSION.SDK_INT >= 21) {
            banner.setBannerRound2(15.0f);
        }
        banner.setIndicator(new CircleIndicator(requireActivity()));
        banner.setAdapter(imageBannerAdapter);
        banner.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ListIndexTabFragment.m259showBanner$lambda6$lambda5(this.f$0);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showBanner$lambda-6$lambda-4, reason: not valid java name */
    public static final void m258showBanner$lambda6$lambda4(ImageBannerAdapter imageBannerAdapter, ListIndexTabFragment this$0, AllAdsModel.Item item, int i) {
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
    /* JADX INFO: renamed from: showBanner$lambda-6$lambda-5, reason: not valid java name */
    public static final void m259showBanner$lambda6$lambda5(ListIndexTabFragment this$0) {
        Banner banner;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentListindexBinding binding = this$0.getBinding();
        if (binding == null || (banner = binding.banner) == null) {
            return;
        }
        banner.start();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        List<VideoTypes.Types> list;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("parentId") : null;
        this.mData.clear();
        VideoTypes types = GlobeAppData.INSTANCE.getTypes();
        if (types != null && (list = types.getList()) != null) {
            for (VideoTypes.Types types2 : list) {
                if (Intrinsics.areEqual(types2.getId().toString(), string)) {
                    for (VideoTypes.Child child : types2.getChild()) {
                        VideoUiLists videoUiLists = new VideoUiLists();
                        videoUiLists.setTypeId(child.getId().toString());
                        videoUiLists.setTypeName(child.getName());
                        this.mData.add(videoUiLists);
                    }
                }
            }
        }
        this.mServerCount = this.mData.size();
        getServerData();
    }

    public final int getMServerCount() {
        return this.mServerCount;
    }

    public final void setMServerCount(int i) {
        this.mServerCount = i;
    }

    private final void refreshServerTypeData(String typeId) {
        for (final VideoUiLists videoUiLists : this.mData) {
            if (Intrinsics.areEqual(videoUiLists.getTypeId(), typeId)) {
                videoUiLists.setPage(videoUiLists.getPage() + 1);
                if (videoUiLists.getPage() >= 5) {
                    videoUiLists.setPage(1);
                }
                HashMap<String, Object> map = new HashMap<>();
                HashMap<String, Object> map2 = map;
                map2.put("limit", "4");
                map2.put("page", String.valueOf(videoUiLists.getPage()));
                map2.put("types", videoUiLists.getTypeId());
                ApiManager.INSTANCE.getVideoList(map, new Function3<Integer, String, VideoListModel, Unit>() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$refreshServerTypeData$1$1
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
                        RefreshLayout refreshLayout;
                        ArrayList<VideoListModel.Video> arrayList;
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        if (this.this$0.isDetached() || this.this$0.getBinding() == null) {
                            return;
                        }
                        ListIndexTabFragment listIndexTabFragment = this.this$0;
                        listIndexTabFragment.setMServerCount(listIndexTabFragment.getMServerCount() - 1);
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
                        if (this.this$0.getMServerCount() > 2 || this.this$0.getBinding() == null) {
                            return;
                        }
                        FragmentListindexBinding binding = this.this$0.getBinding();
                        if (binding != null && (refreshLayout = binding.refreshLayout) != null) {
                            refreshLayout.finishRefresh();
                        }
                        this.this$0.getMAdapter().notifyDataSetChanged();
                    }
                });
            }
        }
    }

    private final void getServerData() {
        for (final VideoUiLists videoUiLists : this.mData) {
            HashMap<String, Object> map = new HashMap<>();
            HashMap<String, Object> map2 = map;
            map2.put("limit", "4");
            map2.put("page", String.valueOf(videoUiLists.getPage()));
            map2.put("types", videoUiLists.getTypeId());
            ApiManager.INSTANCE.getVideoList(map, new Function3<Integer, String, VideoListModel, Unit>() { // from class: com.mogu.tv.ui.frag.ListIndexTabFragment$getServerData$1$1
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
                    RefreshLayout refreshLayout;
                    ArrayList<VideoListModel.Video> arrayList;
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (this.this$0.isDetached() || this.this$0.getBinding() == null) {
                        return;
                    }
                    ListIndexTabFragment listIndexTabFragment = this.this$0;
                    listIndexTabFragment.setMServerCount(listIndexTabFragment.getMServerCount() - 1);
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
                    if (this.this$0.getMServerCount() > 2 || this.this$0.getBinding() == null) {
                        return;
                    }
                    FragmentListindexBinding binding = this.this$0.getBinding();
                    if (binding != null && (refreshLayout = binding.refreshLayout) != null) {
                        refreshLayout.finishRefresh();
                    }
                    this.this$0.getMAdapter().notifyDataSetChanged();
                }
            });
        }
    }
}
