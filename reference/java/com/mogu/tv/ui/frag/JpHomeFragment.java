package com.mogu.tv.ui.frag;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.adapter.JpItemAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragJphomeBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.UserShareList;
import com.mogu.tv.model.VipVideoList;
import com.mogu.tv.utils.DialogUtils;
import com.mogu.tv.view.LockVipVideoDialog;
import com.mogu.tv.view.ShareVipVIdeoDialog;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JpHomeFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u001cH\u0016J\b\u0010 \u001a\u00020\u001cH\u0016J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\fH\u0002J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\fH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/mogu/tv/ui/frag/JpHomeFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragJphomeBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/JpItemAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/JpItemAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/JpItemAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VipVideoList$Data;", "Lkotlin/collections/ArrayList;", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "mShareIndex", "getMShareIndex", "setMShareIndex", "shareDialog", "Lcom/mogu/tv/view/ShareVipVIdeoDialog;", "unlockDialog", "Lcom/mogu/tv/view/LockVipVideoDialog;", "getInvite", "", "getServerData", "initData", "initView", "onResume", "showShareDialog", "data", "showUnlockDialog", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class JpHomeFragment extends CommonBaseFragment<FragJphomeBinding> {
    private int mShareIndex;
    private ShareVipVIdeoDialog shareDialog;
    private LockVipVideoDialog unlockDialog;
    private int mPage = 1;
    private JpItemAdapter mAdapter = new JpItemAdapter();
    private ArrayList<VipVideoList.Data> mData = new ArrayList<>();

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        ImageView imageView;
        ImageView imageView2;
        FragJphomeBinding binding = getBinding();
        if (binding != null && (imageView2 = binding.ivProduct) != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.initView.1
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
                    DialogUtils dialogUtils = DialogUtils.INSTANCE;
                    FragmentActivity fragmentActivityRequireActivity = JpHomeFragment.this.requireActivity();
                    Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
                    dialogUtils.showJpProductDialog(fragmentActivityRequireActivity);
                }
            });
        }
        FragJphomeBinding binding2 = getBinding();
        if (binding2 == null || (imageView = binding2.ivGetQ) == null) {
            return;
        }
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.initView.2
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
                DialogUtils dialogUtils = DialogUtils.INSTANCE;
                FragmentActivity fragmentActivityRequireActivity = JpHomeFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
                final JpHomeFragment jpHomeFragment = JpHomeFragment.this;
                dialogUtils.showQQProductDialog(fragmentActivityRequireActivity, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.initView.2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        if (!jpHomeFragment.mData.isEmpty()) {
                            JpHomeFragment jpHomeFragment2 = jpHomeFragment;
                            Object obj = jpHomeFragment2.mData.get(jpHomeFragment.getMShareIndex());
                            Intrinsics.checkNotNullExpressionValue(obj, "mData[mShareIndex]");
                            jpHomeFragment2.showShareDialog((VipVideoList.Data) obj);
                        }
                    }
                });
            }
        });
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    public final int getMShareIndex() {
        return this.mShareIndex;
    }

    public final void setMShareIndex(int i) {
        this.mShareIndex = i;
    }

    public final JpItemAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(JpItemAdapter jpItemAdapter) {
        Intrinsics.checkNotNullParameter(jpItemAdapter, "<set-?>");
        this.mAdapter = jpItemAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        RefreshLayout refreshLayout;
        RefreshLayout refreshLayout2;
        FragJphomeBinding binding = getBinding();
        if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
            refreshLayout2.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.JpHomeFragment$$ExternalSyntheticLambda2
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout3) {
                    JpHomeFragment.m249initData$lambda0(this.f$0, refreshLayout3);
                }
            });
        }
        FragJphomeBinding binding2 = getBinding();
        if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
            refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.frag.JpHomeFragment$$ExternalSyntheticLambda1
                @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
                public final void onLoadMore(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout3) {
                    JpHomeFragment.m250initData$lambda1(this.f$0, refreshLayout3);
                }
            });
        }
        FragJphomeBinding binding3 = getBinding();
        RecyclerView recyclerView = binding3 != null ? binding3.rvList : null;
        if (recyclerView != null) {
            recyclerView.setAdapter(this.mAdapter);
        }
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() { // from class: com.mogu.tv.ui.frag.JpHomeFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                JpHomeFragment.m251initData$lambda2(this.f$0, baseQuickAdapter, view, i);
            }
        });
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m249initData$lambda0(JpHomeFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m250initData$lambda1(JpHomeFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m251initData$lambda2(JpHomeFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mShareIndex = i;
        switch (view.getId()) {
            case R.id.ivItem /* 2131362175 */:
                if (this$0.mData.get(i).getUnlock()) {
                    ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                    VipVideoList.Data data = this$0.mData.get(i);
                    Intrinsics.checkNotNullExpressionValue(data, "mData[position]");
                    arouterUtils.toVipVideoDetails(data);
                } else {
                    VipVideoList.Data data2 = this$0.mData.get(i);
                    Intrinsics.checkNotNullExpressionValue(data2, "mData[position]");
                    this$0.showUnlockDialog(data2);
                }
                break;
            case R.id.ivLock /* 2131362176 */:
                VipVideoList.Data data3 = this$0.mData.get(i);
                Intrinsics.checkNotNullExpressionValue(data3, "mData[position]");
                this$0.showUnlockDialog(data3);
                break;
            case R.id.ivShare /* 2131362182 */:
                VipVideoList.Data data4 = this$0.mData.get(i);
                Intrinsics.checkNotNullExpressionValue(data4, "mData[position]");
                this$0.showShareDialog(data4);
                break;
            case R.id.ivUnlock /* 2131362183 */:
                if (this$0.mData.get(i).getUnlock()) {
                    ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                    VipVideoList.Data data5 = this$0.mData.get(i);
                    Intrinsics.checkNotNullExpressionValue(data5, "mData[position]");
                    arouterUtils2.toVipVideoDetails(data5);
                }
                break;
            case R.id.tvTitle /* 2131362664 */:
                if (this$0.mData.get(i).getUnlock()) {
                    ArouterUtils arouterUtils3 = ArouterUtils.INSTANCE;
                    VipVideoList.Data data6 = this$0.mData.get(i);
                    Intrinsics.checkNotNullExpressionValue(data6, "mData[position]");
                    arouterUtils3.toVipVideoDetails(data6);
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showShareDialog(VipVideoList.Data data) {
        if (this.shareDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
            this.shareDialog = new ShareVipVIdeoDialog(contextRequireContext);
        }
        ShareVipVIdeoDialog shareVipVIdeoDialog = this.shareDialog;
        if (shareVipVIdeoDialog != null) {
            shareVipVIdeoDialog.refreshData(data);
        }
        ShareVipVIdeoDialog shareVipVIdeoDialog2 = this.shareDialog;
        if (shareVipVIdeoDialog2 != null) {
            shareVipVIdeoDialog2.show();
        }
    }

    private final void showUnlockDialog(final VipVideoList.Data data) {
        if (this.unlockDialog == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
            this.unlockDialog = new LockVipVideoDialog(contextRequireContext);
        }
        LockVipVideoDialog lockVipVideoDialog = this.unlockDialog;
        if (lockVipVideoDialog != null) {
            lockVipVideoDialog.setUnLockData(data, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.showUnlockDialog.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    JpHomeFragment.this.showShareDialog(data);
                }
            }, new Function1<Integer, Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.showUnlockDialog.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i) {
                    ArrayList arrayList = JpHomeFragment.this.mData;
                    JpHomeFragment jpHomeFragment = JpHomeFragment.this;
                    int i2 = 0;
                    for (Object obj : arrayList) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        VipVideoList.Data data2 = (VipVideoList.Data) obj;
                        if (i == data2.getID()) {
                            data2.setUnlock(true);
                            jpHomeFragment.getMAdapter().notifyItemChanged(i2);
                        }
                        i2 = i3;
                    }
                }
            });
        }
        LockVipVideoDialog lockVipVideoDialog2 = this.unlockDialog;
        if (lockVipVideoDialog2 != null) {
            lockVipVideoDialog2.show();
        }
    }

    private final void getServerData() {
        ApiManager.INSTANCE.getVipVideoData(10, this.mPage, new Function3<Integer, String, VipVideoList, Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VipVideoList vipVideoList) {
                invoke(num.intValue(), str, vipVideoList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, VipVideoList vipVideoList) {
                RefreshLayout refreshLayout;
                FragJphomeBinding binding;
                RefreshLayout refreshLayout2;
                List<VipVideoList.Data> arrayList;
                RefreshLayout refreshLayout3;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (JpHomeFragment.this.isDetached() || JpHomeFragment.this.getBinding() == null) {
                    return;
                }
                if (JpHomeFragment.this.getMPage() == 1) {
                    FragJphomeBinding binding2 = JpHomeFragment.this.getBinding();
                    if (binding2 != null && (refreshLayout3 = binding2.refreshLayout) != null) {
                        refreshLayout3.finishRefresh();
                    }
                    JpHomeFragment.this.mData.clear();
                    JpHomeFragment.this.getMAdapter().notifyDataSetChanged();
                } else {
                    FragJphomeBinding binding3 = JpHomeFragment.this.getBinding();
                    if (binding3 != null && (refreshLayout = binding3.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i == 200) {
                    JpItemAdapter mAdapter = JpHomeFragment.this.getMAdapter();
                    if (vipVideoList == null || (arrayList = vipVideoList.getList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    mAdapter.addData((Collection) arrayList);
                }
                if (JpHomeFragment.this.getBinding() == null || (binding = JpHomeFragment.this.getBinding()) == null || (refreshLayout2 = binding.refreshLayout) == null) {
                    return;
                }
                refreshLayout2.finishRefresh();
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getInvite();
    }

    private final void getInvite() {
        if (UserManager.INSTANCE.isLogin()) {
            ApiManager.INSTANCE.getUserShareList(10, 1, new Function3<Integer, String, UserShareList, Unit>() { // from class: com.mogu.tv.ui.frag.JpHomeFragment.getInvite.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserShareList userShareList) {
                    invoke(num.intValue(), str, userShareList);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, UserShareList userShareList) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (i != 200 || userShareList == null) {
                        return;
                    }
                    UserManager.INSTANCE.setShareTotal(userShareList.getTotal());
                }
            });
        } else {
            UserManager.INSTANCE.setShareTotal(0);
        }
    }
}
