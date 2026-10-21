.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshKernel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshKernelImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 3224
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 3526
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 3

    .line 3376
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 3377
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3378
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3379
    invoke-virtual {p0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3380
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3382
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getRefreshContent()Lcom/scwang/smartrefresh/layout/api/RefreshContent;
    .locals 1

    .line 3235
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    return-object v0
.end method

.method public getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 3229
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3404
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 3405
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 3406
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 3409
    :cond_2
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3410
    iget v10, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    .line 3411
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput v1, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz p2, :cond_7

    .line 3414
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_7

    .line 3415
    :cond_3
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 3416
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_7

    .line 3417
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 3419
    :cond_4
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_5

    .line 3420
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 3421
    :cond_5
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_6

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_6

    .line 3422
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 3423
    :cond_6
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_7

    .line 3424
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3427
    :cond_7
    :goto_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_14

    if-ltz v1, :cond_9

    .line 3430
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_9

    .line 3431
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    if-gez v10, :cond_9

    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-gtz v1, :cond_b

    .line 3439
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_b

    .line 3440
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v4, v5, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    if-lez v10, :cond_b

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz v3, :cond_14

    .line 3449
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v3, v2, v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 3450
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_e

    .line 3451
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v3, 0x1

    .line 3452
    :goto_7
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_11

    .line 3453
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v4, 0x1

    :goto_a
    if-eqz v3, :cond_12

    if-gez v2, :cond_13

    if-gtz v10, :cond_13

    :cond_12
    if-eqz v4, :cond_14

    if-lez v2, :cond_13

    if-gez v10, :cond_14

    .line 3455
    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_14
    const/high16 v13, 0x3f800000    # 1.0f

    if-gez v1, :cond_15

    if-lez v10, :cond_1d

    .line 3459
    :cond_15
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_1d

    .line 3461
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3462
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v14, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 3463
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float v2, v2, v3

    float-to-int v15, v2

    int-to-float v2, v8

    mul-float v2, v2, v13

    .line 3464
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_b

    :cond_16
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    :goto_b
    int-to-float v3, v3

    div-float v16, v2, v3

    .line 3466
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_1c

    if-nez p2, :cond_1c

    .line 3467
    :cond_17
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_1a

    .line 3468
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_18

    .line 3469
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3470
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 3471
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_c

    .line 3473
    :cond_18
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_19

    .line 3474
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 3476
    :cond_19
    :goto_c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v6, v14

    move v7, v15

    invoke-interface/range {v2 .. v7}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_1a
    if-eqz p2, :cond_1c

    .line 3478
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3479
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3480
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3481
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_1b

    const/4 v5, 0x1

    goto :goto_d

    :cond_1b
    move v5, v3

    :goto_d
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3482
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    .line 3486
    :cond_1c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_1d

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v2, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v2, :cond_1d

    .line 3487
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v3, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move v7, v14

    move v8, v15

    invoke-interface/range {v2 .. v8}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V

    :cond_1d
    if-lez v1, :cond_1e

    if-gez v10, :cond_26

    .line 3491
    :cond_1e
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_26

    .line 3493
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 3494
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 3495
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float v1, v1, v2

    float-to-int v11, v1

    int-to-float v1, v7

    mul-float v1, v1, v13

    .line 3496
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    :goto_e
    int-to-float v2, v2

    div-float v13, v1, v2

    .line 3498
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_25

    if-nez p2, :cond_25

    .line 3499
    :cond_20
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v1, :cond_23

    .line 3500
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_21

    .line 3501
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3502
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 3503
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_f

    .line 3505
    :cond_21
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_22

    .line 3506
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 3508
    :cond_22
    :goto_f
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move/from16 v2, p2

    move v3, v13

    move v4, v7

    move v5, v8

    move v6, v11

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_23
    if-eqz p2, :cond_25

    .line 3510
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3511
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v1, v1

    .line 3512
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 3513
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v2, :cond_24

    goto :goto_10

    :cond_24
    move v12, v2

    :goto_10
    int-to-float v4, v12

    div-float/2addr v3, v4

    .line 3514
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4, v3, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    .line 3518
    :cond_25
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v1, :cond_26

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_26

    .line 3519
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move/from16 v3, p2

    move v4, v13

    move v5, v7

    move v6, v8

    move v7, v11

    invoke-interface/range {v1 .. v7}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterMoving(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;ZFIII)V

    :cond_26
    return-object v0
.end method

.method public requestDefaultTranslationContentFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 2

    .line 3558
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3559
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p1, :cond_1

    .line 3560
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 3561
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    goto :goto_0

    .line 3563
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3564
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p1, :cond_1

    .line 3565
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 3566
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 2

    .line 3535
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3536
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    .line 3538
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3539
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_0

    .line 3540
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3541
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public requestFloorDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 1

    .line 3586
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    return-object p0
.end method

.method public requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 1

    .line 3548
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3549
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    goto :goto_0

    .line 3550
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3551
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 1

    .line 3573
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_1

    .line 3575
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_0

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3578
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_1

    .line 3579
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 1

    .line 3240
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3343
    :pswitch_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3340
    :pswitch_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3337
    :pswitch_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3331
    :pswitch_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_d

    .line 3332
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3325
    :pswitch_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_d

    .line 3326
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3322
    :pswitch_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 3319
    :pswitch_6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 3311
    :pswitch_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3312
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3314
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3303
    :pswitch_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3304
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3306
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3295
    :pswitch_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3296
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3298
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3288
    :pswitch_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez p1, :cond_4

    .line 3289
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3291
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3281
    :pswitch_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3282
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3284
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3272
    :pswitch_c
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez p1, :cond_7

    .line 3273
    :cond_6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3275
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 3277
    :cond_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3263
    :pswitch_d
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3264
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3266
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 3268
    :cond_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3256
    :pswitch_e
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez p1, :cond_a

    .line 3257
    :cond_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3259
    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3249
    :pswitch_f
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3250
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3252
    :cond_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3242
    :pswitch_10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_c

    .line 3243
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3244
    :cond_c
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 3245
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 3

    if-eqz p1, :cond_1

    .line 3352
    new-instance p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl$1;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;)V

    .line 3358
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3359
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3360
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    .line 3361
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3362
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3364
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3367
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3368
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-object p0
.end method
