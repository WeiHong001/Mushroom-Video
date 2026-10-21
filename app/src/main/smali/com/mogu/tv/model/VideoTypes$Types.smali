.class public final Lcom/mogu/tv/model/VideoTypes$Types;
.super Ljava/lang/Object;
.source "VideoTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/VideoTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Types"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/model/VideoTypes$Types;",
        "",
        "()V",
        "child",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/VideoTypes$Child;",
        "Lkotlin/collections/ArrayList;",
        "getChild",
        "()Ljava/util/ArrayList;",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "name",
        "getName",
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
.field private final child:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoTypes$Child;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/model/VideoTypes$Types;->child:Ljava/util/ArrayList;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/mogu/tv/model/VideoTypes$Types;->id:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/mogu/tv/model/VideoTypes$Types;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChild()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoTypes$Child;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/VideoTypes$Types;->child:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/VideoTypes$Types;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/VideoTypes$Types;->name:Ljava/lang/String;

    return-object v0
.end method
