.class Lcom/mogu/tv/view/RecyclerViewBannerBase$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewBannerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/view/RecyclerViewBannerBase;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;


# direct methods
.method constructor <init>(Lcom/mogu/tv/view/RecyclerViewBannerBase;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$2;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$2;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-virtual {v0, p1, p2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->onBannerScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$2;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->onBannerScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
