.class public final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$3;
.super Ljava/lang/Object;
.source "ShortVideoMainFragment.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->showSheetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$3",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;",
        "onLoadMoreRequested",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$3;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$3;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {v0}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getMCommentPage$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$setMCommentPage$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;I)V

    .line 165
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$3;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {v0}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getCommentList(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V

    return-void
.end method
