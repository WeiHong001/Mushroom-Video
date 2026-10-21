.class public final Lcom/mogu/tv/ui/activity/SearchActivity$Companion;
.super Ljava/lang/Object;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/ui/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/SearchActivity$Companion;",
        "",
        "()V",
        "searchKey",
        "",
        "getSearchKey",
        "()Ljava/lang/String;",
        "setSearchKey",
        "(Ljava/lang/String;)V",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSearchKey()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/mogu/tv/ui/activity/SearchActivity;->access$getSearchKey$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setSearchKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->access$setSearchKey$cp(Ljava/lang/String;)V

    return-void
.end method
