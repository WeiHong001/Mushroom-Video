.class public Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewBannerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/view/RecyclerViewBannerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IndicatorAdapter"
.end annotation


# instance fields
.field currentPosition:I

.field final synthetic this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;


# direct methods
.method protected constructor <init>(Lcom/mogu/tv/view/RecyclerViewBannerBase;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x0

    .line 333
    iput p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->currentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v0, v0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->bannerSize:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 353
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    .line 354
    iget v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->currentPosition:I

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget-object p2, p2, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget-object p2, p2, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 342
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-virtual {p2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 343
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 345
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v0, v0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorMargin:I

    iget-object v1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v1, v1, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorMargin:I

    iget-object v2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v2, v2, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorMargin:I

    iget-object v3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v3, v3, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorMargin:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 346
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance p2, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter$1;-><init>(Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setPosition(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->currentPosition:I

    return-void
.end method
