.class Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CenterSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->this$0:Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;

    .line 40
    iget-object v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    if-nez p2, :cond_2

    .line 46
    iget-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->mScrolled:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->mScrolled:Z

    .line 48
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->this$0:Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->access$000(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->this$0:Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->access$002(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;Z)Z

    .line 50
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->this$0:Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;

    invoke-virtual {p2, p1, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->snapToCenterView(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->this$0:Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->access$002(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;->mScrolled:Z

    :cond_1
    return-void
.end method
