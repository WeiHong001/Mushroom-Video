package com.mogu.tv.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amogu6.tv.R;
import com.github.like.LikeButton;
import com.github.like.OnLikeListener;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActShortdetailsBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.ShortVideoStar;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.SharePopDialog;
import com.mogu.tv.view.ShortVideoView;
import java.io.File;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShortDetailsActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010$\u001a\u00020\"H\u0014J\b\u0010%\u001a\u00020\"H\u0014J\b\u0010&\u001a\u00020\"H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\tR\u001a\u0010\u001e\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0007\"\u0004\b \u0010\t¨\u0006'"}, d2 = {"Lcom/mogu/tv/ui/activity/ShortDetailsActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActShortdetailsBinding;", "()V", "comments", "", "getComments", "()Ljava/lang/String;", "setComments", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "favorites", "getFavorites", "setFavorites", "id", "getId", "setId", "isZan", "", "()I", "setZan", "(I)V", "name", "getName", "setName", "photo", "getPhoto", "setPhoto", "playUrl", "getPlayUrl", "setPlayUrl", "initData", "", "initView", "onDestroy", "onResume", "onStop", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortDetailsActivity extends CommonBaseActivity<ActShortdetailsBinding> {
    private int isZan;
    private String playUrl = "";
    private String name = "";
    private String content = "";
    private String comments = "";
    private String favorites = "";
    private String photo = "";
    private String id = "";

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
    }

    public final String getPlayUrl() {
        return this.playUrl;
    }

    public final void setPlayUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.playUrl = str;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final String getContent() {
        return this.content;
    }

    public final void setContent(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final String getComments() {
        return this.comments;
    }

    public final void setComments(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.comments = str;
    }

    public final String getFavorites() {
        return this.favorites;
    }

    public final void setFavorites(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.favorites = str;
    }

    public final String getPhoto() {
        return this.photo;
    }

    public final void setPhoto(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.photo = str;
    }

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    /* JADX INFO: renamed from: isZan, reason: from getter */
    public final int getIsZan() {
        return this.isZan;
    }

    public final void setZan(int i) {
        this.isZan = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        fullScreen();
        ImageView imageView = getBinding().ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ShortDetailsActivity.initView.1
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
                ShortDetailsActivity.this.onBackPressed();
            }
        });
        String stringExtra = getIntent().getStringExtra("playUrl");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.playUrl = stringExtra;
        Intent intent = getIntent();
        this.isZan = intent != null ? intent.getIntExtra("isZan", 0) : 0;
        Intent intent2 = getIntent();
        String stringExtra2 = intent2 != null ? intent2.getStringExtra("name") : null;
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        this.name = stringExtra2;
        Intent intent3 = getIntent();
        String stringExtra3 = intent3 != null ? intent3.getStringExtra("photo") : null;
        if (stringExtra3 == null) {
            stringExtra3 = "";
        }
        this.photo = stringExtra3;
        Intent intent4 = getIntent();
        String stringExtra4 = intent4 != null ? intent4.getStringExtra("content") : null;
        if (stringExtra4 == null) {
            stringExtra4 = "";
        }
        this.content = stringExtra4;
        Intent intent5 = getIntent();
        String stringExtra5 = intent5 != null ? intent5.getStringExtra("comments") : null;
        if (stringExtra5 == null) {
            stringExtra5 = "";
        }
        this.comments = stringExtra5;
        Intent intent6 = getIntent();
        String stringExtra6 = intent6 != null ? intent6.getStringExtra("favorites") : null;
        if (stringExtra6 == null) {
            stringExtra6 = "";
        }
        this.favorites = stringExtra6;
        Intent intent7 = getIntent();
        String stringExtra7 = intent7 != null ? intent7.getStringExtra("id") : null;
        this.id = stringExtra7 != null ? stringExtra7 : "";
        ShortVideoView shortVideoView = getBinding().videoPlayer;
        Intrinsics.checkNotNullExpressionValue(shortVideoView, "binding.videoPlayer");
        AndroidutilsKt.setVisible(shortVideoView, true);
        getBinding().likeBtn.setLiked(Boolean.valueOf(this.isZan == 1));
        getBinding().likeBtn.setOnLikeListener(new OnLikeListener() { // from class: com.mogu.tv.ui.activity.ShortDetailsActivity.initView.2
            @Override // com.github.like.OnLikeListener
            public void liked(LikeButton likeButton) {
                CommonBaseActivity.showLoadingDialog$default(ShortDetailsActivity.this, false, null, 3, null);
                ApiManager apiManager = ApiManager.INSTANCE;
                String id = ShortDetailsActivity.this.getId();
                final ShortDetailsActivity shortDetailsActivity = ShortDetailsActivity.this;
                apiManager.vLogStar(id, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.ShortDetailsActivity$initView$2$liked$1
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
                        shortDetailsActivity.dissmissLoading();
                        if (i == 200) {
                            shortDetailsActivity.setZan(1);
                            EventBusUtil.INSTANCE.post(new ShortVideoStar());
                            shortDetailsActivity.getBinding().tvPrase.setText(String.valueOf(Integer.parseInt(shortDetailsActivity.getFavorites()) + 1));
                        }
                    }
                });
            }

            @Override // com.github.like.OnLikeListener
            public boolean firstdo() {
                if (UserManager.INSTANCE.isLogin()) {
                    return true;
                }
                ArouterUtils.INSTANCE.toLoginActivity();
                return false;
            }

            @Override // com.github.like.OnLikeListener
            public void unLiked(LikeButton likeButton) {
                CommonBaseActivity.showLoadingDialog$default(ShortDetailsActivity.this, false, null, 3, null);
                ApiManager apiManager = ApiManager.INSTANCE;
                String id = ShortDetailsActivity.this.getId();
                final ShortDetailsActivity shortDetailsActivity = ShortDetailsActivity.this;
                apiManager.vLogDelete(id, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.ShortDetailsActivity$initView$2$unLiked$1
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
                        shortDetailsActivity.dissmissLoading();
                        if (i == 200) {
                            shortDetailsActivity.setZan(0);
                            EventBusUtil.INSTANCE.post(new ShortVideoStar());
                            shortDetailsActivity.getBinding().tvPrase.setText(String.valueOf(Integer.parseInt(shortDetailsActivity.getFavorites())));
                        }
                    }
                });
            }
        });
        ActShortdetailsBinding binding = getBinding();
        binding.tvUserName.setText('@' + this.name);
        binding.tvContent.setText(this.content);
        LinearLayout llRight = binding.llRight;
        Intrinsics.checkNotNullExpressionValue(llRight, "llRight");
        AndroidutilsKt.setVisible(llRight, true);
        binding.tvPrase.setText(this.favorites);
        View viewShare = binding.viewShare;
        Intrinsics.checkNotNullExpressionValue(viewShare, "viewShare");
        AndroidutilsKt.click(viewShare, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.ShortDetailsActivity$initView$3$1
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
        RoundedImageView ivPhoto = binding.ivPhoto;
        Intrinsics.checkNotNullExpressionValue(ivPhoto, "ivPhoto");
        ImageUtilKt.withDefaltUserPhoto(ivPhoto, this.photo);
        binding.videoPlayer.setPlayTag("MultiVideo" + this.id);
        binding.videoPlayer.setPlayPosition(Integer.parseInt(this.id));
        ShortVideoView shortVideoView2 = binding.videoPlayer;
        shortVideoView2.getBackButton().setVisibility(8);
        shortVideoView2.getTitleTextView().setVisibility(8);
        shortVideoView2.getFullscreenButton().setVisibility(8);
        shortVideoView2.setNeedShowWifiTip(false);
        shortVideoView2.setLooping(true);
        shortVideoView2.setDismissControlTime(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS);
        binding.videoPlayer.setUp(this.playUrl, true, (File) null, (Map<String, String>) null, "");
        binding.videoPlayer.startPlayLogic();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getBinding().videoPlayer.onVideoResume(true);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        getBinding().videoPlayer.release();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        getBinding().videoPlayer.onVideoPause();
    }
}
