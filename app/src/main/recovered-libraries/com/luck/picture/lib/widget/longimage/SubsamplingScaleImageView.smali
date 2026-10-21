.class public Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;
.super Landroid/view/View;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$DefaultOnStateChangedListener;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$DefaultOnImageEventListener;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$DefaultOnAnimationEventListener;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;,
        Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TilesInitTask;
    }
.end annotation


# static fields
.field public static final EASE_IN_OUT_QUAD:I = 0x2

.field public static final EASE_OUT_QUAD:I = 0x1

.field private static final MESSAGE_LONG_CLICK:I = 0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final ORIENTATION_USE_EXIF:I = -0x1

.field public static final ORIGIN_ANIM:I = 0x1

.field public static final ORIGIN_DOUBLE_TAP_ZOOM:I = 0x4

.field public static final ORIGIN_FLING:I = 0x3

.field public static final ORIGIN_TOUCH:I = 0x2

.field public static final PAN_LIMIT_CENTER:I = 0x3

.field public static final PAN_LIMIT_INSIDE:I = 0x1

.field public static final PAN_LIMIT_OUTSIDE:I = 0x2

.field public static final SCALE_TYPE_CENTER_CROP:I = 0x2

.field public static final SCALE_TYPE_CENTER_INSIDE:I = 0x1

.field public static final SCALE_TYPE_CUSTOM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SubsamplingScaleImageView"

.field public static TILE_SIZE_AUTO:I = 0x0

.field private static final VALID_EASING_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ORIENTATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_PAN_LIMITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_SCALE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ZOOM_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_FOCUS_CENTER:I = 0x2

.field public static final ZOOM_FOCUS_CENTER_IMMEDIATE:I = 0x3

.field public static final ZOOM_FOCUS_FIXED:I = 0x1


# instance fields
.field private anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luck/picture/lib/widget/longimage/DecoderFactory<",
            "+",
            "Lcom/luck/picture/lib/widget/longimage/ImageDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapIsCached:Z

.field private bitmapIsPreview:Z

.field private bitmapPaint:Landroid/graphics/Paint;

.field private debug:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

.field private final decoderLock:Ljava/lang/Object;

.field private density:F

.field private detector:Landroid/view/GestureDetector;

.field private doubleTapZoomDuration:I

.field private doubleTapZoomScale:F

.field private doubleTapZoomStyle:I

