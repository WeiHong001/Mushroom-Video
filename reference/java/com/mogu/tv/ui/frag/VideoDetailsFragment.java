package com.mogu.tv.ui.frag;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.flexbox.FlexboxLayout;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.DateUtil;
import com.kotlin.basiclib.utils.ToastUtil;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.VideoListsAdapter;
import com.mogu.tv.adapter.VideoUserAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragDetailsBinding;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.model.VideoPlayDetails;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.SharePopDialog;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoDetailsFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\"H\u0003J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u0010H\u0002J\b\u0010&\u001a\u00020\"H\u0002J\u0010\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\nH\u0002J\b\u0010)\u001a\u00020\"H\u0002J\b\u0010*\u001a\u00020\"H\u0016J\u0016\u0010+\u001a\u00020\"2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-H\u0002J\b\u0010/\u001a\u00020\"H\u0002J\b\u00100\u001a\u00020\"H\u0016J\b\u00101\u001a\u00020\"H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00062"}, d2 = {"Lcom/mogu/tv/ui/frag/VideoDetailsFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragDetailsBinding;", "()V", "isCollect", "", "()Z", "setCollect", "(Z)V", "mId", "", "getMId", "()Ljava/lang/String;", "setMId", "(Ljava/lang/String;)V", "mVideoData", "Lcom/mogu/tv/model/VideoPlayDetails;", "getMVideoData", "()Lcom/mogu/tv/model/VideoPlayDetails;", "setMVideoData", "(Lcom/mogu/tv/model/VideoPlayDetails;)V", "mVideoListsAdapter", "Lcom/mogu/tv/adapter/VideoListsAdapter;", "getMVideoListsAdapter", "()Lcom/mogu/tv/adapter/VideoListsAdapter;", "setMVideoListsAdapter", "(Lcom/mogu/tv/adapter/VideoListsAdapter;)V", "userAdapter", "Lcom/mogu/tv/adapter/VideoUserAdapter;", "getUserAdapter", "()Lcom/mogu/tv/adapter/VideoUserAdapter;", "setUserAdapter", "(Lcom/mogu/tv/adapter/VideoUserAdapter;)V", "collectToView", "", "collectVod", "filterDataToView", "item", "getVideoDetails", "getYourLikeVideo", "id", "initAd", "initData", "initLables", "labels", "", "Lcom/mogu/tv/model/VideoPlayDetails$Label;", "initUserList", "initView", "showAd", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoDetailsFragment extends CommonBaseFragment<FragDetailsBinding> {
    private boolean isCollect;
    private VideoPlayDetails mVideoData;
    private VideoUserAdapter userAdapter = new VideoUserAdapter();
    private VideoListsAdapter mVideoListsAdapter = new VideoListsAdapter();
    private String mId = "";

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        LinearLayout linearLayout3;
        RecyclerView recyclerView;
        FragDetailsBinding binding = getBinding();
        RecyclerView recyclerView2 = binding != null ? binding.rvLikelists : null;
        if (recyclerView2 != null) {
            recyclerView2.setLayoutManager(new GridLayoutManager(getContext(), 2));
        }
        FragDetailsBinding binding2 = getBinding();
        if (binding2 != null && (recyclerView = binding2.rvLikelists) != null) {
            recyclerView.addItemDecoration(new GridItemDecorationColumns(10, 2));
        }
        FragDetailsBinding binding3 = getBinding();
        RecyclerView recyclerView3 = binding3 != null ? binding3.rvLikelists : null;
        if (recyclerView3 != null) {
            recyclerView3.setAdapter(this.mVideoListsAdapter);
        }
        FragDetailsBinding binding4 = getBinding();
        if (binding4 != null && (linearLayout3 = binding4.llLike) != null) {
            UserManagerKt.LoginClick(linearLayout3, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.initView.1
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
                    VideoDetailsFragment.this.collectVod();
                }
            });
        }
        this.mVideoListsAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                VideoDetailsFragment.m307initView$lambda0(this.f$0, baseQuickAdapter, view, i);
            }
        });
        FragDetailsBinding binding5 = getBinding();
        if (binding5 != null && (linearLayout2 = binding5.llResponse) != null) {
            AndroidutilsKt.click(linearLayout2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.initView.3
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
                    ArouterUtils.INSTANCE.toAdvice(VideoDetailsFragment.this.getMId());
                }
            });
        }
        FragDetailsBinding binding6 = getBinding();
        if (binding6 != null && (linearLayout = binding6.llShare) != null) {
            AndroidutilsKt.click(linearLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.initView.4
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
                    new SharePopDialog(VideoDetailsFragment.this.requireActivity(), R.mipmap.app_logo, GlobeAppData.INSTANCE.getShareLinkWithInvite(), "蘑菇视频", "永久免费，无强制广告，精彩成人视频应用").show();
                }
            });
        }
        initAd();
        showAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-0, reason: not valid java name */
    public static final void m307initView$lambda0(VideoDetailsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toVideoDetails(this$0.mVideoListsAdapter.getData().get(i).getId());
    }

    private final void showAd() {
        ImageView imageView;
        ImageView imageView2;
        FragDetailsBinding binding;
        ImageView imageView3;
        List<AllAdsModel.Item> chatu;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (chatu = adData.getChatu()) == null) ? null : AllAdsModelKt.getRandomAd(chatu);
        String file = randomAd != null ? randomAd.getFile() : null;
        if ((file == null || file.length() == 0) && (binding = getBinding()) != null && (imageView3 = binding.ivMainAd) != null) {
            AndroidutilsKt.setVisible(imageView3, false);
        }
        FragDetailsBinding binding2 = getBinding();
        if (binding2 != null && (imageView2 = binding2.ivMainAd) != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.showAd.1
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
                    FragmentActivity fragmentActivityRequireActivity = VideoDetailsFragment.this.requireActivity();
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
        FragDetailsBinding binding3 = getBinding();
        if (binding3 == null || (imageView = binding3.ivMainAd) == null) {
            return;
        }
        ImageUtilKt.with(imageView, randomAd != null ? randomAd.getFile() : null);
    }

    public final VideoUserAdapter getUserAdapter() {
        return this.userAdapter;
    }

    public final void setUserAdapter(VideoUserAdapter videoUserAdapter) {
        Intrinsics.checkNotNullParameter(videoUserAdapter, "<set-?>");
        this.userAdapter = videoUserAdapter;
    }

    private final void initUserList() {
        FragDetailsBinding binding = getBinding();
        if (binding != null) {
            binding.rvUser.setLayoutManager(new GridLayoutManager(requireContext(), 4));
            binding.rvUser.addItemDecoration(new GridItemDecorationColumns(10, 2));
            binding.rvUser.setAdapter(this.userAdapter);
            this.userAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment$$ExternalSyntheticLambda0
                @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    VideoDetailsFragment.m306initUserList$lambda2$lambda1(this.f$0, baseQuickAdapter, view, i);
                }
            });
            VideoUserAdapter videoUserAdapter = this.userAdapter;
            VideoPlayDetails videoPlayDetails = this.mVideoData;
            videoUserAdapter.setNewData(videoPlayDetails != null ? videoPlayDetails.getUsers() : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initUserList$lambda-2$lambda-1, reason: not valid java name */
    public static final void m306initUserList$lambda2$lambda1(VideoDetailsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toUserDetails(this$0.userAdapter.getData().get(i).getId().toString());
    }

    private final void initAd() {
        ImageView imageView;
        ImageView imageView2;
        FragDetailsBinding binding;
        ImageView imageView3;
        List<AllAdsModel.Item> detailssmall;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (detailssmall = adData.getDetailssmall()) == null) ? null : AllAdsModelKt.getRandomAd(detailssmall);
        String file = randomAd != null ? randomAd.getFile() : null;
        if ((file == null || file.length() == 0) && (binding = getBinding()) != null && (imageView3 = binding.ivDetailsAd1) != null) {
            AndroidutilsKt.setVisible(imageView3, false);
        }
        FragDetailsBinding binding2 = getBinding();
        if (binding2 != null && (imageView2 = binding2.ivDetailsAd1) != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.initAd.1
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
                    FragmentActivity fragmentActivityRequireActivity = VideoDetailsFragment.this.requireActivity();
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
        FragDetailsBinding binding3 = getBinding();
        if (binding3 == null || (imageView = binding3.ivDetailsAd1) == null) {
            return;
        }
        ImageUtilKt.with(imageView, randomAd != null ? randomAd.getFile() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void collectVod() {
        CommonBaseFragment.showLoadingDialog$default(this, true, null, 2, null);
        if (this.isCollect) {
            ApiManager.INSTANCE.starDelDetails(this.mId, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.collectVod.1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                    invoke(num.intValue(), str, justReturnMsg);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                    String favorites;
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    VideoDetailsFragment.this.dissmissLoading();
                    if (i == 200) {
                        VideoDetailsFragment videoDetailsFragment = VideoDetailsFragment.this;
                        videoDetailsFragment.setCollect(!videoDetailsFragment.getIsCollect());
                        FragDetailsBinding binding = VideoDetailsFragment.this.getBinding();
                        TextView textView = binding != null ? binding.tvCollect : null;
                        if (textView != null) {
                            VideoPlayDetails mVideoData = VideoDetailsFragment.this.getMVideoData();
                            textView.setText(String.valueOf((mVideoData == null || (favorites = mVideoData.getFavorites()) == null) ? 0 : Integer.parseInt(favorites)));
                        }
                        VideoDetailsFragment.this.collectToView();
                        return;
                    }
                    ToastUtil.INSTANCE.toast(msg);
                }
            });
        } else {
            ApiManager.INSTANCE.starAdd(this.mId, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.collectVod.2
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                    invoke(num.intValue(), str, justReturnMsg);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                    String favorites;
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    VideoDetailsFragment.this.dissmissLoading();
                    if (i == 200) {
                        VideoDetailsFragment videoDetailsFragment = VideoDetailsFragment.this;
                        videoDetailsFragment.setCollect(!videoDetailsFragment.getIsCollect());
                        FragDetailsBinding binding = VideoDetailsFragment.this.getBinding();
                        TextView textView = binding != null ? binding.tvCollect : null;
                        if (textView != null) {
                            VideoPlayDetails mVideoData = VideoDetailsFragment.this.getMVideoData();
                            textView.setText(String.valueOf(((mVideoData == null || (favorites = mVideoData.getFavorites()) == null) ? 0 : Integer.parseInt(favorites)) + 1));
                        }
                        VideoDetailsFragment.this.collectToView();
                        return;
                    }
                    ToastUtil.INSTANCE.toast(msg);
                }
            });
        }
    }

    /* JADX INFO: renamed from: isCollect, reason: from getter */
    public final boolean getIsCollect() {
        return this.isCollect;
    }

    public final void setCollect(boolean z) {
        this.isCollect = z;
    }

    public final VideoListsAdapter getMVideoListsAdapter() {
        return this.mVideoListsAdapter;
    }

    public final void setMVideoListsAdapter(VideoListsAdapter videoListsAdapter) {
        Intrinsics.checkNotNullParameter(videoListsAdapter, "<set-?>");
        this.mVideoListsAdapter = videoListsAdapter;
    }

    private final void getYourLikeVideo(String id) {
        ApiManager.INSTANCE.getVideoRecommend(id, new Function3<Integer, String, VideoListModel, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.getYourLikeVideo.1
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
                if (i != 200 || videoListModel == null) {
                    return;
                }
                VideoDetailsFragment.this.getMVideoListsAdapter().setNewData(videoListModel.getList());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void collectToView() {
        TextView textView;
        ImageView imageView;
        ImageView imageView2;
        if (isDetached()) {
            return;
        }
        boolean z = this.isCollect;
        if (z) {
            FragDetailsBinding binding = getBinding();
            if (binding != null && (imageView2 = binding.ivLike) != null) {
                imageView2.setImageResource(R.mipmap.love_press_video);
            }
            FragDetailsBinding binding2 = getBinding();
            textView = binding2 != null ? binding2.tvLike : null;
            if (textView == null) {
                return;
            }
            textView.setText("已收藏");
            return;
        }
        if (z) {
            return;
        }
        FragDetailsBinding binding3 = getBinding();
        if (binding3 != null && (imageView = binding3.ivLike) != null) {
            imageView.setImageResource(R.mipmap.love_normal_video);
        }
        FragDetailsBinding binding4 = getBinding();
        textView = binding4 != null ? binding4.tvLike : null;
        if (textView == null) {
            return;
        }
        textView.setText("收藏");
    }

    public final String getMId() {
        return this.mId;
    }

    public final void setMId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mId = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("id") : null;
        if (string == null) {
            string = "";
        }
        this.mId = string;
        getVideoDetails();
        getYourLikeVideo(this.mId);
    }

    public final VideoPlayDetails getMVideoData() {
        return this.mVideoData;
    }

    public final void setMVideoData(VideoPlayDetails videoPlayDetails) {
        this.mVideoData = videoPlayDetails;
    }

    private final void getVideoDetails() {
        ApiManager.INSTANCE.getVodDetials(this.mId, new Function3<Integer, String, VideoPlayDetails, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment.getVideoDetails.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoPlayDetails videoPlayDetails) {
                invoke(num.intValue(), str, videoPlayDetails);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, VideoPlayDetails videoPlayDetails) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || videoPlayDetails == null) {
                    return;
                }
                VideoDetailsFragment.this.setMVideoData(videoPlayDetails);
                VideoDetailsFragment.this.filterDataToView(videoPlayDetails);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void filterDataToView(VideoPlayDetails item) {
        FragDetailsBinding binding = getBinding();
        if (binding != null) {
            binding.tvName.setText(item.getTitle());
            binding.tvCreatetime.setText(DateUtil.getCarStrTime(item.getCreated_at()));
            binding.tvViews.setText(AndroidutilsKt.toChineseNumber(item.getViews()));
            String nubmer = item.getNubmer();
            if (!(nubmer == null || nubmer.length() == 0)) {
                binding.tvNumber.setText("番号:" + item.getNubmer());
            }
            binding.tvCollect.setText(item.getFavorites());
            initLables(item.getLabels());
            initUserList();
        }
    }

    private final void initLables(List<VideoPlayDetails.Label> labels) {
        FlexboxLayout flexboxLayout;
        FlexboxLayout flexboxLayout2;
        FragDetailsBinding binding = getBinding();
        if (binding != null && (flexboxLayout2 = binding.flexLayout) != null) {
            flexboxLayout2.removeAllViews();
        }
        for (final VideoPlayDetails.Label label : labels) {
            View viewInflate$default = AndroidutilsKt.inflate$default((Fragment) this, R.layout.item_labels, (ViewGroup) null, false, 4, (Object) null);
            TextView tv_item_history = (TextView) viewInflate$default.findViewById(R.id.tv_item_history);
            tv_item_history.setText(label.getName());
            FragDetailsBinding binding2 = getBinding();
            if (binding2 != null && (flexboxLayout = binding2.flexLayout) != null) {
                flexboxLayout.addView(viewInflate$default);
            }
            Intrinsics.checkNotNullExpressionValue(tv_item_history, "tv_item_history");
            AndroidutilsKt.click(tv_item_history, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.VideoDetailsFragment$initLables$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it2) {
                    Intrinsics.checkNotNullParameter(it2, "it2");
                    ArouterUtils.INSTANCE.toBiaoQianVideoList(label.getId(), label.getName());
                }
            });
        }
    }
}
