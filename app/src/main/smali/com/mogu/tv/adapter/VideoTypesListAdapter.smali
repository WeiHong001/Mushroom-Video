.class public final Lcom/mogu/tv/adapter/VideoTypesListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "VideoTypesListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/VideoUiLists;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/VideoTypesListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/VideoUiLists;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "()V",
        "isTag",
        "",
        "()Z",
        "setTag",
        "(Z)V",
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


# instance fields
.field private isTag:Z


# direct methods
.method public static synthetic $r8$lambda$JnTDUUxCPoljvDQsePG774x7kaI(Lcom/mogu/tv/model/VideoUiLists;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->convert$lambda-2$lambda-0(Lcom/mogu/tv/model/VideoUiLists;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mX-T4MLQ4JpxxiRg_G_3ybDkYBg(Lcom/mogu/tv/adapter/VideoTypesListAdapter;Lcom/mogu/tv/model/VideoUiLists;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->convert$lambda-2$lambda-1(Lcom/mogu/tv/adapter/VideoTypesListAdapter;Lcom/mogu/tv/model/VideoUiLists;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0097

    .line 24
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method private static final convert$lambda-2$lambda-0(Lcom/mogu/tv/model/VideoUiLists;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p2, "$item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const-string p2, "adapter.data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoUiLists;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p2, p3, 0x1

    if-lt p1, p2, :cond_0

    .line 51
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoUiLists;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/VideoListModel$Video;

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoListModel$Video;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVideoDetails(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final convert$lambda-2$lambda-1(Lcom/mogu/tv/adapter/VideoTypesListAdapter;Lcom/mogu/tv/model/VideoUiLists;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean p0, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->isTag:Z

    if-eqz p0, :cond_0

    .line 57
    sget-object p0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toBiaoQianVideoList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object p0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getTypeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toPianku(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/VideoUiLists;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/mogu/tv/adapter/VideoTypesListAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/VideoTypesListAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;

    .line 29
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->tvTypename:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoUiLists;->getTypeName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->tvMoreIc:Landroid/widget/TextView;

    sget-object v2, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    iget-object v3, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mogu/tv/model/GlobeAppData;->getGlobeIconFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->tvMoreIc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f12007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->ivLiveChange:Landroid/widget/TextView;

    sget-object v2, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    iget-object v3, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mogu/tv/model/GlobeAppData;->getGlobeIconFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->ivLiveChange:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f12007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 36
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 39
    :cond_0
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    new-instance v3, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v5, 0xe

    invoke-direct {v3, v5, v4}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 39
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 45
    new-instance v1, Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-direct {v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;-><init>()V

    .line 46
    iget-object v3, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoUiLists;->getList()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 49
    new-instance v3, Lcom/mogu/tv/adapter/VideoTypesListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/mogu/tv/adapter/VideoTypesListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/model/VideoUiLists;)V

    invoke-virtual {v1, v3}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 55
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->llMore:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/mogu/tv/adapter/VideoTypesListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/mogu/tv/adapter/VideoTypesListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/adapter/VideoTypesListAdapter;Lcom/mogu/tv/model/VideoUiLists;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p2

    rem-int/2addr p2, v4

    const-string v1, "ivAd"

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq p2, v3, :cond_3

    .line 63
    iget-object p2, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->ivAd:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    new-array p2, v4, [I

    const v3, 0x7f0a01f1

    aput v3, p2, v2

    .line 64
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 65
    sget-object p1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p1}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mogu/tv/model/AllAdsModel;->getListchatu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 66
    :goto_0
    iget-object v2, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->ivAd:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-static {v2, p2}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 67
    iget-object p2, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->ivAd:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lcom/mogu/tv/adapter/VideoTypesListAdapter$convert$2$3;

    invoke-direct {v0, p1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter$convert$2$3;-><init>(Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 73
    :cond_3
    iget-object p1, v0, Lcom/mogu/tv/databinding/ItemTypevideoBinding;->ivAd:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mogu/tv/model/VideoUiLists;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/VideoUiLists;)V

    return-void
.end method

.method public final isTag()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->isTag:Z

    return v0
.end method

.method public final setTag(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->isTag:Z

    return-void
.end method
