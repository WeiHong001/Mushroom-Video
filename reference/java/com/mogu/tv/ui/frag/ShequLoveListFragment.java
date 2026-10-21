package com.mogu.tv.ui.frag;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.mogu.tv.adapter.ShequLoveListAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.FragShequlistBinding;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.ShequListLoveModel;
import com.mogu.tv.utils.AnimUtil;
import com.mogu.tv.view.SharePopDialog;
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

/* JADX INFO: compiled from: ShequLoveListFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020$H\u0016J\b\u0010&\u001a\u00020$H\u0002J\b\u0010'\u001a\u00020$H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\tR\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006("}, d2 = {"Lcom/mogu/tv/ui/frag/ShequLoveListFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragShequlistBinding;", "()V", "distance", "", "getDistance", "()I", "setDistance", "(I)V", "mAdapter", "Lcom/mogu/tv/adapter/ShequLoveListAdapter;", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShequListLoveModel$Item;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mPage", "getMPage", "setMPage", "topVisible", "", "getTopVisible", "()Z", "setTopVisible", "(Z)V", "userId", "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "getServerData", "", "initData", "initRetrnTop", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequLoveListFragment extends CommonBaseFragment<FragShequlistBinding> {
    private int distance;
    private boolean topVisible;
    private ShequLoveListAdapter mAdapter = new ShequLoveListAdapter();
    private String userId = "";
    private int mPage = 1;
    private ArrayList<ShequListLoveModel.Item> mData = new ArrayList<>();

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        FragShequlistBinding binding = getBinding();
        if (binding != null) {
            binding.rvList.setLayoutManager(new LinearLayoutManager(requireActivity()));
            binding.rvList.setAdapter(this.mAdapter);
            this.mAdapter.setNewData(this.mData);
            binding.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.ShequLoveListFragment$$ExternalSyntheticLambda2
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(RefreshLayout refreshLayout) {
                    ShequLoveListFragment.m286initView$lambda2$lambda0(this.f$0, refreshLayout);
                }
            });
            binding.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.frag.ShequLoveListFragment$$ExternalSyntheticLambda1
                @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
                public final void onLoadMore(RefreshLayout refreshLayout) {
                    ShequLoveListFragment.m287initView$lambda2$lambda1(this.f$0, refreshLayout);
                }
            });
        }
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.frag.ShequLoveListFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ShequLoveListFragment.m288initView$lambda3(this.f$0, baseQuickAdapter, view, i);
            }
        });
        initRetrnTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-2$lambda-0, reason: not valid java name */
    public static final void m286initView$lambda2$lambda0(ShequLoveListFragment this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-2$lambda-1, reason: not valid java name */
    public static final void m287initView$lambda2$lambda1(ShequLoveListFragment this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-3, reason: not valid java name */
    public static final void m288initView$lambda3(ShequLoveListFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getId() == R.id.ll_share) {
            new SharePopDialog(this$0.requireActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
        }
    }

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("id") : null;
        if (string == null) {
            string = "";
        }
        this.userId = string;
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

    private final void initRetrnTop() {
        final FragShequlistBinding binding = getBinding();
        if (binding != null) {
            ImageView ivReturnTop = binding.ivReturnTop;
            Intrinsics.checkNotNullExpressionValue(ivReturnTop, "ivReturnTop");
            AndroidutilsKt.click(ivReturnTop, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShequLoveListFragment$initRetrnTop$1$1
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
            binding.rvList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.mogu.tv.ui.frag.ShequLoveListFragment$initRetrnTop$1$2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                    Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                    super.onScrolled(recyclerView, dx, dy);
                    if (this.this$0.getDistance() < -50 && !this.this$0.getTopVisible()) {
                        AnimUtil.showFABAnimation(binding.ivReturnTop);
                        this.this$0.setDistance(0);
                        this.this$0.setTopVisible(true);
                    } else if (this.this$0.getDistance() > 50 && this.this$0.getTopVisible()) {
                        AnimUtil.hideFABAnimation(binding.ivReturnTop);
                        this.this$0.setDistance(0);
                        this.this$0.setTopVisible(false);
                    }
                    if ((dy <= 0 || !this.this$0.getTopVisible()) && (dy >= 0 || this.this$0.getTopVisible())) {
                        return;
                    }
                    ShequLoveListFragment shequLoveListFragment = this.this$0;
                    shequLoveListFragment.setDistance(shequLoveListFragment.getDistance() + dy);
                }
            });
        }
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    public final ArrayList<ShequListLoveModel.Item> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<ShequListLoveModel.Item> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    private final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        String str = this.userId;
        if (!(str == null || str.length() == 0)) {
            map2.put("user_id", this.userId);
        }
        ApiManager.INSTANCE.getBlobLoveList(map, new Function3<Integer, String, ShequListLoveModel, Unit>() { // from class: com.mogu.tv.ui.frag.ShequLoveListFragment.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str2, ShequListLoveModel shequListLoveModel) {
                invoke(num.intValue(), str2, shequListLoveModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, ShequListLoveModel shequListLoveModel) {
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout;
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (ShequLoveListFragment.this.isDetached() || ShequLoveListFragment.this.getBinding() == null) {
                    return;
                }
                FragShequlistBinding binding = ShequLoveListFragment.this.getBinding();
                if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
                    refreshLayout2.finishRefresh();
                }
                if (ShequLoveListFragment.this.getMPage() == 1) {
                    ShequLoveListFragment.this.getMData().clear();
                } else {
                    FragShequlistBinding binding2 = ShequLoveListFragment.this.getBinding();
                    if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i == 200 && shequListLoveModel != null) {
                    ShequLoveListFragment.this.getMData().addAll(shequListLoveModel.getList());
                }
                ShequLoveListFragment.this.mAdapter.notifyDataSetChanged();
            }
        });
    }
}
