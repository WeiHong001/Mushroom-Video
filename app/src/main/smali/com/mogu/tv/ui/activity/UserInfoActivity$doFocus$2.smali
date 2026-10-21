.class final Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserInfoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/UserInfoActivity;->doFocus()V
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
        "response",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;->this$0:Lcom/mogu/tv/ui/activity/UserInfoActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/JustReturnMsg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V
    .locals 0

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p3, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;->this$0:Lcom/mogu/tv/ui/activity/UserInfoActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->dissmissLoading()V

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_1

    .line 180
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;->this$0:Lcom/mogu/tv/ui/activity/UserInfoActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMUserData()Lcom/mogu/tv/model/UserOtherInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/UserOtherInfo;->set_floowed(Z)V

    .line 181
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;->this$0:Lcom/mogu/tv/ui/activity/UserInfoActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->access$switchFocus(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    goto :goto_1

    .line 183
    :cond_1
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
