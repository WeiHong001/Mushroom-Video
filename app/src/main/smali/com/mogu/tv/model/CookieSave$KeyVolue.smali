.class public final Lcom/mogu/tv/model/CookieSave$KeyVolue;
.super Ljava/lang/Object;
.source "CookieSave.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/CookieSave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyVolue"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/model/CookieSave$KeyVolue;",
        "",
        "()V",
        "cookie",
        "",
        "getCookie",
        "()Ljava/lang/String;",
        "setCookie",
        "(Ljava/lang/String;)V",
        "key",
        "getKey",
        "setKey",
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
.field private cookie:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->key:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->cookie:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/mogu/tv/model/CookieSave$KeyVolue;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->key:Ljava/lang/String;

    check-cast p1, Lcom/mogu/tv/model/CookieSave$KeyVolue;

    iget-object p1, p1, Lcom/mogu/tv/model/CookieSave$KeyVolue;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCookie()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final setCookie(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->cookie:Ljava/lang/String;

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/CookieSave$KeyVolue;->key:Ljava/lang/String;

    return-void
.end method
