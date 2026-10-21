package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ToastUtil;
import com.luck.picture.lib.config.PictureConfig;
import com.mogu.tv.adapter.FocusUserListAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActivityHistoryBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.UserList;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FocusUserListActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/mogu/tv/ui/activity/FocusUserListActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityHistoryBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/FocusUserListAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/FocusUserListAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/FocusUserListAdapter;)V", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "getServerData", "", "initData", "initView", "noFocus", PictureConfig.EXTRA_POSITION, "item", "Lcom/mogu/tv/model/UserList$User;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FocusUserListActivity extends CommonBaseActivity<ActivityHistoryBinding> {
    private FocusUserListAdapter mAdapter = new FocusUserListAdapter();
    private int mPage = 1;

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.FocusUserListActivity.initView.1
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
                FocusUserListActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("我的关注");
    }

    public final FocusUserListAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(FocusUserListAdapter focusUserListAdapter) {
        Intrinsics.checkNotNullParameter(focusUserListAdapter, "<set-?>");
        this.mAdapter = focusUserListAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.FocusUserListActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                FocusUserListActivity.m191initData$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.FocusUserListActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                FocusUserListActivity.m192initData$lambda1(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new LinearLayoutManager(getMActivity()));
        getBinding().rvList.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.activity.FocusUserListActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                FocusUserListActivity.m193initData$lambda2(this.f$0, baseQuickAdapter, view, i);
            }
        });
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m191initData$lambda0(FocusUserListActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getBinding().refreshLayout.resetNoMoreData();
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m192initData$lambda1(FocusUserListActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m193initData$lambda2(FocusUserListActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int id = view.getId();
        if (id != R.id.iv_photo) {
            if (id != R.id.tvDown) {
                return;
            }
            this$0.noFocus(i, this$0.mAdapter.getItem(i));
        } else {
            ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
            UserList.User item = this$0.mAdapter.getItem(i);
            arouterUtils.toUserDetails(String.valueOf(item != null ? Integer.valueOf(item.getId()) : null));
        }
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    private final void noFocus(final int position, UserList.User item) {
        CommonBaseActivity.showLoadingDialog$default(this, false, null, 3, null);
        ApiManager.INSTANCE.unfocusUser(String.valueOf(item != null ? Integer.valueOf(item.getId()) : null), new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.FocusUserListActivity.noFocus.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                invoke(num.intValue(), str, justReturnMsg);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                FocusUserListActivity.this.dissmissLoading();
                if (i == 200) {
                    FocusUserListActivity.this.getMAdapter().remove(position);
                } else {
                    ToastUtil.INSTANCE.toast(msg);
                }
            }
        });
    }

    private final void getServerData() {
        HashMap map = new HashMap();
        map.put("limit", VItem.VIDEO_ID);
        map.put("page", String.valueOf(this.mPage));
        ApiManager apiManager = ApiManager.INSTANCE;
        String userId = UserManager.INSTANCE.getUserId();
        apiManager.getFocusList(userId != null ? Integer.parseInt(userId) : 1, this.mPage, new Function3<Integer, String, UserList, Unit>() { // from class: com.mogu.tv.ui.activity.FocusUserListActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserList userList) {
                invoke(num.intValue(), str, userList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, UserList userList) {
                List<UserList.User> arrayList;
                ArrayList arrayList2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (FocusUserListActivity.this.isDestroyed()) {
                    return;
                }
                if (FocusUserListActivity.this.getMPage() == 1) {
                    FocusUserListActivity.this.getBinding().refreshLayout.finishRefresh();
                } else {
                    FocusUserListActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
                if (i == 200) {
                    if (FocusUserListActivity.this.getMPage() == 1) {
                        FocusUserListAdapter mAdapter = FocusUserListActivity.this.getMAdapter();
                        if (userList == null || (arrayList2 = userList.getList()) == null) {
                            arrayList2 = new ArrayList();
                        }
                        mAdapter.setNewData(arrayList2);
                        FocusUserListActivity.this.getBinding().refreshLayout.finishRefresh();
                    } else {
                        FocusUserListAdapter mAdapter2 = FocusUserListActivity.this.getMAdapter();
                        if (userList == null || (arrayList = userList.getList()) == null) {
                            arrayList = new ArrayList<>();
                        }
                        mAdapter2.addData((Collection) arrayList);
                        FocusUserListActivity.this.getBinding().refreshLayout.finishLoadMore();
                    }
                    if (FocusUserListActivity.this.getMAdapter().getData().size() >= (userList != null ? userList.getTotal() : 0)) {
                        FocusUserListActivity.this.getBinding().refreshLayout.finishLoadMoreWithNoMoreData();
                    }
                }
            }
        });
    }
}
