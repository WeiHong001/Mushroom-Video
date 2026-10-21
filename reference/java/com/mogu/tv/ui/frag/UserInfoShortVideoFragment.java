package com.mogu.tv.ui.frag;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.ShortVideoUserInfoListsAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragJustlistBinding;
import com.mogu.tv.model.ShortVideoList;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserInfoShortVideoFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020\u001fH\u0016J\b\u0010!\u001a\u00020\u001fH\u0002J\b\u0010\"\u001a\u00020\u001fH\u0016J\b\u0010#\u001a\u00020\u001fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006$"}, d2 = {"Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragJustlistBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShortVideoList$Data;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "userId", "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "getServerData", "", "initData", "initLists", "initView", "onDestroy", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UserInfoShortVideoFragment extends CommonBaseFragment<FragJustlistBinding> {
    private int mPage = 1;
    private ArrayList<ShortVideoList.Data> mData = new ArrayList<>();
    private ShortVideoUserInfoListsAdapter mAdapter = new ShortVideoUserInfoListsAdapter();
    private String userId = "";

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        initLists();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    public final ArrayList<ShortVideoList.Data> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<ShortVideoList.Data> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    public final ShortVideoUserInfoListsAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(ShortVideoUserInfoListsAdapter shortVideoUserInfoListsAdapter) {
        Intrinsics.checkNotNullParameter(shortVideoUserInfoListsAdapter, "<set-?>");
        this.mAdapter = shortVideoUserInfoListsAdapter;
    }

    private final void initLists() {
        FragJustlistBinding binding = getBinding();
        if (binding != null) {
            binding.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.UserInfoShortVideoFragment$$ExternalSyntheticLambda2
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(RefreshLayout refreshLayout) {
                    UserInfoShortVideoFragment.m299initLists$lambda3$lambda0(this.f$0, refreshLayout);
                }
            });
            binding.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.frag.UserInfoShortVideoFragment$$ExternalSyntheticLambda1
                @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
                public final void onLoadMore(RefreshLayout refreshLayout) {
                    UserInfoShortVideoFragment.m300initLists$lambda3$lambda1(this.f$0, refreshLayout);
                }
            });
            binding.rvList.setLayoutManager(new GridLayoutManager(requireContext(), 2));
            binding.rvList.addItemDecoration(new GridItemDecorationColumns(10, 2));
            binding.rvList.setAdapter(this.mAdapter);
            this.mAdapter.setNewData(this.mData);
            this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.UserInfoShortVideoFragment$$ExternalSyntheticLambda0
                @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    UserInfoShortVideoFragment.m301initLists$lambda3$lambda2(this.f$0, baseQuickAdapter, view, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3$lambda-0, reason: not valid java name */
    public static final void m299initLists$lambda3$lambda0(UserInfoShortVideoFragment this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3$lambda-1, reason: not valid java name */
    public static final void m300initLists$lambda3$lambda1(UserInfoShortVideoFragment this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3$lambda-2, reason: not valid java name */
    public static final void m301initLists$lambda3$lambda2(UserInfoShortVideoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ShortVideoList.Data any = this$0.mAdapter.getData().get(i);
        ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(any, "any");
        arouterUtils.toShortDetails(any, 0);
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

    private final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        map2.put("user_id", this.userId);
        ApiManager.INSTANCE.getShortVideoLists(map, new Function3<Integer, String, ShortVideoList, Unit>() { // from class: com.mogu.tv.ui.frag.UserInfoShortVideoFragment.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, ShortVideoList shortVideoList) {
                invoke(num.intValue(), str, shortVideoList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, ShortVideoList shortVideoList) {
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout;
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (UserInfoShortVideoFragment.this.isDetached() || UserInfoShortVideoFragment.this.getBinding() == null) {
                    return;
                }
                FragJustlistBinding binding = UserInfoShortVideoFragment.this.getBinding();
                if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
                    refreshLayout2.finishRefresh();
                }
                if (UserInfoShortVideoFragment.this.getMPage() == 1) {
                    UserInfoShortVideoFragment.this.getMData().clear();
                } else {
                    FragJustlistBinding binding2 = UserInfoShortVideoFragment.this.getBinding();
                    if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i == 200 && shortVideoList != null) {
                    UserInfoShortVideoFragment.this.getMData().addAll(shortVideoList.getList());
                }
                UserInfoShortVideoFragment.this.getMAdapter().notifyDataSetChanged();
            }
        });
    }
}
