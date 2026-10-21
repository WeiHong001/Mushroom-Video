.class public final Lcom/mogu/tv/model/SavePlayVod;
.super Ljava/lang/Object;
.source "SavePlayVod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/SavePlayVod$VodData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002R.\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mogu/tv/model/SavePlayVod;",
        "",
        "()V",
        "datas",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/SavePlayVod$VodData;",
        "Lkotlin/collections/ArrayList;",
        "getDatas",
        "()Ljava/util/ArrayList;",
        "setDatas",
        "(Ljava/util/ArrayList;)V",
        "VodData",
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
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/SavePlayVod$VodData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/model/SavePlayVod;->datas:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/SavePlayVod$VodData;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/SavePlayVod;->datas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/SavePlayVod$VodData;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/SavePlayVod;->datas:Ljava/util/ArrayList;

    return-void
.end method
