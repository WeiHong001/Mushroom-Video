.class public final Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;
.super Ljava/lang/Object;
.source "SearchActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/mogu/tv/ui/activity/SearchActivity$initView$3",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    const-string v0, "binding.etSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "binding.ivClearContent"

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActSearchBinding;->ivClearContent:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 74
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActSearchBinding;->tvTosearch:Landroid/widget/TextView;

    const-string/jumbo v0, "\u641c\u7d22"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActSearchBinding;->ivClearContent:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 77
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActSearchBinding;->tvTosearch:Landroid/widget/TextView;

    const-string/jumbo v0, "\u53d6\u6d88"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
