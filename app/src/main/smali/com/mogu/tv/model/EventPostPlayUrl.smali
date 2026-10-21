.class public final Lcom/mogu/tv/model/EventPostPlayUrl;
.super Ljava/lang/Object;
.source "EventBean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mogu/tv/model/EventPostPlayUrl;",
        "",
        "playUrl",
        "",
        "palyName",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getPalyName",
        "()Ljava/lang/String;",
        "setPalyName",
        "(Ljava/lang/String;)V",
        "getPlayUrl",
        "setPlayUrl",
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
.field private palyName:Ljava/lang/String;

.field private playUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "playUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "palyName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mogu/tv/model/EventPostPlayUrl;->playUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/mogu/tv/model/EventPostPlayUrl;->palyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPalyName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mogu/tv/model/EventPostPlayUrl;->palyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mogu/tv/model/EventPostPlayUrl;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setPalyName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/mogu/tv/model/EventPostPlayUrl;->palyName:Ljava/lang/String;

    return-void
.end method

.method public final setPlayUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/mogu/tv/model/EventPostPlayUrl;->playUrl:Ljava/lang/String;

    return-void
.end method
