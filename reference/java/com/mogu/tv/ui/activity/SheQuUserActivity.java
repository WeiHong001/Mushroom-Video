package com.mogu.tv.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.adapter.ShequListAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.ActivityHistoryBinding;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.ShequListModel;
import com.mogu.tv.view.SharePopDialog;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SheQuUserActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, d2 = {"Lcom/mogu/tv/ui/activity/SheQuUserActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityHistoryBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/ShequListAdapter;", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShequListModel$Data;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "userId", "", "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", "getServerData", "", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SheQuUserActivity extends CommonBaseActivity<ActivityHistoryBinding> {
    private ArrayList<ShequListModel.Data> mData = new ArrayList<>();
    private ShequListAdapter mAdapter = new ShequListAdapter();
    private int mPage = 1;
    private String userId = "";

    public final ArrayList<ShequListModel.Data> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<ShequListModel.Data> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SheQuUserActivity.initView.1
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
                SheQuUserActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("动态");
        ActivityHistoryBinding binding = getBinding();
        binding.rvList.setLayoutManager(new LinearLayoutManager(getMActivity()));
        binding.rvList.setAdapter(this.mAdapter);
        this.mAdapter.setNewData(this.mData);
        binding.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.SheQuUserActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                SheQuUserActivity.m226initView$lambda2$lambda0(this.f$0, refreshLayout);
            }
        });
        binding.refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.SheQuUserActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                SheQuUserActivity.m227initView$lambda2$lambda1(this.f$0, refreshLayout);
            }
        });
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.activity.SheQuUserActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SheQuUserActivity.m228initView$lambda3(this.f$0, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-2$lambda-0, reason: not valid java name */
    public static final void m226initView$lambda2$lambda0(SheQuUserActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-2$lambda-1, reason: not valid java name */
    public static final void m227initView$lambda2$lambda1(SheQuUserActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-3, reason: not valid java name */
    public static final void m228initView$lambda3(SheQuUserActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getId() == R.id.ll_share) {
            new SharePopDialog(this$0.getMActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
        }
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("id") : null;
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.userId = stringExtra;
        getServerData();
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
        ApiManager.INSTANCE.getBlobList(map, new Function3<Integer, String, ShequListModel, Unit>() { // from class: com.mogu.tv.ui.activity.SheQuUserActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str2, ShequListModel shequListModel) {
                invoke(num.intValue(), str2, shequListModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, ShequListModel shequListModel) {
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout;
                com.kotlin.basiclib.widget.RefreshLayout refreshLayout2;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (SheQuUserActivity.this.isDestroyed() || SheQuUserActivity.this.getBinding() == null) {
                    return;
                }
                ActivityHistoryBinding binding = SheQuUserActivity.this.getBinding();
                if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
                    refreshLayout2.finishRefresh();
                }
                if (SheQuUserActivity.this.getMPage() == 1) {
                    SheQuUserActivity.this.getMData().clear();
                } else {
                    ActivityHistoryBinding binding2 = SheQuUserActivity.this.getBinding();
                    if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i == 200 && shequListModel != null) {
                    int i2 = 0;
                    for (Object obj : shequListModel.getList()) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        ShequListModel.Data data = (ShequListModel.Data) obj;
                        if (i2 > 0 && i2 % 5 == 0) {
                            data.setDataType(2);
                        }
                        i2 = i3;
                    }
                    SheQuUserActivity.this.getMData().addAll(shequListModel.getList());
                }
                SheQuUserActivity.this.mAdapter.notifyDataSetChanged();
            }
        });
    }
}
