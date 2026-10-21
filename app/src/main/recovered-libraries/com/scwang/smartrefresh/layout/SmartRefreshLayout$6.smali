.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$noMoreData:Ljava/lang/Boolean;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2719
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2722
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_9

    .line 2723
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2724
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 2726
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 2727
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-interface {v0, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result v0

    .line 2728
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v3, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_2

    .line 2729
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v4, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-interface {v3, v4, v5}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderFinish(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;Z)V

    :cond_2
    const v3, 0x7fffffff

    if-ge v0, v3, :cond_c

    .line 2734
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v3, :cond_5

    .line 2735
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2736
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    .line 2737
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 2738
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2739
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 2740
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x0

    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$001(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2741
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$101(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2743
    :cond_4
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v3, :cond_5

    .line 2744
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 2745
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x1

    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v10, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$201(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2746
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 2747
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2750
    :cond_5
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v3, :cond_7

    .line 2752
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2753
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    if-eqz v1, :cond_6

    .line 2754
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    :cond_6
    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    .line 2757
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 2759
    :cond_7
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_8

    .line 2760
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 2762
    :cond_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2764
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 2767
    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    .line 2769
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_1

    .line 2770
    :cond_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    .line 2773
    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2774
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2775
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2777
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_c
    :goto_1
    return-void
.end method
