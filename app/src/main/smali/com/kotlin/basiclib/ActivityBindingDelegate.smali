.class public final Lcom/kotlin/basiclib/ActivityBindingDelegate;
.super Ljava/lang/Object;
.source "ViewBindingHelper.kt"

# interfaces
.implements Lcom/kotlin/basiclib/ActivityBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kotlin/basiclib/ActivityBinding<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\n\u001a\u00020\u000b*\u00020\u000cH\u0016R\u0010\u0010\u0005\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kotlin/basiclib/ActivityBindingDelegate;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/kotlin/basiclib/ActivityBinding;",
        "()V",
        "_binding",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "getBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "setContentViewWithBinding",
        "Landroid/view/View;",
        "Landroid/app/Activity;",
        "basiclib_release"
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
.field private _binding:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/kotlin/basiclib/ActivityBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    if-nez v0, :cond_0

    const-string v0, "_binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public setContentViewWithBinding(Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingUtil;->inflateWithGeneric(Ljava/lang/Object;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/ActivityBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    const/4 v1, 0x0

    const-string v2, "_binding"

    if-nez v0, :cond_0

    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/kotlin/basiclib/ActivityBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-interface {v1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "_binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
