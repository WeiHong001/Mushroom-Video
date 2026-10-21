.class public final Lcom/uuzuche/lib_zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final OPAQUE:I = 0xff


# instance fields
.field private SCAN_VELOCITY:I

.field private innercornercolor:I

.field private innercornerlength:I

.field private innercornerwidth:I

.field private isCircle:Z

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scanLight:Landroid/graphics/Bitmap;

.field private scanLineTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 69
    sget v0, Lcom/uuzuche/lib_zxing/R$color;->viewfinder_mask:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->maskColor:I

    .line 70
    sget v0, Lcom/uuzuche/lib_zxing/R$color;->result_view:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultColor:I

    .line 71
    sget v0, Lcom/uuzuche/lib_zxing/R$color;->possible_result_points:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultPointColor:I

    .line 72
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 74
    sget v0, Lcom/uuzuche/lib_zxing/R$drawable;->scan_light:I

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLight:Landroid/graphics/Bitmap;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->initInnerRect(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawFrameBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .line 233
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornercolor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerwidth:I

    .line 237
    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerlength:I

    .line 240
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 245
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 247
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 250
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 257
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    int-to-float v4, v2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v5, v1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, p2

    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawScanLight(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .line 197
    iget v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    if-nez v0, :cond_0

    .line 198
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    .line 201
    :cond_0
    iget v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1e

    if-lt v0, v1, :cond_1

    .line 202
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    goto :goto_0

    .line 204
    :cond_1
    iget v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->SCAN_VELOCITY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    .line 206
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    iget-object p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLight:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initInnerRect(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_margintop:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    float-to-int p2, p2

    .line 92
    sput p2, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_MARGINTOP:I

    .line 96
    :cond_0
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_width:I

    sget v0, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenWidthPx:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    .line 99
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_height:I

    sget v0, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenWidthPx:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    .line 102
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_corner_color:I

    const-string v0, "#45DDDD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornercolor:I

    .line 104
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_corner_length:I

    const/high16 v0, 0x42820000    # 65.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerlength:I

    .line 106
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_corner_width:I

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerwidth:I

    .line 109
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_scan_bitmap:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_scan_bitmap:I

    sget v1, Lcom/uuzuche/lib_zxing/R$drawable;->scan_light:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLight:Landroid/graphics/Bitmap;

    .line 116
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_scan_speed:I

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->SCAN_VELOCITY:I

    .line 118
    sget p2, Lcom/uuzuche/lib_zxing/R$styleable;->ViewfinderView_inner_scan_iscircle:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->isCircle:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 264
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 125
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 133
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v9, v0

    .line 134
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 135
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 137
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0xff

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 145
    :cond_2
    invoke-direct {p0, p1, v7}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->drawFrameBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 147
    invoke-direct {p0, p1, v7}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->drawScanLight(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 149
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 150
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 151
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    goto :goto_2

    .line 154
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 155
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 156
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->isCircle:Z

    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 161
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v4, v1

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 166
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->isCircle:Z

    if-eqz v0, :cond_5

    .line 170
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 171
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v3, v1

    const/high16 v1, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    const-wide/16 v1, 0x64

    .line 176
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    :goto_4
    return-void
.end method
