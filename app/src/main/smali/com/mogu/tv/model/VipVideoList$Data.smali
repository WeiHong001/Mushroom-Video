.class public final Lcom/mogu/tv/model/VipVideoList$Data;
.super Ljava/lang/Object;
.source "VipVideoList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/VipVideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/mogu/tv/model/VipVideoList$Data;",
        "",
        "ID",
        "",
        "cover",
        "",
        "dz_index",
        "introduce",
        "jq_index",
        "play_url",
        "title",
        "tj_index",
        "unlock",
        "",
        "yz_index",
        "(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZI)V",
        "getID",
        "()I",
        "getCover",
        "()Ljava/lang/String;",
        "getDz_index",
        "getIntroduce",
        "getJq_index",
        "getPlay_url",
        "setPlay_url",
        "(Ljava/lang/String;)V",
        "getTitle",
        "getTj_index",
        "getUnlock",
        "()Z",
        "setUnlock",
        "(Z)V",
        "getYz_index",
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
.field private final ID:I

.field private final cover:Ljava/lang/String;

.field private final dz_index:I

.field private final introduce:Ljava/lang/String;

.field private final jq_index:I

.field private play_url:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final tj_index:I

.field private unlock:Z

.field private final yz_index:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZI)V
    .locals 1

    const-string v0, "cover"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introduce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play_url"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/mogu/tv/model/VipVideoList$Data;->ID:I

    .line 9
    iput-object p2, p0, Lcom/mogu/tv/model/VipVideoList$Data;->cover:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/mogu/tv/model/VipVideoList$Data;->dz_index:I

    .line 11
    iput-object p4, p0, Lcom/mogu/tv/model/VipVideoList$Data;->introduce:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/mogu/tv/model/VipVideoList$Data;->jq_index:I

    .line 13
    iput-object p6, p0, Lcom/mogu/tv/model/VipVideoList$Data;->play_url:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/mogu/tv/model/VipVideoList$Data;->title:Ljava/lang/String;

    .line 15
    iput p8, p0, Lcom/mogu/tv/model/VipVideoList$Data;->tj_index:I

    .line 16
    iput-boolean p9, p0, Lcom/mogu/tv/model/VipVideoList$Data;->unlock:Z

    .line 17
    iput p10, p0, Lcom/mogu/tv/model/VipVideoList$Data;->yz_index:I

    return-void
.end method


# virtual methods
.method public final getCover()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDz_index()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->dz_index:I

    return v0
.end method

.method public final getID()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->ID:I

    return v0
.end method

.method public final getIntroduce()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->introduce:Ljava/lang/String;

    return-object v0
.end method

.method public final getJq_index()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->jq_index:I

    return v0
.end method

.method public final getPlay_url()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->play_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTj_index()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->tj_index:I

    return v0
.end method

.method public final getUnlock()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->unlock:Z

    return v0
.end method

.method public final getYz_index()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mogu/tv/model/VipVideoList$Data;->yz_index:I

    return v0
.end method

.method public final setPlay_url(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/mogu/tv/model/VipVideoList$Data;->play_url:Ljava/lang/String;

    return-void
.end method

.method public final setUnlock(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/mogu/tv/model/VipVideoList$Data;->unlock:Z

    return-void
.end method
