.class final Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/MessageDetailsActivity;->getServerData()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/MessageDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/MoguConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageDetailsActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 35
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lcom/mogu/tv/model/MoguConfig;->getValue()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/model/MessageModel;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/MessageModel;

    const-string/jumbo p2, "\u3000\u3000"

    .line 37
    iget-object p3, p0, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/ui/activity/MessageDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p3

    check-cast p3, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;

    iget-object p3, p3, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvContent:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mogu/tv/model/MessageModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p3, p0, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/ui/activity/MessageDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p3

    check-cast p3, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;

    iget-object p3, p3, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mogu/tv/model/MessageModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageDetailsActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageDetailsActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mogu/tv/model/MessageModel;->getCreate_at()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kotlin/basiclib/utils/DateUtil;->getCarStrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
