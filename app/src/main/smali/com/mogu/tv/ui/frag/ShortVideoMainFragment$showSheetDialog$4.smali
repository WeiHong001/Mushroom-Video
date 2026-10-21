.class public final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "ShortVideoMainFragment.kt"


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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
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
.field final synthetic $mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;->$mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    .line 176
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1, p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$setSlideOffset$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;F)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 3

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;->$mDialogBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getSlideOffset$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, -0x402e147ae147ae14L    # -0.28

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_2

    .line 183
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$showSheetDialog$4;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getBottomSheetDialog$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
