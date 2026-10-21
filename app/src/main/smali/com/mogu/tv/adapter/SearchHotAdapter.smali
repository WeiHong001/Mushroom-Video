.class public final Lcom/mogu/tv/adapter/SearchHotAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SearchHotAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/SearchHot;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/SearchHotAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/SearchHot;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "()V",
        "convert",
        "",
        "helper",
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

    const v0, 0x7f0d0090

    .line 15
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/SearchHot;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/mogu/tv/adapter/SearchHotAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/SearchHotAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;

    .line 18
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;->tvItemHistory:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/SearchHot;->getItem()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;->tvRank:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/SearchHot;->getRank()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p2}, Lcom/mogu/tv/model/SearchHot;->getRank()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 31
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;->tvRank:Landroid/widget/TextView;

    const p2, 0x7f080062

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;->tvRank:Landroid/widget/TextView;

    const p2, 0x7f08006e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;->tvRank:Landroid/widget/TextView;

    const p2, 0x7f080065

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemSearchHotBinding;->tvRank:Landroid/widget/TextView;

    const p2, 0x7f08006a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/mogu/tv/model/SearchHot;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/SearchHotAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/SearchHot;)V

    return-void
.end method
