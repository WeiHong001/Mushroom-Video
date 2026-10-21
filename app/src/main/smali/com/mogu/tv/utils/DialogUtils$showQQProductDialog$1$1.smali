.class final Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;->invoke()V
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
        "Lcom/mogu/tv/model/MoguConfig;",
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
        "Lcom/mogu/tv/model/MoguConfig;",
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
.field final synthetic $tvContent:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;->$tvContent:Landroid/widget/TextView;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/MoguConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_2

    .line 123
    sget-object p1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {p1}, Lcom/mogu/tv/main/UserManager;->getShareTotal()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 124
    iget-object p1, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;->$tvContent:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QQ\u7fa4\u53f7:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/mogu/tv/model/MoguConfig;->getValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",\u53e3\u4ee4\u4e3amogu.tv\u3002QQ\u7fa4\u4e25\u7981\u53d1\u9001\u5e7f\u544a,\u7fa4\u7684\u76ee\u7684\u662f\u7ed9\u72fc\u53cb\u4e00\u4e2a\u516c\u5f00\u514d\u8d39\u7684\u8ba8\u8bba\u73af\u5883\u3002\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1$1;->$tvContent:Landroid/widget/TextView;

    const-string/jumbo p2, "\u60a8\u8fd8\u6ca1\u6709\u9080\u8bf73\u4e2a\u7528\u6237\u4e0b\u8f7dapp\u3002\u8bf7\u70b9\u51fb\u4e0b\u65b9\u201c\u524d\u53bb\u9080\u8bf7\u201d\u53bb\u9080\u8bf7\u3002\u53ef\u5728-\u6211\u7684\u9875\u9762-\u67e5\u770b\u9080\u8bf7\u6570\u91cf"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
