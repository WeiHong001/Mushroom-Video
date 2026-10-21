.class public final Lcom/mogu/tv/ui/frag/ShortVideoItemFragment$Companion;
.super Ljava/lang/Object;
.source "ShortVideoItemFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ShortVideoItemFragment$Companion;",
        "",
        "()V",
        "getNewInstance",
        "Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;",
        "position",
        "",
        "item",
        "Lcom/mogu/tv/model/ShortVideoList$Data;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShortVideoItemFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNewInstance(ILcom/mogu/tv/model/ShortVideoList$Data;)Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;

    invoke-direct {v0}, Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;-><init>()V

    .line 34
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getUser()Lcom/mogu/tv/model/ShortVideoList$User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getUser()Lcom/mogu/tv/model/ShortVideoList$User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mogu/tv/model/ShortVideoList$User;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u8611\u83c7\u7528\u6237"

    :goto_0
    const/16 v2, 0x9

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getUser()Lcom/mogu/tv/model/ShortVideoList$User;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/mogu/tv/model/ShortVideoList$User;->getAvatar()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    const-string v6, "photo"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getPlay_url()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "url"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "id"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "name"

    .line 38
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getFavorites()Ljava/lang/String;

    move-result-object v3

    const-string v4, "favorites"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getComments()Ljava/lang/String;

    move-result-object v3

    const-string v4, "comments"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "position"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v1

    const/16 p1, 0x8

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getUser()Lcom/mogu/tv/model/ShortVideoList$User;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$User;->getId()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string/jumbo p2, "userid"

    invoke-static {p2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v2, p1

    .line 37
    invoke-static {v2}, Lorg/jetbrains/anko/ContextUtilsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mogu/tv/ui/frag/ShortVideoItemFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
