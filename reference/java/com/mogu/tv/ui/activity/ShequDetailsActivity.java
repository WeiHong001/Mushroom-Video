package com.mogu.tv.ui.activity;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.DateUtil;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.adapter.NewCommentAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActShequinfoBinding;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.CommentLists;
import com.mogu.tv.model.CommentSuccess;
import com.mogu.tv.model.EventCommentNumber;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.ShequDetailsModel;
import com.mogu.tv.model.ShequListModel;
import com.mogu.tv.utils.ImageUtil;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.NineGridLayout;
import com.mogu.tv.view.SharePopDialog;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.umeng.analytics.pro.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: compiled from: ShequDetailsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0007J\u0010\u00100\u001a\u00020-2\u0006\u0010.\u001a\u000201H\u0007J\b\u00102\u001a\u00020-H\u0002J\b\u00103\u001a\u00020-H\u0002J\b\u00104\u001a\u00020-H\u0002J\b\u00105\u001a\u00020-H\u0002J\b\u00106\u001a\u00020-H\u0016J\b\u00107\u001a\u00020-H\u0002J\b\u00108\u001a\u00020-H\u0002J\b\u00109\u001a\u00020-H\u0016J\u0010\u0010:\u001a\u00020-2\u0006\u0010;\u001a\u00020\u0011H\u0002J\b\u0010<\u001a\u00020-H\u0002J\b\u0010=\u001a\u00020-H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R!\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00110\u0017j\b\u0012\u0004\u0012\u00020\u0011`\u0019¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001b¨\u0006>"}, d2 = {"Lcom/mogu/tv/ui/activity/ShequDetailsActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActShequinfoBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "mAdapter", "Lcom/mogu/tv/adapter/NewCommentAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/NewCommentAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/NewCommentAdapter;)V", "mBlog_id", "", "getMBlog_id", "()Ljava/lang/String;", "setMBlog_id", "(Ljava/lang/String;)V", "mCommentData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/CommentLists$CommentItem;", "Lkotlin/collections/ArrayList;", "getMCommentData", "()Ljava/util/ArrayList;", "setMCommentData", "(Ljava/util/ArrayList;)V", "mData", "Lcom/mogu/tv/model/ShequDetailsModel;", "getMData", "()Lcom/mogu/tv/model/ShequDetailsModel;", "setMData", "(Lcom/mogu/tv/model/ShequDetailsModel;)V", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "mTitles", "getMTitles", "commentSuccess", "", "item", "Lcom/mogu/tv/model/CommentSuccess;", "eventCommentNumber", "Lcom/mogu/tv/model/EventCommentNumber;", "fitData", "getCommentData", "getSheQuDetails", "initComment", "initData", "initFrag", "initTab", "initView", "notifyCoomentTab", "size", "notifyTab", "onDestroy", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequDetailsActivity extends CommonBaseActivity<ActShequinfoBinding> {
    private ShequDetailsModel mData;
    private int mPage = 1;
    private NewCommentAdapter mAdapter = new NewCommentAdapter();
    private ArrayList<CommentLists.CommentItem> mCommentData = new ArrayList<>();
    private final ArrayList<String> mTitles = new ArrayList<>();

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.getMActivity());
        }
    });
    private String mBlog_id = "";

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        EventBusUtil.INSTANCE.register(this);
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity.initView.1
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
                ShequDetailsActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("详情");
        initFrag();
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    public final NewCommentAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(NewCommentAdapter newCommentAdapter) {
        Intrinsics.checkNotNullParameter(newCommentAdapter, "<set-?>");
        this.mAdapter = newCommentAdapter;
    }

    public final ArrayList<CommentLists.CommentItem> getMCommentData() {
        return this.mCommentData;
    }

    public final void setMCommentData(ArrayList<CommentLists.CommentItem> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mCommentData = arrayList;
    }

    private final void initComment() {
        getBinding().rvComment.setLayoutManager(new LinearLayoutManager(getMActivity()));
        getBinding().rvComment.setAdapter(this.mAdapter);
        getBinding().refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$$ExternalSyntheticLambda2
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                ShequDetailsActivity.m233initComment$lambda0(this.f$0, refreshLayout);
            }
        });
        getBinding().refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$$ExternalSyntheticLambda1
            @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
            public final void onLoadMore(RefreshLayout refreshLayout) {
                ShequDetailsActivity.m234initComment$lambda1(this.f$0, refreshLayout);
            }
        });
        this.mAdapter.setNewData(this.mCommentData);
        getCommentData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initComment$lambda-0, reason: not valid java name */
    public static final void m233initComment$lambda0(ShequDetailsActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getCommentData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initComment$lambda-1, reason: not valid java name */
    public static final void m234initComment$lambda1(ShequDetailsActivity this$0, RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getCommentData();
    }

    @Subscribe
    public final void commentSuccess(CommentSuccess item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (isDestroyed()) {
            return;
        }
        getBinding().rvComment.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ShequDetailsActivity.m231commentSuccess$lambda2(this.f$0);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: commentSuccess$lambda-2, reason: not valid java name */
    public static final void m231commentSuccess$lambda2(ShequDetailsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mPage = 1;
        this$0.getCommentData();
    }

    private final void getCommentData() {
        ApiManager.INSTANCE.shequCommentList(this.mBlog_id, this.mPage, new Function3<Integer, String, CommentLists, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity.getCommentData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, CommentLists commentLists) {
                invoke(num.intValue(), str, commentLists);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, CommentLists commentLists) {
                List<CommentLists.CommentItem> arrayList;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (ShequDetailsActivity.this.isDestroyed() || ShequDetailsActivity.this.getBinding() == null) {
                    return;
                }
                if (ShequDetailsActivity.this.getMPage() == 1) {
                    ShequDetailsActivity.this.getMCommentData().clear();
                    ShequDetailsActivity.this.getMAdapter().setNewData(ShequDetailsActivity.this.getMCommentData());
                    ShequDetailsActivity.this.getBinding().refreshLayout.finishRefresh();
                } else {
                    ShequDetailsActivity.this.getBinding().refreshLayout.finishLoadMore();
                }
                if (i == 200) {
                    EventBusUtil.INSTANCE.post(new EventCommentNumber(commentLists != null ? commentLists.getTotal() : 0));
                    NewCommentAdapter mAdapter = ShequDetailsActivity.this.getMAdapter();
                    if (commentLists == null || (arrayList = commentLists.getList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    mAdapter.addData((Collection) arrayList);
                }
                ShequDetailsActivity.this.getBinding().refreshLayout.finishRefresh();
            }
        });
    }

    public final ArrayList<String> getMTitles() {
        return this.mTitles;
    }

    private final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBusUtil.INSTANCE.unregister(this);
    }

    private final void initFrag() {
        initTab();
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.activity.ShequDetailsActivity$initTab$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ShequDetailsActivity.kt */
    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01591 extends CommonNavigatorAdapter {
        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m236getTitleView$lambda0(View view) {
        }

        C01591() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(ShequDetailsActivity.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 14.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 17.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShequDetailsActivity.C01591.m236getTitleView$lambda0(view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return ShequDetailsActivity.this.getMTitles().size();
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerIndicator getIndicator(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(1);
            linePagerIndicator.setLineHeight(UIUtil.dip2px(context, 2.0d));
            linePagerIndicator.setColors(Integer.valueOf(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect)));
            return linePagerIndicator;
        }
    }

    private final void initTab() {
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setAdapter(new C01591());
        MagicIndicator magicIndicator = getBinding().magicIndicator;
        if (magicIndicator == null) {
            return;
        }
        magicIndicator.setNavigator(getCommonNavigator());
    }

    public final String getMBlog_id() {
        return this.mBlog_id;
    }

    public final void setMBlog_id(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mBlog_id = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.mBlog_id = stringExtra;
        RelativeLayout relativeLayout = getBinding().rlBottomComment;
        if (relativeLayout != null) {
            UserManagerKt.LoginClick(relativeLayout, new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity.initData.1
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
                    ArouterUtils.INSTANCE.toComment(ShequDetailsActivity.this.getMBlog_id(), 2);
                }
            });
        }
        getSheQuDetails();
        notifyTab();
        initComment();
    }

    public final ShequDetailsModel getMData() {
        return this.mData;
    }

    public final void setMData(ShequDetailsModel shequDetailsModel) {
        this.mData = shequDetailsModel;
    }

    private final void getSheQuDetails() {
        ApiManager.INSTANCE.getDetailsShequ(this.mBlog_id, new Function3<Integer, String, ShequDetailsModel, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity.getSheQuDetails.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, ShequDetailsModel shequDetailsModel) {
                invoke(num.intValue(), str, shequDetailsModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, ShequDetailsModel shequDetailsModel) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || shequDetailsModel == null) {
                    return;
                }
                ShequDetailsActivity.this.setMData(shequDetailsModel);
                ShequDetailsActivity.this.fitData();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fitData() {
        final ShequDetailsModel shequDetailsModel = this.mData;
        if (shequDetailsModel != null) {
            final ActShequinfoBinding binding = getBinding();
            RoundedImageView ivPhoto = binding.ivPhoto;
            Intrinsics.checkNotNullExpressionValue(ivPhoto, "ivPhoto");
            ImageUtilKt.withDefaltUserPhoto(ivPhoto, shequDetailsModel.getUser().getAvatar());
            RoundedImageView ivPhoto2 = binding.ivPhoto;
            Intrinsics.checkNotNullExpressionValue(ivPhoto2, "ivPhoto");
            AndroidutilsKt.click(ivPhoto2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$fitData$1$1$1
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
                    ArouterUtils.INSTANCE.toUserDetails(String.valueOf(shequDetailsModel.getUser().getId()));
                }
            });
            binding.tvName.setText(shequDetailsModel.getUser().getName());
            String created_at = shequDetailsModel.getCreated_at();
            if (!(created_at == null || created_at.length() == 0)) {
                binding.tvTime.setText(DateUtil.getCarStrTime(shequDetailsModel.getCreated_at()));
            }
            String detail = shequDetailsModel.getDetail();
            if (detail == null || detail.length() == 0) {
                TextView tvFriendTitle = binding.tvFriendTitle;
                Intrinsics.checkNotNullExpressionValue(tvFriendTitle, "tvFriendTitle");
                AndroidutilsKt.setVisible(tvFriendTitle, false);
            } else {
                TextView tvFriendTitle2 = binding.tvFriendTitle;
                Intrinsics.checkNotNullExpressionValue(tvFriendTitle2, "tvFriendTitle");
                AndroidutilsKt.setVisible(tvFriendTitle2, true);
                binding.tvFriendTitle.setText(shequDetailsModel.getDetail());
            }
            notifyCoomentTab(String.valueOf(shequDetailsModel.getComments()));
            LinearLayout llPraise = binding.llPraise;
            Intrinsics.checkNotNullExpressionValue(llPraise, "llPraise");
            UserManagerKt.LoginClick(llPraise, new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$fitData$1$1$2
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
                    if (shequDetailsModel.getIsZan() == 1) {
                        CommonBaseActivity.showLoadingDialog$default(this, false, null, 3, null);
                        ApiManager apiManager = ApiManager.INSTANCE;
                        ShequDetailsModel mData = this.getMData();
                        String strValueOf = String.valueOf(mData != null ? Integer.valueOf(mData.getId()) : null);
                        final ShequDetailsActivity shequDetailsActivity = this;
                        final ShequDetailsModel shequDetailsModel2 = shequDetailsModel;
                        final ActShequinfoBinding actShequinfoBinding = binding;
                        apiManager.starDelSqDetails(strValueOf, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$fitData$1$1$2.1
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
                                shequDetailsActivity.dissmissLoading();
                                if (i == 200) {
                                    shequDetailsModel2.setZan(0);
                                    actShequinfoBinding.ivPraise.setSelected(shequDetailsModel2.getIsZan() == 0);
                                    actShequinfoBinding.tvPraise.setText(String.valueOf(shequDetailsModel2.getFavorites()));
                                }
                            }
                        });
                        return;
                    }
                    ApiManager apiManager2 = ApiManager.INSTANCE;
                    ShequDetailsModel mData2 = this.getMData();
                    String strValueOf2 = String.valueOf(mData2 != null ? Integer.valueOf(mData2.getId()) : null);
                    final ShequDetailsActivity shequDetailsActivity2 = this;
                    final ShequDetailsModel shequDetailsModel3 = shequDetailsModel;
                    final ActShequinfoBinding actShequinfoBinding2 = binding;
                    apiManager2.blogStar(strValueOf2, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$fitData$1$1$2.2
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
                            shequDetailsActivity2.dissmissLoading();
                            if (i == 200) {
                                shequDetailsModel3.setZan(1);
                                actShequinfoBinding2.ivPraise.setSelected(shequDetailsModel3.getIsZan() == 1);
                                actShequinfoBinding2.tvPraise.setText(String.valueOf(shequDetailsModel3.getFavorites() + 1));
                            }
                        }
                    });
                }
            });
            LinearLayout llShare = binding.llShare;
            Intrinsics.checkNotNullExpressionValue(llShare, "llShare");
            AndroidutilsKt.click(llShare, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$fitData$1$1$3
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
                    new SharePopDialog(this.this$0.getMActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
                }
            });
            binding.tvPraise.setText(String.valueOf(shequDetailsModel.getFavorites()));
            String video = shequDetailsModel.getVideo();
            if (video == null || video.length() == 0) {
                ImageView ivVideoPhoto = binding.ivVideoPhoto;
                Intrinsics.checkNotNullExpressionValue(ivVideoPhoto, "ivVideoPhoto");
                AndroidutilsKt.setVisible(ivVideoPhoto, false);
                ImageView ivPlay = binding.ivPlay;
                Intrinsics.checkNotNullExpressionValue(ivPlay, "ivPlay");
                AndroidutilsKt.setVisible(ivPlay, false);
                ArrayList<ShequListModel.Data.Image> images = shequDetailsModel.getImages();
                if (images == null || images.isEmpty()) {
                    ImageView ivSingle = binding.ivSingle;
                    Intrinsics.checkNotNullExpressionValue(ivSingle, "ivSingle");
                    AndroidutilsKt.setVisible(ivSingle, false);
                    NineGridLayout ngridLayout = binding.ngridLayout;
                    Intrinsics.checkNotNullExpressionValue(ngridLayout, "ngridLayout");
                    AndroidutilsKt.setVisible(ngridLayout, false);
                    return;
                }
                if (shequDetailsModel.getImages().size() == 1) {
                    ImageView ivSingle2 = binding.ivSingle;
                    Intrinsics.checkNotNullExpressionValue(ivSingle2, "ivSingle");
                    AndroidutilsKt.setVisible(ivSingle2, true);
                    ImageView ivSingle3 = binding.ivSingle;
                    Intrinsics.checkNotNullExpressionValue(ivSingle3, "ivSingle");
                    AndroidutilsKt.click(ivSingle3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$fitData$1$1$4
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
                            ArouterUtils.INSTANCE.showPhoto(shequDetailsModel.getImages().get(0).getPath());
                        }
                    });
                    NineGridLayout ngridLayout2 = binding.ngridLayout;
                    Intrinsics.checkNotNullExpressionValue(ngridLayout2, "ngridLayout");
                    AndroidutilsKt.setVisible(ngridLayout2, false);
                    if (StringsKt.contains$default((CharSequence) shequDetailsModel.getImages().get(0).getPath(), (CharSequence) "gif", false, 2, (Object) null)) {
                        ImageView ivSingle4 = binding.ivSingle;
                        Intrinsics.checkNotNullExpressionValue(ivSingle4, "ivSingle");
                        ImageUtilKt.with(ivSingle4, shequDetailsModel.getImages().get(0).getPath());
                        return;
                    } else {
                        ImageUtil imageUtil = ImageUtil.INSTANCE;
                        String path = shequDetailsModel.getImages().get(0).getPath();
                        FragmentActivity mActivity = getMActivity();
                        ImageView ivSingle5 = binding.ivSingle;
                        Intrinsics.checkNotNullExpressionValue(ivSingle5, "ivSingle");
                        imageUtil.loadImageSingleList(path, mActivity, ivSingle5);
                        return;
                    }
                }
                NineGridLayout ngridLayout3 = binding.ngridLayout;
                Intrinsics.checkNotNullExpressionValue(ngridLayout3, "ngridLayout");
                AndroidutilsKt.setVisible(ngridLayout3, true);
                ImageView ivSingle6 = binding.ivSingle;
                Intrinsics.checkNotNullExpressionValue(ivSingle6, "ivSingle");
                AndroidutilsKt.setVisible(ivSingle6, false);
                binding.ngridLayout.setAdapter(new NineGridLayout.NineGridAdapter(getMActivity(), shequDetailsModel.getImages()));
                binding.ngridLayout.setOnItemClickListerner(new NineGridLayout.OnItemClickListerner() { // from class: com.mogu.tv.ui.activity.ShequDetailsActivity$$ExternalSyntheticLambda0
                    @Override // com.mogu.tv.view.NineGridLayout.OnItemClickListerner
                    public final void onItemClick(View view, int i) {
                        ShequDetailsActivity.m232fitData$lambda6$lambda5$lambda4(shequDetailsModel, view, i);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: fitData$lambda-6$lambda-5$lambda-4, reason: not valid java name */
    public static final void m232fitData$lambda6$lambda5$lambda4(ShequDetailsModel this_run, View view, int i) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<T> it = this_run.getImages().iterator();
        while (it.hasNext()) {
            arrayList.add(((ShequListModel.Data.Image) it.next()).getPath());
        }
        ArouterUtils.INSTANCE.showPhoto(i, arrayList);
    }

    @Subscribe
    public final void eventCommentNumber(EventCommentNumber item) {
        Intrinsics.checkNotNullParameter(item, "item");
        notifyCoomentTab(String.valueOf(item.getSize()));
    }

    private final void notifyCoomentTab(String size) {
        if (isDestroyed() || getBinding() == null) {
            return;
        }
        this.mTitles.clear();
        this.mTitles.add("评论(" + size + ')');
        getCommonNavigator().notifyDataSetChanged();
    }

    private final void notifyTab() {
        this.mTitles.clear();
        this.mTitles.add("评论");
        getCommonNavigator().notifyDataSetChanged();
    }
}
