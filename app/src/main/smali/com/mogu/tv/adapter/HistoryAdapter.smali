.class public final Lcom/mogu/tv/adapter/HistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "HistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/HistoryLists$Item;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/HistoryAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/HistoryLists$Item;",
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

    const v0, 0x7f0d0084

    .line 16
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/HistoryLists$Item;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/mogu/tv/adapter/HistoryAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/HistoryAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;

    .line 20
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/HistoryLists$Item;->getVod()Lcom/mogu/tv/model/HistoryLists$Vod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mogu/tv/model/HistoryLists$Vod;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/HistoryLists$Item;->getUpdated_at()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kotlin/basiclib/utils/DateUtil;->getCarStrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, v0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->ivDetails:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivDetails"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/HistoryLists$Item;->getVod()Lcom/mogu/tv/model/HistoryLists$Vod;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mogu/tv/model/HistoryLists$Vod;->getCover()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0f00a1

    invoke-static {v0, p2, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const v1, 0x7f0a018e

    aput v1, p2, v0

    .line 24
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/mogu/tv/model/HistoryLists$Item;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/HistoryAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/HistoryLists$Item;)V

    return-void
.end method
