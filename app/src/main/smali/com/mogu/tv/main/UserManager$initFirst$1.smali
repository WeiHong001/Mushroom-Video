.class final Lcom/mogu/tv/main/UserManager$initFirst$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/main/UserManager;->initFirst()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/mogu/tv/model/UserModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
        "Lcom/mogu/tv/model/UserModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mogu/tv/main/UserManager$initFirst$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/main/UserManager$initFirst$1;

    invoke-direct {v0}, Lcom/mogu/tv/main/UserManager$initFirst$1;-><init>()V

    sput-object v0, Lcom/mogu/tv/main/UserManager$initFirst$1;->INSTANCE:Lcom/mogu/tv/main/UserManager$initFirst$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/UserModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/main/UserManager$initFirst$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/UserModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/UserModel;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 29
    sget-object p1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {p1, p3}, Lcom/mogu/tv/main/UserManager;->saveUserInfo(Lcom/mogu/tv/model/UserModel;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x193

    if-ne p1, p2, :cond_1

    .line 31
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u8d26\u53f7\u5df2\u8fc7\u671f,\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 32
    sget-object p1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {p1}, Lcom/mogu/tv/main/UserManager;->clearUserInfo()V

    :cond_1
    :goto_0
    return-void
.end method
