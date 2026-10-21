.class public final Lcom/mogu/tv/model/ShortVideoList$Data;
.super Ljava/lang/Object;
.source "ShortVideoList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/ShortVideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShortVideoList$Data;",
        "",
        "comments",
        "",
        "favorites",
        "id",
        "play_url",
        "title",
        "cover",
        "user",
        "Lcom/mogu/tv/model/ShortVideoList$User;",
        "views",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/model/ShortVideoList$User;Ljava/lang/String;)V",
        "getComments",
        "()Ljava/lang/String;",
        "getCover",
        "getFavorites",
        "getId",
        "getPlay_url",
        "getTitle",
        "getUser",
        "()Lcom/mogu/tv/model/ShortVideoList$User;",
        "getViews",
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
.field private final comments:Ljava/lang/String;

.field private final cover:Ljava/lang/String;

.field private final favorites:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final play_url:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final user:Lcom/mogu/tv/model/ShortVideoList$User;

.field private final views:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/model/ShortVideoList$User;Ljava/lang/String;)V
    .locals 1

    const-string v0, "comments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorites"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play_url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cover"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->comments:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->favorites:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->id:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->play_url:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->title:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->cover:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->user:Lcom/mogu/tv/model/ShortVideoList$User;

    .line 15
    iput-object p8, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->views:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComments()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavorites()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->favorites:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlay_url()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->play_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/mogu/tv/model/ShortVideoList$User;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->user:Lcom/mogu/tv/model/ShortVideoList$User;

    return-object v0
.end method

.method public final getViews()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$Data;->views:Ljava/lang/String;

    return-object v0
.end method
