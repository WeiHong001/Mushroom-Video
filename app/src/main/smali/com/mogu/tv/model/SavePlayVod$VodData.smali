.class public final Lcom/mogu/tv/model/SavePlayVod$VodData;
.super Ljava/lang/Object;
.source "SavePlayVod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/SavePlayVod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VodData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/mogu/tv/model/SavePlayVod$VodData;",
        "",
        "()V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "name",
        "getName",
        "setName",
        "progress",
        "",
        "getProgress",
        "()Ljava/lang/Long;",
        "setProgress",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "equals",
        "",
        "other",
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
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private progress:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->id:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->progress:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 16
    instance-of v0, p1, Lcom/mogu/tv/model/SavePlayVod$VodData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->id:Ljava/lang/String;

    check-cast p1, Lcom/mogu/tv/model/SavePlayVod$VodData;

    iget-object p1, p1, Lcom/mogu/tv/model/SavePlayVod$VodData;->id:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->progress:Ljava/lang/Long;

    return-object v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->name:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(Ljava/lang/Long;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mogu/tv/model/SavePlayVod$VodData;->progress:Ljava/lang/Long;

    return-void
.end method
