.class public final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initListener$1;
.super Ljava/lang/Object;
.source "ShortVideoMainFragment.kt"

# interfaces
.implements Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/mogu/tv/ui/frag/ShortVideoMainFragment$initListener$1",
        "Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;",
        "keyBoardHide",
        "",
        "height",
        "",
        "keyBoardShow",
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

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initListener$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyBoardHide(I)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initListener$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$dismissInputDialog(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V

    return-void
.end method

.method public keyBoardShow(I)V
    .locals 0

    return-void
.end method
