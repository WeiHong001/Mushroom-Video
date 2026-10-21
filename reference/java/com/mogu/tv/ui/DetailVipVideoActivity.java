package com.mogu.tv.ui;

import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.StatusBarUtil;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActVipdetailsBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.ClearPositionEvent;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.UserModel;
import com.mogu.tv.model.VipVideoList;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.DetailsVideoView;
import com.mogu.tv.view.SharePopDialog;
import com.shuyu.gsyvideoplayer.GSYVideoManager;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack;
import com.shuyu.gsyvideoplayer.listener.LockClickListener;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: compiled from: DetailVipVideoActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 22\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0005¢\u0006\u0002\u0010\u0003J?\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u001d2!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00190\u001fJ\b\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\u0019H\u0003J\b\u0010&\u001a\u00020\u0019H\u0002J\b\u0010'\u001a\u00020\u0019H\u0016J\b\u0010(\u001a\u00020\u0019H\u0002J\b\u0010)\u001a\u00020\u0019H\u0016J\b\u0010*\u001a\u00020\u0019H\u0016J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020\u0019H\u0014J\b\u0010/\u001a\u00020\u0019H\u0014J\b\u00100\u001a\u00020\u0019H\u0014J\b\u00101\u001a\u00020\u0019H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u00063"}, d2 = {"Lcom/mogu/tv/ui/DetailVipVideoActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActVipdetailsBinding;", "()V", "gsyVideoOption", "Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;", "isPause", "", "isPlay", "mVideoTitle", "", "getMVideoTitle", "()Ljava/lang/String;", "setMVideoTitle", "(Ljava/lang/String;)V", "mVideoUrl", "getMVideoUrl", "setMVideoUrl", "orientationUtils", "Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;", "getOrientationUtils", "()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;", "setOrientationUtils", "(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)V", "coundDown", "", "count", "", "block", "Lkotlin/Function0;", "returntime", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "time", "getCurPlay", "Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;", "getVideoDetails", "imageSetAd", "initData", "initVideo", "initView", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onDestroy", "onResume", "onStop", "refreshUserInfo", "Companion", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DetailVipVideoActivity extends CommonBaseActivity<ActVipdetailsBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static VipVideoList.Data vipData;
    private GSYVideoOptionBuilder gsyVideoOption;
    private boolean isPause;
    private boolean isPlay;
    private OrientationUtils orientationUtils;
    private String mVideoUrl = "";
    private String mVideoTitle = "";

    /* JADX INFO: compiled from: DetailVipVideoActivity.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mogu/tv/ui/DetailVipVideoActivity$Companion;", "", "()V", "vipData", "Lcom/mogu/tv/model/VipVideoList$Data;", "getVipData", "()Lcom/mogu/tv/model/VipVideoList$Data;", "setVipData", "(Lcom/mogu/tv/model/VipVideoList$Data;)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final VipVideoList.Data getVipData() {
            return DetailVipVideoActivity.vipData;
        }

        public final void setVipData(VipVideoList.Data data) {
            DetailVipVideoActivity.vipData = data;
        }
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        EventBus.getDefault().post(new ClearPositionEvent(true));
        try {
            StatusBarUtil.setPadding(this, getBinding().llHead);
            StatusBarUtil.immersive(this, ContextCompat.getColor(getMActivity(), R.color.mian_bg_color));
        } catch (Exception unused) {
        }
        refreshUserInfo();
        ImageView imageView = getBinding().ivInvite;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivInvite");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.initView.1
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
                new SharePopDialog(DetailVipVideoActivity.this.getMActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
            }
        });
    }

    private final void refreshUserInfo() {
        if (UserManager.INSTANCE.isLogin()) {
            ApiManager.INSTANCE.getUserInfo(new Function3<Integer, String, UserModel, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.refreshUserInfo.1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserModel userModel) {
                    invoke(num.intValue(), str, userModel);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, UserModel userModel) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (i != 200 || userModel == null) {
                        if (i == 403) {
                            ToastUtil.INSTANCE.toast("账号已过期,请重新登录");
                            DetailVipVideoActivity.this.onBackPressed();
                            UserManager.INSTANCE.clearUserInfo();
                            return;
                        }
                        return;
                    }
                    UserManager.INSTANCE.saveUserInfo(userModel);
                    DetailVipVideoActivity.this.getBinding().tvJifen.setText("剩余积分:" + UserManager.INSTANCE.getJifen());
                }
            });
        }
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
        gSYVideoOptionBuilder.setOverrideExtension("m3u8").setRotateViewAuto(false).setNeedLockFull(true).setAutoFullWithSize(true).setUrl(this.mVideoUrl).setCacheWithPlay(true).setShrinkImageRes(R.mipmap.video_shrink).setEnlargeImageRes(R.mipmap.video_enlarge).setShowFullAnimation(false).setVideoAllCallBack(new GSYSampleCallBack() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.initVideo.1
            @Override // com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack, com.shuyu.gsyvideoplayer.listener.VideoAllCallBack
            public void onPrepared(String url, Object... objects) {
                Intrinsics.checkNotNullParameter(objects, "objects");
                super.onPrepared(url, Arrays.copyOf(objects, objects.length));
                OrientationUtils orientationUtils2 = DetailVipVideoActivity.this.getOrientationUtils();
                if (orientationUtils2 != null) {
                    orientationUtils2.setEnable(true);
                }
                DetailVipVideoActivity.this.isPlay = true;
            }

            @Override // com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack, com.shuyu.gsyvideoplayer.listener.VideoAllCallBack
            public void onEnterFullscreen(String url, Object... objects) {
                Intrinsics.checkNotNullParameter(objects, "objects");
                super.onEnterFullscreen(url, Arrays.copyOf(objects, objects.length));
                View viewFindViewById = DetailVipVideoActivity.this.getCurPlay().findViewById(R.id.tv_kuaijin);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById, "getCurPlay().findViewByI…extView>(R.id.tv_kuaijin)");
                final DetailVipVideoActivity detailVipVideoActivity = DetailVipVideoActivity.this;
                AndroidutilsKt.click(viewFindViewById, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity$initVideo$1$onEnterFullscreen$1
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
                        detailVipVideoActivity.getCurPlay().seekTo(detailVipVideoActivity.getCurPlay().getCurrentPositionWhenPlaying() + ((long) 10000));
                    }
                });
                View viewFindViewById2 = DetailVipVideoActivity.this.getCurPlay().findViewById(R.id.tv_kuaitui);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "getCurPlay().findViewByI…extView>(R.id.tv_kuaitui)");
                final DetailVipVideoActivity detailVipVideoActivity2 = DetailVipVideoActivity.this;
                AndroidutilsKt.click(viewFindViewById2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity$initVideo$1$onEnterFullscreen$2
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
                        if (detailVipVideoActivity2.getCurPlay().getCurrentPositionWhenPlaying() < 10000) {
                            return;
                        }
                        detailVipVideoActivity2.getCurPlay().seekTo(detailVipVideoActivity2.getCurPlay().getCurrentPositionWhenPlaying() - ((long) 10000));
                    }
                });
                View viewFindViewById3 = DetailVipVideoActivity.this.getCurPlay().findViewById(R.id.tv_kuaijin);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "getCurPlay().findViewByI…extView>(R.id.tv_kuaijin)");
                AndroidutilsKt.setVisible(viewFindViewById3, true);
                View viewFindViewById4 = DetailVipVideoActivity.this.getCurPlay().findViewById(R.id.tv_kuaitui);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "getCurPlay().findViewByI…extView>(R.id.tv_kuaitui)");
                AndroidutilsKt.setVisible(viewFindViewById4, true);
            }

            @Override // com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack, com.shuyu.gsyvideoplayer.listener.VideoAllCallBack
            public void onQuitFullscreen(String url, Object... objects) {
                Intrinsics.checkNotNullParameter(objects, "objects");
                super.onQuitFullscreen(url, Arrays.copyOf(objects, objects.length));
                TextView textView = DetailVipVideoActivity.this.getBinding().videoView.tv_kuaijin;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.videoView.tv_kuaijin");
                AndroidutilsKt.setVisible(textView, false);
                TextView textView2 = DetailVipVideoActivity.this.getBinding().videoView.tv_kuaitui;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.videoView.tv_kuaitui");
                AndroidutilsKt.setVisible(textView2, false);
                OrientationUtils orientationUtils2 = DetailVipVideoActivity.this.getOrientationUtils();
                if (orientationUtils2 != null) {
                    orientationUtils2.backToProtVideo();
                }
            }
        }).setLockClickListener(new LockClickListener() { // from class: com.mogu.tv.ui.DetailVipVideoActivity$$ExternalSyntheticLambda0
            @Override // com.shuyu.gsyvideoplayer.listener.LockClickListener
            public final void onClick(View view, boolean z) {
                DetailVipVideoActivity.m158initVideo$lambda0(this.f$0, view, z);
            }
        }).build((StandardGSYVideoPlayer) getBinding().videoView);
        ImageView fullscreenButton = getBinding().videoView.getFullscreenButton();
        Intrinsics.checkNotNullExpressionValue(fullscreenButton, "binding.videoView.fullscreenButton");
        AndroidutilsKt.click(fullscreenButton, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.initVideo.3
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
                OrientationUtils orientationUtils2 = DetailVipVideoActivity.this.getOrientationUtils();
                if (orientationUtils2 != null) {
                    orientationUtils2.resolveByClick();
                }
                DetailVipVideoActivity.this.getBinding().videoView.startWindowFullscreen(DetailVipVideoActivity.this, true, true);
            }
        });
        ImageView backButton = getBinding().videoView.getBackButton();
        Intrinsics.checkNotNullExpressionValue(backButton, "binding.videoView.backButton");
        AndroidutilsKt.click(backButton, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.initVideo.4
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
                DetailVipVideoActivity.this.onBackPressed();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initVideo$lambda-0, reason: not valid java name */
    public static final void m158initVideo$lambda0(DetailVipVideoActivity this$0, View view, boolean z) {
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

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
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
        new Runnable() { // from class: com.mogu.tv.ui.DetailVipVideoActivity$coundDown$run$1
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

    private final void imageSetAd() {
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
        coundDown(6, new Function0<Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.imageSetAd.1
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
                TextView textView3 = DetailVipVideoActivity.this.getBinding().jumpAd;
                Intrinsics.checkNotNullExpressionValue(textView3, "binding.jumpAd");
                AndroidutilsKt.setVisible(textView3, false);
                TextView textView4 = DetailVipVideoActivity.this.getBinding().tvToget;
                Intrinsics.checkNotNullExpressionValue(textView4, "binding.tvToget");
                AndroidutilsKt.setVisible(textView4, false);
                ImageView imageView2 = DetailVipVideoActivity.this.getBinding().ivImageAd;
                Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivImageAd");
                AndroidutilsKt.setVisible(imageView2, false);
                if (DetailVipVideoActivity.this.getBinding().videoView.isInPlayingState()) {
                    return;
                }
                DetailVipVideoActivity.this.getBinding().videoView.startPlayLogic();
            }
        }, new Function1<Integer, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.imageSetAd.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                DetailVipVideoActivity.this.getBinding().jumpAd.setText("跳过 " + i);
            }
        });
        TextView textView3 = getBinding().jumpAd;
        Intrinsics.checkNotNullExpressionValue(textView3, "binding.jumpAd");
        AndroidutilsKt.click(textView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.imageSetAd.3
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
                TextView textView4 = DetailVipVideoActivity.this.getBinding().jumpAd;
                Intrinsics.checkNotNullExpressionValue(textView4, "binding.jumpAd");
                AndroidutilsKt.setVisible(textView4, false);
                TextView textView5 = DetailVipVideoActivity.this.getBinding().tvToget;
                Intrinsics.checkNotNullExpressionValue(textView5, "binding.tvToget");
                AndroidutilsKt.setVisible(textView5, false);
                ImageView imageView2 = DetailVipVideoActivity.this.getBinding().ivImageAd;
                Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivImageAd");
                AndroidutilsKt.setVisible(imageView2, false);
                DetailVipVideoActivity.this.getBinding().videoView.startPlayLogic();
            }
        });
        ImageView imageView2 = getBinding().ivImageAd;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivImageAd");
        ImageUtilKt.withDefaultPhoto(imageView2, randomAd != null ? randomAd.getFile() : null, R.mipmap.icon_default_photo);
        ImageView imageView3 = getBinding().ivImageAd;
        Intrinsics.checkNotNullExpressionValue(imageView3, "binding.ivImageAd");
        AndroidutilsKt.click(imageView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.imageSetAd.4
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
                FragmentActivity mActivity = DetailVipVideoActivity.this.getMActivity();
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
        AndroidutilsKt.click(textView4, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.imageSetAd.5
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
                FragmentActivity mActivity = DetailVipVideoActivity.this.getMActivity();
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

    private final void getVideoDetails() {
        List<AllAdsModel.Item> chatu;
        VipVideoList.Data data;
        String play_url;
        String play_url2;
        VipVideoList.Data data2 = vipData;
        if (data2 != null) {
            data2.setPlay_url(String.valueOf((data2 == null || (play_url2 = data2.getPlay_url()) == null) ? null : StringsKt.replace$default(play_url2, "vlog", "vod", false, 4, (Object) null)));
        }
        VipVideoList.Data data3 = vipData;
        Boolean boolValueOf = (data3 == null || (play_url = data3.getPlay_url()) == null) ? null : Boolean.valueOf(StringsKt.contains$default((CharSequence) play_url, (CharSequence) "m3u8", false, 2, (Object) null));
        Intrinsics.checkNotNull(boolValueOf);
        if (!boolValueOf.booleanValue() && (data = vipData) != null) {
            data.setPlay_url(data.getPlay_url() + ".m3u8");
        }
        VipVideoList.Data data4 = vipData;
        this.mVideoUrl = data4 != null ? data4.getPlay_url() : null;
        VipVideoList.Data data5 = vipData;
        this.mVideoTitle = data5 != null ? data5.getTitle() : null;
        GSYVideoOptionBuilder gSYVideoOptionBuilder = this.gsyVideoOption;
        if (gSYVideoOptionBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gsyVideoOption");
            gSYVideoOptionBuilder = null;
        }
        gSYVideoOptionBuilder.setUrl(this.mVideoUrl).build((StandardGSYVideoPlayer) getBinding().videoView);
        TextView textView = getBinding().tvIntroduce;
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.teststart));
        VipVideoList.Data data6 = vipData;
        sb.append(data6 != null ? data6.getIntroduce() : null);
        textView.setText(sb.toString());
        TextView textView2 = getBinding().tvTitle;
        VipVideoList.Data data7 = vipData;
        textView2.setText(data7 != null ? data7.getTitle() : null);
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (chatu = adData.getChatu()) == null) ? null : AllAdsModelKt.getRandomAd(chatu);
        String file = randomAd != null ? randomAd.getFile() : null;
        if (file == null || file.length() == 0) {
            ImageView imageView = getBinding().ivMainAd;
            Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivMainAd");
            AndroidutilsKt.setVisible(imageView, false);
        }
        ImageView imageView2 = getBinding().ivMainAd;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivMainAd");
        AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.DetailVipVideoActivity.getVideoDetails.1
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
                FragmentActivity mActivity = DetailVipVideoActivity.this.getMActivity();
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
        Intrinsics.checkNotNullExpressionValue(imageView3, "binding.ivMainAd");
        ImageUtilKt.with(imageView3, randomAd != null ? randomAd.getFile() : null);
        VipVideoList.Data data8 = vipData;
        if (data8 != null) {
            if (data8.getTj_index() <= 5) {
                int tj_index = data8.getTj_index();
                for (int i = 0; i < tj_index; i++) {
                    View childAt = getBinding().llRecommend.getChildAt(i);
                    Intrinsics.checkNotNullExpressionValue(childAt, "binding.llRecommend.getChildAt(i)");
                    AndroidutilsKt.setVisible(childAt, true);
                }
            }
            if (data8.getDz_index() <= 5) {
                int dz_index = data8.getDz_index();
                for (int i2 = 0; i2 < dz_index; i2++) {
                    View childAt2 = getBinding().llDzlayout.getChildAt(i2);
                    Intrinsics.checkNotNullExpressionValue(childAt2, "binding.llDzlayout.getChildAt(i)");
                    AndroidutilsKt.setVisible(childAt2, true);
                }
            }
            if (data8.getYz_index() <= 5) {
                int yz_index = data8.getYz_index();
                for (int i3 = 0; i3 < yz_index; i3++) {
                    View childAt3 = getBinding().llYzLayout.getChildAt(i3);
                    Intrinsics.checkNotNullExpressionValue(childAt3, "binding.llYzLayout.getChildAt(i)");
                    AndroidutilsKt.setVisible(childAt3, true);
                }
            }
            if (data8.getJq_index() <= 5) {
                int jq_index = data8.getJq_index();
                for (int i4 = 0; i4 < jq_index; i4++) {
                    View childAt4 = getBinding().llJuqing.getChildAt(i4);
                    Intrinsics.checkNotNullExpressionValue(childAt4, "binding.llJuqing.getChildAt(i)");
                    AndroidutilsKt.setVisible(childAt4, true);
                }
            }
        }
        imageSetAd();
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
}
