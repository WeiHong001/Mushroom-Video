.class public final Lcom/mogu/tv/api/ApiManager$getBlobLoveList$$inlined$netCallBack$1;
.super Lcom/mogu/tv/api/NetCallBack;
.source "ApiManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/api/ApiManager;->getBlobLoveList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mogu/tv/api/NetCallBack<",
        "Lcom/mogu/tv/model/ShequListLoveModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiManager.kt\ncom/mogu/tv/api/ApiManager$netCallBack$2\n*L\n1#1,747:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "com/mogu/tv/api/ApiManager$netCallBack$2",
        "Lcom/mogu/tv/api/NetCallBack;",
        "onResponse",
        "",
        "code",
        "",
        "msg",
        "",
        "t",
        "(ILjava/lang/String;Ljava/lang/Object;)V",
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
.field final synthetic $action:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/api/ApiManager$getBlobLoveList$$inlined$netCallBack$1;->$action:Lkotlin/jvm/functions/Function3;

    .line 54
    invoke-direct {p0, p2}, Lcom/mogu/tv/api/NetCallBack;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mogu/tv/model/ShequListLoveModel;",
            ")V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mogu/tv/api/ApiManager$getBlobLoveList$$inlined$netCallBack$1;->$action:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
