.class Lcom/kotlin/basiclib/widget/customview/WheelView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/customview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/customview/WheelView;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 491
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$1202(Lcom/kotlin/basiclib/widget/customview/WheelView;Z)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 445
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 447
    :cond_0
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$202(Lcom/kotlin/basiclib/widget/customview/WheelView;Z)Z

    .line 448
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$300(Lcom/kotlin/basiclib/widget/customview/WheelView;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 449
    iget-object v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-virtual {v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->centerSpace()V

    goto :goto_2

    :cond_1
    const v2, 0x7fffffff

    const/high16 v5, -0x80000000

    .line 453
    iget-object v6, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v6}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$400(Lcom/kotlin/basiclib/widget/customview/WheelView;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 460
    :cond_2
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$500(Lcom/kotlin/basiclib/widget/customview/WheelView;)I

    move-result v2

    iget-object v3, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v3}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$600(Lcom/kotlin/basiclib/widget/customview/WheelView;)I

    move-result v3

    sub-int/2addr v3, v4

    mul-int v2, v2, v3

    move v14, v2

    const/high16 v13, -0x80000000

    goto :goto_1

    :cond_3
    const/high16 v13, -0x80000000

    :goto_0
    const v14, 0x7fffffff

    .line 463
    :goto_1
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$700(Lcom/kotlin/basiclib/widget/customview/WheelView;)F

    move-result v2

    float-to-int v8, v2

    const/4 v9, 0x0

    neg-float v1, v1

    float-to-int v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$500(Lcom/kotlin/basiclib/widget/customview/WheelView;)I

    move-result v16

    invoke-virtual/range {v6 .. v16}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 464
    iget-object v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-virtual {v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    :goto_2
    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 434
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1, p4}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$116(Lcom/kotlin/basiclib/widget/customview/WheelView;F)F

    .line 438
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    .line 439
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$202(Lcom/kotlin/basiclib/widget/customview/WheelView;Z)Z

    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 471
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 477
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$800(Lcom/kotlin/basiclib/widget/customview/WheelView;)[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    move-result-object v0

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$900(Lcom/kotlin/basiclib/widget/customview/WheelView;)I

    move-result v1

    aget-object v0, v0, v1

    .line 479
    iget v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->top:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$1000(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    goto :goto_0

    .line 481
    :cond_0
    iget v0, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->bottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->access$1100(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
