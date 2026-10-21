.class public final Lcom/mogu/tv/adapter/ShequLoveListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "ShequLoveListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/ShequListLoveModel$Item;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShequLoveListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShequLoveListAdapter.kt\ncom/mogu/tv/adapter/ShequLoveListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n1851#2,2:129\n*S KotlinDebug\n*F\n+ 1 ShequLoveListAdapter.kt\ncom/mogu/tv/adapter/ShequLoveListAdapter\n*L\n112#1:129,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/ShequLoveListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/ShequListLoveModel$Item;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "data",
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
.method public static synthetic $r8$lambda$hW99rnQ-edqwPRm0xfi2CSX5-9E(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/adapter/ShequLoveListAdapter;->convert$lambda-2$lambda-1(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0083

    .line 24
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method private static final convert$lambda-2$lambda-1(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;I)V
    .locals 1

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p0}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 129
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    .line 113
    invoke-virtual {v0}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    sget-object p0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0, p2, p1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->showPhoto(ILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/ShequListLoveModel$Item;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListLoveModel$Item;->getBlog()Lcom/mogu/tv/model/ShequListModel$Data;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    sget-object p2, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    .line 29
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v2, "ivPhoto"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v3}, Lcom/mogu/tv/model/ShequListModel$Data;->getUser()Lcom/mogu/tv/model/ShequListModel$Data$User;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mogu/tv/model/ShequListModel$Data$User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-static {v1, v3}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 30
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$1;

    invoke-direct {v2, v0}, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 33
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llContent:Landroid/widget/LinearLayout;

    const-string v2, "llContent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$2;

    invoke-direct {v2, v0}, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 36
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvName:Landroid/widget/TextView;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v2}, Lcom/mogu/tv/model/ShequListModel$Data;->getUser()Lcom/mogu/tv/model/ShequListModel$Data$User;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mogu/tv/model/ShequListModel$Data$User;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v1}, Lcom/mogu/tv/model/ShequListModel$Data;->getCreated_at()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_4

    .line 38
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvTime:Landroid/widget/TextView;

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v5}, Lcom/mogu/tv/model/ShequListModel$Data;->getCreated_at()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kotlin/basiclib/utils/DateUtil;->getCarStrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_4
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v1}, Lcom/mogu/tv/model/ShequListModel$Data;->getDetail()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    :goto_5
    const-string/jumbo v5, "tvFriendTitle"

    if-eqz v1, :cond_7

    .line 41
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    goto :goto_6

    .line 43
    :cond_7
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 44
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v5}, Lcom/mogu/tv/model/ShequListModel$Data;->getDetail()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_6
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llPraise:Landroid/widget/LinearLayout;

    const-string v5, "llPraise"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v5, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3;

    invoke-direct {v5, v0, p2}, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v5}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    new-array v1, v2, [I

    const v5, 0x7f0a01fc

    aput v5, v1, v3

    .line 64
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 71
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvPraise:Landroid/widget/TextView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v1}, Lcom/mogu/tv/model/ShequListModel$Data;->getFavorites()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvComment:Landroid/widget/TextView;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v1}, Lcom/mogu/tv/model/ShequListModel$Data;->getComments()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/ShequListModel$Data;->getVideo()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    const/4 p1, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 p1, 0x1

    :goto_8
    const-string v1, "ivPlay"

    const-string v5, "ivVideoPhoto"

    const-string v6, "ngridLayout"

    const-string v7, "ivSingle"

    if-eqz p1, :cond_f

    .line 83
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivVideoPhoto:Landroid/widget/ImageView;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 84
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPlay:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 86
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_9

    :cond_a
    const/4 p1, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    const/4 p1, 0x1

    :goto_a
    if-eqz p1, :cond_c

    .line 87
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 88
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    goto/16 :goto_b

    .line 90
    :cond_c
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 91
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 92
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$4;

    invoke-direct {v1, v0}, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 95
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 96
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    invoke-virtual {p1}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "gif"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-static {p1, v1, v3, v2, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 97
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 99
    :cond_d
    sget-object p1, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    .line 100
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v0}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/ShequListModel$Data$Image;

    invoke-virtual {v0}, Lcom/mogu/tv/model/ShequListModel$Data$Image;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter;->mContext:Landroid/content/Context;

    .line 102
    iget-object p2, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0, v1, p2}, Lcom/mogu/tv/utils/ImageUtil;->loadImageSingleList(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_b

    .line 106
    :cond_e
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 107
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 108
    new-instance p1, Lcom/mogu/tv/view/NineGridLayout$NineGridAdapter;

    iget-object v1, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {v2}, Lcom/mogu/tv/model/ShequListModel$Data;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/mogu/tv/view/NineGridLayout$NineGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 109
    iget-object v1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-virtual {v1, p1}, Lcom/mogu/tv/view/NineGridLayout;->setAdapter(Lcom/mogu/tv/view/NineGridLayout$NineGridAdapter;)V

    .line 110
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    new-instance p2, Lcom/mogu/tv/adapter/ShequLoveListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/mogu/tv/adapter/ShequLoveListAdapter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2}, Lcom/mogu/tv/view/NineGridLayout;->setOnItemClickListerner(Lcom/mogu/tv/view/NineGridLayout$OnItemClickListerner;)V

    goto :goto_b

    .line 121
    :cond_f
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivVideoPhoto:Landroid/widget/ImageView;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 122
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPlay:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 123
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 124
    iget-object p1, p2, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    :goto_b
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mogu/tv/model/ShequListLoveModel$Item;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/ShequLoveListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/ShequListLoveModel$Item;)V

    return-void
.end method