.field private dstArray:[F

.field private fullImageSampleSize:I

.field private handler:Landroid/os/Handler;

.field private imageLoadedSent:Z

.field private isPanning:Z

.field private isQuickScaling:Z

.field private isZooming:Z

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private maxTileHeight:I

.field private maxTileWidth:I

.field private maxTouchCount:I

.field private minScale:F

.field private minimumScaleType:I

.field private minimumTileDpi:I

.field private onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onStateChangedListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;

.field private orientation:I

.field private pRegion:Landroid/graphics/Rect;

.field private panEnabled:Z

.field private panLimit:I

.field private parallelLoadingEnabled:Z

.field private pendingScale:Ljava/lang/Float;

.field private quickScaleEnabled:Z

.field private quickScaleLastDistance:F

.field private quickScaleMoved:Z

.field private quickScaleSCenter:Landroid/graphics/PointF;

.field private final quickScaleThreshold:F

.field private quickScaleVLastPoint:Landroid/graphics/PointF;

.field private quickScaleVStart:Landroid/graphics/PointF;

.field private readySent:Z

.field private regionDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luck/picture/lib/widget/longimage/DecoderFactory<",
            "+",
            "Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private sHeight:I

.field private sOrientation:I

.field private sPendingCenter:Landroid/graphics/PointF;

.field private sRect:Landroid/graphics/RectF;

.field private sRegion:Landroid/graphics/Rect;

.field private sRequestedCenter:Landroid/graphics/PointF;

.field private sWidth:I

.field private satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

.field private scale:F

.field private scaleStart:F

.field private srcArray:[F

.field private tileBgPaint:Landroid/graphics/Paint;

.field private tileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;",
            ">;>;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private vCenterStart:Landroid/graphics/PointF;

.field private vDistStart:F

.field private vTranslate:Landroid/graphics/PointF;

.field private vTranslateBefore:Landroid/graphics/PointF;

.field private vTranslateStart:Landroid/graphics/PointF;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v0, v3

    const/16 v2, 0xb4

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v0, v5

    const/16 v2, 0x10e

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v2, v0, v7

    const/4 v2, -0x1

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    .line 99
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    .line 106
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    .line 115
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    aput-object v8, v0, v5

    .line 124
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    const v0, 0x7fffffff

    .line 175
    sput v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TILE_SIZE_AUTO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 281
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->orientation:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 160
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    .line 163
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale:F

    const/4 v1, -0x1

    .line 166
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumTileDpi:I

    const/4 v1, 0x1

    .line 169
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panLimit:I

    .line 172
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumScaleType:I

    .line 176
    sget v2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TILE_SIZE_AUTO:I

    iput v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileWidth:I

    .line 177
    iput v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileHeight:I

    .line 183
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    .line 184
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->zoomEnabled:Z

    .line 185
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 188
    iput v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomScale:F

    .line 189
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    const/16 v2, 0x1f4

    .line 190
    iput v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    .line 227
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    .line 228
    new-instance v2, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;

    const-class v3, Lcom/luck/picture/lib/widget/longimage/SkiaImageDecoder;

    invoke-direct {v2, v3}, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    .line 229
    new-instance v2, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;

    const-class v3, Lcom/luck/picture/lib/widget/longimage/SkiaImageRegionDecoder;

    invoke-direct {v2, v3}, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 273
    iput-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->srcArray:[F

    new-array v2, v2, [F

    .line 274
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->dstArray:[F

    .line 282
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->density:F

    const/16 v2, 0xa0

    .line 283
    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinimumDpi(I)V

    .line 284
    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 285
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    .line 286
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_6

    .line 299
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 300
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 303
    invoke-static {v2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->asset(Ljava/lang/String;)Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->tilingEnabled()Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;)V

    .line 306
    :cond_0
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 309
    invoke-static {v2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->resource(I)Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->tilingEnabled()Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;)V

    .line 312
    :cond_1
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_panEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_panEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 315
    :cond_2
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_zoomEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_zoomEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 318
    :cond_3
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_quickScaleEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_quickScaleEnabled:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 321
    :cond_4
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_tileBackgroundColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 322
    sget v2, Lcom/luck/picture/lib/R$styleable;->SubsamplingScaleImageView_tileBackgroundColor:I

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setTileBackgroundColor(I)V

    .line 324
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    const/high16 p2, 0x41a00000    # 20.0f

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleThreshold:F

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    return p0
.end method

.method static synthetic access$102(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->zoomEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;F)F
    .locals 0

    .line 75
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    return p1
.end method

.method static synthetic access$2002(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    return p1
.end method

.method static synthetic access$201(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;F)F
    .locals 0

    .line 75
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    return p1
.end method

.method static synthetic access$2200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleMoved:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$301(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/Rect;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$5400()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;III)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onTilesInited(Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;III)V

    return-void
.end method

.method static synthetic access$5600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onTileLoaded()V

    return-void
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method static synthetic access$6300()Ljava/util/List;
    .locals 1

    .line 75
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;F)F
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->limitedScale(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;ZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(ZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    return-void
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->readySent:Z

    return p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    return p0
.end method

.method static synthetic access$902(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    return p1
.end method

.method private calculateInSampleSize(F)I
    .locals 3

    .line 1321
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumTileDpi:I

    if-lez v0, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1323
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    .line 1324
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumTileDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    .line 1327
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 1328
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    .line 1336
    :cond_1
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, p1, :cond_3

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    .line 1339
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1340
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    mul-int/lit8 v0, v2, 0x2

    if-ge v0, p1, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_2
    const/16 p1, 0x20

    return p1
.end method

.method private checkImageLoaded()Z
    .locals 2

    .line 1166
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    .line 1167
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->imageLoadedSent:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1168
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->preDraw()V

    const/4 v1, 0x1

    .line 1169
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->imageLoadedSent:Z

    .line 1170
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageLoaded()V

    .line 1171
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v1, :cond_0

    .line 1172
    invoke-interface {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onImageLoaded()V

    :cond_0
    return v0
.end method

.method private checkReady()Z
    .locals 3

    .line 1149
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1150
    :goto_0
    iget-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->readySent:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 1151
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->preDraw()V

    .line 1152
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->readySent:Z

    .line 1153
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onReady()V

    .line 1154
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v1, :cond_2

    .line 1155
    invoke-interface {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onReady()V

    :cond_2
    return v0
.end method

.method private createPaints()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 1184
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1185
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1186
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_1

    .line 1189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    .line 1190
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1191
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2223
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_0

    .line 2224
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private distance(FFFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p4

    mul-float p1, p1, p1

    mul-float p3, p3, p3

    add-float/2addr p1, p3

    float-to-double p1, p1

    .line 1988
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 10

    .line 898
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 901
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 902
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 906
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 909
    :cond_1
    :goto_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomScale:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 910
    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    float-to-double v4, v2

    float-to-double v6, v0

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const/4 v2, 0x1

    const/4 v8, 0x0

    cmpg-double v9, v4, v6

    if-gtz v9, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    .line 911
    :cond_3
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result v0

    :goto_2
    move v5, v0

    .line 912
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    .line 913
    invoke-virtual {p0, v5, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setScaleAndCenter(FLandroid/graphics/PointF;)V

    goto :goto_4

    :cond_4
    const/4 v6, 0x4

    if-eq v0, v1, :cond_6

    if-eqz v4, :cond_6

    .line 914
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    if-ne v0, v2, :cond_7

    .line 917
    new-instance v7, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v9, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, v5

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    invoke-virtual {v7, v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->withDuration(J)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->access$1300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;I)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->start()V

    goto :goto_4

    .line 915
    :cond_6
    :goto_3
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v5, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    invoke-virtual {v0, v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->withDuration(J)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->access$1300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;I)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;->start()V

    .line 919
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method private ease(IJFFJ)F
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .line 2179
    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->easeInOutQuad(JFFJ)F

    move-result p1

    return p1

    .line 2183
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected easing type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    .line 2181
    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->easeOutQuad(JFFJ)F

    move-result p1

    return p1
.end method

.method private easeInOutQuad(JFFJ)F
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p2, p5

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p6, p1, p2

    if-gez p6, :cond_0

    div-float/2addr p4, p5

    mul-float p4, p4, p1

    :goto_0
    mul-float p4, p4, p1

    add-float/2addr p4, p3

    return p4

    :cond_0
    sub-float/2addr p1, p2

    neg-float p4, p4

    div-float/2addr p4, p5

    sub-float p5, p1, p5

    mul-float p1, p1, p5

    sub-float/2addr p1, p2

    goto :goto_0
.end method

.method private easeOutQuad(JFFJ)F
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p5

    div-float/2addr p1, p2

    neg-float p2, p4

    mul-float p2, p2, p1

    const/high16 p4, 0x40000000    # 2.0f

    sub-float/2addr p1, p4

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private execute(Landroid/os/AsyncTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;)V"
        }
    .end annotation

    .line 1821
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->parallelLoadingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 1823
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    const-string v2, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 1824
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 1825
    const-class v3, Landroid/os/AsyncTask;

    const-string v4, "executeOnExecutor"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/util/concurrent/Executor;

    aput-object v7, v6, v1

    const-class v7, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v2, v4, v8

    .line 1826
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1829
    sget-object v2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v3, "Failed to execute AsyncTask on thread pool executor, falling back to single threaded executor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-array v0, v1, [Ljava/lang/Void;

    .line 1832
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1959
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_0

    .line 1960
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1961
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 1962
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1963
    :cond_1
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    .line 1964
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1966
    :cond_2
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private fitToBounds(Z)V
    .locals 5

    .line 1415
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1417
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1419
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    if-nez v2, :cond_1

    .line 1420
    new-instance v2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1422
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-static {v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    .line 1423
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1424
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-direct {p0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(ZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    .line 1425
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 1426
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_2

    .line 1428
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0, v0, v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    return-void
.end method

.method private fitToBounds(ZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)V
    .locals 11

    .line 1365
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panLimit:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1369
    :cond_0
    invoke-static {p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1370
    invoke-static {p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result v3

    invoke-direct {p0, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v3

    .line 1371
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 1372
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    .line 1374
    iget v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panLimit:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1375
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1376
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1378
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1379
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1381
    :cond_2
    iget v6, v0, Landroid/graphics/PointF;->x:F

    neg-float v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 1382
    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v8, v5

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 1386
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v6

    const/high16 v8, 0x3f000000    # 0.5f

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 1387
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v9

    if-gtz v9, :cond_5

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v9

    if-lez v9, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1391
    :cond_6
    iget v9, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panLimit:I

    if-ne v9, v7, :cond_7

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1392
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1393
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 1395
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    mul-float p1, p1, v6

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1396
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    mul-float v2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_4

    .line 1398
    :cond_8
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 1399
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    int-to-float v1, v1

    .line 1402
    :goto_4
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1403
    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 1405
    invoke-static {p2, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    return-void
.end method

.method private getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    const-string v0, "content"

    .line 1776
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "orientation"

    .line 1779
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1780
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1782
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1783
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1784
    sget-object p2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    move v1, p1

    goto :goto_0

    .line 1787
    :cond_0
    sget-object p2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    .line 1795
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1792
    :catch_0
    :try_start_1
    sget-object p1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string p2, "Could not get orientation of image from media store"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_2

    .line 1795
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1797
    :cond_2
    throw p1

    :cond_3
    const-string p1, "file:///"

    .line 1798
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "file:///android_asset/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1800
    :try_start_2
    new-instance p1, Landroid/media/ExifInterface;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p2, "Orientation"

    const/4 v0, 0x1

    .line 1801
    invoke-virtual {p1, p2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    const/16 p1, 0x5a

    const/16 v1, 0x5a

    goto :goto_3

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    const/16 p1, 0xb4

    const/16 v1, 0xb4

    goto :goto_3

    :cond_6
    const/16 p2, 0x8

    if-ne p1, p2, :cond_7

    const/16 p1, 0x10e

    const/16 v1, 0x10e

    goto :goto_3

    .line 1811
    :cond_7
    sget-object p2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EXIF orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1814
    :catch_1
    sget-object p1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string p2, "Could not get EXIF orientation of image"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return v1
.end method

.method private getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;
    .locals 6

    .line 1915
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x800

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 1917
    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v2, "getMaximumBitmapWidth"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :try_start_1
    const-class v2, Landroid/graphics/Canvas;

    const-string v4, "getMaximumBitmapHeight"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move p1, v1

    move v1, v0

    goto :goto_0

    :catch_0
    const/16 v0, 0x800

    :catch_1
    move v1, v0

    :cond_0
    const/16 p1, 0x800

    .line 1923
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileHeight:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getRequiredRotation()I
    .locals 2

    .line 1975
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1976
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sOrientation:I

    :cond_0
    return v0
.end method

.method private declared-synchronized initialiseBaseLayer(Landroid/graphics/Point;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v0, "initialiseBaseLayer maxTileDimensions=%dx%d"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1201
    iget v4, p1, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v2, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 1204
    invoke-direct {p0, v4, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(ZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    .line 1208
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-le v0, v4, :cond_0

    .line 1210
    div-int/2addr v0, v1

    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    .line 1213
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    .line 1217
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    invoke-interface {p1}, Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;->recycle()V

    .line 1218
    iput-object v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    .line 1219
    new-instance p1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    iget-object v10, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;Lcom/luck/picture/lib/widget/longimage/DecoderFactory;Landroid/net/Uri;Z)V

    .line 1220
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_1

    .line 1224
    :cond_1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->initialiseTileMap(Landroid/graphics/Point;)V

    .line 1226
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    .line 1228
    new-instance v1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    invoke-direct {v1, p0, v2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)V

    .line 1229
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1231
    :cond_2
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private initialiseTileMap(Landroid/graphics/Point;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1436
    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "initialiseTileMap maxTileDimensions=%dx%d"

    invoke-direct {v0, v3, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 1438
    iget v2, v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    const/4 v3, 0x1

    const/4 v6, 0x1

    .line 1442
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v7

    div-int/2addr v7, v3

    .line 1443
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v8

    div-int/2addr v8, v6

    .line 1444
    div-int v9, v7, v2

    .line 1445
    div-int v10, v8, v2

    :goto_1
    add-int v11, v9, v3

    add-int/2addr v11, v5

    .line 1446
    iget v12, v1, Landroid/graphics/Point;->x:I

    if-gt v11, v12, :cond_9

    int-to-double v11, v9

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v9

    int-to-double v13, v9

    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v15

    cmpl-double v9, v11, v13

    if-lez v9, :cond_0

    iget v9, v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ge v2, v9, :cond_0

    goto/16 :goto_9

    :cond_0
    :goto_2
    add-int v9, v10, v6

    add-int/2addr v9, v5

    .line 1451
    iget v11, v1, Landroid/graphics/Point;->y:I

    if-gt v9, v11, :cond_8

    int-to-double v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v11

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1

    iget v9, v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ge v2, v9, :cond_1

    goto/16 :goto_8

    .line 1456
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    mul-int v10, v3, v6

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_5

    .line 1459
    new-instance v12, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    .line 1460
    invoke-static {v12, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4302(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;I)I

    .line 1461
    iget v13, v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v2, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_5

    :cond_2
    const/4 v13, 0x0

    :goto_5
    invoke-static {v12, v13}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    .line 1462
    new-instance v13, Landroid/graphics/Rect;

    mul-int v14, v10, v7

    mul-int v15, v11, v8

    add-int/lit8 v5, v3, -0x1

    if-ne v10, v5, :cond_3

    .line 1465
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v5

    goto :goto_6

    :cond_3
    add-int/lit8 v5, v10, 0x1

    mul-int v5, v5, v7

    :goto_6
    add-int/lit8 v4, v6, -0x1

    if-ne v11, v4, :cond_4

    .line 1466
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v4

    goto :goto_7

    :cond_4
    add-int/lit8 v4, v11, 0x1

    mul-int v4, v4, v8

    :goto_7
    invoke-direct {v13, v14, v15, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1462
    invoke-static {v12, v13}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4102(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1468
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v12, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4202(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1469
    new-instance v4, Landroid/graphics/Rect;

    invoke-static {v12}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v12, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$5002(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1470
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    .line 1473
    iget-object v4, v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    return-void

    .line 1477
    :cond_7
    div-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_8
    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v6, 0x1

    .line 1453
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v8

    div-int/2addr v8, v6

    .line 1454
    div-int v10, v8, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_9
    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    .line 1448
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v7

    div-int/2addr v7, v3

    .line 1449
    div-int v9, v7, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method private isBaseLayerReady()Z
    .locals 6

    .line 1125
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-nez v0, :cond_0

    return v1

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1129
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v4, v5, :cond_1

    .line 1131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    .line 1132
    invoke-static {v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method private limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 2134
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2135
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 2136
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p2, p2

    .line 2137
    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    div-float/2addr p2, p3

    int-to-float v0, v0

    .line 2138
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    div-float/2addr v0, p3

    .line 2139
    invoke-virtual {p4, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p4
.end method

.method private limitedScale(F)F
    .locals 1

    .line 2162
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2163
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private minScale()F
    .locals 4

    .line 2147
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 2148
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2149
    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumScaleType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2150
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2151
    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    return v2

    .line 2154
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private declared-synchronized onImageLoaded(Landroid/graphics/Bitmap;IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "onImageLoaded"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1742
    invoke-direct {p0, v0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1745
    :cond_0
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->reset(Z)V

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v2, :cond_2

    .line 1748
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_3

    .line 1752
    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    .line 1755
    :cond_3
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    .line 1756
    iput-boolean p3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 1757
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 1758
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    .line 1759
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    .line 1760
    iput p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sOrientation:I

    .line 1761
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    .line 1762
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1764
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    .line 1765
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "onPreviewLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1721
    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1722
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->imageLoadedSent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1727
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1729
    :cond_1
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    const/4 p1, 0x1

    .line 1731
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    .line 1732
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1733
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    .line 1734
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    :cond_2
    monitor-exit p0

    return-void

    .line 1723
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onTileLoaded()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "onTileLoaded"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1637
    invoke-direct {p0, v0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1638
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkReady()Z

    .line 1639
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkImageLoaded()Z

    .line 1640
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1641
    iget-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v2, :cond_0

    .line 1642
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 1644
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 1645
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v2, :cond_1

    .line 1646
    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    .line 1648
    :cond_1
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    .line 1649
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 1651
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onTilesInited(Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;III)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1544
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->orientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1546
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-lez v1, :cond_3

    if-ne v0, p2, :cond_0

    if-eq v1, p3, :cond_3

    .line 1547
    :cond_0
    invoke-direct {p0, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->reset(Z)V

    .line 1548
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1549
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v1, :cond_1

    .line 1550
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 1552
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 1553
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v1, :cond_2

    .line 1554
    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    .line 1556
    :cond_2
    iput-boolean v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    .line 1557
    iput-boolean v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 1560
    :cond_3
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    .line 1561
    iput p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    .line 1562
    iput p3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    .line 1563
    iput p4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sOrientation:I

    .line 1564
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkReady()Z

    .line 1565
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileWidth:I

    if-lez p1, :cond_4

    sget p2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TILE_SIZE_AUTO:I

    if-eq p1, p2, :cond_4

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileHeight:I

    if-lez p1, :cond_4

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    .line 1566
    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileWidth:I

    iget p3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileHeight:I

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->initialiseBaseLayer(Landroid/graphics/Point;)V

    .line 1568
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    .line 1569
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2a

    if-eq v1, v5, :cond_21

    if-eq v1, v3, :cond_0

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2a

    const/4 v6, 0x6

    if-eq v1, v6, :cond_21

    const/16 v6, 0x105

    if-eq v1, v6, :cond_2a

    const/16 v2, 0x106

    if-eq v1, v2, :cond_21

    goto/16 :goto_c

    .line 692
    :cond_0
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    if-lez v1, :cond_1f

    const/high16 v1, 0x40a00000    # 5.0f

    if-lt v0, v3, :cond_8

    .line 695
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    .line 696
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    .line 697
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v7, p1

    div-float/2addr v7, v2

    .line 699
    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->zoomEnabled:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v6, v2, v7}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->distance(FFFF)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vDistStart:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz p1, :cond_1f

    .line 700
    :cond_1
    iput-boolean v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    .line 701
    iput-boolean v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    .line 704
    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    float-to-double v1, p1

    .line 705
    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    iget v8, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vDistStart:F

    div-float v8, v0, v8

    iget v9, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    mul-float v8, v8, v9

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 707
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result v8

    cmpg-float p1, p1, v8

    if-gtz p1, :cond_2

    .line 709
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vDistStart:F

    .line 710
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    .line 711
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 712
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_0

    .line 713
    :cond_2
    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    if-eqz p1, :cond_5

    .line 716
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    .line 717
    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v8

    .line 718
    iget v8, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget v9, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    div-float v10, v8, v9

    mul-float p1, p1, v10

    div-float/2addr v8, v9

    mul-float v3, v3, v8

    .line 720
    iget-object v8, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    sub-float p1, v6, p1

    iput p1, v8, Landroid/graphics/PointF;->x:F

    .line 721
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    sub-float v3, v7, v3

    iput v3, p1, Landroid/graphics/PointF;->y:F

    .line 722
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result p1

    int-to-double v10, p1

    cmpg-double p1, v8, v10

    if-gez p1, :cond_3

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gez p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v8

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    int-to-double v8, p1

    cmpg-double p1, v1, v8

    if-gez p1, :cond_7

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    .line 723
    :cond_4
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 724
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 725
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 726
    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    .line 727
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vDistStart:F

    goto :goto_0

    .line 729
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_6

    .line 731
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 732
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 735
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 736
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 739
    :cond_7
    :goto_0
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 740
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    goto/16 :goto_4

    .line 742
    :cond_8
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v0, :cond_13

    .line 745
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v2

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleThreshold:F

    add-float/2addr v0, v1

    .line 747
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    .line 748
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    .line 750
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    .line 751
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v6, 0x0

    invoke-virtual {v2, v6, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 753
    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    div-float p1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float p1, p1, v7

    const v7, 0x3cf5c28f    # 0.03f

    cmpl-float v7, p1, v7

    if-gtz v7, :cond_b

    .line 755
    iget-boolean v7, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleMoved:Z

    if-eqz v7, :cond_12

    .line 756
    :cond_b
    iput-boolean v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleMoved:Z

    .line 759
    iget v7, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_d

    if-eqz v1, :cond_c

    add-float/2addr p1, v2

    move v2, p1

    goto :goto_2

    :cond_c
    sub-float/2addr v2, p1

    .line 763
    :cond_d
    :goto_2
    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    float-to-double v7, p1

    .line 764
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result p1

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    iget v9, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    mul-float v9, v9, v2

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 766
    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    if-eqz p1, :cond_10

    .line 767
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    .line 768
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 769
    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    div-float v9, v2, v3

    mul-float p1, p1, v9

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    .line 771
    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 772
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 773
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v7

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result p1

    int-to-double v9, p1

    cmpg-double p1, v1, v9

    if-gez p1, :cond_e

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_f

    :cond_e
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result p1

    int-to-double v1, p1

    cmpg-double p1, v7, v1

    if-gez p1, :cond_12

    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_12

    .line 774
    :cond_f
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 775
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 776
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 777
    iget p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    const/4 v0, 0x0

    goto :goto_3

    .line 780
    :cond_10
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_11

    .line 782
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget-object v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 783
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 786
    :cond_11
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 787
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v3, v6

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 791
    :cond_12
    :goto_3
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    .line 793
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 794
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :goto_4
    const/4 p1, 0x1

    goto/16 :goto_b

    .line 797
    :cond_13
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    if-nez v0, :cond_1f

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 804
    iget v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->density:F

    mul-float v3, v3, v1

    cmpl-float v1, v0, v3

    if-gtz v1, :cond_14

    cmpl-float v1, v2, v3

    if-gtz v1, :cond_14

    .line 805
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v1, :cond_1f

    .line 807
    :cond_14
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 808
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v7, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v7

    add-float/2addr v6, p1

    iput v6, v1, Landroid/graphics/PointF;->y:F

    .line 810
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 811
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 812
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 813
    iget-object v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, 0x0

    .line 814
    :goto_5
    iget-object v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_6

    :cond_16
    const/4 v6, 0x0

    :goto_6
    if-eqz p1, :cond_17

    cmpl-float v7, v0, v2

    if-lez v7, :cond_17

    .line 815
    iget-boolean v7, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    if-nez v7, :cond_17

    const/4 v7, 0x1

    goto :goto_7

    :cond_17
    const/4 v7, 0x0

    :goto_7
    if-eqz v6, :cond_18

    cmpl-float v8, v2, v0

    if-lez v8, :cond_18

    .line 816
    iget-boolean v8, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    if-nez v8, :cond_18

    const/4 v8, 0x1

    goto :goto_8

    :cond_18
    const/4 v8, 0x0

    .line 817
    :goto_8
    iget-object v9, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_19

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_9

    :cond_19
    const/4 v1, 0x0

    :goto_9
    if-nez v7, :cond_1b

    if-nez v8, :cond_1b

    if-eqz p1, :cond_1a

    if-eqz v6, :cond_1a

    if-nez v1, :cond_1a

    .line 818
    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz p1, :cond_1b

    .line 819
    :cond_1a
    iput-boolean v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    goto :goto_a

    :cond_1b
    cmpl-float p1, v0, v3

    if-gtz p1, :cond_1c

    cmpl-float p1, v2, v3

    if-lez p1, :cond_1d

    .line 822
    :cond_1c
    iput v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    .line 823
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 826
    :cond_1d
    :goto_a
    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    if-nez p1, :cond_1e

    .line 827
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 828
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 829
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 832
    :cond_1e
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    goto/16 :goto_4

    :cond_1f
    const/4 p1, 0x0

    :goto_b
    if-eqz p1, :cond_20

    .line 837
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    return v5

    :cond_20
    :goto_c
    return v4

    .line 845
    :cond_21
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v1, :cond_22

    .line 847
    iput-boolean v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 848
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleMoved:Z

    if-nez v1, :cond_22

    .line 849
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 852
    :cond_22
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    if-lez v1, :cond_28

    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    if-nez v1, :cond_23

    iget-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v2, :cond_28

    :cond_23
    if-eqz v1, :cond_25

    if-ne v0, v3, :cond_25

    .line 855
    iput-boolean v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    .line 856
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 857
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v5, :cond_24

    .line 858
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_d

    .line 860
    :cond_24
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_25
    :goto_d
    const/4 p1, 0x3

    if-ge v0, p1, :cond_26

    .line 865
    iput-boolean v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    :cond_26
    if-ge v0, v3, :cond_27

    .line 869
    iput-boolean v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    .line 870
    iput v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    .line 873
    :cond_27
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    return v5

    :cond_28
    if-ne v0, v5, :cond_29

    .line 877
    iput-boolean v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    .line 878
    iput-boolean v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    .line 879
    iput v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    :cond_29
    return v5

    :cond_2a
    const/4 v1, 0x0

    .line 664
    iput-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    .line 665
    invoke-direct {p0, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 666
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    if-lt v0, v3, :cond_2c

    .line 668
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->zoomEnabled:Z

    if-eqz v0, :cond_2b

    .line 670
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    .line 671
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    .line 672
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vDistStart:F

    .line 673
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 674
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v3, p1

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_e

    .line 677
    :cond_2b
    iput v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    .line 680
    :goto_e
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_f

    .line 681
    :cond_2c
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-nez v0, :cond_2d

    .line 683
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 684
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 687
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2d
    :goto_f
    return v5
.end method

.method private preDraw()V
    .locals 4

    .line 1295
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1301
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 1302
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 1303
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1306
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    .line 1307
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 1308
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    const/4 v0, 0x1

    .line 1309
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 1310
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 1314
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private refreshRequiredTiles(Z)V
    .locals 8

    .line 1243
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1245
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1249
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    .line 1251
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lt v4, v0, :cond_3

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    if-le v4, v0, :cond_4

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v7, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-eq v4, v7, :cond_4

    .line 1252
    :cond_3
    invoke-static {v3, v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    .line 1253
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1254
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1255
    invoke-static {v3, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$502(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1258
    :cond_4
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v0, :cond_6

    .line 1259
    invoke-direct {p0, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileVisible(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1260
    invoke-static {v3, v7}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    .line 1261
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 1262
    new-instance v4, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;

    iget-object v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    invoke-direct {v4, p0, v5, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)V

    .line 1263
    invoke-direct {p0, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 1265
    :cond_5
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v7, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-eq v4, v7, :cond_2

    .line 1266
    invoke-static {v3, v6}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    .line 1267
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1268
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1269
    invoke-static {v3, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$502(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1272
    :cond_6
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v4, v5, :cond_2

    .line 1273
    invoke-static {v3, v7}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 887
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 5

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset newImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 452
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 453
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scaleStart:F

    const/4 v2, 0x0

    .line 454
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    .line 455
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    .line 456
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    .line 457
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 458
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 459
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    .line 460
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    .line 461
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    .line 462
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    .line 463
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    .line 464
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    .line 465
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 466
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vDistStart:F

    .line 467
    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    .line 468
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleMoved:Z

    .line 469
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    .line 470
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    .line 471
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    .line 472
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    .line 473
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 474
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 475
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_3

    .line 477
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    .line 478
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    monitor-enter p1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;->recycle()V

    .line 481
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    .line 482
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 484
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v0, :cond_1

    .line 485
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz p1, :cond_2

    .line 488
    invoke-interface {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    .line 490
    :cond_2
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    .line 491
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    .line 492
    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sOrientation:I

    .line 493
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    .line 494
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    .line 495
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->readySent:Z

    .line 496
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->imageLoadedSent:Z

    .line 497
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 498
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    .line 499
    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 501
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-eqz p1, :cond_7

    .line 502
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    .line 504
    invoke-static {v3, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$402(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    .line 505
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 506
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    invoke-static {v3, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$502(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 511
    :cond_6
    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    .line 513
    :cond_7
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method private restoreState(Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1880
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1881
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->orientation:I

    .line 1882
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 1883
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 1884
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private sHeight()I
    .locals 2

    .line 1944
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1948
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    return v0

    .line 1946
    :cond_1
    :goto_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    return v0
.end method

.method private sWidth()I
    .locals 2

    .line 1931
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1935
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    return v0

    .line 1933
    :cond_1
    :goto_0
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    return v0
.end method

.method private sendStateChanged(FLandroid/graphics/PointF;I)V
    .locals 2

    .line 2657
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onStateChangedListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 2658
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_0

    .line 2659
    invoke-interface {v0, v1, p3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;->onScaleChanged(FI)V

    .line 2661
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2662
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onStateChangedListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;->onCenterChanged(Landroid/graphics/PointF;I)V

    :cond_1
    return-void
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .locals 2

    .line 517
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$2;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setMatrixArray([FFFFFFFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1111
    aput p2, p1, v0

    const/4 p2, 0x1

    .line 1112
    aput p3, p1, p2

    const/4 p2, 0x2

    .line 1113
    aput p4, p1, p2

    const/4 p2, 0x3

    .line 1114
    aput p5, p1, p2

    const/4 p2, 0x4

    .line 1115
    aput p6, p1, p2

    const/4 p2, 0x5

    .line 1116
    aput p7, p1, p2

    const/4 p2, 0x6

    .line 1117
    aput p8, p1, p2

    const/4 p2, 0x7

    .line 1118
    aput p9, p1, p2

    return-void
.end method

.method private sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 2103
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 2104
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 2105
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 2106
    invoke-direct {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 2107
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p1

    float-to-int p1, p1

    .line 2103
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2
.end method

.method private sourceToViewX(F)F
    .locals 2

    .line 2055
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2056
    :cond_0
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    mul-float p1, p1, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    return p1
.end method

.method private sourceToViewY(F)F
    .locals 2

    .line 2063
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2064
    :cond_0
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    mul-float p1, p1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v0

    return p1
.end method

.method private tileVisible(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1284
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v1

    .line 1285
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v2

    .line 1286
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v0

    .line 1287
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v3

    .line 1288
    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private vTranslateForSCenter(FFF)Landroid/graphics/PointF;
    .locals 6

    .line 2118
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2119
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 2120
    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    if-nez v2, :cond_0

    .line 2121
    new-instance v2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    .line 2123
    :cond_0
    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v2, p3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    .line 2124
    iget-object v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v2

    int-to-float v0, v0

    mul-float p1, p1, p3

    sub-float/2addr v0, p1

    int-to-float p1, v1

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    invoke-virtual {v2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    .line 2125
    iget-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(ZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    .line 2126
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->satTemp:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private viewToSourceX(F)F
    .locals 1

    .line 2007
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2008
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    div-float/2addr p1, v0

    return p1
.end method

.method private viewToSourceY(F)F
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 2016
    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public animateCenter(Landroid/graphics/PointF;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2

    .line 2676
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2679
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScale(F)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2

    .line 2689
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2692
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;FLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScaleAndCenter(FLandroid/graphics/PointF;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2

    .line 2702
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2705
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public final getAppliedOrientation()I
    .locals 1

    .line 2488
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .locals 2

    .line 2384
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2385
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2386
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 2352
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    return v0
.end method

.method public final getMinScale()F
    .locals 1

    .line 2359
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale()F

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .line 2480
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->orientation:I

    return v0
.end method

.method public final getSHeight()I
    .locals 1

    .line 2472
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    return v0
.end method

.method public final getSWidth()I
    .locals 1

    .line 2464
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    .line 2393
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    return v0
.end method

.method public final getState()Lcom/luck/picture/lib/widget/longimage/ImageViewState;
    .locals 4

    .line 2496
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-lez v0, :cond_0

    .line 2497
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/ImageViewState;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isImageLoaded()Z
    .locals 1

    .line 2449
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->imageLoadedSent:Z

    return v0
.end method

.method public final isPanEnabled()Z
    .locals 1

    .line 2534
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    return v0
.end method

.method public final isQuickScaleEnabled()Z
    .locals 1

    .line 2520
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 2432
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->readySent:Z

    return v0
.end method

.method public final isZoomEnabled()Z
    .locals 1

    .line 2506
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->zoomEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 928
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 929
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->createPaints()V

    .line 932
    iget v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-eqz v0, :cond_28

    iget v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-eqz v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 937
    :cond_0
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->decoder:Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    if-eqz v0, :cond_1

    .line 938
    invoke-direct/range {p0 .. p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->initialiseBaseLayer(Landroid/graphics/Point;)V

    .line 944
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->checkReady()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 949
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->preDraw()V

    .line 952
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    .line 954
    iget v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 955
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    .line 956
    :cond_3
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 959
    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    .line 960
    :goto_0
    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 961
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)F

    move-result v5

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)F

    move-result v1

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)F

    move-result v3

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v1

    iput v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 964
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v17

    .line 965
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v1

    .line 967
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v4

    sub-float v4, v4, v17

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 968
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    if-nez v10, :cond_6

    .line 971
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)F

    move-result v1

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-direct {v11, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 972
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3900(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    invoke-direct {v11, v0, v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sendStateChanged(FLandroid/graphics/PointF;I)V

    .line 973
    invoke-direct {v11, v10}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    if-eqz v10, :cond_8

    .line 975
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$2800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 977
    :try_start_0
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$2800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 979
    sget-object v1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "Error thrown by animation listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 982
    iput-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    .line 984
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    .line 987
    :cond_9
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    const/16 v15, 0x10e

    const/16 v10, 0x5a

    const/16 v8, 0xb4

    if-eqz v0, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 990
    iget v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fullImageSampleSize:I

    iget v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {v11, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 994
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v16, 0x0

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 995
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_a

    .line 996
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    .line 997
    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_c
    const/16 v16, 0x1

    goto :goto_4

    .line 1005
    :cond_d
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1006
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_f

    if-eqz v16, :cond_e

    goto :goto_6

    :cond_e
    const/16 v13, 0x5a

    const/16 v14, 0xb4

    goto/16 :goto_a

    .line 1007
    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    .line 1008
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1009
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1010
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_10

    .line 1011
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1013
    :cond_10
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_11

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 1014
    :cond_11
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1015
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->srcArray:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v9, v1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v21, v1

    move-object/from16 v1, p0

    const/16 v14, 0xb4

    move v8, v9

    move/from16 v9, v20

    const/16 v13, 0x5a

    move/from16 v10, v21

    invoke-direct/range {v1 .. v10}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-nez v1, :cond_12

    .line 1017
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_8

    .line 1018
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v13, :cond_13

    .line 1019
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_8

    .line 1020
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v14, :cond_14

    .line 1021
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto :goto_8

    .line 1022
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v15, :cond_15

    .line 1023
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    .line 1025
    :cond_15
    :goto_8
    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->srcArray:[F

    const/16 v24, 0x0

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->dstArray:[F

    const/16 v26, 0x0

    const/16 v27, 0x4

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 1026
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1027
    iget-boolean v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_17

    .line 1028
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_16
    const/16 v13, 0x5a

    const/16 v14, 0xb4

    .line 1030
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_17

    .line 1031
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x23

    int-to-float v2, v2

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const-string v4, "LOADING"

    invoke-virtual {v12, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1033
    :cond_17
    :goto_9
    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_18

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-static/range {v19 .. v19}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4200(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0xf

    int-to-float v3, v3

    iget-object v4, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_18
    const/16 v8, 0xb4

    const/16 v10, 0x5a

    goto/16 :goto_7

    :goto_a
    const/16 v8, 0xb4

    const/16 v10, 0x5a

    goto/16 :goto_5

    :cond_19
    const/16 v13, 0x5a

    const/16 v14, 0xb4

    .line 1040
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 1042
    iget v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 1043
    iget-boolean v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v2, :cond_1a

    .line 1044
    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    mul-float v1, v1, v2

    .line 1045
    iget v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    int-to-float v2, v2

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    goto :goto_b

    :cond_1a
    move v0, v1

    .line 1048
    :goto_b
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1b

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 1049
    :cond_1b
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1050
    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1051
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1052
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v14, :cond_1c

    .line 1055
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    .line 1056
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v13, :cond_1d

    .line 1057
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    .line 1058
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v15, :cond_1e

    .line 1059
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1062
    :cond_1e
    :goto_c
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_22

    .line 1063
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    .line 1064
    :cond_1f
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    iget-boolean v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v1, :cond_20

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_d

    :cond_20
    iget v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    :goto_d
    int-to-float v1, v1

    iget-boolean v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v2, :cond_21

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_e

    :cond_21
    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    :goto_e
    int-to-float v2, v2

    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1065
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1066
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1068
    :cond_22
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1072
    :cond_23
    iget-boolean v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_28

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%.2f"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v12, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Translate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v12, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source center: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x425c0000    # 55.0f

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1077
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1078
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    const/high16 v1, 0x41f00000    # 30.0f

    const v2, -0xff0001

    const v3, -0xffff01

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v6, -0x10000

    if-eqz v0, :cond_24

    .line 1079
    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$4400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1080
    iget-object v7, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v7}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$4500(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1081
    iget-object v8, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$3800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 1082
    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v10, 0x41200000    # 10.0f

    iget-object v13, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v9, v0, v10, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1083
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1084
    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v9, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v7, v4, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1085
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1086
    iget v0, v8, Landroid/graphics/PointF;->x:F

    iget v7, v8, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x41c80000    # 25.0f

    iget-object v9, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1087
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v7, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1090
    :cond_24
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_25

    .line 1091
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1092
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1094
    :cond_25
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_26

    .line 1095
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v3

    iget-object v4, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1098
    :cond_26
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_27

    .line 1099
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1100
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1102
    :cond_27
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1103
    iget-object v0, v11, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_28
    :goto_f
    return-void
.end method

.method protected onImageLoaded()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 589
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 590
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 591
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 592
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 597
    :goto_1
    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    if-lez v1, :cond_4

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 599
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    .line 600
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 602
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    int-to-double v0, p2

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result p2

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 604
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 607
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 608
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 609
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onReady()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 574
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "onSizeChanged %dx%d -> %dx%d"

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    .line 576
    iget-boolean p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->readySent:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 577
    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    .line 578
    iget p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 579
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$2700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$2800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;->access$2800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnAnimationEventListener;->onInterruptedByUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 626
    sget-object v2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v3, "Error thrown by animation listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 629
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    .line 633
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    return v1

    .line 637
    :cond_2
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isQuickScaling:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    :cond_3
    iput-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isZooming:Z

    .line 639
    iput-boolean v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isPanning:Z

    .line 640
    iput v2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTouchCount:I

    return v1

    .line 644
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    .line 645
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    .line 646
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    .line 649
    :cond_7
    iget v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    .line 650
    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 652
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 653
    iget-object v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    const/4 v5, 0x2

    invoke-direct {p0, v0, v4, v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sendStateChanged(FLandroid/graphics/PointF;I)V

    if-nez v3, :cond_9

    .line 654
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    return v1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    .line 1997
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->reset(Z)V

    const/4 v0, 0x0

    .line 1998
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 1999
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debugPaint:Landroid/graphics/Paint;

    .line 2000
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final resetScaleAndCenter()V
    .locals 3

    const/4 v0, 0x0

    .line 2415
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    const/4 v0, 0x0

    .line 2416
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 2417
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2418
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    goto :goto_0

    .line 2420
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 2422
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method public final setBitmapDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/luck/picture/lib/widget/longimage/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2265
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    return-void

    .line 2263
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder class cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBitmapDecoderFactory(Lcom/luck/picture/lib/widget/longimage/DecoderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/widget/longimage/DecoderFactory<",
            "+",
            "Lcom/luck/picture/lib/widget/longimage/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2277
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    return-void

    .line 2275
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder factory cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDebug(Z)V
    .locals 0

    .line 2623
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->debug:Z

    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .locals 2

    .line 2584
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2585
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2586
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    return-void
.end method

.method public final setDoubleTapZoomDuration(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2605
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .locals 0

    .line 2574
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomScale:F

    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .locals 3

    .line 2594
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2597
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    return-void

    .line 2595
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, p1, v0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V
    .locals 8

    const-string v0, "imageSource must not be null"

    .line 396
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 399
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->reset(Z)V

    if-eqz p3, :cond_0

    .line 400
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->restoreState(Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    :cond_0
    const-string p3, "/"

    const-string v0, "android.resource://"

    if-eqz p2, :cond_5

    .line 403
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    .line 406
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSWidth()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth:I

    .line 410
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSHeight()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight:I

    .line 411
    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    .line 412
    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->isCached()Z

    move-result v1

    iput-boolean v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapIsCached:Z

    .line 414
    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 417
    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 420
    new-instance p2, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;Lcom/luck/picture/lib/widget/longimage/DecoderFactory;Landroid/net/Uri;Z)V

    .line 421
    invoke-direct {p0, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 407
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 426
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p2, p3, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto/16 :goto_2

    .line 427
    :cond_6
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 428
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->isCached()Z

    move-result p1

    invoke-direct {p0, p2, v1, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto :goto_2

    .line 430
    :cond_7
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    .line 431
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    if-nez p2, :cond_8

    .line 432
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    .line 435
    :cond_8
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->getTile()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    goto :goto_1

    .line 441
    :cond_9
    new-instance p1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    iget-object v4, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;Lcom/luck/picture/lib/widget/longimage/DecoderFactory;Landroid/net/Uri;Z)V

    .line 442
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_2

    .line 437
    :cond_a
    :goto_1
    new-instance p1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TilesInitTask;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TilesInitTask;-><init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/content/Context;Lcom/luck/picture/lib/widget/longimage/DecoderFactory;Landroid/net/Uri;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    :goto_2
    return-void
.end method

.method public final setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, p1, v0, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    return-void
.end method

.method public final setMaxScale(F)V
    .locals 0

    .line 2314
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxScale:F

    return-void
.end method

.method public setMaxTileSize(I)V
    .locals 0

    .line 1894
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileWidth:I

    .line 1895
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileHeight:I

    return-void
.end method

.method public setMaxTileSize(II)V
    .locals 0

    .line 1905
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileWidth:I

    .line 1906
    iput p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->maxTileHeight:I

    return-void
.end method

.method public final setMaximumDpi(I)V
    .locals 2

    .line 2343
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2344
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2345
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinScale(F)V

    return-void
.end method

.method public final setMinScale(F)V
    .locals 0

    .line 2322
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minScale:F

    return-void
.end method

.method public final setMinimumDpi(I)V
    .locals 2

    .line 2332
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2333
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 2334
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMaxScale(F)V

    return-void
.end method

.method public final setMinimumScaleType(I)V
    .locals 3

    .line 2298
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2301
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumScaleType:I

    .line 2302
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2303
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 2304
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void

    .line 2299
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scale type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumTileDpi(I)V
    .locals 2

    .line 2371
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2372
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    .line 2373
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->minimumTileDpi:I

    .line 2374
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2375
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->reset(Z)V

    .line 2376
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnImageEventListener(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;)V
    .locals 0

    .line 2646
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onImageEventListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 2639
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;)V
    .locals 0

    .line 2653
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->onStateChangedListener:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnStateChangedListener;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 3

    .line 339
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->orientation:I

    const/4 p1, 0x0

    .line 343
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->reset(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    .line 345
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->requestLayout()V

    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPanEnabled(Z)V
    .locals 3

    .line 2541
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panEnabled:Z

    if-nez p1, :cond_0

    .line 2542
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    .line 2543
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 2544
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 2545
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2546
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    .line 2547
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setPanLimit(I)V
    .locals 3

    .line 2284
    sget-object v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2287
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->panLimit:I

    .line 2288
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2289
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->fitToBounds(Z)V

    .line 2290
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    :cond_0
    return-void

    .line 2285
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pan limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParallelLoadingEnabled(Z)V
    .locals 0

    .line 2616
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->parallelLoadingEnabled:Z

    return-void
.end method

.method public final setQuickScaleEnabled(Z)V
    .locals 0

    .line 2527
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return-void
.end method

.method public final setRegionDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2239
    new-instance v0, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcom/luck/picture/lib/widget/longimage/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    return-void

    .line 2237
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder class cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRegionDecoderFactory(Lcom/luck/picture/lib/widget/longimage/DecoderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/widget/longimage/DecoderFactory<",
            "+",
            "Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2252
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->regionDecoderFactory:Lcom/luck/picture/lib/widget/longimage/DecoderFactory;

    return-void

    .line 2250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder factory cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setScaleAndCenter(FLandroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    .line 2403
    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->anim:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Anim;

    .line 2404
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    .line 2405
    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    .line 2406
    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    .line 2407
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .locals 2

    .line 2557
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2558
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 2560
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    .line 2561
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2562
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2564
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->invalidate()V

    return-void
.end method

.method public final setZoomEnabled(Z)V
    .locals 0

    .line 2513
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->zoomEnabled:Z

    return-void
.end method

.method public final sourceToViewCoord(FF)Landroid/graphics/PointF;
    .locals 1

    .line 2078
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2095
    :cond_0
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 2071
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 2085
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FF)Landroid/graphics/PointF;
    .locals 1

    .line 2030
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2047
    :cond_0
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 2023
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 2037
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
