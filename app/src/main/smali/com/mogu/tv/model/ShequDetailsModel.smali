.class public final Lcom/mogu/tv/model/ShequDetailsModel;
.super Ljava/lang/Object;
.source "ShequDetailsModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/ShequDetailsModel$User;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001:\u0001 Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R!\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0013\"\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShequDetailsModel;",
        "",
        "comments",
        "",
        "created_at",
        "",
        "detail",
        "video",
        "favorites",
        "isZan",
        "id",
        "images",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/ShequListModel$Data$Image;",
        "Lkotlin/collections/ArrayList;",
        "user",
        "Lcom/mogu/tv/model/ShequDetailsModel$User;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;Lcom/mogu/tv/model/ShequDetailsModel$User;)V",
        "getComments",
        "()I",
        "getCreated_at",
        "()Ljava/lang/String;",
        "getDetail",
        "getFavorites",
        "getId",
        "getImages",
        "()Ljava/util/ArrayList;",
        "setZan",
        "(I)V",
        "getUser",
        "()Lcom/mogu/tv/model/ShequDetailsModel$User;",
        "getVideo",
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
.field private final comments:I

.field private final created_at:Ljava/lang/String;

.field private final detail:Ljava/lang/String;

.field private final favorites:I

.field private final id:I

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

.field private final user:Lcom/mogu/tv/model/ShequDetailsModel$User;

.field private final video:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;Lcom/mogu/tv/model/ShequDetailsModel$User;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShequListModel$Data$Image;",
            ">;",
            "Lcom/mogu/tv/model/ShequDetailsModel$User;",
            ")V"
        }
    .end annotation

    const-string v0, "created_at"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "video"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "images"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/mogu/tv/model/ShequDetailsModel;->comments:I

    .line 8
    iput-object p2, p0, Lcom/mogu/tv/model/ShequDetailsModel;->created_at:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/mogu/tv/model/ShequDetailsModel;->detail:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/mogu/tv/model/ShequDetailsModel;->video:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/mogu/tv/model/ShequDetailsModel;->favorites:I

    .line 12
    iput p6, p0, Lcom/mogu/tv/model/ShequDetailsModel;->isZan:I

    .line 13
    iput p7, p0, Lcom/mogu/tv/model/ShequDetailsModel;->id:I

    .line 14
    iput-object p8, p0, Lcom/mogu/tv/model/ShequDetailsModel;->images:Ljava/util/ArrayList;

    .line 15
    iput-object p9, p0, Lcom/mogu/tv/model/ShequDetailsModel;->user:Lcom/mogu/tv/model/ShequDetailsModel$User;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;Lcom/mogu/tv/model/ShequDetailsModel$User;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v11, p9

    .line 6
    invoke-direct/range {v2 .. v11}, Lcom/mogu/tv/model/ShequDetailsModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;Lcom/mogu/tv/model/ShequDetailsModel$User;)V

    return-void
.end method


# virtual methods
.method public final getComments()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->comments:I

    return v0
.end method

.method public final getCreated_at()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavorites()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->favorites:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->id:I

    return v0
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

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getUser()Lcom/mogu/tv/model/ShequDetailsModel$User;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->user:Lcom/mogu/tv/model/ShequDetailsModel$User;

    return-object v0
.end method

.method public final getVideo()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->video:Ljava/lang/String;

    return-object v0
.end method

.method public final isZan()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel;->isZan:I

    return v0
.end method

.method public final setZan(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/mogu/tv/model/ShequDetailsModel;->isZan:I

    return-void
.end method
