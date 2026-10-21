.class final Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/HomeFragment;->initNightMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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

    iput-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v0}, Lcom/mogu/tv/common/cache/CacheKey;->getNightMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kotlin/basiclib/utils/SpUtil;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_1

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 95
    :cond_1
    :goto_0
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v0}, Lcom/mogu/tv/common/cache/CacheKey;->getNightMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    sget-object p1, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    new-instance v0, Lcom/mogu/tv/model/EventChangeNightMode;

    invoke-direct {v0}, Lcom/mogu/tv/model/EventChangeNightMode;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-virtual {v1}, Lcom/mogu/tv/ui/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mogu/tv/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/HomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010010

    const v1, 0x7f010011

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    .line 99
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object p1

    iget-object v0, p0, Lcom/mogu/tv/ui/HomeFragment$initNightMode$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/HomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/base/AcManage;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method
