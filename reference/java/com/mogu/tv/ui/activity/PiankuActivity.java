package com.mogu.tv.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.PiankuModelAdapter;
import com.mogu.tv.adapter.VideoListsAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragPiankuBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.PianKuModel;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.model.VideoTypes;
import com.mogu.tv.utils.AnimUtil;
import com.mogu.tv.utils.ImageUtilKt;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PiankuActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010I\u001a\u00020JH\u0002J\b\u0010K\u001a\u00020JH\u0016J\b\u0010L\u001a\u00020JH\u0002J\b\u0010M\u001a\u00020JH\u0002J\b\u0010N\u001a\u00020JH\u0016J\u0010\u0010O\u001a\u00020J2\u0006\u0010P\u001a\u000208H\u0002J\b\u0010Q\u001a\u00020JH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R*\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020!0 j\b\u0012\u0004\u0012\u00020!`\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R*\u0010'\u001a\u0012\u0012\u0004\u0012\u00020(0 j\b\u0012\u0004\u0012\u00020(`\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&R*\u0010+\u001a\u0012\u0012\u0004\u0012\u00020!0 j\b\u0012\u0004\u0012\u00020!`\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010$\"\u0004\b-\u0010&R\u001a\u0010.\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0007\"\u0004\b0\u0010\tR*\u00101\u001a\u0012\u0012\u0004\u0012\u00020!0 j\b\u0012\u0004\u0012\u00020!`\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010$\"\u0004\b3\u0010&R*\u00104\u001a\u0012\u0012\u0004\u0012\u00020!0 j\b\u0012\u0004\u0012\u00020!`\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010$\"\u0004\b6\u0010&R\u001a\u00107\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010=\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010:\"\u0004\b?\u0010<R\u001a\u0010@\u001a\u000208X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010:\"\u0004\bB\u0010<R\u001a\u0010C\u001a\u00020DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010H¨\u0006R"}, d2 = {"Lcom/mogu/tv/ui/activity/PiankuActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/FragPiankuBinding;", "()V", "distance", "", "getDistance", "()I", "setDistance", "(I)V", "mAdapter", "Lcom/mogu/tv/adapter/VideoListsAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/VideoListsAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/VideoListsAdapter;)V", "mAdapterChild", "Lcom/mogu/tv/adapter/PiankuModelAdapter;", "getMAdapterChild", "()Lcom/mogu/tv/adapter/PiankuModelAdapter;", "setMAdapterChild", "(Lcom/mogu/tv/adapter/PiankuModelAdapter;)V", "mAdapterLike", "getMAdapterLike", "setMAdapterLike", "mAdapterParent", "getMAdapterParent", "setMAdapterParent", "mAdapterTime", "getMAdapterTime", "setMAdapterTime", "mChildData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/PianKuModel;", "Lkotlin/collections/ArrayList;", "getMChildData", "()Ljava/util/ArrayList;", "setMChildData", "(Ljava/util/ArrayList;)V", "mData", "Lcom/mogu/tv/model/VideoListModel$Video;", "getMData", "setMData", "mLikeData", "getMLikeData", "setMLikeData", "mPage", "getMPage", "setMPage", "mPrentData", "getMPrentData", "setMPrentData", "mTimeData", "getMTimeData", "setMTimeData", "requestSort", "", "getRequestSort", "()Ljava/lang/String;", "setRequestSort", "(Ljava/lang/String;)V", "requestTypes", "getRequestTypes", "setRequestTypes", "selectId", "getSelectId", "setSelectId", "topVisible", "", "getTopVisible", "()Z", "setTopVisible", "(Z)V", "getServerData", "", "initData", "initLists", "initRetrnTop", "initView", "notifyChild", "id", "showBanner", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PiankuActivity extends CommonBaseActivity<FragPiankuBinding> {
    private int distance;
    private boolean topVisible;
    private PiankuModelAdapter mAdapterParent = new PiankuModelAdapter();
    private ArrayList<PianKuModel> mPrentData = new ArrayList<>();
    private PiankuModelAdapter mAdapterChild = new PiankuModelAdapter();
    private ArrayList<PianKuModel> mChildData = new ArrayList<>();
    private PiankuModelAdapter mAdapterLike = new PiankuModelAdapter();
    private ArrayList<PianKuModel> mLikeData = new ArrayList<>();
    private PiankuModelAdapter mAdapterTime = new PiankuModelAdapter();
    private ArrayList<PianKuModel> mTimeData = new ArrayList<>();
    private String requestTypes = "";
    private String requestSort = "-id";
    private int mPage = 1;
    private ArrayList<VideoListModel.Video> mData = new ArrayList<>();
    private VideoListsAdapter mAdapter = new VideoListsAdapter();
    private String selectId = "";

    public final PiankuModelAdapter getMAdapterParent() {
        return this.mAdapterParent;
    }

    public final void setMAdapterParent(PiankuModelAdapter piankuModelAdapter) {
        Intrinsics.checkNotNullParameter(piankuModelAdapter, "<set-?>");
        this.mAdapterParent = piankuModelAdapter;
    }

    public final ArrayList<PianKuModel> getMPrentData() {
        return this.mPrentData;
    }

    public final void setMPrentData(ArrayList<PianKuModel> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mPrentData = arrayList;
    }

    public final PiankuModelAdapter getMAdapterChild() {
        return this.mAdapterChild;
    }

    public final void setMAdapterChild(PiankuModelAdapter piankuModelAdapter) {
        Intrinsics.checkNotNullParameter(piankuModelAdapter, "<set-?>");
        this.mAdapterChild = piankuModelAdapter;
    }

    public final ArrayList<PianKuModel> getMChildData() {
        return this.mChildData;
    }

    public final void setMChildData(ArrayList<PianKuModel> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mChildData = arrayList;
    }

    public final PiankuModelAdapter getMAdapterLike() {
        return this.mAdapterLike;
    }

    public final void setMAdapterLike(PiankuModelAdapter piankuModelAdapter) {
        Intrinsics.checkNotNullParameter(piankuModelAdapter, "<set-?>");
        this.mAdapterLike = piankuModelAdapter;
    }

    public final ArrayList<PianKuModel> getMLikeData() {
        return this.mLikeData;
    }

    public final void setMLikeData(ArrayList<PianKuModel> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mLikeData = arrayList;
    }

    public final PiankuModelAdapter getMAdapterTime() {
        return this.mAdapterTime;
    }

    public final void setMAdapterTime(PiankuModelAdapter piankuModelAdapter) {
        Intrinsics.checkNotNullParameter(piankuModelAdapter, "<set-?>");
        this.mAdapterTime = piankuModelAdapter;
    }

    public final ArrayList<PianKuModel> getMTimeData() {
        return this.mTimeData;
    }

    public final void setMTimeData(ArrayList<PianKuModel> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mTimeData = arrayList;
    }

    public final String getRequestTypes() {
        return this.requestTypes;
    }

    public final void setRequestTypes(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.requestTypes = str;
    }

    public final String getRequestSort() {
        return this.requestSort;
    }

    public final void setRequestSort(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.requestSort = str;
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
        getBinding().headLayout.tvHeaderTitle.setText("片库");
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.PiankuActivity.initView.1
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
                PiankuActivity.this.onBackPressed();
            }
        });
        getBinding().rvParentType.setLayoutManager(new LinearLayoutManager(getMActivity(), 0, false));
        getBinding().rvchildType.setLayoutManager(new LinearLayoutManager(getMActivity(), 0, false));
        getBinding().rvLike.setLayoutManager(new LinearLayoutManager(getMActivity(), 0, false));
        getBinding().rvTime.setLayoutManager(new LinearLayoutManager(getMActivity(), 0, false));
        FragPiankuBinding binding = getBinding();
        binding.rvParentType.setAdapter(this.mAdapterParent);
        binding.rvchildType.setAdapter(this.mAdapterChild);
        binding.rvLike.setAdapter(this.mAdapterLike);
        binding.rvTime.setAdapter(this.mAdapterTime);
        this.mAdapterParent.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PiankuActivity.m215initView$lambda2(this.f$0, baseQuickAdapter, view, i);
            }
        });
        this.mAdapterChild.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PiankuActivity.m216initView$lambda4(this.f$0, baseQuickAdapter, view, i);
            }
        });
        this.mAdapterLike.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PiankuActivity.m217initView$lambda6(this.f$0, baseQuickAdapter, view, i);
            }
        });
        this.mAdapterTime.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PiankuActivity.m218initView$lambda8(this.f$0, baseQuickAdapter, view, i);
            }
        });
        initLists();
        initRetrnTop();
        showBanner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-2, reason: not valid java name */
    public static final void m215initView$lambda2(PiankuActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<PianKuModel> data = this$0.mAdapterParent.getData();
        Intrinsics.checkNotNullExpressionValue(data, "mAdapterParent.data");
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            ((PianKuModel) it.next()).setSelect(false);
        }
        this$0.mAdapterParent.getData().get(i).setSelect(true);
        this$0.mAdapterParent.notifyDataSetChanged();
        this$0.notifyChild(this$0.mAdapterParent.getData().get(i).getId());
        this$0.getBinding().refreshLayout.autoRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-4, reason: not valid java name */
    public static final void m216initView$lambda4(PiankuActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<PianKuModel> data = this$0.mAdapterChild.getData();
        Intrinsics.checkNotNullExpressionValue(data, "mAdapterChild.data");
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            ((PianKuModel) it.next()).setSelect(false);
        }
        this$0.mAdapterChild.getData().get(i).setSelect(true);
        this$0.requestTypes = this$0.mAdapterChild.getData().get(i).getRequestKey();
        this$0.mAdapterChild.notifyDataSetChanged();
        this$0.getBinding().refreshLayout.autoRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-6, reason: not valid java name */
    public static final void m217initView$lambda6(PiankuActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<PianKuModel> data = this$0.mAdapterLike.getData();
        Intrinsics.checkNotNullExpressionValue(data, "mAdapterLike.data");
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            ((PianKuModel) it.next()).setSelect(false);
        }
        this$0.mAdapterLike.getData().get(i).setSelect(true);
        this$0.requestSort = this$0.mAdapterLike.getData().get(i).getRequestKey();
        this$0.mAdapterLike.notifyDataSetChanged();
        this$0.getBinding().refreshLayout.autoRefresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-8, reason: not valid java name */
    public static final void m218initView$lambda8(PiankuActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<PianKuModel> data = this$0.mAdapterTime.getData();
        Intrinsics.checkNotNullExpressionValue(data, "mAdapterTime.data");
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            ((PianKuModel) it.next()).setSelect(false);
        }
        this$0.mAdapterTime.getData().get(i).setSelect(true);
        this$0.mAdapterTime.notifyDataSetChanged();
        this$0.getBinding().refreshLayout.autoRefresh();
    }

    private final void showBanner() {
        List<AllAdsModel.Item> pianku;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (pianku = adData.getPianku()) == null) ? null : AllAdsModelKt.getRandomAd(pianku);
        String file = randomAd != null ? randomAd.getFile() : null;
        if (file == null || file.length() == 0) {
            ImageView imageView = getBinding().ivMainAd;
            Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivMainAd");
            AndroidutilsKt.setVisible(imageView, false);
        }
        ImageView imageView2 = getBinding().ivMainAd;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivMainAd");
        AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.PiankuActivity.showBanner.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                String action;
                Intrinsics.checkNotNullParameter(it, "it");
                ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                FragmentActivity mActivity = PiankuActivity.this.getMActivity();
                AllAdsModel.Item item = randomAd;
                if (item == null || (action = item.getAction()) == null) {
                    action = "";
                }
                arouterUtils.toUrlPraseJump(mActivity, action);
                ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                AllAdsModel.Item item2 = randomAd;
                arouterUtils2.clickAd(String.valueOf(item2 != null ? Integer.valueOf(item2.getId()) : null));
            }
        });
        ImageView imageView3 = getBinding().ivMainAd;
        if (imageView3 != null) {
            ImageUtilKt.with(imageView3, randomAd != null ? randomAd.getFile() : null);
        }
    }

    private final void notifyChild(String id) {
        List<VideoTypes.Types> list;
        this.mChildData.clear();
        this.requestTypes = "";
        this.mPage = 1;
        if (this.mChildData.isEmpty()) {
            PianKuModel pianKuModel = new PianKuModel();
            pianKuModel.setSelect(true);
            pianKuModel.setName("全部");
            pianKuModel.setId("");
            pianKuModel.setRequestKey("");
            this.mChildData.add(pianKuModel);
            VideoTypes types = GlobeAppData.INSTANCE.getTypes();
            if (types != null && (list = types.getList()) != null) {
                for (VideoTypes.Types types2 : list) {
                    if (Intrinsics.areEqual(types2.getId(), id) || TextUtils.isEmpty(id)) {
                        for (VideoTypes.Child child : types2.getChild()) {
                            if (TextUtils.isEmpty(id)) {
                                this.requestTypes = "";
                            } else {
                                this.requestTypes += child.getId() + ',';
                            }
                            PianKuModel pianKuModel2 = new PianKuModel();
                            pianKuModel2.setName(child.getName());
                            pianKuModel2.setId(child.getId());
                            pianKuModel2.setRequestKey(child.getId());
                            this.mChildData.add(pianKuModel2);
                        }
                    }
                }
            }
        }
        getServerData();
        this.mAdapterChild.notifyDataSetChanged();
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
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.PiankuActivity.initRetrnTop.1
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
                PiankuActivity.this.getBinding().rvList.scrollToPosition(0);
            }
        });
        getBinding().rvList.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity.initRetrnTop.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
                if (PiankuActivity.this.getDistance() < (-ViewConfiguration.getTouchSlop()) && !PiankuActivity.this.getTopVisible()) {
                    AnimUtil.showFABAnimation(PiankuActivity.this.getBinding().ivReturnTop);
                    PiankuActivity.this.setDistance(0);
                    PiankuActivity.this.setTopVisible(true);
                } else if (PiankuActivity.this.getDistance() > ViewConfiguration.getTouchSlop() && PiankuActivity.this.getTopVisible()) {
                    AnimUtil.hideFABAnimation(PiankuActivity.this.getBinding().ivReturnTop);
                    PiankuActivity.this.setDistance(0);
                    PiankuActivity.this.setTopVisible(false);
                }
                if ((dy <= 0 || !PiankuActivity.this.getTopVisible()) && (dy >= 0 || PiankuActivity.this.getTopVisible())) {
                    return;
                }
                PiankuActivity piankuActivity = PiankuActivity.this;
                piankuActivity.setDistance(piankuActivity.getDistance() + dy);
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
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda6
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                PiankuActivity.m212initLists$lambda11(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda5
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                PiankuActivity.m213initLists$lambda12(this.f$0, refreshLayout);
            }
        });
        getBinding().rvList.setLayoutManager(new GridLayoutManager(getMActivity(), 2));
        getBinding().rvList.addItemDecoration(new GridItemDecorationColumns(10, 2));
        getBinding().rvList.setAdapter(this.mAdapter);
        this.mAdapter.setNewData(this.mData);
        this.mAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.PiankuActivity$$ExternalSyntheticLambda4
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                PiankuActivity.m214initLists$lambda13(this.f$0, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-11, reason: not valid java name */
    public static final void m212initLists$lambda11(PiankuActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-12, reason: not valid java name */
    public static final void m213initLists$lambda12(PiankuActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initLists$lambda-13, reason: not valid java name */
    public static final void m214initLists$lambda13(PiankuActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
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
        List<VideoTypes.Types> list;
        List<VideoTypes.Types> list2;
        List<VideoTypes.Types> list3;
        List<VideoTypes.Types> list4;
        String stringExtra = getIntent().getStringExtra("id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.selectId = stringExtra;
        if (!TextUtils.isEmpty(stringExtra)) {
            this.requestTypes = this.selectId;
        }
        if (this.mPrentData.isEmpty()) {
            PianKuModel pianKuModel = new PianKuModel();
            if (TextUtils.isEmpty(this.selectId)) {
                pianKuModel.setSelect(true);
            }
            pianKuModel.setName("全部");
            pianKuModel.setId("");
            pianKuModel.setRequestKey("");
            this.mPrentData.add(pianKuModel);
            VideoTypes types = GlobeAppData.INSTANCE.getTypes();
            if (types != null && (list4 = types.getList()) != null) {
                for (VideoTypes.Types types2 : list4) {
                    PianKuModel pianKuModel2 = new PianKuModel();
                    pianKuModel2.setName(types2.getName());
                    pianKuModel2.setId(types2.getId());
                    pianKuModel2.setRequestKey(types2.getId());
                    Iterator<T> it = types2.getChild().iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.areEqual(((VideoTypes.Child) it.next()).getId(), this.selectId)) {
                            pianKuModel2.setSelect(true);
                        }
                    }
                    this.mPrentData.add(pianKuModel2);
                }
            }
        }
        if (this.mChildData.isEmpty()) {
            PianKuModel pianKuModel3 = new PianKuModel();
            if (TextUtils.isEmpty(this.selectId)) {
                pianKuModel3.setSelect(true);
            }
            pianKuModel3.setName("全部");
            pianKuModel3.setId("");
            pianKuModel3.setRequestKey("");
            this.mChildData.add(pianKuModel3);
            if (TextUtils.isEmpty(this.selectId)) {
                VideoTypes types3 = GlobeAppData.INSTANCE.getTypes();
                if (types3 != null && (list3 = types3.getList()) != null) {
                    Iterator<T> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        for (VideoTypes.Child child : ((VideoTypes.Types) it2.next()).getChild()) {
                            PianKuModel pianKuModel4 = new PianKuModel();
                            pianKuModel4.setName(child.getName());
                            pianKuModel4.setId(child.getId());
                            pianKuModel4.setRequestKey(child.getId());
                            this.mChildData.add(pianKuModel4);
                        }
                    }
                }
            } else {
                ArrayList<VideoTypes.Child> arrayList = new ArrayList<>();
                VideoTypes types4 = GlobeAppData.INSTANCE.getTypes();
                if (types4 != null && (list = types4.getList()) != null) {
                    for (VideoTypes.Types types5 : list) {
                        Iterator<T> it3 = types5.getChild().iterator();
                        while (it3.hasNext()) {
                            if (Intrinsics.areEqual(((VideoTypes.Child) it3.next()).getId(), this.selectId)) {
                                arrayList = types5.getChild();
                            }
                        }
                    }
                }
                for (VideoTypes.Child child2 : arrayList) {
                    PianKuModel pianKuModel5 = new PianKuModel();
                    if (Intrinsics.areEqual(child2.getId(), this.selectId)) {
                        pianKuModel5.setSelect(true);
                    }
                    pianKuModel5.setName(child2.getName());
                    pianKuModel5.setId(child2.getId());
                    pianKuModel5.setRequestKey(child2.getId());
                    this.mChildData.add(pianKuModel5);
                }
            }
            VideoTypes types6 = GlobeAppData.INSTANCE.getTypes();
            if (types6 != null && (list2 = types6.getList()) != null) {
                Iterator<T> it4 = list2.iterator();
                while (it4.hasNext()) {
                    for (VideoTypes.Child child3 : ((VideoTypes.Types) it4.next()).getChild()) {
                        PianKuModel pianKuModel6 = new PianKuModel();
                        if (Intrinsics.areEqual(child3.getId(), this.selectId)) {
                            pianKuModel6.setSelect(true);
                        }
                        pianKuModel6.setName(child3.getName());
                        pianKuModel6.setId(child3.getId());
                        pianKuModel6.setRequestKey(child3.getId());
                        this.mChildData.add(pianKuModel6);
                    }
                }
            }
        }
        if (this.mLikeData.isEmpty()) {
            PianKuModel pianKuModel7 = new PianKuModel();
            pianKuModel7.setSelect(true);
            pianKuModel7.setName("最新发布");
            pianKuModel7.setId("play");
            pianKuModel7.setRequestKey("-id");
            this.mLikeData.add(pianKuModel7);
            PianKuModel pianKuModel8 = new PianKuModel();
            pianKuModel8.setName("最多播放");
            pianKuModel8.setId("play");
            pianKuModel8.setRequestKey("-view");
            this.mLikeData.add(pianKuModel8);
            PianKuModel pianKuModel9 = new PianKuModel();
            pianKuModel9.setName("最多收藏");
            pianKuModel9.setId("play");
            pianKuModel9.setRequestKey("-stat");
            this.mLikeData.add(pianKuModel9);
        }
        if (this.mTimeData.isEmpty()) {
            PianKuModel pianKuModel10 = new PianKuModel();
            pianKuModel10.setSelect(true);
            pianKuModel10.setName("全部");
            pianKuModel10.setId("");
            pianKuModel10.setRequestKey("");
            this.mTimeData.add(pianKuModel10);
            PianKuModel pianKuModel11 = new PianKuModel();
            pianKuModel11.setName("最近一周");
            pianKuModel11.setId("play");
            pianKuModel11.setRequestKey("by");
            this.mTimeData.add(pianKuModel11);
            PianKuModel pianKuModel12 = new PianKuModel();
            pianKuModel12.setName("最近一月");
            pianKuModel12.setId("play");
            pianKuModel12.setRequestKey("by");
            this.mTimeData.add(pianKuModel12);
            PianKuModel pianKuModel13 = new PianKuModel();
            pianKuModel13.setName("最近一年");
            pianKuModel13.setId("play");
            pianKuModel13.setRequestKey("by");
            this.mTimeData.add(pianKuModel13);
        }
        this.mAdapterParent.setNewData(this.mPrentData);
        this.mAdapterChild.setNewData(this.mChildData);
        this.mAdapterLike.setNewData(this.mLikeData);
        this.mAdapterTime.setNewData(this.mTimeData);
        getServerData();
    }

    private final void getServerData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", String.valueOf(this.mPage));
        if (!TextUtils.isEmpty(this.requestTypes)) {
            map2.put("types", this.requestTypes);
        }
        if (!TextUtils.isEmpty(this.requestSort)) {
            map2.put("order", this.requestSort);
        }
        ApiManager.INSTANCE.getVideoList(map, new Function3<Integer, String, VideoListModel, Unit>() { // from class: com.mogu.tv.ui.activity.PiankuActivity.getServerData.1
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
                if (PiankuActivity.this.isDestroyed() || PiankuActivity.this.getBinding() == null) {
                    return;
                }
                PiankuActivity.this.getBinding().refreshLayout.finishRefresh();
                if (PiankuActivity.this.getMPage() == 1) {
                    PiankuActivity.this.getMData().clear();
                } else {
                    PiankuActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
                if (i == 200 && videoListModel != null) {
                    PiankuActivity.this.getMData().addAll(videoListModel.getList());
                }
                PiankuActivity.this.getMAdapter().notifyDataSetChanged();
            }
        });
    }
}
