package com.mogu.tv.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.StatusBarUtil;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.common.ViewPage2FragmentAdapter;
import com.kotlin.basiclib.common.ViewPager2Helper;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActDetailsBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.ClearPositionEvent;
import com.mogu.tv.model.EventCommentNumber;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.VideoPlayDetails;
import com.mogu.tv.ui.frag.VideoCommentFragment;
import com.mogu.tv.ui.frag.VideoDetailsFragment;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.utils.PlayIdSaveUtils;
import com.mogu.tv.view.DetailsVideoView;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.shuyu.gsyvideoplayer.GSYVideoManager;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack;
import com.shuyu.gsyvideoplayer.listener.LockClickListener;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import com.umeng.analytics.pro.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: compiled from: DetailsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J?\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\f\u00105\u001a\b\u0012\u0004\u0012\u000202062!\u00107\u001a\u001d\u0012\u0013\u0012\u001104¢\u0006\f\b9\u0012\b\b:\u0012\u0004\b\b(;\u0012\u0004\u0012\u00020208J\u0010\u0010<\u001a\u0002022\u0006\u0010=\u001a\u00020>H\u0007J\b\u0010?\u001a\u00020@H\u0002J\b\u0010A\u001a\u000202H\u0002J\b\u0010B\u001a\u000202H\u0002J\b\u0010C\u001a\u000202H\u0016J\b\u0010D\u001a\u000202H\u0002J\b\u0010E\u001a\u000202H\u0002J\b\u0010F\u001a\u000202H\u0016J\u0010\u0010G\u001a\u0002022\u0006\u0010H\u001a\u00020\u001eH\u0002J\b\u0010I\u001a\u000202H\u0002J\b\u0010J\u001a\u000202H\u0016J\u0010\u0010K\u001a\u0002022\u0006\u0010L\u001a\u00020MH\u0016J\b\u0010N\u001a\u000202H\u0014J\b\u0010O\u001a\u000202H\u0014J\b\u0010P\u001a\u000202H\u0014J\b\u0010Q\u001a\u000202H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R*\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\b\u0012\u0004\u0012\u00020\u0017`\u0018X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R!\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u0016j\b\u0012\u0004\u0012\u00020\u001e`\u0018¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u001c\u0010%\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010 \"\u0004\b'\u0010\"R\u001c\u0010(\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010 \"\u0004\b*\u0010\"R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u0006R"}, d2 = {"Lcom/mogu/tv/ui/DetailsActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActDetailsBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "gsyVideoOption", "Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;", "isPause", "", "isPlay", "mFragAdapter", "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mIds", "", "getMIds", "()Ljava/lang/String;", "setMIds", "(Ljava/lang/String;)V", "mTitles", "getMTitles", "mVideoTitle", "getMVideoTitle", "setMVideoTitle", "mVideoUrl", "getMVideoUrl", "setMVideoUrl", "orientationUtils", "Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;", "getOrientationUtils", "()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;", "setOrientationUtils", "(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)V", "coundDown", "", "count", "", "block", "Lkotlin/Function0;", "returntime", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "time", "eventCommentNumber", "item", "Lcom/mogu/tv/model/EventCommentNumber;", "getCurPlay", "Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;", "getVideoDetails", "imageSetAd", "initData", "initTab", "initVideo", "initView", "notifyCoomentTab", "size", "notifyTab", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onDestroy", "onResume", "onStop", "recordPlay", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DetailsActivity extends CommonBaseActivity<ActDetailsBinding> {
    private GSYVideoOptionBuilder gsyVideoOption;
    private boolean isPause;
    private boolean isPlay;
    public ViewPage2FragmentAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;
    private OrientationUtils orientationUtils;
    private final ArrayList<String> mTitles = new ArrayList<>();

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.DetailsActivity$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.getMActivity());
        }
    });
    private String mVideoUrl = "";
    private String mVideoTitle = "";
    private String mIds = "";

    public final ArrayList<String> getMTitles() {
        return this.mTitles;
    }

    public final ArrayList<Fragment> getMFragments() {
        ArrayList<Fragment> arrayList = this.mFragments;
        if (arrayList != null) {
            return arrayList;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mFragments");
        return null;
    }

    public final void setMFragments(ArrayList<Fragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mFragments = arrayList;
    }

    public final ViewPage2FragmentAdapter getMFragAdapter() {
        ViewPage2FragmentAdapter viewPage2FragmentAdapter = this.mFragAdapter;
        if (viewPage2FragmentAdapter != null) {
            return viewPage2FragmentAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mFragAdapter");
        return null;
    }

    public final void setMFragAdapter(ViewPage2FragmentAdapter viewPage2FragmentAdapter) {
        Intrinsics.checkNotNullParameter(viewPage2FragmentAdapter, "<set-?>");
        this.mFragAdapter = viewPage2FragmentAdapter;
    }

    public final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        EventBusUtil.INSTANCE.register(this);
        EventBus.getDefault().post(new ClearPositionEvent(true));
        try {
            StatusBarUtil.setPadding(this, getBinding().llHead);
            StatusBarUtil.immersive(this, ContextCompat.getColor(getMActivity(), R.color.mian_bg_color));
        } catch (Exception unused) {
        }
        setMFragments(new ArrayList<>());
        setMFragAdapter(new ViewPage2FragmentAdapter(getMActivity(), getMFragments()));
        getBinding().viewPager.setAdapter(getMFragAdapter());
        initTab();
    }

    public final OrientationUtils getOrientationUtils() {
        return this.orientationUtils;
    }

    public final void setOrientationUtils(OrientationUtils orientationUtils) {
        this.orientationUtils = orientationUtils;
    }

    public final String getMVideoUrl() {
        return this.mVideoUrl;
    }

    public final void setMVideoUrl(String str) {
        this.mVideoUrl = str;
    }

    public final String getMVideoTitle() {
        return this.mVideoTitle;
    }

    public final void setMVideoTitle(String str) {
        this.mVideoTitle = str;
    }

    private final void initVideo() {
        OrientationUtils orientationUtils = new OrientationUtils(this, getBinding().videoView);
        this.orientationUtils = orientationUtils;
        orientationUtils.setEnable(false);
        getBinding().videoView.getTitleTextView().setVisibility(8);
        GSYVideoOptionBuilder gSYVideoOptionBuilder = new GSYVideoOptionBuilder();
        this.gsyVideoOption = gSYVideoOptionBuilder;
        gSYVideoOptionBuilder.setOverrideExtension("m3u8").setRotateViewAuto(false).setNeedLockFull(true).setAutoFullWithSize(true).setUrl(this.mVideoUrl).setCacheWithPlay(true).setShrinkImageRes(R.mipmap.video_shrink).setEnlargeImageRes(R.mipmap.video_enlarge).setShowFullAnimation(false).setVideoAllCallBack(new GSYSampleCallBack() { // from class: com.mogu.tv.ui.DetailsActivity.initVideo.1
            @Override // com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack, com.shuyu.gsyvideoplayer.listener.VideoAllCallBack
            public void onPrepared(String url, Object... objects) {
                Intrinsics.checkNotNullParameter(objects, "objects");
                super.onPrepared(url, Arrays.copyOf(objects, objects.length));
                OrientationUtils orientationUtils2 = DetailsActivity.this.getOrientationUtils();
                if (orientationUtils2 != null) {
                    orientationUtils2.setEnable(true);
                }
                DetailsActivity.this.isPlay = true;
            }

            @Override // com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack, com.shuyu.gsyvideoplayer.listener.VideoAllCallBack
            public void onEnterFullscreen(String url, Object... objects) {
                Intrinsics.checkNotNullParameter(objects, "objects");
                super.onEnterFullscreen(url, Arrays.copyOf(objects, objects.length));
                View viewFindViewById = DetailsActivity.this.getCurPlay().findViewById(R.id.tv_kuaijin);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById, "getCurPlay().findViewByI…extView>(R.id.tv_kuaijin)");
                final DetailsActivity detailsActivity = DetailsActivity.this;
                AndroidutilsKt.click(viewFindViewById, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity$initVideo$1$onEnterFullscreen$1
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
                        detailsActivity.getCurPlay().seekTo(detailsActivity.getCurPlay().getCurrentPositionWhenPlaying() + ((long) 10000));
                    }
                });
                View viewFindViewById2 = DetailsActivity.this.getCurPlay().findViewById(R.id.tv_kuaitui);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "getCurPlay().findViewByI…extView>(R.id.tv_kuaitui)");
                final DetailsActivity detailsActivity2 = DetailsActivity.this;
                AndroidutilsKt.click(viewFindViewById2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity$initVideo$1$onEnterFullscreen$2
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
                        if (detailsActivity2.getCurPlay().getCurrentPositionWhenPlaying() < 10000) {
                            return;
                        }
                        detailsActivity2.getCurPlay().seekTo(detailsActivity2.getCurPlay().getCurrentPositionWhenPlaying() - ((long) 10000));
                    }
                });
                View viewFindViewById3 = DetailsActivity.this.getCurPlay().findViewById(R.id.tv_kuaijin);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "getCurPlay().findViewByI…extView>(R.id.tv_kuaijin)");
                AndroidutilsKt.setVisible(viewFindViewById3, true);
                View viewFindViewById4 = DetailsActivity.this.getCurPlay().findViewById(R.id.tv_kuaitui);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "getCurPlay().findViewByI…extView>(R.id.tv_kuaitui)");
                AndroidutilsKt.setVisible(viewFindViewById4, true);
            }

            @Override // com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack, com.shuyu.gsyvideoplayer.listener.VideoAllCallBack
            public void onQuitFullscreen(String url, Object... objects) {
                Intrinsics.checkNotNullParameter(objects, "objects");
                super.onQuitFullscreen(url, Arrays.copyOf(objects, objects.length));
                TextView textView = DetailsActivity.this.getBinding().videoView.tv_kuaijin;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.videoView.tv_kuaijin");
                AndroidutilsKt.setVisible(textView, false);
                TextView textView2 = DetailsActivity.this.getBinding().videoView.tv_kuaitui;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.videoView.tv_kuaitui");
                AndroidutilsKt.setVisible(textView2, false);
                OrientationUtils orientationUtils2 = DetailsActivity.this.getOrientationUtils();
                if (orientationUtils2 != null) {
                    orientationUtils2.backToProtVideo();
                }
            }
        }).setLockClickListener(new LockClickListener() { // from class: com.mogu.tv.ui.DetailsActivity$$ExternalSyntheticLambda0
            @Override // com.shuyu.gsyvideoplayer.listener.LockClickListener
            public final void onClick(View view, boolean z) {
                DetailsActivity.m160initVideo$lambda0(this.f$0, view, z);
            }
        }).build((StandardGSYVideoPlayer) getBinding().videoView);
        ImageView fullscreenButton = getBinding().videoView.getFullscreenButton();
        Intrinsics.checkNotNullExpressionValue(fullscreenButton, "binding.videoView.fullscreenButton");
        AndroidutilsKt.click(fullscreenButton, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.initVideo.3
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
                OrientationUtils orientationUtils2 = DetailsActivity.this.getOrientationUtils();
                if (orientationUtils2 != null) {
                    orientationUtils2.resolveByClick();
                }
                DetailsActivity.this.getBinding().videoView.startWindowFullscreen(DetailsActivity.this, true, true);
            }
        });
        ImageView backButton = getBinding().videoView.getBackButton();
        Intrinsics.checkNotNullExpressionValue(backButton, "binding.videoView.backButton");
        AndroidutilsKt.click(backButton, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.initVideo.4
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
                DetailsActivity.this.onBackPressed();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initVideo$lambda-0, reason: not valid java name */
    public static final void m160initVideo$lambda0(DetailsActivity this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OrientationUtils orientationUtils = this$0.orientationUtils;
        if (orientationUtils == null) {
            return;
        }
        orientationUtils.setEnable(!z);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        OrientationUtils orientationUtils = this.orientationUtils;
        if (orientationUtils != null && orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
        if (GSYVideoManager.backFromWindowFull(this)) {
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recordPlay() {
        if (UserManager.INSTANCE.isLogin()) {
            ApiManager.INSTANCE.historyAdd(this.mIds);
        }
    }

    private final void initTab() {
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setAdjustMode(true);
        getCommonNavigator().setAdapter(new C01111());
        getBinding().magicIndicator.setNavigator(getCommonNavigator());
        ViewPager2Helper viewPager2Helper = ViewPager2Helper.INSTANCE;
        MagicIndicator magicIndicator = getBinding().magicIndicator;
        Intrinsics.checkNotNullExpressionValue(magicIndicator, "binding.magicIndicator");
        ViewPager2 viewPager2 = getBinding().viewPager;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        viewPager2Helper.bind(magicIndicator, viewPager2);
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.DetailsActivity$initTab$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DetailsActivity.kt */
    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/DetailsActivity$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01111 extends CommonNavigatorAdapter {
        C01111() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(DetailsActivity.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 15.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final DetailsActivity detailsActivity = DetailsActivity.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.DetailsActivity$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DetailsActivity.C01111.m164getTitleView$lambda0(detailsActivity, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m164getTitleView$lambda0(DetailsActivity this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getBinding().viewPager.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return DetailsActivity.this.getMTitles().size();
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

    public final String getMIds() {
        return this.mIds;
    }

    public final void setMIds(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mIds = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("ids");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.mIds = stringExtra;
        notifyTab();
        initVideo();
        getVideoDetails();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        getCurPlay().onVideoPause();
        super.onStop();
        this.isPause = true;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        getCurPlay().onVideoResume(true);
        super.onResume();
        this.isPause = false;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EventBusUtil.INSTANCE.unregister(this);
        if (this.isPlay) {
            OrientationUtils orientationUtils = this.orientationUtils;
            if (orientationUtils != null) {
                orientationUtils.releaseListener();
            }
            getCurPlay().release();
        }
        if (getCurPlay() != null) {
            getCurPlay().release();
        }
    }

    @Subscribe
    public final void eventCommentNumber(EventCommentNumber item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (isDestroyed() || getBinding() == null) {
            return;
        }
        this.mTitles.clear();
        this.mTitles.add("详情");
        this.mTitles.add("评论(" + item.getSize() + ')');
        getCommonNavigator().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyCoomentTab(String size) {
        if (isDestroyed() || getBinding() == null) {
            return;
        }
        this.mTitles.clear();
        this.mTitles.add("详情");
        this.mTitles.add("评论(" + size + ')');
        getCommonNavigator().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GSYVideoPlayer getCurPlay() {
        if (getBinding().videoView.getFullWindowPlayer() != null) {
            GSYVideoPlayer fullWindowPlayer = getBinding().videoView.getFullWindowPlayer();
            Intrinsics.checkNotNullExpressionValue(fullWindowPlayer, "{\n            binding.vi…ullWindowPlayer\n        }");
            return fullWindowPlayer;
        }
        DetailsVideoView detailsVideoView = getBinding().videoView;
        Intrinsics.checkNotNullExpressionValue(detailsVideoView, "binding.videoView");
        return detailsVideoView;
    }

    public final void coundDown(int count, final Function0<Unit> block, final Function1<? super Integer, Unit> returntime) {
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(returntime, "returntime");
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = count;
        new Runnable() { // from class: com.mogu.tv.ui.DetailsActivity$coundDown$run$1
            @Override // java.lang.Runnable
            public void run() {
                intRef.element--;
                if (intRef.element <= 0) {
                    block.invoke();
                } else {
                    returntime.invoke(Integer.valueOf(intRef.element));
                    this.getBinding().jumpAd.postDelayed(this, 1000L);
                }
            }
        }.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void imageSetAd() {
        List<AllAdsModel.Item> cover;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (cover = adData.getCover()) == null) ? null : AllAdsModelKt.getRandomAd(cover);
        TextView textView = getBinding().jumpAd;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.jumpAd");
        AndroidutilsKt.setVisible(textView, true);
        TextView textView2 = getBinding().tvToget;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvToget");
        AndroidutilsKt.setVisible(textView2, true);
        ImageView imageView = getBinding().ivImageAd;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivImageAd");
        AndroidutilsKt.setVisible(imageView, true);
        coundDown(6, new Function0<Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.imageSetAd.1
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
                TextView textView3 = DetailsActivity.this.getBinding().jumpAd;
                Intrinsics.checkNotNullExpressionValue(textView3, "binding.jumpAd");
                AndroidutilsKt.setVisible(textView3, false);
                TextView textView4 = DetailsActivity.this.getBinding().tvToget;
                Intrinsics.checkNotNullExpressionValue(textView4, "binding.tvToget");
                AndroidutilsKt.setVisible(textView4, false);
                ImageView imageView2 = DetailsActivity.this.getBinding().ivImageAd;
                Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivImageAd");
                AndroidutilsKt.setVisible(imageView2, false);
                if (DetailsActivity.this.getBinding().videoView.isInPlayingState()) {
                    return;
                }
                DetailsActivity.this.getBinding().videoView.startPlayLogic();
            }
        }, new Function1<Integer, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.imageSetAd.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                DetailsActivity.this.getBinding().jumpAd.setText("跳过 " + i);
            }
        });
        TextView textView3 = getBinding().jumpAd;
        Intrinsics.checkNotNullExpressionValue(textView3, "binding.jumpAd");
        AndroidutilsKt.click(textView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.imageSetAd.3
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
                TextView textView4 = DetailsActivity.this.getBinding().jumpAd;
                Intrinsics.checkNotNullExpressionValue(textView4, "binding.jumpAd");
                AndroidutilsKt.setVisible(textView4, false);
                TextView textView5 = DetailsActivity.this.getBinding().tvToget;
                Intrinsics.checkNotNullExpressionValue(textView5, "binding.tvToget");
                AndroidutilsKt.setVisible(textView5, false);
                ImageView imageView2 = DetailsActivity.this.getBinding().ivImageAd;
                Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivImageAd");
                AndroidutilsKt.setVisible(imageView2, false);
                DetailsActivity.this.getBinding().videoView.startPlayLogic();
            }
        });
        ImageView imageView2 = getBinding().ivImageAd;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivImageAd");
        ImageUtilKt.withDefaultPhoto(imageView2, randomAd != null ? randomAd.getFile() : null, R.mipmap.icon_default_photo);
        ImageView imageView3 = getBinding().ivImageAd;
        Intrinsics.checkNotNullExpressionValue(imageView3, "binding.ivImageAd");
        AndroidutilsKt.click(imageView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.imageSetAd.4
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
                FragmentActivity mActivity = DetailsActivity.this.getMActivity();
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
        TextView textView4 = getBinding().tvToget;
        Intrinsics.checkNotNullExpressionValue(textView4, "binding.tvToget");
        AndroidutilsKt.click(textView4, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailsActivity.imageSetAd.5
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
                FragmentActivity mActivity = DetailsActivity.this.getMActivity();
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
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.DetailsActivity$getVideoDetails$1, reason: invalid class name */
    /* JADX INFO: compiled from: DetailsActivity.kt */
    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "code", "", NotificationCompat.CATEGORY_MESSAGE, "", "response", "Lcom/mogu/tv/model/VideoPlayDetails;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    static final class AnonymousClass1 extends Lambda implements Function3<Integer, String, VideoPlayDetails, Unit> {
        AnonymousClass1() {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoPlayDetails videoPlayDetails) {
            invoke(num.intValue(), str, videoPlayDetails);
            return Unit.INSTANCE;
        }

        public final void invoke(int i, String msg, VideoPlayDetails videoPlayDetails) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            if (i == 200 && videoPlayDetails != null) {
                PlayIdSaveUtils.INSTANCE.savePlayData(videoPlayDetails.getId(), videoPlayDetails.getPlay_url());
                DetailsActivity.this.setMVideoUrl(videoPlayDetails.getPlay_url());
                DetailsActivity.this.setMVideoTitle(videoPlayDetails.getTitle());
                DetailsActivity.this.notifyCoomentTab(videoPlayDetails.getComments());
                GSYVideoOptionBuilder gSYVideoOptionBuilder = DetailsActivity.this.gsyVideoOption;
                if (gSYVideoOptionBuilder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gsyVideoOption");
                    gSYVideoOptionBuilder = null;
                }
                gSYVideoOptionBuilder.setUrl(DetailsActivity.this.getMVideoUrl()).build((StandardGSYVideoPlayer) DetailsActivity.this.getBinding().videoView);
                DetailsActivity.this.imageSetAd();
                TextView textView = DetailsActivity.this.getBinding().jumpAd;
                final DetailsActivity detailsActivity = DetailsActivity.this;
                textView.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.DetailsActivity$getVideoDetails$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DetailsActivity.AnonymousClass1.m162invoke$lambda0(detailsActivity);
                    }
                }, 6000L);
                return;
            }
            AndroidutilsKt.toast(msg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m162invoke$lambda0(DetailsActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (this$0.isDestroyed()) {
                return;
            }
            this$0.recordPlay();
        }
    }

    private final void getVideoDetails() {
        ApiManager.INSTANCE.getVodDetials(this.mIds, new AnonymousClass1());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (!this.isPlay || this.isPause) {
            return;
        }
        getBinding().videoView.onConfigurationChanged(this, newConfig, this.orientationUtils, true, true);
    }

    private final void notifyTab() {
        this.mTitles.clear();
        getMFragments().clear();
        this.mTitles.add("详情");
        this.mTitles.add("评论");
        Bundle bundle = new Bundle();
        bundle.putString("id", this.mIds);
        VideoDetailsFragment videoDetailsFragment = new VideoDetailsFragment();
        VideoCommentFragment videoCommentFragment = new VideoCommentFragment();
        videoDetailsFragment.setArguments(bundle);
        videoCommentFragment.setArguments(bundle);
        getMFragments().add(videoDetailsFragment);
        getMFragments().add(videoCommentFragment);
        getCommonNavigator().notifyDataSetChanged();
        getMFragAdapter().notifyDataSetChanged();
    }
}
