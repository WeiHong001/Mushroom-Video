.class public final Lcom/mogu/tv/model/BannerImg$ResultItem;
.super Ljava/lang/Object;
.source "BannerImg.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/BannerImg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001Bq\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/mogu/tv/model/BannerImg$ResultItem;",
        "",
        "seat",
        "",
        "img",
        "",
        "id",
        "title",
        "type",
        "url",
        "android_url",
        "video",
        "vclass",
        "status",
        "(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "getAndroid_url",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getImg",
        "getSeat",
        "getStatus",
        "getTitle",
        "getType",
        "getUrl",
        "getVclass",
        "getVideo",
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
.field private final android_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "android_url"
    .end annotation
.end field

.field private final id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final img:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "img"
    .end annotation
.end field

.field private final seat:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seat"
    .end annotation
.end field

.field private final status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private final type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private final vclass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "class"
    .end annotation
.end field

.field private final video:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/mogu/tv/model/BannerImg$ResultItem;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "img"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->seat:I

    .line 20
    iput-object p2, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->img:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->id:I

    .line 24
    iput-object p4, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->title:Ljava/lang/String;

    .line 26
    iput p5, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->type:I

    .line 28
    iput-object p6, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->url:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->android_url:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->video:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->vclass:Ljava/lang/String;

    .line 36
    iput p10, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->status:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    move-object v7, v8

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v8

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v8

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v8, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v2, p10

    :goto_9
    move-object p1, p0

    move p2, v1

    move-object p3, v3

    move/from16 p4, v5

    move-object/from16 p5, v4

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v8

    move/from16 p11, v2

    .line 17
    invoke-direct/range {p1 .. p11}, Lcom/mogu/tv/model/BannerImg$ResultItem;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getAndroid_url()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->android_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->id:I

    return v0
.end method

.method public final getImg()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->img:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeat()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->seat:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->status:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->type:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVclass()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->vclass:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideo()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mogu/tv/model/BannerImg$ResultItem;->video:Ljava/lang/String;

    return-object v0
.end method
