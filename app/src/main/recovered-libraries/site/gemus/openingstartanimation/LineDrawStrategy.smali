.class public Lsite/gemus/openingstartanimation/LineDrawStrategy;
.super Ljava/lang/Object;
.source "LineDrawStrategy.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/DrawStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAppIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 31

    move-object/from16 v6, p1

    move/from16 v7, p2

    .line 56
    invoke-virtual/range {p5 .. p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 57
    invoke-virtual/range {p5 .. p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 58
    invoke-static/range {p3 .. p3}, Lsite/gemus/openingstartanimation/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 59
    new-instance v9, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v9, v2}, Landroid/graphics/Paint;-><init>(I)V

    move/from16 v2, p4

    .line 60
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 61
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-int/lit16 v0, v0, -0xfa

    int-to-float v10, v0

    .line 65
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v11, 0x3fd9999a    # 1.7f

    mul-float v0, v0, v11

    add-float v12, v10, v0

    add-int/lit16 v1, v1, -0xfa

    int-to-float v13, v1

    .line 67
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v11

    add-float v14, v13, v0

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    float-to-double v4, v7

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f000000    # 0.5f

    const-wide/high16 v17, 0x3fe8000000000000L    # 0.75

    const/high16 v19, 0x3e800000    # 0.25f

    cmpg-double v0, v4, v17

    if-gtz v0, :cond_6

    const/high16 v20, 0x3f400000    # 0.75f

    div-float v3, v7, v20

    float-to-double v1, v3

    const-wide/high16 v21, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v1, v21

    if-gtz v0, :cond_0

    sub-float v0, v14, v13

    div-float v23, v3, v19

    mul-float v0, v0, v23

    sub-float v23, v14, v0

    move-object/from16 v0, p1

    move-wide/from16 v24, v1

    move v1, v10

    move v2, v14

    move/from16 v26, v3

    move v3, v10

    move-wide/from16 v27, v4

    move/from16 v4, v23

    move-object v5, v9

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-wide/from16 v24, v1

    move/from16 v26, v3

    move-wide/from16 v27, v4

    move-object/from16 v0, p1

    move v1, v10

    move v2, v14

    move v3, v10

    move v4, v13

    move-object v5, v9

    .line 76
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v24, v21

    if-lez v0, :cond_2

    cmpg-double v0, v24, v29

    if-gtz v0, :cond_1

    sub-float v0, v12, v10

    sub-float v3, v26, v19

    div-float v3, v3, v19

    mul-float v0, v0, v3

    add-float v3, v10, v0

    move-object/from16 v0, p1

    move v1, v10

    move v2, v13

    move v4, v13

    move-object v5, v9

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move v1, v10

    move v2, v13

    move v3, v12

    move v4, v13

    move-object v5, v9

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    cmpl-double v0, v24, v29

    if-lez v0, :cond_4

    cmpg-double v0, v24, v17

    if-gtz v0, :cond_3

    sub-float v0, v14, v13

    sub-float v3, v26, v16

    div-float v3, v3, v19

    mul-float v0, v0, v3

    add-float v4, v13, v0

    move-object/from16 v0, p1

    move v1, v12

    move v2, v13

    move v3, v12

    move-object v5, v9

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    move v1, v12

    move v2, v13

    move v3, v12

    move v4, v14

    move-object v5, v9

    .line 98
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_2
    cmpl-double v0, v24, v17

    if-lez v0, :cond_7

    cmpg-float v0, v26, v15

    if-gtz v0, :cond_5

    sub-float v0, v12, v10

    sub-float v3, v26, v20

    div-float v3, v3, v19

    mul-float v0, v0, v3

    sub-float v3, v12, v0

    move-object/from16 v0, p1

    move v1, v12

    move v2, v14

    move v4, v14

    move-object v5, v9

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p1

    move v1, v12

    move v2, v14

    move v3, v10

    move v4, v14

    move-object v5, v9

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move-wide/from16 v27, v4

    .line 114
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    cmpl-double v0, v27, v17

    if-lez v0, :cond_8

    .line 117
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr v15, v7

    div-float v15, v15, v19

    mul-float v0, v0, v15

    add-float/2addr v0, v10

    .line 118
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v2, v2, v15

    add-float/2addr v2, v13

    .line 119
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v3, v3, v15

    sub-float v3, v12, v3

    .line 120
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    mul-float v4, v4, v15

    sub-float v4, v14, v4

    .line 117
    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    add-float/2addr v10, v12

    mul-float v2, v10, v16

    add-float/2addr v13, v14

    mul-float v3, v13, v16

    .line 122
    invoke-virtual {v0, v11, v11, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 124
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    div-float/2addr v10, v1

    .line 125
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v10, v0

    div-float/2addr v13, v1

    .line 126
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v13, v0

    .line 125
    invoke-virtual {v6, v8, v10, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAppName(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 8

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p4, 0x40a00000    # 5.0f

    .line 32
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p4, 0x42480000    # 50.0f

    .line 33
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    sget-object p4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 35
    sget-object p4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    .line 37
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/lit16 p5, p5, -0x113

    int-to-float p5, p5

    .line 39
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 40
    invoke-virtual {v1, p4, p5}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v2, p2

    const/high16 v4, 0x3f000000    # 0.5f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v2, v5

    if-gtz v7, :cond_0

    .line 42
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x19

    add-int/lit16 p3, p3, 0xfa

    int-to-float p3, p3

    div-float/2addr p2, v4

    mul-float p3, p3, p2

    add-float/2addr p5, p3

    invoke-virtual {v1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    add-int/lit16 v2, v2, 0xfa

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v2, p5

    invoke-virtual {v1, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 47
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x41a00000    # 20.0f

    add-float/2addr p4, p2

    const/high16 p2, 0x43160000    # 150.0f

    add-float/2addr p5, p2

    .line 48
    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 50
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAppStatement(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 7

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v0

    .line 136
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 137
    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 138
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p4, 0x42340000    # 45.0f

    .line 140
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    const p4, -0x41b33333    # -0.2f

    .line 141
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 142
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 143
    new-instance p4, Landroid/graphics/RectF;

    div-int/lit8 v1, v0, 0x4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v2, p5, 0x7

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    int-to-float p5, p5

    invoke-direct {p4, v1, v2, v0, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p5, 0x42200000    # 40.0f

    const/high16 v0, 0x43410000    # 193.0f

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 146
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    mul-float p2, p2, p5

    const p5, 0x3fd5c28f    # 1.67f

    mul-float p2, p2, p5

    .line 147
    invoke-virtual {p3, p4, v0, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 148
    invoke-virtual {p1, p3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 151
    invoke-virtual {v3, p4, v0, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 152
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    .line 153
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 155
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
