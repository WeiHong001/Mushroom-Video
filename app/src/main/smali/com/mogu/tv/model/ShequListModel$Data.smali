.class public final Lcom/mogu/tv/model/ShequListModel$Data;
.super Ljava/lang/Object;
.source "ShequListModel.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/ShequListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/ShequListModel$Data$Image;,
        Lcom/mogu/tv/model/ShequListModel$Data$User;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002&\'B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010%\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008R\u0014\u0010\u0010\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000cR!\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\u0008\u0012\u0004\u0012\u00020\u0019`\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R\u0013\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000c\u00a8\u0006("
    }
    d2 = {
        "Lcom/mogu/tv/model/ShequListModel$Data;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "()V",
        "comments",
        "",
        "getComments",
        "()I",
        "setComments",
        "(I)V",
        "created_at",
        "",
        "getCreated_at",
        "()Ljava/lang/String;",
        "dataType",
        "getDataType",
        "setDataType",
        "detail",
        "getDetail",
        "favorites",
        "getFavorites",
        "setFavorites",
        "id",
        "getId",
        "images",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/ShequListModel$Data$Image;",
        "Lkotlin/collections/ArrayList;",
        "getImages",
        "()Ljava/util/ArrayList;",
        "isZan",
        "setZan",
        "user",
        "Lcom/mogu/tv/model/ShequListModel$Data$User;",
        "getUser",
        "()Lcom/mogu/tv/model/ShequListModel$Data$User;",
        "video",
        "getVideo",
        "getItemType",
        "Image",
        "User",
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
.field private comments:I

.field private final created_at:Ljava/lang/String;

.field private dataType:I

.field private final detail:Ljava/lang/String;

.field private favorites:I

.field private final id:Ljava/lang/String;

.field private final images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShequListModel$Data$Image;",
            ">;"
        }
    .end annotation
.end field

.field private isZan:I

.field private final user:Lcom/mogu/tv/model/ShequListModel$Data$User;

.field private final video:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->created_at:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->detail:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->video:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->id:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->images:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->dataType:I

    return-void
.end method


# virtual methods
.method public final getComments()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->comments:I

    return v0
.end method

.method public final getCreated_at()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->dataType:I

    return v0
.end method

.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavorites()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->favorites:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShequListModel$Data$Image;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemType()I
    .locals 2

    .line 10
    iget v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->dataType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public final getUser()Lcom/mogu/tv/model/ShequListModel$Data$User;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->user:Lcom/mogu/tv/model/ShequListModel$Data$User;

    return-object v0
.end method

.method public final getVideo()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->video:Ljava/lang/String;

    return-object v0
.end method

.method public final isZan()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/mogu/tv/model/ShequListModel$Data;->isZan:I

    return v0
.end method

.method public final setComments(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mogu/tv/model/ShequListModel$Data;->comments:I

    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/mogu/tv/model/ShequListModel$Data;->dataType:I

    return-void
.end method

.method public final setFavorites(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/mogu/tv/model/ShequListModel$Data;->favorites:I

    return-void
.end method

.method public final setZan(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/mogu/tv/model/ShequListModel$Data;->isZan:I

    return-void
.end method
