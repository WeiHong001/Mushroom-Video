.class public final Lcom/mogu/tv/adapter/ShequListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ShequListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/mogu/tv/model/ShequListModel$Data;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShequListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShequListAdapter.kt\ncom/mogu/tv/adapter/ShequListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1851#2,2:150\n*S KotlinDebug\n*F\n+ 1 ShequListAdapter.kt\ncom/mogu/tv/adapter/ShequListAdapter\n*L\n118#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/ShequListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/mogu/tv/model/ShequListModel$Data;",
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
.method public static synthetic $r8$lambda$GdX7y8mbMwCiy_dgj9m0x8PY7Jg(Lcom/mogu/tv/model/ShequListModel$Data;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/adapter/ShequListAdapter;->convert$lambda-2$lambda-1(Lcom/mogu/tv/model/ShequListModel$Data;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    const v1, 0x7f0d0083

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/adapter/ShequListAdapter;->addItemType(II)V

    const/4 v0, 0x2

    const v1, 0x7f0d007e

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/adapter/ShequListAdapter;->addItemType(II)V

    return-void
.end method

.method private static final convert$lambda-2$lambda-1(Lcom/mogu/tv/model/ShequListModel$Data;Landroid/view/View;I)V
    .locals 1

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    .line 119
    invoke-virtual {v0}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    sget-object p0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0, p2, p1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->showPhoto(ILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/ShequListModel$Data;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_0

    goto/16 :goto_c

    .line 135
    :cond_0
    sget-object p2, Lcom/mogu/tv/adapter/ShequListAdapter$convert$3;->INSTANCE:Lcom/mogu/tv/adapter/ShequListAdapter$convert$3;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ItemAd31Binding;

    .line 136
    sget-object p2, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p2}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel;->getShequ()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v2

    .line 137
    :goto_0
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemAd31Binding;->ivAd:Landroid/widget/ImageView;

    const-string v1, "ivAd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v0, v2}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 138
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemAd31Binding;->ivAd:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/mogu/tv/adapter/ShequListAdapter$convert$4$1;

    invoke-direct {v0, p2}, Lcom/mogu/tv/adapter/ShequListAdapter$convert$4$1;-><init>(Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_c

    .line 34
    :cond_3
    sget-object v0, Lcom/mogu/tv/adapter/ShequListAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/ShequListAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    .line 35
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v5, "ivPhoto"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getUser()Lcom/mogu/tv/model/ShequListModel$Data$User;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/mogu/tv/model/ShequListModel$Data$User;->getAvatar()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    invoke-static {v4, v6}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 36
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    new-instance v5, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$1;

    invoke-direct {v5, p2}, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$1;-><init>(Lcom/mogu/tv/model/ShequListModel$Data;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 39
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llContent:Landroid/widget/LinearLayout;

    const-string v5, "llContent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    new-instance v5, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$2;

    invoke-direct {v5, p2}, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$2;-><init>(Lcom/mogu/tv/model/ShequListModel$Data;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 42
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getUser()Lcom/mogu/tv/model/ShequListModel$Data$User;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/mogu/tv/model/ShequListModel$Data$User;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getCreated_at()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_8

    .line 44
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getCreated_at()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kotlin/basiclib/utils/DateUtil;->getCarStrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_8
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getDetail()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v4, 0x1

    :goto_6
    const-string/jumbo v6, "tvFriendTitle"

    if-eqz v4, :cond_b

    .line 47
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    goto :goto_7

    .line 49
    :cond_b
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 50
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getDetail()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_7
    iget-object v4, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llPraise:Landroid/widget/LinearLayout;

    const-string v6, "llPraise"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    new-instance v6, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$3;

    invoke-direct {v6, p2, v0}, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$3;-><init>(Lcom/mogu/tv/model/ShequListModel$Data;Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v6}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    new-array v4, v3, [I

    const v6, 0x7f0a01fc

    aput v6, v4, v5

    .line 70
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 77
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvPraise:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getFavorites()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvComment:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getComments()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getVideo()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    const/4 p1, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 p1, 0x1

    :goto_9
    const-string v4, "ivPlay"

    const-string v6, "ivVideoPhoto"

    const-string v7, "ngridLayout"

    const-string v8, "ivSingle"

    if-eqz p1, :cond_13

    .line 89
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivVideoPhoto:Landroid/widget/ImageView;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 90
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPlay:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 92
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_a

    :cond_e
    const/4 p1, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 p1, 0x1

    :goto_b
    if-eqz p1, :cond_10

    .line 93
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 94
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_c

    .line 96
    :cond_10
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_12

    .line 97
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 98
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v3, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$4;

    invoke-direct {v3, p2}, Lcom/mogu/tv/adapter/ShequListAdapter$convert$2$4;-><init>(Lcom/mogu/tv/model/ShequListModel$Data;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 101
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 102
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    invoke-virtual {p1}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v3, "gif"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p1, v3, v5, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 103
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_c

    .line 105
    :cond_11
    sget-object p1, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    .line 106
    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 107
    iget-object v1, p0, Lcom/mogu/tv/adapter/ShequListAdapter;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p2, v1, v0}, Lcom/mogu/tv/utils/ImageUtil;->loadImageSingleList(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_c

    .line 112
    :cond_12
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 113
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 114
    new-instance p1, Lcom/mogu/tv/view/NineGridLayout$NineGridAdapter;

    iget-object v1, p0, Lcom/mogu/tv/adapter/ShequListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/mogu/tv/view/NineGridLayout$NineGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 115
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-virtual {v1, p1}, Lcom/mogu/tv/view/NineGridLayout;->setAdapter(Lcom/mogu/tv/view/NineGridLayout$NineGridAdapter;)V

    .line 116
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    new-instance v0, Lcom/mogu/tv/adapter/ShequListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/mogu/tv/adapter/ShequListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/model/ShequListModel$Data;)V

    invoke-virtual {p1, v0}, Lcom/mogu/tv/view/NineGridLayout;->setOnItemClickListerner(Lcom/mogu/tv/view/NineGridLayout$OnItemClickListerner;)V

    goto :goto_c

    .line 127
    :cond_13
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivVideoPhoto:Landroid/widget/ImageView;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 128
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPlay:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 129
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 130
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    :goto_c
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/ShequListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/ShequListModel$Data;)V

    return-void
.end method
