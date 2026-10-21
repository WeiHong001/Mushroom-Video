.class final Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/DialogUtils;->showQQProductDialog(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $isRequest:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $tvContent:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->$tvContent:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->$isRequest:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 115
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->getShareTotal()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->$tvContent:Landroid/widget/TextView;

    const-string/jumbo v1, "\u60a8\u8fd8\u6ca1\u6709\u9080\u8bf73\u4e2a\u7528\u6237\u4e0b\u8f7dapp\u3002\u8bf7\u70b9\u51fb\u4e0b\u65b9\u201c\u524d\u53bb\u9080\u8bf7\u201d\u53bb\u9080\u8bf7\u3002\u53ef\u5728-\u6211\u7684\u9875\u9762-\u67e5\u770b\u9080\u8bf7\u6570\u91cf"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->$isRequest:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->$isRequest:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 121
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;

    iget-object v2, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->$tvContent:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;-><init>(Landroid/widget/TextView;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v2, "qqsharequn"

    invoke-virtual {v0, v2, v1}, Lcom/mogu/tv/api/ApiManager;->getMoguConfig(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :cond_1
    return-void
.end method
