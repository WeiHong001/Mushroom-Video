.class public Lcom/luck/picture/lib/camare/JCameraView;
.super Landroid/widget/FrameLayout;
.source "JCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/luck/picture/lib/camare/view/CameraView;


# static fields
.field public static final BUTTON_STATE_BOTH:I = 0x103

.field public static final BUTTON_STATE_ONLY_CAPTURE:I = 0x101

.field public static final BUTTON_STATE_ONLY_RECORDER:I = 0x102

.field public static MEDIA_QUALITY_HIGH:I = 0x4f5c28

.field public static final TYPE_DEFAULT:I = 0x4

.field private static final TYPE_FLASH_AUTO:I = 0x21

.field private static final TYPE_FLASH_OFF:I = 0x23

.field private static final TYPE_FLASH_ON:I = 0x22

.field public static final TYPE_PICTURE:I = 0x1

.field public static final TYPE_SHORT:I = 0x3

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private captureBitmap:Landroid/graphics/Bitmap;

.field private duration:I

.field private errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstTouch:Z

.field private firstTouchLength:F

.field private iconLeft:I

.field private iconMargin:I

.field private iconRight:I

.field private iconSize:I

.field private iconSrc:I

.field private jCameraLisenter:Lcom/luck/picture/lib/camare/listener/JCameraListener;

.field private layout_width:I

.field private mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

.field private mContext:Landroid/content/Context;

.field private mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhoto:Landroid/widget/ImageView;

.field private mSwitchCamera:Landroid/widget/ImageView;

.field private mVideoView:Landroid/widget/VideoView;

.field private machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

.field private minduration:I

.field private reTurnClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

.field private rightClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

.field private screenProp:F

.field private type_flash:I

.field private videoUrl:Ljava/lang/String;

.field private zoomGradient:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/camare/JCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x23

    .line 52
    iput v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->type_flash:I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    const/4 v1, 0x0

    .line 99
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconSize:I

    .line 100
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconMargin:I

    .line 101
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconSrc:I

    .line 102
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconLeft:I

    .line 103
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconRight:I

    .line 109
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->duration:I

    const/16 v2, 0x1388

    .line 110
    iput v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->minduration:I

    .line 113
    iput v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->zoomGradient:I

    const/4 v2, 0x1

    .line 115
    iput-boolean v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouch:Z

    .line 116
    iput v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouchLength:F

    .line 128
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/luck/picture/lib/R$styleable;->JCameraView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 131
    sget p2, Lcom/luck/picture/lib/R$styleable;->JCameraView_iconSize:I

    .line 132
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x2

    const/high16 v2, 0x420c0000    # 35.0f

    .line 131
    invoke-static {v0, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconSize:I

    .line 133
    sget p2, Lcom/luck/picture/lib/R$styleable;->JCameraView_iconMargin:I

    .line 134
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v2, 0x41700000    # 15.0f

    .line 133
    invoke-static {v0, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconMargin:I

    .line 135
    sget p2, Lcom/luck/picture/lib/R$styleable;->JCameraView_iconSrc:I

    sget p3, Lcom/luck/picture/lib/R$drawable;->ic_camera:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconSrc:I

    .line 136
    sget p2, Lcom/luck/picture/lib/R$styleable;->JCameraView_iconLeft:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconLeft:I

    .line 137
    sget p2, Lcom/luck/picture/lib/R$styleable;->JCameraView_iconRight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconRight:I

    .line 138
    sget p2, Lcom/luck/picture/lib/R$styleable;->JCameraView_duration_max:I

    const/16 p3, 0x4e20

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->duration:I

    .line 139
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/JCameraView;->initData()V

    .line 141
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/JCameraView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ClickListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->reTurnClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/widget/VideoView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/camare/JCameraView;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    return p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/CaptureLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ErrorListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ClickListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->rightClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/FoucsView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/luck/picture/lib/camare/JCameraView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/camare/JCameraView;FF)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/camare/JCameraView;->updateVideoViewSize(FF)V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 156
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

.method private initData()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->layout_width:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 147
    iput v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->zoomGradient:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->zoomGradient:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/luck/picture/lib/camare/state/CameraMachine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/camare/view/CameraView;Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;)V

    iput-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setWillNotDraw(Z)V

    .line 162
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->camera_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    sget v1, Lcom/luck/picture/lib/R$id;->video_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    .line 164
    sget v1, Lcom/luck/picture/lib/R$id;->image_photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    .line 165
    sget v1, Lcom/luck/picture/lib/R$id;->image_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    .line 166
    iget v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconSrc:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/JCameraView;->setFlashRes()V

    .line 179
    sget v1, Lcom/luck/picture/lib/R$id;->capture_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/camare/CaptureLayout;

    iput-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    .line 180
    iget v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->duration:I

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/camare/CaptureLayout;->setDuration(I)V

    .line 181
    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    iget v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->minduration:I

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/camare/CaptureLayout;->setMinDuration(I)V

    .line 182
    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    iget v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconLeft:I

    iget v3, p0, Lcom/luck/picture/lib/camare/JCameraView;->iconRight:I

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/camare/CaptureLayout;->setIconSrc(II)V

    .line 183
    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    new-instance v2, Lcom/luck/picture/lib/camare/JCameraView$1;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/camare/JCameraView$1;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/camare/CaptureLayout;->setReturnLisenter(Lcom/luck/picture/lib/camare/listener/ReturnListener;)V

    .line 191
    sget v1, Lcom/luck/picture/lib/R$id;->fouce_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/camare/FoucsView;

    iput-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    .line 192
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 194
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    new-instance v1, Lcom/luck/picture/lib/camare/JCameraView$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/JCameraView$2;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    new-instance v1, Lcom/luck/picture/lib/camare/JCameraView$3;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/JCameraView$3;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CaptureLayout;->setCaptureLisenter(Lcom/luck/picture/lib/camare/listener/CaptureListener;)V

    .line 242
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    new-instance v1, Lcom/luck/picture/lib/camare/JCameraView$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/JCameraView$4;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CaptureLayout;->setTypeLisenter(Lcom/luck/picture/lib/camare/listener/TypeListener;)V

    .line 262
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    new-instance v1, Lcom/luck/picture/lib/camare/JCameraView$5;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/JCameraView$5;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CaptureLayout;->setRightClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V

    return-void
