.class final Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewBindingUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/ViewBindingUtil;->inflateWithGeneric(Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroidx/viewbinding/ViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Class<",
        "TVB;>;TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "clazz",
        "Ljava/lang/Class;",
        "invoke",
        "(Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;"
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
.field final synthetic $attachToParent:Z

.field final synthetic $layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic $parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 0

    iput-object p1, p0, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->$layoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->$parent:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->$attachToParent:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TVB;>;)TVB;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 28
    const-class v2, Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "inflate"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->$layoutInflater:Landroid/view/LayoutInflater;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->$parent:Landroid/view/ViewGroup;

    aput-object v1, v0, v4

    iget-boolean v1, p0, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->$attachToParent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type VB of com.kotlin.basiclib.ViewBindingUtil.inflateWithGeneric"

    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/ViewBindingUtil$inflateWithGeneric$2;->invoke(Ljava/lang/Class;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    return-object p1
.end method
