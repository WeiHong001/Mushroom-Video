.class public final Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;
.super Ljava/lang/Object;
.source "EditUserInfoActivity.kt"

# interfaces
.implements Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1",
        "Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;",
        "getContent",
        "",
        "str",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/mogu/tv/utils/CommentFilter;->INSTANCE:Lcom/mogu/tv/utils/CommentFilter;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/CommentFilter;->isRegularText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v0, "\u59d3\u540d\u4fee\u6539\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 40
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    invoke-direct {v1, v2, p1}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;-><init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, p1, v1}, Lcom/mogu/tv/api/ApiManager;->updateUserName(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
