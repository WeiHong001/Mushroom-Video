.class public final Lcom/mogu/tv/model/GlobeAppData;
.super Ljava/lang/Object;
.source "GlobeAppData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001e\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\u0004J\u0008\u0010#\u001a\u0004\u0018\u00010\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/mogu/tv/model/GlobeAppData;",
        "",
        "()V",
        "ShareLink",
        "",
        "getShareLink",
        "()Ljava/lang/String;",
        "setShareLink",
        "(Ljava/lang/String;)V",
        "adConfigData",
        "Lcom/mogu/tv/model/AllAdsModel;",
        "getAdConfigData",
        "()Lcom/mogu/tv/model/AllAdsModel;",
        "setAdConfigData",
        "(Lcom/mogu/tv/model/AllAdsModel;)V",
        "font",
        "Landroid/graphics/Typeface;",
        "getFont",
        "()Landroid/graphics/Typeface;",
        "setFont",
        "(Landroid/graphics/Typeface;)V",
        "searchHot",
        "getSearchHot",
        "setSearchHot",
        "typeLists",
        "Lcom/mogu/tv/model/VideoTypes;",
        "getTypeLists",
        "()Lcom/mogu/tv/model/VideoTypes;",
        "setTypeLists",
        "(Lcom/mogu/tv/model/VideoTypes;)V",
        "getAdData",
        "getGlobeIconFont",
        "context",
        "Landroid/content/Context;",
        "getShareLinkWithInvite",
        "getTypes",
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


# static fields
.field public static final INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

.field private static ShareLink:Ljava/lang/String;

.field private static adConfigData:Lcom/mogu/tv/model/AllAdsModel;

.field private static font:Landroid/graphics/Typeface;

.field private static searchHot:Ljava/lang/String;

.field private static typeLists:Lcom/mogu/tv/model/VideoTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/model/GlobeAppData;

    invoke-direct {v0}, Lcom/mogu/tv/model/GlobeAppData;-><init>()V

    sput-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/mogu/tv/model/GlobeAppData;->searchHot:Ljava/lang/String;

    const-string v0, "https://www.mogu1.tv"

    .line 16
    sput-object v0, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdConfigData()Lcom/mogu/tv/model/AllAdsModel;
    .locals 1

    .line 14
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->adConfigData:Lcom/mogu/tv/model/AllAdsModel;

    return-object v0
.end method

.method public final getAdData()Lcom/mogu/tv/model/AllAdsModel;
    .locals 2

    .line 69
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->adConfigData:Lcom/mogu/tv/model/AllAdsModel;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel;->getActivity()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->adConfigData:Lcom/mogu/tv/model/AllAdsModel;

    return-object v0

    .line 70
    :cond_2
    :goto_1
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    sget-object v1, Lcom/mogu/tv/model/GlobeAppData$getAdData$1;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData$getAdData$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getAllAd(Lkotlin/jvm/functions/Function3;)V

    .line 78
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->adConfigData:Lcom/mogu/tv/model/AllAdsModel;

    return-object v0
.end method

.method public final getFont()Landroid/graphics/Typeface;
    .locals 1

    .line 19
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getGlobeIconFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->font:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "iconfont.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/mogu/tv/model/GlobeAppData;->font:Landroid/graphics/Typeface;

    .line 26
    :cond_0
    sget-object p1, Lcom/mogu/tv/model/GlobeAppData;->font:Landroid/graphics/Typeface;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getSearchHot()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->searchHot:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareLink()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareLinkWithInvite()Ljava/lang/String;
    .locals 5

    .line 30
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "?"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getTypeLists()Lcom/mogu/tv/model/VideoTypes;
    .locals 1

    .line 18
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->typeLists:Lcom/mogu/tv/model/VideoTypes;

    return-object v0
.end method

.method public final getTypes()Lcom/mogu/tv/model/VideoTypes;
    .locals 2

    .line 43
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->typeLists:Lcom/mogu/tv/model/VideoTypes;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->typeLists:Lcom/mogu/tv/model/VideoTypes;

    return-object v0

    .line 44
    :cond_2
    :goto_1
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    sget-object v1, Lcom/mogu/tv/model/GlobeAppData$getTypes$1;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData$getTypes$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getTypeAll(Lkotlin/jvm/functions/Function3;)V

    .line 52
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->typeLists:Lcom/mogu/tv/model/VideoTypes;

    return-object v0
.end method

.method public final setAdConfigData(Lcom/mogu/tv/model/AllAdsModel;)V
    .locals 0

    .line 14
    sput-object p1, Lcom/mogu/tv/model/GlobeAppData;->adConfigData:Lcom/mogu/tv/model/AllAdsModel;

    return-void
.end method

.method public final setFont(Landroid/graphics/Typeface;)V
    .locals 0

    .line 19
    sput-object p1, Lcom/mogu/tv/model/GlobeAppData;->font:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setSearchHot(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object p1, Lcom/mogu/tv/model/GlobeAppData;->searchHot:Ljava/lang/String;

    return-void
.end method

.method public final setShareLink(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sput-object p1, Lcom/mogu/tv/model/GlobeAppData;->ShareLink:Ljava/lang/String;

    return-void
.end method

.method public final setTypeLists(Lcom/mogu/tv/model/VideoTypes;)V
    .locals 0

    .line 18
    sput-object p1, Lcom/mogu/tv/model/GlobeAppData;->typeLists:Lcom/mogu/tv/model/VideoTypes;

    return-void
.end method
