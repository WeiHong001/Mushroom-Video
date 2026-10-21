.class final Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/SearchActivity;->initView()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    const-string v0, "binding.etSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getSearchResultShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1, v1}, Lcom/mogu/tv/ui/activity/SearchActivity;->setSearchResultShow(Z)V

    .line 87
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->switchPage()V

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mogu/tv/ui/activity/SearchActivity;->setSearchResultShow(Z)V

    .line 93
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->switchPage()V

    .line 94
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;

    move-result-object p1

    if-nez p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    new-instance v2, Lcom/mogu/tv/model/SearchHistoryBean;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Lcom/mogu/tv/model/SearchHistoryBean;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Lcom/mogu/tv/ui/activity/SearchActivity;->setMSearchHistoryBean(Lcom/mogu/tv/model/SearchHistoryBean;)V

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mogu/tv/model/SearchHistoryBean;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 98
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mogu/tv/model/SearchHistoryBean;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mogu/tv/model/SearchHistoryBean;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5
    const/16 p1, 0xa

    if-lt v1, p1, :cond_6

    .line 101
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mogu/tv/model/SearchHistoryBean;->getResult()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 103
    :cond_6
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getSEARCH_LIST_KEY()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toJSONString(mSearchHistoryBean)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    sget-object p1, Lcom/mogu/tv/ui/activity/SearchActivity;->Companion:Lcom/mogu/tv/ui/activity/SearchActivity$Companion;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {v1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/SearchActivity$Companion;->setSearchKey(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->access$startSearch(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    .line 106
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvTosearch:Landroid/widget/TextView;

    const-string v1, "binding.tvTosearch"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/SearchActivity;->closeKeyBord(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->access$refreshHistory(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    :goto_1
    return-void
.end method
