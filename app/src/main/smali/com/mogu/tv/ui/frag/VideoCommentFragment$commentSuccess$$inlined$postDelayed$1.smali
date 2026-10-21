.class public final Lcom/mogu/tv/ui/frag/VideoCommentFragment$commentSuccess$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/VideoCommentFragment;->commentSuccess(Lcom/mogu/tv/model/CommentSuccess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 VideoCommentFragment.kt\ncom/mogu/tv/ui/frag/VideoCommentFragment\n*L\n1#1,411:1\n41#2,3:412\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/VideoCommentFragment;


# direct methods
.method public constructor <init>(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment$commentSuccess$$inlined$postDelayed$1;->this$0:Lcom/mogu/tv/ui/frag/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment$commentSuccess$$inlined$postDelayed$1;->this$0:Lcom/mogu/tv/ui/frag/VideoCommentFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->setMPage(I)V

    .line 413
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment$commentSuccess$$inlined$postDelayed$1;->this$0:Lcom/mogu/tv/ui/frag/VideoCommentFragment;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragCommentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragCommentBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->autoRefresh()Z

    :cond_0
    return-void
.end method
