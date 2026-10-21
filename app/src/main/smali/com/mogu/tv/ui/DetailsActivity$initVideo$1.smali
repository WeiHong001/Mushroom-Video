.class public final Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;
.super Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;
.source "DetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailsActivity;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J+\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\"\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ+\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\"\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ+\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\"\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "com/mogu/tv/ui/DetailsActivity$initVideo$1",
        "Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;",
        "onEnterFullscreen",
        "",
        "url",
        "",
        "objects",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "onPrepared",
        "onQuitFullscreen",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    .line 99
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    const-string v0, "objects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/DetailsActivity;->access$getCurPlay(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    const p2, 0x7f0a038b

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "getCurPlay().findViewByI\u2026extView>(R.id.tv_kuaijin)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1$onEnterFullscreen$1;

    iget-object v2, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-direct {v1, v2}, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1$onEnterFullscreen$1;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 111
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/DetailsActivity;->access$getCurPlay(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    const v1, 0x7f0a038c

    invoke-virtual {p1, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "getCurPlay().findViewByI\u2026extView>(R.id.tv_kuaitui)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1$onEnterFullscreen$2;

    iget-object v4, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-direct {v3, v4}, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1$onEnterFullscreen$2;-><init>(Lcom/mogu/tv/ui/DetailsActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 118
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/DetailsActivity;->access$getCurPlay(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 119
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/DetailsActivity;->access$getCurPlay(Lcom/mogu/tv/ui/DetailsActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "objects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getOrientationUtils()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-static {p1, p2}, Lcom/mogu/tv/ui/DetailsActivity;->access$setPlay$p(Lcom/mogu/tv/ui/DetailsActivity;Z)V

    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "objects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    iget-object p1, p1, Lcom/mogu/tv/view/DetailsVideoView;->tv_kuaijin:Landroid/widget/TextView;

    const-string p2, "binding.videoView.tv_kuaijin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 126
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    iget-object p1, p1, Lcom/mogu/tv/view/DetailsVideoView;->tv_kuaitui:Landroid/widget/TextView;

    const-string v0, "binding.videoView.tv_kuaitui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 127
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$initVideo$1;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getOrientationUtils()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method
