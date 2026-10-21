.class final Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AdviceSuggestActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->refreshTag()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdviceSuggestActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdviceSuggestActivity.kt\ncom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n1851#2,2:124\n*S KotlinDebug\n*F\n+ 1 AdviceSuggestActivity.kt\ncom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1\n*L\n76#1:124,2\n*E\n"
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
.field final synthetic $it1:Lcom/mogu/tv/model/QuestionResultItem;

.field final synthetic this$0:Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;Lcom/mogu/tv/model/QuestionResultItem;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->this$0:Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;

    iput-object p2, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->$it1:Lcom/mogu/tv/model/QuestionResultItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->this$0:Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->$it1:Lcom/mogu/tv/model/QuestionResultItem;

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/model/QuestionResultItem;

    .line 77
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, v2}, Lcom/mogu/tv/model/QuestionResultItem;->setIsselect(Z)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->$it1:Lcom/mogu/tv/model/QuestionResultItem;

    invoke-virtual {p1}, Lcom/mogu/tv/model/QuestionResultItem;->getIsselect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mogu/tv/model/QuestionResultItem;->setIsselect(Z)V

    .line 82
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->$it1:Lcom/mogu/tv/model/QuestionResultItem;

    invoke-virtual {p1}, Lcom/mogu/tv/model/QuestionResultItem;->getIsselect()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->this$0:Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->$it1:Lcom/mogu/tv/model/QuestionResultItem;

    invoke-virtual {v0}, Lcom/mogu/tv/model/QuestionResultItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->setMSuggestText(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->this$0:Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->setMSuggestText(Ljava/lang/String;)V

    .line 87
    :goto_1
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;->this$0:Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->access$refreshTag(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;)V

    return-void
.end method
