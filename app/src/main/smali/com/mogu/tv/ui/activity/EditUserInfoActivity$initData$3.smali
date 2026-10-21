.class final Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "EditUserInfoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    iget-object p1, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    new-instance p1, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;->this$0:Lcom/mogu/tv/ui/activity/EditUserInfoActivity;

    invoke-direct {p1, v0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3$1;-><init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;)V

    move-object v5, p1

    check-cast v5, Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;

    .line 52
    sget-object p1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {p1}, Lcom/mogu/tv/main/UserManager;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v6, p1

    const-string/jumbo v3, "\u8bf7\u8f93\u5165\u60a8\u7684\u6635\u79f0"

    const/16 v4, 0xa

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/mogu/tv/utils/DialogUtils;->showEditDialog(Landroid/app/Activity;Ljava/lang/String;ILcom/mogu/tv/utils/DialogUtils$EditContentGetListner;Ljava/lang/String;)V

    return-void
.end method
