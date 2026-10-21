.class public final Lcom/mogu/tv/model/HistoryLists$Vod;
.super Ljava/lang/Object;
.source "HistoryLists.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/HistoryLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vod"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/mogu/tv/model/HistoryLists$Vod;",
        "",
        "cover",
        "",
        "duration",
        "id",
        "",
        "title",
        "users",
        "",
        "views",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V",
        "getCover",
        "()Ljava/lang/String;",
        "getDuration",
        "getId",
        "()I",
        "getTitle",
        "getUsers",
        "()Ljava/util/List;",
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
.field private final cover:Ljava/lang/String;

.field private final duration:Ljava/lang/String;

.field private final id:I

.field private final title:Ljava/lang/String;

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final views:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "cover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "users"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->cover:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->duration:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->id:I

    .line 18
    iput-object p4, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->title:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->users:Ljava/util/List;

    .line 20
    iput p6, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->views:I

    return-void
.end method


# virtual methods
.method public final getCover()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->users:Ljava/util/List;

    return-object v0
.end method

.method public final getViews()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mogu/tv/model/HistoryLists$Vod;->views:I

    return v0
.end method
