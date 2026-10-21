.class public Lcom/mogu/tv/utils/RecyclerViewUtil;
.super Ljava/lang/Object;
.source "RecyclerViewUtil.java"


# instance fields
.field private cancelScrollHandler:Landroid/os/Handler;

.field private cancelScrollRunnable:Ljava/lang/Runnable;

.field private currentState:I

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->currentState:I

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/mogu/tv/utils/RecyclerViewUtil$1;

    invoke-direct {v0, p0}, Lcom/mogu/tv/utils/RecyclerViewUtil$1;-><init>(Lcom/mogu/tv/utils/RecyclerViewUtil;)V

    iput-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/utils/RecyclerViewUtil$2;-><init>(Lcom/mogu/tv/utils/RecyclerViewUtil;)V

    iput-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mogu/tv/utils/RecyclerViewUtil;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->currentState:I

    return p0
.end method

.method static synthetic access$102(Lcom/mogu/tv/utils/RecyclerViewUtil;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->currentState:I

    return p1
.end method

.method static synthetic access$200(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mogu/tv/utils/RecyclerViewUtil;)Ljava/lang/Runnable;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iput-object v1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->cancelScrollHandler:Landroid/os/Handler;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 71
    iput-object v1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iput-object v1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    :cond_1
    return-void
.end method

.method public initScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 24
    iput-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iget-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method
