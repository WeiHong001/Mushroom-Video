.class public final Lcom/mogu/tv/adapter/VideoListsAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "VideoListsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/VideoListModel$Video;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListsAdapter.kt\ncom/mogu/tv/adapter/VideoListsAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1851#2,2:65\n*S KotlinDebug\n*F\n+ 1 VideoListsAdapter.kt\ncom/mogu/tv/adapter/VideoListsAdapter\n*L\n34#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/VideoListsAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/VideoListModel$Video;",
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

    .line 24
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/VideoListModel$Video;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/mogu/tv/adapter/VideoListsAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/VideoListsAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;

    .line 28
    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getShowAd()Z

    move-result v0

    const v1, 0x7f0f00a1

    const-string v2, "rlBottom"

    const-string v3, "llBottom"

    const-string v4, "ivVideolist"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_4

    .line 29
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->llBottom:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 30
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 31
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getUsers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getUsers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mogu/tv/model/VideoListModel$User;

    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/mogu/tv/model/VideoListModel$User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :cond_2
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvActor:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_3
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvActor:Landroid/widget/TextView;

    const-string/jumbo v2, "\u7d20\u4eba"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_2
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvCreateTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getDuration()J

    move-result-wide v2

    const/16 v7, 0x3e8

    int-to-long v7, v7

    mul-long v2, v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/kotlin/basiclib/utils/DateUtil;->formatTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvViews:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getViews()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->toChineseNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p2}, Lcom/mogu/tv/model/VideoListModel$Video;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    const-string v1, "http"

    invoke-static {p2, v1, v6, v0, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 49
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvActor:Landroid/widget/TextView;

    const-string/jumbo p2, "\u70b9\u51fb\u67e5\u770b"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 52
    :cond_4
    sget-object p2, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p2}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel;->getListcover()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v5

    .line 53
    :goto_3
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvName:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel$Item;->getComment()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    move-object v7, v5

    :goto_4
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-static {v0, v5, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 55
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/adapter/VideoListsAdapter$convert$2$2;

    invoke-direct {v1, p2}, Lcom/mogu/tv/adapter/VideoListsAdapter$convert$2$2;-><init>(Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 59
    iget-object p2, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->llBottom:Landroid/widget/LinearLayout;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v6}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 60
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemVideolistBinding;->rlBottom:Landroid/widget/RelativeLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v6}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/mogu/tv/model/VideoListModel$Video;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/VideoListsAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/VideoListModel$Video;)V

    return-void
.end method
