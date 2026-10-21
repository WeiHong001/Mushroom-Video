.class public Lsite/gemus/openingstartanimation/RotationDrawStrategy;
.super Ljava/lang/Object;
.source "RotationDrawStrategy.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/DrawStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Bitmap;II)V
    .locals 9

    const/16 v0, 0xb4

    if-gt p2, v0, :cond_0

    int-to-float v1, p2

    const/high16 v2, 0x43340000    # 180.0f

    div-float v5, v1, v2

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 84
    invoke-direct/range {v3 .. v8}, Lsite/gemus/openingstartanimation/RotationDrawStrategy;->drawIconOne(Landroid/graphics/Canvas;FLandroid/graphics/Bitmap;II)V

    :cond_0
    const/16 v1, 0x168

    if-le p2, v0, :cond_1

    if-gt p2, v1, :cond_1

    add-int/lit16 v4, p2, -0xb4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 87
    invoke-direct/range {v2 .. v7}, Lsite/gemus/openingstartanimation/RotationDrawStrategy;->drawIconTwo(Landroid/graphics/Canvas;ILandroid/graphics/Bitmap;II)V

    :cond_1
    if-le p2, v1, :cond_2

    const/16 v0, 0x21c

    if-gt p2, v0, :cond_2

    add-int/lit16 v4, p2, -0x168

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 90
    invoke-direct/range {v2 .. v7}, Lsite/gemus/openingstartanimation/RotationDrawStrategy;->drawIconThree(Landroid/graphics/Canvas;ILandroid/graphics/Bitmap;II)V

    :cond_2
    return-void
.end method

.method private drawIconOne(Landroid/graphics/Canvas;FLandroid/graphics/Bitmap;II)V
    .locals 9

    .line 103
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    div-int/lit8 p4, p4, 0x2

    .line 107
    div-int/lit8 p5, p5, 0x2

    add-int/lit16 p5, p5, -0xc8

    .line 108
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    .line 109
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    .line 110
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v5, p4

    int-to-float v6, p5

    const v7, 0x3fd9999a    # 1.7f

    .line 111
    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 112
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    int-to-float v2, v2

    int-to-float v3, v3

    .line 113
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v4, v4, v7

    add-float/2addr v4, v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p2

    mul-float v8, v8, v7

    add-float/2addr v8, v3

    invoke-virtual {p1, v2, v3, v4, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 114
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    const/high16 p2, 0x43340000    # 180.0f

    .line 116
    invoke-virtual {v0, p2}, Landroid/graphics/Camera;->rotateX(F)V

    const/high16 p2, -0x3ccc0000    # -180.0f

    .line 117
    invoke-virtual {v0, p2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    neg-int p2, p4

    int-to-float p2, p2

    neg-int p4, p5

    int-to-float p4, p4

    .line 120
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    invoke-virtual {p1, p3, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawIconThree(Landroid/graphics/Canvas;ILandroid/graphics/Bitmap;II)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 183
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    .line 184
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 185
    div-int/lit8 v5, p4, 0x2

    .line 186
    div-int/lit8 v6, p5, 0x2

    add-int/lit16 v6, v6, -0xc8

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v5, v7

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v6, v8

    .line 189
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v10, v5

    int-to-float v11, v6

    const v12, 0x3fd9999a    # 1.7f

    .line 190
    invoke-virtual {v9, v12, v12, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 193
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v8

    invoke-virtual {v0, v7, v8, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v12, v7

    int-to-float v13, v8

    .line 195
    invoke-virtual {v0, v2, v12, v13, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/16 v9, 0x5a

    if-gt v1, v9, :cond_0

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v8

    invoke-virtual {v0, v7, v8, v9, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    add-int/2addr v8, v15

    invoke-virtual {v0, v7, v9, v14, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 205
    :goto_0
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 206
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    rsub-int v1, v1, 0xb4

    int-to-float v1, v1

    .line 207
    invoke-virtual {v3, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 208
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-int v1, v5

    int-to-float v1, v1

    neg-int v3, v6

    int-to-float v3, v3

    .line 210
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 211
    invoke-virtual {v0, v2, v12, v13, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawIconTwo(Landroid/graphics/Canvas;ILandroid/graphics/Bitmap;II)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 134
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    .line 135
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 136
    div-int/lit8 v5, p4, 0x2

    .line 137
    div-int/lit8 v6, p5, 0x2

    add-int/lit16 v6, v6, -0xc8

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v5, v7

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v6, v8

    .line 140
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v10, v5

    int-to-float v11, v6

    const v12, 0x3fd9999a    # 1.7f

    .line 141
    invoke-virtual {v9, v12, v12, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v8

    invoke-virtual {v0, v7, v8, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 147
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    const/high16 v12, 0x43340000    # 180.0f

    .line 149
    invoke-virtual {v3, v12}, Landroid/graphics/Camera;->rotateX(F)V

    .line 150
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v6, v6

    int-to-float v6, v6

    .line 152
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v13, v7

    int-to-float v14, v8

    .line 153
    invoke-virtual {v0, v2, v13, v14, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/16 v9, 0x5a

    if-gt v1, v9, :cond_0

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v8

    invoke-virtual {v0, v7, v8, v9, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    add-int/2addr v7, v15

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v8

    invoke-virtual {v0, v9, v8, v7, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 163
    :goto_0
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 165
    invoke-virtual {v3, v12}, Landroid/graphics/Camera;->rotateX(F)V

    rsub-int v1, v1, 0xb4

    int-to-float v1, v1

    .line 166
    invoke-virtual {v3, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 167
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 169
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    invoke-virtual {v0, v2, v13, v14, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public drawAppIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 6

    const/high16 p4, 0x44070000    # 540.0f

    mul-float p2, p2, p4

    float-to-int v2, p2

    .line 43
    invoke-static {p3}, Lsite/gemus/openingstartanimation/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v4

    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lsite/gemus/openingstartanimation/RotationDrawStrategy;->drawIcon(Landroid/graphics/Canvas;ILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public drawAppName(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 6

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v0

    .line 29
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 30
    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v1, v0, -0x96

    int-to-float v1, v1

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 v2, p5, -0x50

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x43160000    # 150.0f

    mul-float v3, v3, p2

    add-float/2addr v3, v0

    int-to-float v4, p5

    const/high16 v5, 0x42820000    # 65.0f

    mul-float p2, p2, v5

    add-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 33
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p4, 0x42480000    # 50.0f

    .line 35
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    add-int/lit8 p5, p5, 0x32

    int-to-float p4, p5

    .line 36
    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAppStatement(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 7

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v0

    .line 52
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 53
    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 54
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p4, 0x42340000    # 45.0f

    .line 56
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    const p4, -0x41b33333    # -0.2f

    .line 57
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 58
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 59
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

    .line 62
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    mul-float p2, p2, p5

    const p5, 0x3fd5c28f    # 1.67f

    mul-float p2, p2, p5

    .line 63
    invoke-virtual {p3, p4, v0, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 64
    invoke-virtual {p1, p3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 67
    invoke-virtual {v3, p4, v0, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 68
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    .line 69
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
