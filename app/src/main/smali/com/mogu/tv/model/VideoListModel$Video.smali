.class public final Lcom/mogu/tv/model/VideoListModel$Video;
.super Ljava/lang/Object;
.source "VideoListModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/VideoListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/mogu/tv/model/VideoListModel$Video;",
        "",
        "cover",
        "",
        "duration",
        "",
        "id",
        "title",
        "users",
        "",
        "Lcom/mogu/tv/model/VideoListModel$User;",
        "views",
        "",
        "showAd",
        "",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZ)V",
        "getCover",
        "()Ljava/lang/String;",
        "getDuration",
        "()J",
        "getId",
        "getShowAd",
        "()Z",
        "setShowAd",
        "(Z)V",
        "getTitle",
        "getUsers",
        "()Ljava/util/List;",
        "getViews",
        "()I",
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
.field private final cover:Ljava/lang/String;

.field private final duration:J

.field private final id:Ljava/lang/String;

.field private showAd:Z

.field private final title:Ljava/lang/String;

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoListModel$User;",
            ">;"
        }
    .end annotation
.end field

.field private final views:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoListModel$User;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "cover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "users"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mogu/tv/model/VideoListModel$Video;->cover:Ljava/lang/String;

    .line 11
    iput-wide p2, p0, Lcom/mogu/tv/model/VideoListModel$Video;->duration:J

    .line 12
    iput-object p4, p0, Lcom/mogu/tv/model/VideoListModel$Video;->id:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/mogu/tv/model/VideoListModel$Video;->title:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/mogu/tv/model/VideoListModel$Video;->users:Ljava/util/List;

    .line 15
    iput p7, p0, Lcom/mogu/tv/model/VideoListModel$Video;->views:I

    .line 16
    iput-boolean p8, p0, Lcom/mogu/tv/model/VideoListModel$Video;->showAd:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    move/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 9
    invoke-direct/range {v1 .. v9}, Lcom/mogu/tv/model/VideoListModel$Video;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method


# virtual methods
.method public final getCover()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->duration:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowAd()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->showAd:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoListModel$User;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->users:Ljava/util/List;

    return-object v0
.end method

.method public final getViews()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mogu/tv/model/VideoListModel$Video;->views:I

    return v0
.end method

.method public final setShowAd(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/mogu/tv/model/VideoListModel$Video;->showAd:Z

    return-void
.end method
