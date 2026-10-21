.class Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$PointEvaluator;
.super Ljava/lang/Object;
.source "CommonTabLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$PointEvaluator;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;)Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;
    .locals 3

    .line 995
    iget v0, p2, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->left:F

    iget v1, p3, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->left:F

    iget v2, p2, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->left:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 996
    iget v1, p2, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->right:F

    iget p3, p3, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->right:F

    iget p2, p2, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->right:F

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr v1, p1

    .line 997
    new-instance p1, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;

    iget-object p2, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$PointEvaluator;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-direct {p1, p2}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;-><init>(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)V

    .line 998
    iput v0, p1, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->left:F

    .line 999
    iput v1, p1, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;->right:F

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 992
    check-cast p2, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;

    check-cast p3, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$PointEvaluator;->evaluate(FLcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;)Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$IndicatorPoint;

    move-result-object p1

    return-object p1
.end method
