.class final Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LockVipVideoDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/view/LockVipVideoDialog;->setUnLockData(Lcom/mogu/tv/model/VipVideoList$Data;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $data:Lcom/mogu/tv/model/VipVideoList$Data;

.field final synthetic $unlockData:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mogu/tv/view/LockVipVideoDialog;


# direct methods
.method constructor <init>(Lcom/mogu/tv/model/VipVideoList$Data;Lcom/mogu/tv/view/LockVipVideoDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mogu/tv/model/VipVideoList$Data;",
            "Lcom/mogu/tv/view/LockVipVideoDialog;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->$data:Lcom/mogu/tv/model/VipVideoList$Data;

    iput-object p2, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->this$0:Lcom/mogu/tv/view/LockVipVideoDialog;

    iput-object p3, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->$unlockData:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 73
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->$data:Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {v1}, Lcom/mogu/tv/model/VipVideoList$Data;->getID()I

    move-result v1

    new-instance v2, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1$1;

    iget-object v3, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->this$0:Lcom/mogu/tv/view/LockVipVideoDialog;

    iget-object v4, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->$unlockData:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;->$data:Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-direct {v2, v3, v4, v5}, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1$1;-><init>(Lcom/mogu/tv/view/LockVipVideoDialog;Lkotlin/jvm/functions/Function1;Lcom/mogu/tv/model/VipVideoList$Data;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->unlockVipVIdeo(ILkotlin/jvm/functions/Function3;)V

    return-void
.end method
