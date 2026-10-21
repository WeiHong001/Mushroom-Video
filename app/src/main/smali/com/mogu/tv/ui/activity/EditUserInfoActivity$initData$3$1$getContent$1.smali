.class final Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditUserInfoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;->getContent(Ljava/lang/String;)V
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
        "Lcom/mogu/tv/model/JustReturnMsg;",
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
        "<anonymous parameter 2>",
        "Lcom/mogu/tv/model/JustReturnMsg;",
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


# instance fields
.field final synthetic $str:Ljava/lang/String;

.field final synthetic this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    iput-object p2, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;->$str:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/JustReturnMsg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V
    .locals 0

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p3, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->dissmissLoading()V

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_1

    .line 43
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u4fee\u6539\u6210\u529f!"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {p1}, Lcom/mogu/tv/main/UserManager;->getGlobalUser()Lcom/mogu/tv/model/UserModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;->$str:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/UserModel;->setName(Ljava/lang/String;)V

    .line 45
    :goto_0
    sget-object p1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3}, Lcom/mogu/tv/main/UserManager;->saveUserInfo$default(Lcom/mogu/tv/main/UserManager;Lcom/mogu/tv/model/UserModel;ILjava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1$getContent$1;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->tvName:Landroid/widget/TextView;

    sget-object p2, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {p2}, Lcom/mogu/tv/main/UserManager;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 48
    :cond_1
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
