.class public final Lcom/mogu/tv/utils/WidthAndHeight;
.super Ljava/lang/Object;
.source "ImageUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mogu/tv/utils/WidthAndHeight;",
        "",
        "()V",
        "h",
        "",
        "getH",
        "()I",
        "setH",
        "(I)V",
        "w",
        "getW",
        "setW",
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
.field private h:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getH()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/mogu/tv/utils/WidthAndHeight;->h:I

    return v0
.end method

.method public final getW()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/mogu/tv/utils/WidthAndHeight;->w:I

    return v0
.end method

.method public final setH(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/mogu/tv/utils/WidthAndHeight;->h:I

    return-void
.end method

.method public final setW(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/mogu/tv/utils/WidthAndHeight;->w:I

    return-void
.end method
