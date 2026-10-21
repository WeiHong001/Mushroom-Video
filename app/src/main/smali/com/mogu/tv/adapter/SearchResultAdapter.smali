.class public final Lcom/mogu/tv/adapter/SearchResultAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SearchResultAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/SearchResult$Item;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/SearchResultAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/SearchResult$Item;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "item",
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
    .locals 1

    const v0, 0x7f0d0099

    .line 15
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/SearchResult$Item;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/mogu/tv/adapter/SearchResultAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/SearchResultAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;

    .line 19
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {v1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    sget-object v2, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v1, v1

    const-wide v3, 0x3ff7333333333333L    # 1.45

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    iget-object v1, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/SearchResult$Item;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    const-string v0, "ivVideolist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mogu/tv/model/SearchResult$Item;->getPic()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0f0064

    invoke-static {p1, p2, v0}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/mogu/tv/model/SearchResult$Item;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/SearchResultAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/SearchResult$Item;)V

    return-void
.end method
