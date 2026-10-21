.class public final Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "AdviceSuggestActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/FragAdviceReportBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdviceSuggestActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdviceSuggestActivity.kt\ncom/mogu/tv/ui/activity/AdviceSuggestActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n1851#2,2:124\n*S KotlinDebug\n*F\n+ 1 AdviceSuggestActivity.kt\ncom/mogu/tv/ui/activity/AdviceSuggestActivity\n*L\n69#1:124,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J\u0008\u0010\u0018\u001a\u00020\u0016H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/FragAdviceReportBinding;",
        "()V",
        "mId",
        "",
        "getMId",
        "()Ljava/lang/String;",
        "setMId",
        "(Ljava/lang/String;)V",
        "mSuggestText",
        "getMSuggestText",
        "setMSuggestText",
        "questions",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/QuestionResultItem;",
        "Lkotlin/collections/ArrayList;",
        "getQuestions",
        "()Ljava/util/ArrayList;",
        "setQuestions",
        "(Ljava/util/ArrayList;)V",
        "initData",
        "",
        "initView",
        "onDestroy",
        "refreshTag",
        "submit",
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
.field private mId:Ljava/lang/String;

.field private mSuggestText:Ljava/lang/String;

.field private questions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/QuestionResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mSuggestText:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mId:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$refreshTag(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->refreshTag()V

    return-void
.end method

.method public static final synthetic access$submit(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->submit()V

    return-void
.end method

.method private final refreshTag()V
    .locals 8

    .line 68
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/model/QuestionResultItem;

    .line 70
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0d0095

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/kotlin/basiclib/AndroidutilsKt;->inflate$default(Landroid/app/Activity;ILandroid/view/ViewGroup;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0389

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    invoke-virtual {v1}, Lcom/mogu/tv/model/QuestionResultItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/mogu/tv/model/QuestionResultItem;->getIsselect()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v4, v4, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4, v2}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v2, "tv_item"

    .line 75
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;

    invoke-direct {v2, p0, v1}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$refreshTag$1$1;-><init>(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;Lcom/mogu/tv/model/QuestionResultItem;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final submit()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->putEdit:Lcom/mogu/tv/view/TipsEditText;

    invoke-virtual {v0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v1, "\u8acb\u8f38\u5165\u5167\u5bb9"

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mSuggestText:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 102
    sget-object v0, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v1, "\u8acb\u9078\u64c7\u610f\u898b\u554f\u984c\u5206\u985e,\u4ee5\u4fbf\u5de5\u4f5c\u4eba\u54e1\u5feb\u901f\u627e\u5230\u554f\u984c"

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x7c

    const-string v3, ""

    if-nez v0, :cond_6

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f71\u7247id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mSuggestText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->putEdit:Lcom/mogu/tv/view/TipsEditText;

    invoke-virtual {v0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    move-object v1, p0

    check-cast v1, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 111
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$submit$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$submit$1;-><init>(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->postSuggest(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final getMId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMSuggestText()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mSuggestText:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/QuestionResultItem;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 6

    .line 51
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mId:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u64ad\u653e\u5361\u9813"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u5f71\u7247\u932f\u8aa4"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u9801\u9762\u7570\u5e38"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u6a19\u7c3d\u932f\u8aa4"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u641c\u7d22\u4e0d\u6e96"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u63a8\u85a6\u4e0d\u6e96"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u61c9\u7528\u932f\u8aa4"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    new-instance v1, Lcom/mogu/tv/model/QuestionResultItem;

    const-string/jumbo v2, "\u5176\u4ed6\u5efa\u8b70"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mogu/tv/model/QuestionResultItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->refreshTag()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->fitStatubar(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 38
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->tvSubmit:Landroid/widget/TextView;

    const-string v1, "binding.tvSubmit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity$initView$2;-><init>(Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 41
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragAdviceReportBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u610f\u898b\u53cd\u994b"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    return-void
.end method

.method public final setMId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mId:Ljava/lang/String;

    return-void
.end method

.method public final setMSuggestText(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->mSuggestText:Ljava/lang/String;

    return-void
.end method

.method public final setQuestions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/QuestionResultItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;->questions:Ljava/util/ArrayList;

    return-void
.end method
