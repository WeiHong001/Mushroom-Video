.class public final synthetic Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda0;->f$0:Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda0;->f$0:Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;

    invoke-static {v0, p1}, Lcom/mogu/tv/utils/AnimUtil;->lambda$setValueAnimator$1(Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;Landroid/animation/ValueAnimator;)V

    return-void
.end method
