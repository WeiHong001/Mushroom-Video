.class public final Lcom/mogu/tv/model/GridUiModel;
.super Ljava/lang/Object;
.source "GridUiModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u0012\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/mogu/tv/model/GridUiModel;",
        "",
        "name",
        "",
        "image",
        "",
        "url",
        "showNumber",
        "",
        "number",
        "(Ljava/lang/String;ILjava/lang/String;ZI)V",
        "getImage",
        "()I",
        "setImage",
        "(I)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getNumber",
        "setNumber",
        "getShowNumber",
        "()Z",
        "setShowNumber",
        "(Z)V",
        "getUrl",
        "setUrl",
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
.field private image:I

.field private name:Ljava/lang/String;

.field private number:I

.field private showNumber:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/mogu/tv/model/GridUiModel;->name:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/mogu/tv/model/GridUiModel;->image:I

    .line 6
    iput-object p3, p0, Lcom/mogu/tv/model/GridUiModel;->url:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/mogu/tv/model/GridUiModel;->showNumber:Z

    .line 8
    iput p5, p0, Lcom/mogu/tv/model/GridUiModel;->number:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final getImage()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/mogu/tv/model/GridUiModel;->image:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mogu/tv/model/GridUiModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mogu/tv/model/GridUiModel;->number:I

    return v0
.end method

.method public final getShowNumber()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/mogu/tv/model/GridUiModel;->showNumber:Z

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mogu/tv/model/GridUiModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setImage(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/mogu/tv/model/GridUiModel;->image:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/mogu/tv/model/GridUiModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNumber(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mogu/tv/model/GridUiModel;->number:I

    return-void
.end method

.method public final setShowNumber(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mogu/tv/model/GridUiModel;->showNumber:Z

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/mogu/tv/model/GridUiModel;->url:Ljava/lang/String;

    return-void
.end method
