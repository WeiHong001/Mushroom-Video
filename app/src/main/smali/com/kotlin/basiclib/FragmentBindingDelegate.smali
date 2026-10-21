.class public final Lcom/kotlin/basiclib/FragmentBindingDelegate;
.super Ljava/lang/Object;
.source "ViewBindingHelper.kt"

# interfaces
.implements Lcom/kotlin/basiclib/FragmentBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kotlin/basiclib/FragmentBinding<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00018\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kotlin/basiclib/FragmentBindingDelegate;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/kotlin/basiclib/FragmentBinding;",
        "()V",
        "_binding",
        "Landroidx/viewbinding/ViewBinding;",
        "binding",
        "getBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "createViewWithBinding",
        "Landroid/view/View;",
        "Landroidx/fragment/app/Fragment;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
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

.field private final handler$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/kotlin/basiclib/FragmentBindingDelegate$handler$2;->INSTANCE:Lcom/kotlin/basiclib/FragmentBindingDelegate$handler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->handler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getHandler(Lcom/kotlin/basiclib/FragmentBindingDelegate;)Landroid/os/Handler;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/kotlin/basiclib/FragmentBindingDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$set_binding$p(Lcom/kotlin/basiclib/FragmentBindingDelegate;Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public createViewWithBinding(Landroidx/fragment/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p2, p3, v0}, Lcom/kotlin/basiclib/ViewBindingUtil;->inflateWithGeneric(Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;

    invoke-direct {p2, p0}, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;-><init>(Lcom/kotlin/basiclib/FragmentBindingDelegate;)V

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "_binding!!.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate;->_binding:Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method
