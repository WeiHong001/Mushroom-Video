.class public final Lcom/mogu/tv/main/UserManager;
.super Ljava/lang/Object;
.source "UserManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0010J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001a\u001a\u00020\u0010J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001c\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u0010J\u0012\u0010!\u001a\u00020\u00162\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/mogu/tv/main/UserManager;",
        "",
        "()V",
        "globalUser",
        "Lcom/mogu/tv/model/UserModel;",
        "getGlobalUser",
        "()Lcom/mogu/tv/model/UserModel;",
        "setGlobalUser",
        "(Lcom/mogu/tv/model/UserModel;)V",
        "shareTotal",
        "",
        "getShareTotal",
        "()I",
        "setShareTotal",
        "(I)V",
        "userToken",
        "",
        "getUserToken",
        "()Ljava/lang/String;",
        "setUserToken",
        "(Ljava/lang/String;)V",
        "clearUserInfo",
        "",
        "getFocusNumber",
        "getJifen",
        "getName",
        "getPicture",
        "getUserId",
        "initFirst",
        "isLogin",
        "",
        "refreshToken",
        "token",
        "saveUserInfo",
        "user",
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
.field public static final INSTANCE:Lcom/mogu/tv/main/UserManager;

.field private static globalUser:Lcom/mogu/tv/model/UserModel;

.field private static shareTotal:I

.field private static userToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/main/UserManager;

    invoke-direct {v0}, Lcom/mogu/tv/main/UserManager;-><init>()V

    sput-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    const-string v0, ""

    .line 18
    sput-object v0, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic saveUserInfo$default(Lcom/mogu/tv/main/UserManager;Lcom/mogu/tv/model/UserModel;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 48
    sget-object p1, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mogu/tv/main/UserManager;->saveUserInfo(Lcom/mogu/tv/model/UserModel;)V

    return-void
.end method


# virtual methods
.method public final clearUserInfo()V
    .locals 3

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    const-string v0, ""

    .line 60
    sput-object v0, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v2, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v2}, Lcom/mogu/tv/common/cache/CacheKey;->getUSER_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final getFocusNumber()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserModel;->getFollower()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "0"

    return-object v0
.end method

.method public final getGlobalUser()Lcom/mogu/tv/model/UserModel;
    .locals 1

    .line 17
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    return-object v0
.end method

.method public final getJifen()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserModel;->getIntegral()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "0"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 80
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    const-string/jumbo v0, "\u8611\u83c7\u7528\u6237"

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public final getPicture()Ljava/lang/String;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getShareTotal()I
    .locals 1

    .line 19
    sget v0, Lcom/mogu/tv/main/UserManager;->shareTotal:I

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getUserToken()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public final initFirst()V
    .locals 3

    .line 25
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getUSER_TOKEN()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    .line 26
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    sget-object v1, Lcom/mogu/tv/main/UserManager$initFirst$1;->INSTANCE:Lcom/mogu/tv/main/UserManager$initFirst$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getUserInfo(Lkotlin/jvm/functions/Function3;)V

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->clearUserInfo()V

    :goto_1
    return-void
.end method

.method public final isLogin()Z
    .locals 3

    .line 68
    sget-object v0, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final refreshToken(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sput-object p1, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getUSER_TOKEN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/main/UserManager;->initFirst()V

    return-void
.end method

.method public final saveUserInfo(Lcom/mogu/tv/model/UserModel;)V
    .locals 0

    .line 50
    :try_start_0
    sput-object p1, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final setGlobalUser(Lcom/mogu/tv/model/UserModel;)V
    .locals 0

    .line 17
    sput-object p1, Lcom/mogu/tv/main/UserManager;->globalUser:Lcom/mogu/tv/model/UserModel;

    return-void
.end method

.method public final setShareTotal(I)V
    .locals 0

    .line 19
    sput p1, Lcom/mogu/tv/main/UserManager;->shareTotal:I

    return-void
.end method

.method public final setUserToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sput-object p1, Lcom/mogu/tv/main/UserManager;->userToken:Ljava/lang/String;

    return-void
.end method
