.class public final Lcom/mogu/tv/model/BannerImg;
.super Ljava/lang/Object;
.source "BannerImg.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/BannerImg$ResultItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0011B5\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR*\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/mogu/tv/model/BannerImg;",
        "",
        "result",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/BannerImg$ResultItem;",
        "Lkotlin/collections/ArrayList;",
        "message",
        "",
        "status",
        "",
        "(Ljava/util/ArrayList;Ljava/lang/String;I)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getResult",
        "()Ljava/util/ArrayList;",
        "getStatus",
        "()I",
        "ResultItem",
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
.field private final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private final result:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private final status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mogu/tv/model/BannerImg;->result:Ljava/util/ArrayList;

    .line 12
    iput-object p2, p0, Lcom/mogu/tv/model/BannerImg;->message:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/mogu/tv/model/BannerImg;->status:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/mogu/tv/model/BannerImg;-><init>(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mogu/tv/model/BannerImg;->status:I

    return v0
.end method
