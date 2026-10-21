.class Lcom/github/like/CircleView$2;
.super Landroid/util/Property;
.source "CircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/like/CircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/github/like/CircleView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/github/like/CircleView;)Ljava/lang/Float;
    .locals 0

    .line 138
    invoke-virtual {p1}, Lcom/github/like/CircleView;->getOuterCircleRadiusProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Lcom/github/like/CircleView;

    invoke-virtual {p0, p1}, Lcom/github/like/CircleView$2;->get(Lcom/github/like/CircleView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/github/like/CircleView;Ljava/lang/Float;)V
    .locals 0

    .line 143
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/like/CircleView;->setOuterCircleRadiusProgress(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/github/like/CircleView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/github/like/CircleView$2;->set(Lcom/github/like/CircleView;Ljava/lang/Float;)V

    return-void
.end method
