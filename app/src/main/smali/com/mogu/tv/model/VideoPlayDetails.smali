.class public final Lcom/mogu/tv/model/VideoPlayDetails;
.super Ljava/lang/Object;
.source "VideoPlayDetails.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/VideoPlayDetails$Label;,
        Lcom/mogu/tv/model/VideoPlayDetails$User;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001:\u0002\u001d\u001eBa\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/mogu/tv/model/VideoPlayDetails;",
        "",
        "comments",
        "",
        "created_at",
        "favorites",
        "id",
        "labels",
        "",
        "Lcom/mogu/tv/model/VideoPlayDetails$Label;",
        "play_url",
        "title",
        "users",
        "Lcom/mogu/tv/model/VideoPlayDetails$User;",
        "views",
        "nubmer",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V",
        "getComments",
        "()Ljava/lang/String;",
        "getCreated_at",
        "getFavorites",
        "getId",
        "getLabels",
        "()Ljava/util/List;",
        "getNubmer",
        "getPlay_url",
        "getTitle",
        "getUsers",
        "getViews",
        "Label",
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
.field private final comments:Ljava/lang/String;

.field private final created_at:Ljava/lang/String;

.field private final favorites:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoPlayDetails$Label;",
            ">;"
        }
    .end annotation
.end field

.field private final nubmer:Ljava/lang/String;

.field private final play_url:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoPlayDetails$User;",
            ">;"
        }
    .end annotation
.end field

.field private final views:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoPlayDetails$Label;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoPlayDetails$User;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "comments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created_at"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorites"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labels"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play_url"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "users"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nubmer"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/VideoPlayDetails;->comments:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/mogu/tv/model/VideoPlayDetails;->created_at:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/mogu/tv/model/VideoPlayDetails;->favorites:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/mogu/tv/model/VideoPlayDetails;->id:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/mogu/tv/model/VideoPlayDetails;->labels:Ljava/util/List;

    .line 12
    iput-object p6, p0, Lcom/mogu/tv/model/VideoPlayDetails;->play_url:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/mogu/tv/model/VideoPlayDetails;->title:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lcom/mogu/tv/model/VideoPlayDetails;->users:Ljava/util/List;

    .line 15
    iput-object p9, p0, Lcom/mogu/tv/model/VideoPlayDetails;->views:Ljava/lang/String;

    .line 16
    iput-object p10, p0, Lcom/mogu/tv/model/VideoPlayDetails;->nubmer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComments()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated_at()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavorites()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->favorites:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoPlayDetails$Label;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->labels:Ljava/util/List;

    return-object v0
.end method

.method public final getNubmer()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->nubmer:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlay_url()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->play_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/VideoPlayDetails$User;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->users:Ljava/util/List;

    return-object v0
.end method

.method public final getViews()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/VideoPlayDetails;->views:Ljava/lang/String;

    return-object v0
.end method
