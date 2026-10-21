package com.mogu.tv.ui.frag;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.amogu6.tv.R;
import com.github.like.LikeButton;
import com.github.like.OnLikeListener;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.luck.picture.lib.config.PictureConfig;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.MainActivity;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ItemShortvideoBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.ClearPositionEvent;
import com.mogu.tv.model.EventShowShortComment;
import com.mogu.tv.model.EventSwitchPage;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.ShortVideoList;
import com.mogu.tv.model.ShortVideoStar;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.SharePopDialog;
import com.mogu.tv.view.ShortVideoView;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoViewBridge;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.anko.ContextUtilsKt;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ShortVideoItemFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 62\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020*H\u0016J\b\u0010,\u001a\u00020*H\u0016J\u0010\u0010-\u001a\u00020*2\u0006\u0010.\u001a\u00020/H\u0007J\u0010\u00100\u001a\u00020*2\u0006\u0010.\u001a\u000201H\u0007J\b\u00102\u001a\u00020*H\u0016J\b\u00103\u001a\u00020*H\u0016J\b\u00104\u001a\u00020*H\u0016J\u0006\u00105\u001a\u00020*R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\tR\u001a\u0010\u001d\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0007\"\u0004\b\u001f\u0010\tR\u001a\u0010 \u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010\tR\u001a\u0010#\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0015\"\u0004\b%\u0010\u0017R\u001a\u0010&\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0007\"\u0004\b(\u0010\t¨\u00067"}, d2 = {"Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/ItemShortvideoBinding;", "()V", "comments", "", "getComments", "()Ljava/lang/String;", "setComments", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "favorites", "getFavorites", "setFavorites", "id", "getId", "setId", "isZan", "", "()I", "setZan", "(I)V", "mCurrentPosition", "", "name", "getName", "setName", "photo", "getPhoto", "setPhoto", "playUrl", "getPlayUrl", "setPlayUrl", PictureConfig.EXTRA_POSITION, "getPosition", "setPosition", "userId", "getUserId", "setUserId", "initData", "", "initView", "onDestroy", "onEventClearPosition", NotificationCompat.CATEGORY_EVENT, "Lcom/mogu/tv/model/ClearPositionEvent;", "onEventSwitchPage", "Lcom/mogu/tv/model/EventSwitchPage;", "onPause", "onResume", "onStop", "pause", "Companion", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortVideoItemFragment extends CommonBaseFragment<ItemShortvideoBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private int isZan;
    private long mCurrentPosition;
    private int position;
    private String playUrl = "";
    private String name = "";
    private String content = "";
    private String comments = "";
    private String favorites = "";
    private String photo = "";
    private String id = "";
    private String userId = "";

    @JvmStatic
    public static final ShortVideoItemFragment getNewInstance(int i, ShortVideoList.Data data) {
        return INSTANCE.getNewInstance(i, data);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
    }

    /* JADX INFO: compiled from: ShortVideoItemFragment.kt */
    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/mogu/tv/ui/frag/ShortVideoItemFragment$Companion;", "", "()V", "getNewInstance", "Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;", PictureConfig.EXTRA_POSITION, "", "item", "Lcom/mogu/tv/model/ShortVideoList$Data;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ShortVideoItemFragment getNewInstance(int position, ShortVideoList.Data item) {
            Intrinsics.checkNotNullParameter(item, "item");
            ShortVideoItemFragment shortVideoItemFragment = new ShortVideoItemFragment();
            String name = item.getUser() != null ? item.getUser().getName() : "蘑菇用户";
            Pair[] pairArr = new Pair[9];
            ShortVideoList.User user = item.getUser();
            pairArr[0] = TuplesKt.to("photo", user != null ? user.getAvatar() : null);
            pairArr[1] = TuplesKt.to(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, item.getPlay_url());
            pairArr[2] = TuplesKt.to("id", item.getId());
            pairArr[3] = TuplesKt.to("name", name);
            pairArr[4] = TuplesKt.to("content", item.getTitle());
            pairArr[5] = TuplesKt.to("favorites", item.getFavorites());
            pairArr[6] = TuplesKt.to("comments", item.getComments());
            pairArr[7] = TuplesKt.to(PictureConfig.EXTRA_POSITION, Integer.valueOf(position));
            ShortVideoList.User user2 = item.getUser();
            pairArr[8] = TuplesKt.to("userid", user2 != null ? user2.getId() : null);
            shortVideoItemFragment.setArguments(ContextUtilsKt.bundleOf(pairArr));
            return shortVideoItemFragment;
        }
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

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    /* JADX INFO: renamed from: isZan, reason: from getter */
    public final int getIsZan() {
        return this.isZan;
    }

    public final void setZan(int i) {
        this.isZan = i;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        LikeButton likeButton;
        ShortVideoView shortVideoView;
        ImageView imageView;
        LinearLayout linearLayout;
        ImageView imageView2;
        ImageView imageView3;
        List<AllAdsModel.Item> shortvideoimg;
        ShortVideoView shortVideoView2;
        ImageView imageView4;
        EventBusUtil.INSTANCE.register(this);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL) : null;
        if (string == null) {
            string = "";
        }
        this.playUrl = string;
        Bundle arguments2 = getArguments();
        this.position = arguments2 != null ? arguments2.getInt(PictureConfig.EXTRA_POSITION) : 0;
        Bundle arguments3 = getArguments();
        String string2 = arguments3 != null ? arguments3.getString("name") : null;
        if (string2 == null) {
            string2 = "";
        }
        this.name = string2;
        Bundle arguments4 = getArguments();
        String string3 = arguments4 != null ? arguments4.getString("userid") : null;
        if (string3 == null) {
            string3 = "";
        }
        this.userId = string3;
        Bundle arguments5 = getArguments();
        String string4 = arguments5 != null ? arguments5.getString("photo") : null;
        if (string4 == null) {
            string4 = "";
        }
        this.photo = string4;
        Bundle arguments6 = getArguments();
        String string5 = arguments6 != null ? arguments6.getString("content") : null;
        if (string5 == null) {
            string5 = "";
        }
        this.content = string5;
        Bundle arguments7 = getArguments();
        String string6 = arguments7 != null ? arguments7.getString("comments") : null;
        if (string6 == null) {
            string6 = "";
        }
        this.comments = string6;
        Bundle arguments8 = getArguments();
        String string7 = arguments8 != null ? arguments8.getString("favorites") : null;
        if (string7 == null) {
            string7 = "";
        }
        this.favorites = string7;
        Bundle arguments9 = getArguments();
        String string8 = arguments9 != null ? arguments9.getString("id") : null;
        this.id = string8 != null ? string8 : "";
        int i = this.position;
        if (i > 0 && i % 5 == 0) {
            ItemShortvideoBinding binding = getBinding();
            if (binding != null && (imageView4 = binding.adImg) != null) {
                AndroidutilsKt.setVisible(imageView4, true);
            }
            ItemShortvideoBinding binding2 = getBinding();
            if (binding2 != null && (shortVideoView2 = binding2.videoPlayer) != null) {
                AndroidutilsKt.setVisible(shortVideoView2, false);
            }
            AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
            final AllAdsModel.Item randomAd = (adData == null || (shortvideoimg = adData.getShortvideoimg()) == null) ? null : AllAdsModelKt.getRandomAd(shortvideoimg);
            ItemShortvideoBinding binding3 = getBinding();
            if (binding3 != null && (imageView3 = binding3.adImg) != null) {
                ImageUtilKt.with(imageView3, randomAd != null ? randomAd.getFile() : null);
            }
            ItemShortvideoBinding binding4 = getBinding();
            if (binding4 != null && (imageView2 = binding4.adImg) != null) {
                AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment.initView.1
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
                        FragmentActivity fragmentActivityRequireActivity = ShortVideoItemFragment.this.requireActivity();
                        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
                        FragmentActivity fragmentActivity = fragmentActivityRequireActivity;
                        AllAdsModel.Item item = randomAd;
                        if (item == null || (action = item.getAction()) == null) {
                            action = "";
                        }
                        arouterUtils.toUrlPraseJump(fragmentActivity, action);
                        ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                        AllAdsModel.Item item2 = randomAd;
                        arouterUtils2.clickAd(String.valueOf(item2 != null ? Integer.valueOf(item2.getId()) : null));
                    }
                });
            }
            ItemShortvideoBinding binding5 = getBinding();
            if (binding5 == null || (linearLayout = binding5.llRight) == null) {
                return;
            }
            AndroidutilsKt.setVisible(linearLayout, false);
            return;
        }
        ItemShortvideoBinding binding6 = getBinding();
        if (binding6 != null && (imageView = binding6.adImg) != null) {
            AndroidutilsKt.setVisible(imageView, false);
        }
        ItemShortvideoBinding binding7 = getBinding();
        if (binding7 != null && (shortVideoView = binding7.videoPlayer) != null) {
            AndroidutilsKt.setVisible(shortVideoView, true);
        }
        ItemShortvideoBinding binding8 = getBinding();
        if (binding8 != null && (likeButton = binding8.likeBtn) != null) {
            likeButton.setOnLikeListener(new OnLikeListener() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment.initView.2
                @Override // com.github.like.OnLikeListener
                public void liked(LikeButton likeButton2) {
                    CommonBaseFragment.showLoadingDialog$default(ShortVideoItemFragment.this, false, null, 3, null);
                    ApiManager apiManager = ApiManager.INSTANCE;
                    String id = ShortVideoItemFragment.this.getId();
                    final ShortVideoItemFragment shortVideoItemFragment = ShortVideoItemFragment.this;
                    apiManager.vLogStar(id, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment$initView$2$liked$1
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                            invoke(num.intValue(), str, justReturnMsg);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i2, String msg, JustReturnMsg justReturnMsg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            shortVideoItemFragment.dissmissLoading();
                            if (i2 == 200) {
                                EventBusUtil.INSTANCE.post(new ShortVideoStar());
                                shortVideoItemFragment.setZan(1);
                                ItemShortvideoBinding binding9 = shortVideoItemFragment.getBinding();
                                TextView textView = binding9 != null ? binding9.tvPrase : null;
                                if (textView == null) {
                                    return;
                                }
                                textView.setText(String.valueOf(Integer.parseInt(shortVideoItemFragment.getFavorites()) + 1));
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
                public void unLiked(LikeButton likeButton2) {
                    CommonBaseFragment.showLoadingDialog$default(ShortVideoItemFragment.this, false, null, 3, null);
                    ApiManager apiManager = ApiManager.INSTANCE;
                    String id = ShortVideoItemFragment.this.getId();
                    final ShortVideoItemFragment shortVideoItemFragment = ShortVideoItemFragment.this;
                    apiManager.vLogDelete(id, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment$initView$2$unLiked$1
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                            invoke(num.intValue(), str, justReturnMsg);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i2, String msg, JustReturnMsg justReturnMsg) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            shortVideoItemFragment.dissmissLoading();
                            if (i2 == 200) {
                                shortVideoItemFragment.setZan(0);
                                EventBusUtil.INSTANCE.post(new ShortVideoStar());
                                ItemShortvideoBinding binding9 = shortVideoItemFragment.getBinding();
                                TextView textView = binding9 != null ? binding9.tvPrase : null;
                                if (textView == null) {
                                    return;
                                }
                                textView.setText(String.valueOf(Integer.parseInt(shortVideoItemFragment.getFavorites())));
                            }
                        }
                    });
                }
            });
        }
        ItemShortvideoBinding binding9 = getBinding();
        if (binding9 != null) {
            binding9.tvUserName.setText('@' + this.name);
            binding9.tvContent.setText(this.content);
            LinearLayout llRight = binding9.llRight;
            Intrinsics.checkNotNullExpressionValue(llRight, "llRight");
            AndroidutilsKt.setVisible(llRight, true);
            binding9.tvComment.setText(this.comments);
            LinearLayout llComment = binding9.llComment;
            Intrinsics.checkNotNullExpressionValue(llComment, "llComment");
            AndroidutilsKt.click(llComment, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment$initView$3$1
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
                    EventBusUtil.INSTANCE.post(new EventShowShortComment(this.this$0.getId()));
                }
            });
            binding9.tvPrase.setText(this.favorites);
            View viewShare = binding9.viewShare;
            Intrinsics.checkNotNullExpressionValue(viewShare, "viewShare");
            AndroidutilsKt.click(viewShare, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment$initView$3$2
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
                    new SharePopDialog(this.this$0.requireActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
                }
            });
            RoundedImageView ivPhoto = binding9.ivPhoto;
            Intrinsics.checkNotNullExpressionValue(ivPhoto, "ivPhoto");
            ImageUtilKt.withDefaltUserPhoto(ivPhoto, this.photo);
            RoundedImageView ivPhoto2 = binding9.ivPhoto;
            Intrinsics.checkNotNullExpressionValue(ivPhoto2, "ivPhoto");
            AndroidutilsKt.click(ivPhoto2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoItemFragment$initView$3$3
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
                    ArouterUtils.INSTANCE.toUserDetails(this.this$0.getUserId());
                }
            });
            binding9.videoPlayer.setPlayTag("MultiVideo" + this.id);
            binding9.videoPlayer.setPlayPosition(Integer.parseInt(this.id));
            ShortVideoView shortVideoView3 = binding9.videoPlayer;
            shortVideoView3.getBackButton().setVisibility(8);
            shortVideoView3.getTitleTextView().setVisibility(8);
            shortVideoView3.getFullscreenButton().setVisibility(8);
            shortVideoView3.setNeedShowWifiTip(false);
            shortVideoView3.setLooping(true);
            shortVideoView3.setDismissControlTime(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS);
            binding9.videoPlayer.setUpLazy(this.playUrl, true, null, null, "");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventClearPosition(ClearPositionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getIsClear()) {
            this.mCurrentPosition = 0L;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventSwitchPage(EventSwitchPage event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getPage() != 1) {
            pause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ItemShortvideoBinding binding = getBinding();
        if (binding == null || MainActivity.INSTANCE.getCurMainPage() != 1) {
            return;
        }
        if (this.mCurrentPosition > 0 && MainActivity.INSTANCE.getCurMainPage() == 1) {
            binding.videoPlayer.onVideoResume(false);
        } else {
            binding.videoPlayer.startPlayLogic();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusUtil.INSTANCE.unregister(this);
    }

    public final void pause() {
        ItemShortvideoBinding binding = getBinding();
        if (binding != null) {
            binding.videoPlayer.onVideoPause();
            GSYVideoViewBridge gSYVideoManager = binding.videoPlayer.getGSYVideoManager();
            this.mCurrentPosition = gSYVideoManager != null ? gSYVideoManager.getCurrentPosition() : 0L;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        pause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }
}
