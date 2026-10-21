.class public final Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;
.super Ljava/lang/Object;
.source "ShortDetailsActivity.kt"

# interfaces
.implements Lcom/github/like/OnLikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/mogu/tv/ui/activity/ShortDetailsActivity$initView$2",
        "Lcom/github/like/OnLikeListener;",
        "firstdo",
        "",
        "liked",
        "",
        "likeButton",
        "Lcom/github/like/LikeButton;",
        "unLiked",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/ShortDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public firstdo()Z
    .locals 1

    .line 65
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    sget-object v0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {v0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toLoginActivity()V

    const/4 v0, 0x0

    return v0
.end method

.method public liked(Lcom/github/like/LikeButton;)V
    .locals 3

    .line 53
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    check-cast p1, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2, v1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 54
    sget-object p1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2$liked$1;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    invoke-direct {v1, v2}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2$liked$1;-><init>(Lcom/mogu/tv/ui/activity/ShortDetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0, v1}, Lcom/mogu/tv/api/ApiManager;->vLogStar(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public unLiked(Lcom/github/like/LikeButton;)V
    .locals 3

    .line 74
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    check-cast p1, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2, v1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 75
    sget-object p1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2$unLiked$1;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/ShortDetailsActivity;

    invoke-direct {v1, v2}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2$unLiked$1;-><init>(Lcom/mogu/tv/ui/activity/ShortDetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, v0, v1}, Lcom/mogu/tv/api/ApiManager;->vLogDelete(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
