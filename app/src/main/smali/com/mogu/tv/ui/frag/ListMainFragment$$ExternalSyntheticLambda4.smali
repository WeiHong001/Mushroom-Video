.class public final synthetic Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field public final synthetic f$0:Lcom/mogu/tv/adapter/ImageBannerAdapter;

.field public final synthetic f$1:Lcom/mogu/tv/ui/frag/ListMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;->f$0:Lcom/mogu/tv/adapter/ImageBannerAdapter;

    iput-object p2, p0, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;->f$1:Lcom/mogu/tv/ui/frag/ListMainFragment;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;->f$0:Lcom/mogu/tv/adapter/ImageBannerAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;->f$1:Lcom/mogu/tv/ui/frag/ListMainFragment;

    check-cast p1, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-static {v0, v1, p1, p2}, Lcom/mogu/tv/ui/frag/ListMainFragment;->$r8$lambda$ROaoGlwapselxTpMDuPrCijc3C0(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V

    return-void
.end method
