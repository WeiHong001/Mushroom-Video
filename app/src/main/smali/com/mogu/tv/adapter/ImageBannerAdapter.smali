.class public final Lcom/mogu/tv/adapter/ImageBannerAdapter;
.super Lcom/youth/banner/adapter/BannerAdapter;
.source "ImageBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youth/banner/adapter/BannerAdapter<",
        "Lcom/mogu/tv/model/AllAdsModel$Item;",
        "Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\u0008\u0018\u00010\u0003R\u00020\u00000\u0001:\u0001\u0012B\u0017\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J0\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0018\u00010\u0003R\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u001c\u0010\u000e\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/ImageBannerAdapter;",
        "Lcom/youth/banner/adapter/BannerAdapter;",
        "Lcom/mogu/tv/model/AllAdsModel$Item;",
        "Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;",
        "mDatas",
        "",
        "(Ljava/util/List;)V",
        "onBindView",
        "",
        "holder",
        "data",
        "position",
        "",
        "size",
        "onCreateHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "BannerViewHolder",
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/youth/banner/adapter/BannerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;Lcom/mogu/tv/model/AllAdsModel$Item;II)V
    .locals 0

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->getIv()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const p3, 0x7f0f00a1

    invoke-static {p1, p2, p3}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 14
    check-cast p1, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;

    check-cast p2, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mogu/tv/adapter/ImageBannerAdapter;->onBindView(Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;Lcom/mogu/tv/model/AllAdsModel$Item;II)V

    return-void
.end method

.method public onCreateHolder(Landroid/view/ViewGroup;I)Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0080

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 17
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance p2, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;-><init>(Lcom/mogu/tv/adapter/ImageBannerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/ImageBannerAdapter;->onCreateHolder(Landroid/view/ViewGroup;I)Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;

    move-result-object p1

    return-object p1
.end method