.end method

.method private setFlashRes()V
    .locals 2

    .line 584
    iget v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->type_flash:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 592
    :pswitch_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->flash(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->flash(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :pswitch_2
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->flash(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFocusViewWidthAnimation(FF)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    new-instance v1, Lcom/luck/picture/lib/camare/JCameraView$7;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/JCameraView$7;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->foucs(FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V

    return-void
.end method

.method public static setQuality(I)V
    .locals 0

    .line 70
    sput p0, Lcom/luck/picture/lib/camare/JCameraView;->MEDIA_QUALITY_HIGH:I

    return-void
.end method

.method private updateVideoViewSize(FF)V
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    div-float/2addr p2, p1

    .line 386
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 387
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 388
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cameraHasOpened()V
    .locals 3

    .line 284
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/camare/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public confirmState(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->stopVideo()V

    .line 452
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    invoke-virtual {p1, v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->start(Landroid/view/SurfaceHolder;F)V

    .line 454
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->jCameraLisenter:Lcom/luck/picture/lib/camare/listener/JCameraListener;

    if-eqz p1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v1}, Lcom/luck/picture/lib/camare/listener/JCameraListener;->recordSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->jCameraLisenter:Lcom/luck/picture/lib/camare/listener/JCameraListener;

    if-eqz p1, :cond_2

    .line 461
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->captureBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/camare/listener/JCameraListener;->captureSuccess(Landroid/graphics/Bitmap;)V

    .line 469
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->resetCaptureLayout()V

    return-void
.end method

.method public handlerFoucs(FF)Z
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    return v1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/FoucsView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 555
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    .line 557
    :cond_1
    iget v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->layout_width:I

    iget-object v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v2}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 558
    iget p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->layout_width:I

    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 561
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {p2}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result p2

    div-int/2addr p2, v1

    int-to-float p2, p2

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v2}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 564
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p2}, Lcom/luck/picture/lib/camare/CaptureLayout;->getTop()I

    move-result p2

    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 566
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/FoucsView;->setX(F)V

    .line 567
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/camare/FoucsView;->setY(F)V

    .line 568
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    new-array p2, v1, [F

    fill-array-data p2, :array_0

    const-string v0, "scaleX"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 569
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    const-string v1, "scaleY"

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 570
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 571
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 572
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p1, 0x190

    .line 573
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 574
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x1

    return p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 274
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 275
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    .line 276
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p2}, Landroid/widget/VideoView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    .line 277
    iget v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    div-float/2addr p2, p1

    .line 278
    iput p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "JCameraView onPause"

    .line 298
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->stopVideo()V

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/JCameraView;->resetState(I)V

    .line 301
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->isPreview(Z)V

    .line 302
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->unregisterSensorManager(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "JCameraView onResume"

    .line 289
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 290
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/JCameraView;->resetState(I)V

    .line 291
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->registerSensorManager(Landroid/content/Context;)V

    .line 292
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    iget-object v1, v1, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->setSwitchView(Landroid/widget/ImageView;)V

    .line 293
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->start(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 342
    iput-boolean v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouch:Z

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 349
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 350
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 352
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float/2addr v3, p1

    float-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 355
    iget-boolean v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouch:Z

    if-eqz v1, :cond_2

    .line 356
    iput p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouchLength:F

    .line 357
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouch:Z

    .line 359
    :cond_2
    iget v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouchLength:F

    sub-float v1, p1, v0

    float-to-int v1, v1

    iget v3, p0, Lcom/luck/picture/lib/camare/JCameraView;->zoomGradient:I

    div-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 360
    iput-boolean v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouch:Z

    .line 361
    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    sub-float/2addr p1, v0

    const/16 v0, 0x91

    invoke-virtual {v1, p1, v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->zoom(FI)V

    goto :goto_0

    .line 367
    :cond_3
    iput-boolean v2, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstTouch:Z

    goto :goto_0

    .line 332
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/luck/picture/lib/camare/JCameraView;->setFocusViewWidthAnimation(FF)V

    .line 336
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_6

    const-string p1, "CJT"

    const-string v0, "ACTION_DOWN = 2"

    .line 337
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v2
.end method

.method public playVideo(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 488
    iput-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->videoUrl:Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->firstFrame:Landroid/graphics/Bitmap;

    .line 490
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/luck/picture/lib/camare/JCameraView$8;

    invoke-direct {v0, p0, p2}, Lcom/luck/picture/lib/camare/JCameraView$8;-><init>(Lcom/luck/picture/lib/camare/JCameraView;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 525
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public resetState(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v2, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/JCameraView;->stopVideo()V

    .line 431
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->videoUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 432
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->screenProp:F

    invoke-virtual {p1, v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->start(Landroid/view/SurfaceHolder;F)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->resetCaptureLayout()V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->duration:I

    return-void
.end method

.method public setErrorLisenter(Lcom/luck/picture/lib/camare/listener/ErrorListener;)V
    .locals 1

    .line 411
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    .line 412
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CameraInterface;->setErrorLinsenter(Lcom/luck/picture/lib/camare/listener/ErrorListener;)V

    return-void
.end method

.method public setFeatures(I)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->setButtonFeatures(I)V

    return-void
.end method

.method public setJCameraLisenter(Lcom/luck/picture/lib/camare/listener/JCameraListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->jCameraLisenter:Lcom/luck/picture/lib/camare/listener/JCameraListener;

    return-void
.end method

.method public setMediaQuality(I)V
    .locals 1

    .line 422
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CameraInterface;->setMediaQuality(I)V

    return-void
.end method

.method public setRightClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->rightClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-void
.end method

.method public setRturnClickClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->reTurnClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-void
.end method

.method public setSaveVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 398
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CameraInterface;->setSaveVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->setTip(Ljava/lang/String;)V

    return-void
.end method

.method public showPicture(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 475
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 479
    :goto_0
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->captureBitmap:Landroid/graphics/Bitmap;

    .line 480
    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mPhoto:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->startAlphaAnimation()V

    .line 483
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->startTypeBtnAnimator()V

    return-void
.end method

.method public startPreviewCallback()V
    .locals 2

    const-string/jumbo v0, "startPreviewCallback"

    .line 544
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView;->mFoucsView:Lcom/luck/picture/lib/camare/FoucsView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/camare/JCameraView;->handlerFoucs(FF)Z

    return-void
.end method

.method public stopVideo()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 532
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p1, "JCameraView SurfaceCreated"

    .line 308
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 309
    new-instance p1, Lcom/luck/picture/lib/camare/JCameraView$6;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camare/JCameraView$6;-><init>(Lcom/luck/picture/lib/camare/JCameraView;)V

    .line 314
    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/JCameraView$6;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p1, "JCameraView SurfaceDestroyed"

    .line 323
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CameraInterface;->doDestroyCamera()V

    return-void
.end method
