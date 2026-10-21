.class public final Lcom/mogu/tv/ui/DetailsActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "DetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActDetailsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J?\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u000202062!\u00107\u001a\u001d\u0012\u0013\u0012\u001104\u00a2\u0006\u000c\u00089\u0012\u0008\u0008:\u0012\u0004\u0008\u0008(;\u0012\u0004\u0012\u00020208J\u0010\u0010<\u001a\u0002022\u0006\u0010=\u001a\u00020>H\u0007J\u0008\u0010?\u001a\u00020@H\u0002J\u0008\u0010A\u001a\u000202H\u0002J\u0008\u0010B\u001a\u000202H\u0002J\u0008\u0010C\u001a\u000202H\u0016J\u0008\u0010D\u001a\u000202H\u0002J\u0008\u0010E\u001a\u000202H\u0002J\u0008\u0010F\u001a\u000202H\u0016J\u0010\u0010G\u001a\u0002022\u0006\u0010H\u001a\u00020\u001eH\u0002J\u0008\u0010I\u001a\u000202H\u0002J\u0008\u0010J\u001a\u000202H\u0016J\u0010\u0010K\u001a\u0002022\u0006\u0010L\u001a\u00020MH\u0016J\u0008\u0010N\u001a\u000202H\u0014J\u0008\u0010O\u001a\u000202H\u0014J\u0008\u0010P\u001a\u000202H\u0014J\u0008\u0010Q\u001a\u000202H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R*\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\u0008\u0012\u0004\u0012\u00020\u0017`\u0018X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R!\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u0016j\u0008\u0012\u0004\u0012\u00020\u001e`\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u001c\u0010%\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010 \"\u0004\u0008\'\u0010\"R\u001c\u0010(\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010 \"\u0004\u0008*\u0010\"R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u0006R"
    }
    d2 = {
        "Lcom/mogu/tv/ui/DetailsActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActDetailsBinding;",
        "()V",
        "commonNavigator",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "getCommonNavigator",
        "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "commonNavigator$delegate",
        "Lkotlin/Lazy;",
        "gsyVideoOption",
        "Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;",
        "isPause",
        "",
        "isPlay",
        "mFragAdapter",
        "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;",
        "getMFragAdapter",
        "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;",
        "setMFragAdapter",
        "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V",
        "mFragments",
        "Ljava/util/ArrayList;",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/collections/ArrayList;",
        "getMFragments",
        "()Ljava/util/ArrayList;",
        "setMFragments",
        "(Ljava/util/ArrayList;)V",
        "mIds",
        "",
        "getMIds",
        "()Ljava/lang/String;",
        "setMIds",
        "(Ljava/lang/String;)V",
        "mTitles",
        "getMTitles",
        "mVideoTitle",
        "getMVideoTitle",
        "setMVideoTitle",
        "mVideoUrl",
        "getMVideoUrl",
        "setMVideoUrl",
        "orientationUtils",
        "Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;",
        "getOrientationUtils",
        "()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;",
        "setOrientationUtils",
        "(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)V",
        "coundDown",
        "",
        "count",
        "",
        "block",
        "Lkotlin/Function0;",
        "returntime",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "time",
        "eventCommentNumber",
        "item",
        "Lcom/mogu/tv/model/EventCommentNumber;",
        "getCurPlay",
        "Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;",
        "getVideoDetails",
        "imageSetAd",
        "initData",
        "initTab",
        "initVideo",
        "initView",
        "notifyCoomentTab",
        "size",
        "notifyTab",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroy",
        "onResume",
        "onStop",
        "recordPlay",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final commonNavigator$delegate:Lkotlin/Lazy;

.field private gsyVideoOption:Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

.field private isPause:Z

.field private isPlay:Z

.field public mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

.field public mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIds:Ljava/lang/String;

.field private final mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoTitle:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;

.field private orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;


# direct methods
.method public static synthetic $r8$lambda$PIraZGQG-lx4bHGFyj1uQyUyWW8(Lcom/mogu/tv/ui/DetailsActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/ui/DetailsActivity;->initVideo$lambda-0(Lcom/mogu/tv/ui/DetailsActivity;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Lcom/mogu/tv/ui/DetailsActivity$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/DetailsActivity$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoUrl:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoTitle:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurPlay(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getGsyVideoOption$p(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mogu/tv/ui/DetailsActivity;->gsyVideoOption:Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    return-object p0
.end method

.method public static final synthetic access$imageSetAd(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->imageSetAd()V

    return-void
.end method

.method public static final synthetic access$notifyCoomentTab(Lcom/mogu/tv/ui/DetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/DetailsActivity;->notifyCoomentTab(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$recordPlay(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->recordPlay()V

    return-void
.end method

.method public static final synthetic access$setPlay$p(Lcom/mogu/tv/ui/DetailsActivity;Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->isPlay:Z

    return-void
.end method

.method private final getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    const-string v1, "{\n            binding.vi\u2026ullWindowPlayer\n        }"

    .line 276
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    const-string v1, "binding.videoView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    :goto_0
    return-object v0
.end method

.method private final getVideoDetails()V
    .locals 3

    .line 335
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    new-instance v2, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->getVodDetials(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final imageSetAd()V
    .locals 8

    .line 299
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel;->getCover()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->jumpAd:Landroid/widget/TextView;

    const-string v3, "binding.jumpAd"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 301
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->tvToget:Landroid/widget/TextView;

    const-string v5, "binding.tvToget"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 302
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    const-string v6, "binding.ivImageAd"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    const/4 v2, 0x6

    .line 303
    new-instance v4, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$1;

    invoke-direct {v4, p0}, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$1;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v7, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$2;

    invoke-direct {v7, p0}, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$2;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v2, v4, v7}, Lcom/mogu/tv/ui/DetailsActivity;->coundDown(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 315
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->jumpAd:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 321
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const v3, 0x7f0f0064

    invoke-static {v2, v1, v3}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 322
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActDetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$4;

    invoke-direct {v2, p0, v0}, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$4;-><init>(Lcom/mogu/tv/ui/DetailsActivity;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 327
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActDetailsBinding;->tvToget:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$5;

    invoke-direct {v2, p0, v0}, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$5;-><init>(Lcom/mogu/tv/ui/DetailsActivity;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final initTab()V
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setScrollPivotX(F)V

    .line 178
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/DetailsActivity$initTab$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/DetailsActivity$initTab$1;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 214
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 215
    sget-object v0, Lcom/kotlin/basiclib/common/ViewPager2Helper;->INSTANCE:Lcom/kotlin/basiclib/common/ViewPager2Helper;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActDetailsBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const-string v2, "binding.magicIndicator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string v3, "binding.viewPager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPager2Helper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method private final initVideo()V
    .locals 4

    .line 85
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    check-cast v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    new-instance v0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->gsyVideoOption:Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    const-string v2, "m3u8"

    .line 90
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setOverrideExtension(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setAutoFullWithSize(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 94
    iget-object v3, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const v2, 0x7f0f00bd

    .line 96
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setShrinkImageRes(I)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const v2, 0x7f0f00bc

    .line 97
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setEnlargeImageRes(I)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v1, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/mogu/tv/ui/DetailsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/DetailsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    check-cast v1, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 132
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "binding.videoView.fullscreenButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/DetailsActivity$initVideo$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/DetailsActivity$initVideo$3;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 147
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "binding.videoView.backButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/DetailsActivity$initVideo$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/DetailsActivity$initVideo$4;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final initVideo$lambda-0(Lcom/mogu/tv/ui/DetailsActivity;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :goto_0
    return-void
.end method

.method private final notifyCoomentTab(Ljava/lang/String;)V
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 264
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    const-string v1, "\u8be6\u60c5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bc4\u8bba("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final notifyTab()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    const-string v1, "\u8be6\u60c5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    const-string v1, "\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v1, Lcom/mogu/tv/ui/frag/VideoDetailsFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/VideoDetailsFragment;-><init>()V

    .line 378
    new-instance v2, Lcom/mogu/tv/ui/frag/VideoCommentFragment;

    invoke-direct {v2}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;-><init>()V

    .line 379
    invoke-virtual {v1, v0}, Lcom/mogu/tv/ui/frag/VideoDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 380
    invoke-virtual {v2, v0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 381
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    .line 384
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final recordPlay()V
    .locals 2

    .line 169
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->historyAdd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final coundDown(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returntime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 283
    new-instance p1, Lcom/mogu/tv/ui/DetailsActivity$coundDown$run$1;

    invoke-direct {p1, v0, p2, p3, p0}, Lcom/mogu/tv/ui/DetailsActivity$coundDown$run$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/mogu/tv/ui/DetailsActivity;)V

    .line 295
    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity$coundDown$run$1;->run()V

    return-void
.end method

.method public final eventCommentNumber(Lcom/mogu/tv/model/EventCommentNumber;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    const-string v1, "\u8be6\u60c5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bc4\u8bba("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mogu/tv/model/EventCommentNumber;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method public final getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mFragAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mFragments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mFragments"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMIds()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    return-object v0
.end method

.method public final getMTitles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMVideoTitle()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getMVideoUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientationUtils()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->notifyTab()V

    .line 222
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->initVideo()V

    .line 223
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getVideoDetails()V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 60
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->register(Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/model/ClearPositionEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/mogu/tv/model/ClearPositionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 63
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActDetailsBinding;->llHead:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->setPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 66
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f060245

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 64
    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/DetailsActivity;->setMFragments(Ljava/util/ArrayList;)V

    .line 73
    new-instance v0, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/DetailsActivity;->setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->initTab()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 158
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 161
    :cond_1
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 365
    iget-boolean v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->isPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->isPause:Z

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object v1, v0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    iget-object v4, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mogu/tv/view/DetailsVideoView;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 240
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    .line 241
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->unregister(Ljava/lang/Object;)V

    .line 242
    iget-boolean v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->isPlay:Z

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->release()V

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->release()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 234
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->onVideoResume(Z)V

    .line 235
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onResume()V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->isPause:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailsActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->onVideoPause()V

    .line 229
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onStop()V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/mogu/tv/ui/DetailsActivity;->isPause:Z

    return-void
.end method

.method public final setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    return-void
.end method

.method public final setMFragments(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mFragments:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMIds(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mIds:Ljava/lang/String;

    return-void
.end method

.method public final setMVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoTitle:Ljava/lang/String;

    return-void
.end method

.method public final setMVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->mVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public final setOrientationUtils(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-void
.end method
