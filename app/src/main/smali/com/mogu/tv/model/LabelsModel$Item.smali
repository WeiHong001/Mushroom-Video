.class public final Lcom/mogu/tv/model/LabelsModel$Item;
.super Ljava/lang/Object;
.source "LabelsModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/LabelsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/mogu/tv/model/LabelsModel$Item;",
        "",
        "id",
        "",
        "name",
        "",
        "(ILjava/lang/String;)V",
        "getId",
        "()I",
        "getName",
        "()Ljava/lang/String;",
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
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/mogu/tv/model/LabelsModel$Item;->id:I

    .line 12
    iput-object p2, p0, Lcom/mogu/tv/model/LabelsModel$Item;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/mogu/tv/model/LabelsModel$Item;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/LabelsModel$Item;->name:Ljava/lang/String;

    return-object v0
.end method
