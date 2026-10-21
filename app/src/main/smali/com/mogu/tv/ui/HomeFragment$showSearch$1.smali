.class final Lcom/mogu/tv/ui/HomeFragment$showSearch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/HomeFragment;->showSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/mogu/tv/model/MoguConfig;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
        "Lcom/mogu/tv/model/MoguConfig;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/HomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$showSearch$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/MoguConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/HomeFragment$showSearch$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V
    .locals 6

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 55
    sget-object p1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p3}, Lcom/mogu/tv/model/MoguConfig;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/GlobeAppData;->setSearchHot(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Lcom/mogu/tv/model/MoguConfig;->getValue()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/mogu/tv/ui/HomeFragment$showSearch$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/HomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/FragmentHomeBinding;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/mogu/tv/ui/HomeFragment$showSearch$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    .line 58
    new-instance v0, Lcom/gongwen/marqueen/SimpleMF;

    invoke-virtual {p3}, Lcom/mogu/tv/ui/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/gongwen/marqueen/SimpleMF;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, p1}, Lcom/gongwen/marqueen/SimpleMF;->setData(Ljava/util/List;)V

    .line 60
    iget-object p1, p2, Lcom/mogu/tv/databinding/FragmentHomeBinding;->tvSmv:Lcom/gongwen/marqueen/SimpleMarqueeView;

    check-cast v0, Lcom/gongwen/marqueen/MarqueeFactory;

    invoke-virtual {p1, v0}, Lcom/gongwen/marqueen/SimpleMarqueeView;->setMarqueeFactory(Lcom/gongwen/marqueen/MarqueeFactory;)V

    .line 61
    iget-object p1, p2, Lcom/mogu/tv/databinding/FragmentHomeBinding;->tvSmv:Lcom/gongwen/marqueen/SimpleMarqueeView;

    invoke-virtual {p1}, Lcom/gongwen/marqueen/SimpleMarqueeView;->startFlipping()V

    :cond_0
    return-void
.end method
