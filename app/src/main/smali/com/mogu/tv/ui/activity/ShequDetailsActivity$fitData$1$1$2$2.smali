.class final Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShequDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->invoke()V
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
.field final synthetic $this_run:Lcom/mogu/tv/model/ShequDetailsModel;

.field final synthetic $this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/ShequDetailsActivity;Lcom/mogu/tv/model/ShequDetailsModel;Lcom/mogu/tv/databinding/ActShequinfoBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    iput-object p2, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    iput-object p3, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/JustReturnMsg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V
    .locals 0

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->dissmissLoading()V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    .line 201
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/ShequDetailsModel;->setZan(I)V

    .line 202
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActShequinfoBinding;->ivPraise:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    invoke-virtual {p3}, Lcom/mogu/tv/model/ShequDetailsModel;->isZan()I

    move-result p3

    if-ne p3, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 203
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActShequinfoBinding;->tvPraise:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    invoke-virtual {p3}, Lcom/mogu/tv/model/ShequDetailsModel;->getFavorites()I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
