.class public final Lcom/mogu/tv/ui/activity/LabelsSelectActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "LabelsSelectActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActLabelsBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLabelsSelectActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LabelsSelectActivity.kt\ncom/mogu/tv/ui/activity/LabelsSelectActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1851#2,2:58\n*S KotlinDebug\n*F\n+ 1 LabelsSelectActivity.kt\ncom/mogu/tv/ui/activity/LabelsSelectActivity\n*L\n46#1:58,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0016\u0010\u0008\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/LabelsSelectActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActLabelsBinding;",
        "()V",
        "getLables",
        "",
        "initData",
        "initView",
        "refreshLables",
        "datas",
        "",
        "Lcom/mogu/tv/model/LabelsModel$Item;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$refreshLables(Lcom/mogu/tv/ui/activity/LabelsSelectActivity;Ljava/util/List;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->refreshLables(Ljava/util/List;)V

    return-void
.end method

.method private final getLables()V
    .locals 2

    .line 35
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/LabelsSelectActivity$getLables$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity$getLables$1;-><init>(Lcom/mogu/tv/ui/activity/LabelsSelectActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getLables(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final refreshLables(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/LabelsModel$Item;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActLabelsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActLabelsBinding;->flexLables:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/LabelsModel$Item;

    .line 47
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0d0088

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/kotlin/basiclib/AndroidutilsKt;->inflate$default(Landroid/app/Activity;ILandroid/view/ViewGroup;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a038a

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0}, Lcom/mogu/tv/model/LabelsModel$Item;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/databinding/ActLabelsBinding;

    iget-object v3, v3, Lcom/mogu/tv/databinding/ActLabelsBinding;->flexLables:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v1, "tv_item_history"

    .line 52
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/LabelsSelectActivity$refreshLables$1$1;

    invoke-direct {v1, v0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity$refreshLables$1$1;-><init>(Lcom/mogu/tv/model/LabelsModel$Item;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->getLables()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActLabelsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActLabelsBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->fitStatubar(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActLabelsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActLabelsBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/LabelsSelectActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/LabelsSelectActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 29
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActLabelsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActLabelsBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7cbe\u9009"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
