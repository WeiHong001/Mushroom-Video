package com.mogu.tv.ui.frag;

import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.RecommandUserAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragJustlistBinding;
import com.mogu.tv.model.EvnetSearchPhoto;
import com.mogu.tv.model.UserList;
import com.mogu.tv.ui.activity.SearchActivity;
import com.mogu.tv.view.QsEmptyView;
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
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: SearchUserListFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010)\u001a\u00020*J\b\u0010+\u001a\u00020*H\u0002J\b\u0010,\u001a\u00020*H\u0016J\b\u0010-\u001a\u00020*H\u0002J\b\u0010.\u001a\u00020*H\u0016J\b\u0010/\u001a\u00020*H\u0016J\u0010\u00100\u001a\u00020*2\u0006\u00101\u001a\u000202H\u0007J\b\u00103\u001a\u00020*H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u00064"}, d2 = {"Lcom/mogu/tv/ui/frag/SearchUserListFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragJustlistBinding;", "()V", "distance", "", "getDistance", "()I", "setDistance", "(I)V", "mAdapter", "Lcom/mogu/tv/adapter/RecommandUserAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/RecommandUserAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/UserList$User;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mPage", "getMPage", "setMPage", "mSearchKey", "", "getMSearchKey", "()Ljava/lang/String;", "setMSearchKey", "(Ljava/lang/String;)V", "qsEmptyView", "Lcom/mogu/tv/view/QsEmptyView;", "topVisible", "", "getTopVisible", "()Z", "setTopVisible", "(Z)V", "addEmptyView", "", "getServerData", "initData", "initLists", "initView", "onDestroy", "onEvnetSearchPhoto", NotificationCompat.CATEGORY_EVENT, "Lcom/mogu/tv/model/EvnetSearchPhoto;", "onResume", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchUserListFragment extends CommonBaseFragment<FragJustlistBinding> {
    private int distance;
    private QsEmptyView qsEmptyView;
    private boolean topVisible;
    private int mPage = 1;
    private String mSearchKey = "";
    private ArrayList<UserList.User> mData = new ArrayList<>();
    private RecommandUserAdapter mAdapter = new RecommandUserAdapter();

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    public final String getMSearchKey() {
        return this.mSearchKey;
    }

    public final void setMSearchKey(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mSearchKey = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        EventBusUtil.INSTANCE.register(this);
        initLists();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEvnetSearchPhoto(EvnetSearchPhoto event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String wd = event.getWd();
        if (wd == null || wd.length() == 0) {
            return;
        }
        this.mPage = 1;
        this.mSearchKey = event.getWd();
        getServerData();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusUtil.INSTANCE.unregister(this);
        super.onDestroy();
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
        super.onResume();
    }

    public final ArrayList<UserList.User> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<UserList.User> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    public final RecommandUserAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(RecommandUserAdapter recommandUserAdapter) {
        Intrinsics.checkNotNullParameter(recommandUserAdapter, "<set-?>");
        this.mAdapter = recommandUserAdapter;
    }

    private final void initLists() {
        FragJustlistBinding binding = getBinding();
        if (binding != null) {
            binding.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.SearchUserListFragment$$ExternalSyntheticLambda2
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(RefreshLayout refreshLayout) {
                    SearchUserListFragment.m276initLists$lambda3$lambda0(this.f$0, refreshLayout);
                }
            });
            binding.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.frag.SearchUserListFragment$$ExternalSyntheticLambda1
                @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
                public final void onLoadMore(RefreshLayout refreshLayout) {
                    SearchUserListFragment.m277initLists$lambda3$lambda1(this.f$0, refreshLayout);
                }
            });
            binding.rvList.setLayoutManager(new GridLayoutManager(requireContext(), 4));
            binding.rvList.addItemDecoration(new GridItemDecorationColumns(10, 2));
            binding.rvList.setAdapter(this.mAdapter);
            this.mAdapter.setNewData(this.mData);
            this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.SearchUserListFragment$$ExternalSyntheticLambda0
                @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    SearchUserListFragment.m278initLists$lambda3$lambda2(this.f$0, baseQuickAdapter, view, i);
                }
            });
        }
        addEmptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3$lambda-0, reason: not valid java name */
    public static final void m276initLists$lambda3$lambda0(SearchUserListFragment this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3$lambda-1, reason: not valid java name */
    public static final void m277initLists$lambda3$lambda1(SearchUserListFragment this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-3$lambda-2, reason: not valid java name */
    public static final void m278initLists$lambda3$lambda2(SearchUserListFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toUserDetails(String.valueOf(this$0.mAdapter.getData().get(i).getId()));
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        this.mSearchKey = SearchActivity.INSTANCE.getSearchKey();
        getServerData();
    }

    public final void addEmptyView() {
        QsEmptyView qsEmptyView = new QsEmptyView(getActivity());
        this.qsEmptyView = qsEmptyView;
        qsEmptyView.setEmprtyText("換個詞試一試吧");
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
        RecommandUserAdapter recommandUserAdapter = this.mAdapter;
        QsEmptyView qsEmptyView5 = this.qsEmptyView;
        if (qsEmptyView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
        } else {
            qsEmptyView3 = qsEmptyView5;
        }
        recommandUserAdapter.setEmptyView(qsEmptyView3);
    }

    private final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        map2.put("name", this.mSearchKey);
        ApiManager.INSTANCE.getUserList(map, new Function3<Integer, String, UserList, Unit>() { // from class: com.mogu.tv.ui.frag.SearchUserListFragment.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserList userList) {
                invoke(num.intValue(), str, userList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, UserList userList) {
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout;
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (SearchUserListFragment.this.isDetached() || SearchUserListFragment.this.getBinding() == null) {
                    return;
                }
                FragJustlistBinding binding = SearchUserListFragment.this.getBinding();
                if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
                    refreshLayout2.finishRefresh();
                }
                if (SearchUserListFragment.this.getMPage() == 1) {
                    SearchUserListFragment.this.getMData().clear();
                    QsEmptyView qsEmptyView = SearchUserListFragment.this.qsEmptyView;
                    if (qsEmptyView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
                        qsEmptyView = null;
                    }
                    qsEmptyView.showState(0);
                } else {
                    FragJustlistBinding binding2 = SearchUserListFragment.this.getBinding();
                    if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i == 200 && userList != null) {
                    SearchUserListFragment.this.getMData().addAll(userList.getList());
                }
                SearchUserListFragment.this.getMAdapter().notifyDataSetChanged();
            }
        });
    }
}
