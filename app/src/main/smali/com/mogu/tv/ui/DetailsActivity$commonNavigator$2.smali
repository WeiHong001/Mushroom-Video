.class final Lcom/mogu/tv/ui/DetailsActivity$commonNavigator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$commonNavigator$2;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailsActivity$commonNavigator$2;->invoke()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 2

    .line 56
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    iget-object v1, p0, Lcom/mogu/tv/ui/DetailsActivity$commonNavigator$2;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {v1}, Lcom/mogu/tv/ui/DetailsActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
