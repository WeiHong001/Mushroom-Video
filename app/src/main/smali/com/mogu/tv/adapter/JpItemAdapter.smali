.class public final Lcom/mogu/tv/adapter/JpItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "JpItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/VipVideoList$Data;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/JpItemAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/VipVideoList$Data;",
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

    const v0, 0x7f0d009a

    .line 21
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/VipVideoList$Data;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/mogu/tv/adapter/JpItemAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/JpItemAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ItemViplistBinding;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0a0187

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 26
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v2, v1, [I

    const v3, 0x7f0a0186

    aput v3, v2, v4

    .line 27
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v2, v1, [I

    const v3, 0x7f0a0180

    aput v3, v2, v4

    .line 28
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v2, v1, [I

    const v3, 0x7f0a0368

    aput v3, v2, v4

    .line 29
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array v2, v1, [I

    const v3, 0x7f0a017f

    aput v3, v2, v4

    .line 30
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 31
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->ivLock:Landroid/widget/ImageView;

    const-string v3, "ivLock"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getUnlock()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 32
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->ivUnlock:Landroid/widget/ImageView;

    const-string v3, "ivUnlock"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getUnlock()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 33
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->ivItem:Landroid/widget/ImageView;

    const-string v3, "ivItem"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getCover()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 34
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getTj_index()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 36
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llRecommend:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    const-string v6, "llRecommend.getChildAt(i)"

    if-ge v5, v2, :cond_0

    .line 37
    iget-object v7, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llRecommend:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getTj_index()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 40
    iget-object v7, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llRecommend:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getDz_index()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 44
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llDzlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_2
    const-string v6, "llDzlayout.getChildAt(i)"

    if-ge v5, v2, :cond_2

    .line 45
    iget-object v7, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llDzlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getDz_index()I

    move-result v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_3

    .line 48
    iget-object v7, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llDzlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getYz_index()I

    move-result v2

    if-gt v2, v3, :cond_5

    .line 52
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llYzLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_4
    const-string v6, "llYzLayout.getChildAt(i)"

    if-ge v5, v2, :cond_4

    .line 53
    iget-object v7, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llYzLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 55
    :cond_4
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getYz_index()I

    move-result v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_5

    .line 56
    iget-object v7, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llYzLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 59
    :cond_5
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getJq_index()I

    move-result v2

    if-gt v2, v3, :cond_7

    .line 60
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llJuqing:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    const-string v5, "llJuqing.getChildAt(i)"

    if-ge v3, v2, :cond_6

    .line 61
    iget-object v6, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llJuqing:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 63
    :cond_6
    invoke-virtual {p2}, Lcom/mogu/tv/model/VipVideoList$Data;->getJq_index()I

    move-result p2

    :goto_7
    if-ge v4, p2, :cond_7

    .line 64
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->llJuqing:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_8

    .line 68
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->tvIndex:Landroid/widget/TextView;

    const-string/jumbo p2, "\u6700\u65b0\u63a8\u8350"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 70
    :cond_8
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemViplistBinding;->tvIndex:Landroid/widget/TextView;

    const-string/jumbo p2, "\u5c0f\u7f16\u63a8\u8350"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/JpItemAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/VipVideoList$Data;)V

    return-void
.end method
