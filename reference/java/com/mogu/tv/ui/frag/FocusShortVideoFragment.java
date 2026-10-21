package com.mogu.tv.ui.frag;

import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.adapter.ShortVideoListsAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragFocusvidelistBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.ShortStarVideoLists;
import com.mogu.tv.model.ShortVideoStar;
import com.mogu.tv.utils.AnimUtil;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: FocusShortVideoFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010$\u001a\u00020\"H\u0002J\b\u0010%\u001a\u00020\"H\u0002J\b\u0010&\u001a\u00020\"H\u0016J\u0010\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020)H\u0007J\b\u0010*\u001a\u00020\"H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006+"}, d2 = {"Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragFocusvidelistBinding;", "()V", "distance", "", "getDistance", "()I", "setDistance", "(I)V", "mAdapter", "Lcom/mogu/tv/adapter/ShortVideoListsAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/ShortVideoListsAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/ShortVideoListsAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShortStarVideoLists$Item;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mPage", "getMPage", "setMPage", "topVisible", "", "getTopVisible", "()Z", "setTopVisible", "(Z)V", "getServerData", "", "initData", "initLists", "initRetrnTop", "initView", "onEventShortVideoStar", NotificationCompat.CATEGORY_EVENT, "Lcom/mogu/tv/model/ShortVideoStar;", "onResume", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FocusShortVideoFragment extends CommonBaseFragment<FragFocusvidelistBinding> {
    private int distance;
    private boolean topVisible;
    private int mPage = 1;
    private ArrayList<ShortStarVideoLists.Item> mData = new ArrayList<>();
    private ShortVideoListsAdapter mAdapter = new ShortVideoListsAdapter();

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        LinearLayout linearLayout;
        EventBusUtil.INSTANCE.register(this);
        initLists();
        FragFocusvidelistBinding binding = getBinding();
        if (binding != null && (linearLayout = binding.llLogin) != null) {
            UserManagerKt.LoginClick(linearLayout, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment.initView.1
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
        initRetrnTop();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventShortVideoStar(ShortVideoStar event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.mPage = 1;
        getServerData();
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

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        LinearLayout linearLayout;
        RefreshLayout refreshLayout;
        LinearLayout linearLayout2;
        RefreshLayout refreshLayout2;
        super.onResume();
        if (UserManager.INSTANCE.isLogin()) {
            FragFocusvidelistBinding binding = getBinding();
            if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
                AndroidutilsKt.setVisible(refreshLayout2, true);
            }
            FragFocusvidelistBinding binding2 = getBinding();
            if (binding2 == null || (linearLayout2 = binding2.llLogin) == null) {
                return;
            }
            AndroidutilsKt.setVisible(linearLayout2, false);
            return;
        }
        FragFocusvidelistBinding binding3 = getBinding();
        if (binding3 != null && (refreshLayout = binding3.refreshLayout) != null) {
            AndroidutilsKt.setVisible(refreshLayout, false);
        }
        FragFocusvidelistBinding binding4 = getBinding();
        if (binding4 == null || (linearLayout = binding4.llLogin) == null) {
            return;
        }
        AndroidutilsKt.setVisible(linearLayout, true);
    }

    private final void initRetrnTop() {
        final FragFocusvidelistBinding binding = getBinding();
        if (binding != null) {
            ImageView ivReturnTop = binding.ivReturnTop;
            Intrinsics.checkNotNullExpressionValue(ivReturnTop, "ivReturnTop");
            AndroidutilsKt.click(ivReturnTop, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment$initRetrnTop$1$1
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
                    binding.rvList.scrollToPosition(0);
                }
            });
            binding.rvList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment$initRetrnTop$1$2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                    Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                    super.onScrolled(recyclerView, dx, dy);
                    if (this.this$0.getDistance() < (-ViewConfiguration.getTouchSlop()) && !this.this$0.getTopVisible()) {
                        AnimUtil.showFABAnimation(binding.ivReturnTop);
                        this.this$0.setDistance(0);
                        this.this$0.setTopVisible(true);
                    } else if (this.this$0.getDistance() > ViewConfiguration.getTouchSlop() && this.this$0.getTopVisible()) {
                        AnimUtil.hideFABAnimation(binding.ivReturnTop);
                        this.this$0.setDistance(0);
                        this.this$0.setTopVisible(false);
                    }
                    if ((dy <= 0 || !this.this$0.getTopVisible()) && (dy >= 0 || this.this$0.getTopVisible())) {
                        return;
                    }
                    FocusShortVideoFragment focusShortVideoFragment = this.this$0;
                    focusShortVideoFragment.setDistance(focusShortVideoFragment.getDistance() + dy);
                }
            });
        }
    }

    public final ArrayList<ShortStarVideoLists.Item> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<ShortStarVideoLists.Item> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    public final ShortVideoListsAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(ShortVideoListsAdapter shortVideoListsAdapter) {
        Intrinsics.checkNotNullParameter(shortVideoListsAdapter, "<set-?>");
        this.mAdapter = shortVideoListsAdapter;
    }

    private final void initLists() {
        FragFocusvidelistBinding binding = getBinding();
        if (binding != null) {
            binding.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment$$ExternalSyntheticLambda2
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout) {
                    FocusShortVideoFragment.m242initLists$lambda4$lambda1(this.f$0, refreshLayout);
                }
            });
            binding.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment$$ExternalSyntheticLambda1
                @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
                public final void onLoadMore(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout) {
                    FocusShortVideoFragment.m243initLists$lambda4$lambda2(this.f$0, refreshLayout);
                }
            });
            binding.rvList.setLayoutManager(new GridLayoutManager(requireContext(), 2));
            binding.rvList.addItemDecoration(new GridItemDecorationColumns(10, 2));
            binding.rvList.setAdapter(this.mAdapter);
            this.mAdapter.setNewData(this.mData);
            this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment$$ExternalSyntheticLambda0
                @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    FocusShortVideoFragment.m244initLists$lambda4$lambda3(this.f$0, baseQuickAdapter, view, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-4$lambda-1, reason: not valid java name */
    public static final void m242initLists$lambda4$lambda1(FocusShortVideoFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-4$lambda-2, reason: not valid java name */
    public static final void m243initLists$lambda4$lambda2(FocusShortVideoFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-4$lambda-3, reason: not valid java name */
    public static final void m244initLists$lambda4$lambda3(FocusShortVideoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toShortDetails(this$0.mAdapter.getData().get(i).getVlog(), 1);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        getServerData();
    }

    private final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        ApiManager.INSTANCE.getShortStarVideoLists(map, new Function3<Integer, String, ShortStarVideoLists, Unit>() { // from class: com.mogu.tv.ui.frag.FocusShortVideoFragment.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, ShortStarVideoLists shortStarVideoLists) {
                invoke(num.intValue(), str, shortStarVideoLists);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, ShortStarVideoLists shortStarVideoLists) {
                RefreshLayout refreshLayout;
                RefreshLayout refreshLayout2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (FocusShortVideoFragment.this.isDetached() || FocusShortVideoFragment.this.getBinding() == null) {
                    return;
                }
                FragFocusvidelistBinding binding = FocusShortVideoFragment.this.getBinding();
                if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
                    refreshLayout2.finishRefresh();
                }
                if (FocusShortVideoFragment.this.getMPage() == 1) {
                    FocusShortVideoFragment.this.getMData().clear();
                } else {
                    FragFocusvidelistBinding binding2 = FocusShortVideoFragment.this.getBinding();
                    if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i == 200 && shortStarVideoLists != null) {
                    FocusShortVideoFragment.this.getMData().addAll(shortStarVideoLists.getList());
                }
                FocusShortVideoFragment.this.getMAdapter().notifyDataSetChanged();
            }
        });
    }
}
