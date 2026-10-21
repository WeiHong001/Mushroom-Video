.class public final Lcom/mogu/tv/model/ClearPositionEvent;
.super Ljava/lang/Object;
.source "EventBean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005\"\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mogu/tv/model/ClearPositionEvent;",
        "",
        "isClear",
        "",
        "(Z)V",
        "()Z",
        "setClear",
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
.field private isClear:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mogu/tv/model/ClearPositionEvent;->isClear:Z

    return-void
.end method


# virtual methods
.method public final isClear()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/mogu/tv/model/ClearPositionEvent;->isClear:Z

    return v0
.end method

.method public final setClear(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/mogu/tv/model/ClearPositionEvent;->isClear:Z

    return-void
.end method
