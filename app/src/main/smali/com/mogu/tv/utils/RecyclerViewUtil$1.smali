.class Lcom/mogu/tv/utils/RecyclerViewUtil$1;
.super Ljava/lang/Object;
.source "RecyclerViewUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/utils/RecyclerViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;


# direct methods
.method constructor <init>(Lcom/mogu/tv/utils/RecyclerViewUtil;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$1;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 35
    iget-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$1;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {v0}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$000(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$1;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$102(Lcom/mogu/tv/utils/RecyclerViewUtil;I)I

    .line 38
    iget-object v0, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$1;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {v0}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$000(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method
