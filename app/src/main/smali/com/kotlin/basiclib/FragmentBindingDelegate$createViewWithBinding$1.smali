.class public final Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;
.super Ljava/lang/Object;
.source "ViewBindingHelper.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/FragmentBindingDelegate;->createViewWithBinding(Landroidx/fragment/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.field final synthetic this$0:Lcom/kotlin/basiclib/FragmentBindingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kotlin/basiclib/FragmentBindingDelegate<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$x1RelhqoPq6XuAPF1dFy8RCuyPw(Lcom/kotlin/basiclib/FragmentBindingDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;->onDestroy$lambda-0(Lcom/kotlin/basiclib/FragmentBindingDelegate;)V

    return-void
.end method

.method constructor <init>(Lcom/kotlin/basiclib/FragmentBindingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kotlin/basiclib/FragmentBindingDelegate<",
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;->this$0:Lcom/kotlin/basiclib/FragmentBindingDelegate;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onDestroy$lambda-0(Lcom/kotlin/basiclib/FragmentBindingDelegate;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lcom/kotlin/basiclib/FragmentBindingDelegate;->access$set_binding$p(Lcom/kotlin/basiclib/FragmentBindingDelegate;Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;->this$0:Lcom/kotlin/basiclib/FragmentBindingDelegate;

    invoke-static {p1}, Lcom/kotlin/basiclib/FragmentBindingDelegate;->access$getHandler(Lcom/kotlin/basiclib/FragmentBindingDelegate;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1;->this$0:Lcom/kotlin/basiclib/FragmentBindingDelegate;

    new-instance v1, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1$$ExternalSyntheticLambda0;-><init>(Lcom/kotlin/basiclib/FragmentBindingDelegate;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
