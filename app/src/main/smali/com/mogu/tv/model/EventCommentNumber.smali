.class public final Lcom/mogu/tv/model/EventCommentNumber;
.super Ljava/lang/Object;
.source "EventBean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/mogu/tv/model/EventCommentNumber;",
        "",
        "size",
        "",
        "(I)V",
        "getSize",
        "()I",
        "setSize",
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
.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mogu/tv/model/EventCommentNumber;->size:I

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mogu/tv/model/EventCommentNumber;->size:I

    return v0
.end method

.method public final setSize(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/mogu/tv/model/EventCommentNumber;->size:I

    return-void
.end method
