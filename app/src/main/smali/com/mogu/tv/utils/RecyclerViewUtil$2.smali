.class Lcom/mogu/tv/utils/RecyclerViewUtil$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewUtil.java"


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

    .line 43
    iput-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 47
    iget-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p1, p2}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$102(Lcom/mogu/tv/utils/RecyclerViewUtil;I)I

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newState:: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bottomSheetAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 55
    iget-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p1}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$200(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p1}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$300(Lcom/mogu/tv/utils/RecyclerViewUtil;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p1}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$200(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p2}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$300(Lcom/mogu/tv/utils/RecyclerViewUtil;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p1}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$100(Lcom/mogu/tv/utils/RecyclerViewUtil;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 59
    iget-object p1, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p1}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$200(Lcom/mogu/tv/utils/RecyclerViewUtil;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/utils/RecyclerViewUtil$2;->this$0:Lcom/mogu/tv/utils/RecyclerViewUtil;

    invoke-static {p2}, Lcom/mogu/tv/utils/RecyclerViewUtil;->access$300(Lcom/mogu/tv/utils/RecyclerViewUtil;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x14

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
