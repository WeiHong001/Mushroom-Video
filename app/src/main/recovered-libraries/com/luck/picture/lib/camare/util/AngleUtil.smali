.class public Lcom/luck/picture/lib/camare/util/AngleUtil;
.super Ljava/lang/Object;
.source "AngleUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorAngle(FF)I
    .locals 3

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/high16 p1, 0x40800000    # 4.0f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    const/16 p0, 0x10e

    return p0

    :cond_0
    const/high16 p1, -0x3f800000    # -4.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/16 p0, 0x5a

    return p0

    :cond_1
    return v2

    :cond_2
    const/high16 p0, 0x40e00000    # 7.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    return v2

    :cond_3
    const/high16 p0, -0x3f200000    # -7.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    const/16 p0, 0xb4

    return p0

    :cond_4
    return v2
.end method
