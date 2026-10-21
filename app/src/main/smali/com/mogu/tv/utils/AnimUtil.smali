.class public Lcom/mogu/tv/utils/AnimUtil;
.super Ljava/lang/Object;
.source "AnimUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HideToUp(Landroid/view/View;J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string/jumbo v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 195
    new-instance p1, Lcom/mogu/tv/utils/AnimUtil$2;

    invoke-direct {p1, p0}, Lcom/mogu/tv/utils/AnimUtil$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static adAnimDownAndUp(Landroid/view/View;J)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 225
    fill-array-data v0, :array_0

    const-string/jumbo v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 226
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 p1, 0x1e

    .line 227
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 228
    new-instance p1, Lcom/mogu/tv/utils/AnimUtil$4;

    invoke-direct {p1}, Lcom/mogu/tv/utils/AnimUtil$4;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42700000    # 60.0f
        0x0
    .end array-data
.end method

.method public static adAnimUpAndDown(Landroid/view/View;J)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 213
    fill-array-data v0, :array_0

    const-string/jumbo v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 214
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 p1, 0x14

    .line 215
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 216
    new-instance p1, Lcom/mogu/tv/utils/AnimUtil$3;

    invoke-direct {p1}, Lcom/mogu/tv/utils/AnimUtil$3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d900000    # -60.0f
        0x0
    .end array-data
.end method

.method public static animError(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x2bc

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 105
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/16 v3, 0xa

    new-array v3, v3, [F

    .line 106
    fill-array-data v3, :array_0

    const-string/jumbo v4, "translationX"

    .line 107
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    .line 106
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 109
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 110
    new-instance v0, Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41700000    # 15.0f
        -0x3e900000    # -15.0f
        0x40c00000    # 6.0f
        -0x3f400000    # -6.0f
        0x0
    .end array-data
.end method

.method public static animRolateAndScale(Landroid/view/View;)V
    .locals 6

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x7d0

    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x4

    new-array v4, v3, [F

    .line 141
    fill-array-data v4, :array_0

    const-string v5, "ScaleX"

    .line 142
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    const-string v4, "ScaleY"

    .line 143
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    const-string v4, "rotation"

    .line 144
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v2, v0

    .line 141
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 147
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x451d8000    # 2520.0f
    .end array-data
.end method

.method public static animScale(Landroid/view/View;)V
    .locals 7

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xbb8

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/animation/Animator;

    const/4 v4, 0x5

    new-array v5, v4, [F

    .line 122
    fill-array-data v5, :array_0

    const-string v6, "ScaleX"

    .line 123
    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v0

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    const-string v5, "ScaleY"

    .line 124
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x4

    new-array v4, v4, [F

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v0

    const/4 v0, 0x0

    aput v0, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x2

    aput v5, v4, v6

    aput v0, v4, v2

    const-string/jumbo v0, "translationY"

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v3, v6

    .line 122
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 128
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getBottomInAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 10

    .line 237
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xfa

    .line 241
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method

.method public static getBottomOutAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 10

    .line 246
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xfa

    .line 250
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method

.method public static getInAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    const v0, 0x7f010035

    .line 84
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    check-cast p0, Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method public static getOutAnimation(Landroid/content/Context;)Landroid/view/animation/AnimationSet;
    .locals 1

    const v0, 0x7f010036

    .line 93
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    check-cast p0, Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method public static hideFABAnimation(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "alpha"

    .line 55
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v5, "scaleX"

    .line 56
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v3, "scaleY"

    .line 57
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v2

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 58
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static hidnUpAnimTranslate(Landroid/view/View;JI)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 70
    sget-object v1, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {v1, p3}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(I)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const-string/jumbo p3, "translationY"

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static hidndownAnimTranslate(Landroid/view/View;JI)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 66
    sget-object v1, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {v1, p3}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(I)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    const/4 v1, 0x0

    aput v1, v0, p3

    const-string/jumbo p3, "translationY"

    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$animError$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$setValueAnimator$1(Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 155
    invoke-interface {p0, p1}, Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;->onPlaying(F)V

    return-void
.end method

.method public static setValueAnimator(Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;FFI)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 151
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    .line 152
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    new-instance p2, Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/mogu/tv/utils/AnimUtil$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/utils/AnimUtil$ValueAnimatorCallback;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-object p1
.end method

.method public static showFABAnimation(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v4, "alpha"

    .line 42
    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [F

    aput v3, v4, v2

    const-string v5, "scaleX"

    .line 43
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v3, "scaleY"

    .line 44
    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v2

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    .line 45
    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static showToBottom(Landroid/view/View;J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string/jumbo v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    new-instance p1, Lcom/mogu/tv/utils/AnimUtil$1;

    invoke-direct {p1, p0}, Lcom/mogu/tv/utils/AnimUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static showUpAnimTranslate(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string/jumbo v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 32
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 33
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static tranlateToRight(Landroid/view/View;J)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 75
    sget-object v1, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {v1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->getScreenWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string/jumbo v1, "translationX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
