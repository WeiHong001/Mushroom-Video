.class final Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailsActivity;->getVideoDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/mogu/tv/model/VideoPlayDetails;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
        "Lcom/mogu/tv/model/VideoPlayDetails;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/ui/DetailsActivity;


# direct methods
.method public static synthetic $r8$lambda$Q-CGHFfEUENFmzZ-AywrWpT-rxI(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->invoke$lambda-0(Lcom/mogu/tv/ui/DetailsActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-static {p0}, Lcom/mogu/tv/ui/DetailsActivity;->access$recordPlay(Lcom/mogu/tv/ui/DetailsActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/VideoPlayDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/VideoPlayDetails;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/VideoPlayDetails;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 337
    sget-object p1, Lcom/mogu/tv/utils/PlayIdSaveUtils;->INSTANCE:Lcom/mogu/tv/utils/PlayIdSaveUtils;

    invoke-virtual {p3}, Lcom/mogu/tv/model/VideoPlayDetails;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/mogu/tv/model/VideoPlayDetails;->getPlay_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mogu/tv/utils/PlayIdSaveUtils;->savePlayData(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/model/VideoPlayDetails;->getPlay_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/DetailsActivity;->setMVideoUrl(Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/model/VideoPlayDetails;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/DetailsActivity;->setMVideoTitle(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/model/VideoPlayDetails;->getComments()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mogu/tv/ui/DetailsActivity;->access$notifyCoomentTab(Lcom/mogu/tv/ui/DetailsActivity;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/DetailsActivity;->access$getGsyVideoOption$p(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "gsyVideoOption"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/DetailsActivity;->getMVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 345
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/DetailsActivity;->access$imageSetAd(Lcom/mogu/tv/ui/DetailsActivity;)V

    .line 346
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->jumpAd:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    new-instance p3, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/mogu/tv/ui/DetailsActivity$getVideoDetails$1$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->toast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
