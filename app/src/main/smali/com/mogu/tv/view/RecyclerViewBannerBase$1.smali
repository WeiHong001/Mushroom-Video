.class Lcom/mogu/tv/view/RecyclerViewBannerBase$1;
.super Ljava/lang/Object;
.source "RecyclerViewBannerBase.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/view/RecyclerViewBannerBase;
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

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v0, v0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->WHAT_AUTO_PLAY:I

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget-object p1, p1, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v1, v0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->currentIndex:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 66
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    invoke-virtual {p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->refreshIndicator()V

    .line 67
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget-object p1, p1, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v0, v0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->WHAT_AUTO_PLAY:I

    iget-object v1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;->this$0:Lcom/mogu/tv/view/RecyclerViewBannerBase;

    iget v1, v1, Lcom/mogu/tv/view/RecyclerViewBannerBase;->autoPlayDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
