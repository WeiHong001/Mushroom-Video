.class public final Lcom/mogu/tv/ui/activity/NvYouActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "NvYouActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActNvyouBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/NvYouActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActNvyouBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/NvYouAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/NvYouAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/NvYouAdapter;)V",
        "getServerData",
        "",
        "initData",
        "initView",
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
.field private mAdapter:Lcom/mogu/tv/adapter/NvYouAdapter;


# direct methods
.method public static synthetic $r8$lambda$hqQz0rBhi5tYVNMECcM6z3LKZds(Landroid/view/View;IILcom/mogu/tv/model/NvyouList$Item;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/NvYouActivity;->initData$lambda-0(Landroid/view/View;IILcom/mogu/tv/model/NvyouList$Item;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/mogu/tv/adapter/NvYouAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mogu/tv/adapter/NvYouAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/NvYouActivity;->mAdapter:Lcom/mogu/tv/adapter/NvYouAdapter;

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3, v2}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 37
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/NvYouActivity$getServerData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/NvYouActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/NvYouActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getNvyou(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-0(Landroid/view/View;IILcom/mogu/tv/model/NvyouList$Item;)V
    .locals 0

    .line 30
    sget-object p0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/mogu/tv/model/NvyouList$Item;->getUser()Lcom/mogu/tv/model/NvyouList$User;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mogu/tv/model/NvyouList$User;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUserDetails(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/NvYouAdapter;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/NvYouActivity;->mAdapter:Lcom/mogu/tv/adapter/NvYouAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 4

    .line 26
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNvyouBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNvyouBinding;->indexbar:Lme/yokeyword/indexablerv/IndexableLayout;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/IndexableLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNvyouBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNvyouBinding;->indexbar:Lme/yokeyword/indexablerv/IndexableLayout;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/NvYouActivity;->mAdapter:Lcom/mogu/tv/adapter/NvYouAdapter;

    check-cast v1, Lme/yokeyword/indexablerv/IndexableAdapter;

    invoke-virtual {v0, v1}, Lme/yokeyword/indexablerv/IndexableLayout;->setAdapter(Lme/yokeyword/indexablerv/IndexableAdapter;)V

    .line 28
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->getServerData()V

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/NvYouActivity;->mAdapter:Lcom/mogu/tv/adapter/NvYouAdapter;

    sget-object v1, Lcom/mogu/tv/ui/activity/NvYouActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mogu/tv/ui/activity/NvYouActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/NvYouAdapter;->setOnItemContentClickListener(Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNvyouBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNvyouBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->fitStatubar(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNvyouBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNvyouBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/NvYouActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/NvYouActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/NvYouActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/NvYouActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNvyouBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNvyouBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6d77\u9009\u5973\u4f18"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/NvYouAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/NvYouActivity;->mAdapter:Lcom/mogu/tv/adapter/NvYouAdapter;

    return-void
.end method
