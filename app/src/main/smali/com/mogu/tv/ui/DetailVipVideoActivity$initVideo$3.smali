.class final Lcom/mogu/tv/ui/DetailVipVideoActivity$initVideo$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DetailVipVideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailVipVideoActivity;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/DetailVipVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$initVideo$3;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/DetailVipVideoActivity$initVideo$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$initVideo$3;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getOrientationUtils()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$initVideo$3;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$initVideo$3;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/mogu/tv/view/DetailsVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method
