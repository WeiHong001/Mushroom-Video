.class public final Lcom/mogu/tv/ui/activity/PraviteActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "PraviteActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActPraviteBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/PraviteActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActPraviteBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/ActivityAdAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/ActivityAdAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/ActivityAdAdapter;)V",
        "initData",
        "",
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
.field private mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/mogu/tv/adapter/ActivityAdAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/ActivityAdAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PraviteActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/ActivityAdAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PraviteActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PraviteActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActPraviteBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActPraviteBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/PraviteActivity;->fitStatubar(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PraviteActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActPraviteBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActPraviteBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/PraviteActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PraviteActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/PraviteActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 24
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PraviteActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActPraviteBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActPraviteBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7528\u6236\u96b1\u79c1"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/ActivityAdAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PraviteActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    return-void
.end method
