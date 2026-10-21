.class public final Lcom/mogu/tv/ui/DetailVipVideoActivity$Companion;
.super Ljava/lang/Object;
.source "DetailVipVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/ui/DetailVipVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/ui/DetailVipVideoActivity$Companion;",
        "",
        "()V",
        "vipData",
        "Lcom/mogu/tv/model/VipVideoList$Data;",
        "getVipData",
        "()Lcom/mogu/tv/model/VipVideoList$Data;",
        "setVipData",
        "(Lcom/mogu/tv/model/VipVideoList$Data;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/mogu/tv/ui/DetailVipVideoActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVipData()Lcom/mogu/tv/model/VipVideoList$Data;
    .locals 1

    .line 42
    invoke-static {}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->access$getVipData$cp()Lcom/mogu/tv/model/VipVideoList$Data;

    move-result-object v0

    return-object v0
.end method

.method public final setVipData(Lcom/mogu/tv/model/VipVideoList$Data;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->access$setVipData$cp(Lcom/mogu/tv/model/VipVideoList$Data;)V

    return-void
.end method
