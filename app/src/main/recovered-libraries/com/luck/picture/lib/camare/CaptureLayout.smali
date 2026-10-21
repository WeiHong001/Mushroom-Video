.class public Lcom/luck/picture/lib/camare/CaptureLayout;
.super Landroid/widget/FrameLayout;
.source "CaptureLayout.java"


# instance fields
.field private btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

.field private btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

.field private btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

.field private btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

.field private button_size:I

.field private captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

.field private iconLeft:I

.field private iconRight:I

.field private isFirst:Z

.field public iv_custom_left:Landroid/widget/ImageView;

.field private iv_custom_right:Landroid/widget/ImageView;

.field private layout_height:I

.field private layout_width:I

.field private leftClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

.field private returnListener:Lcom/luck/picture/lib/camare/listener/ReturnListener;

.field private rightClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

.field private txt_tip:Landroid/widget/TextView;

.field private typeLisenter:Lcom/luck/picture/lib/camare/listener/TypeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconLeft:I

    .line 68
    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconRight:I

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->isFirst:Z

    const-string/jumbo p3, "window"

    .line 83
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 84
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    .line 88
    iget p1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    goto :goto_0

    .line 90
    :cond_0
    iget p1, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    .line 92
    :goto_0
    iget p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    int-to-float p1, p1

    const/high16 p2, 0x40900000    # 4.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    .line 93
    div-int/lit8 p2, p1, 0x5

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_height:I

    .line 95
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->initView()V

    .line 96
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->initEvent()V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/TypeButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/TypeButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/TypeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->typeLisenter:Lcom/luck/picture/lib/camare/listener/TypeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/ReturnListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->returnListener:Lcom/luck/picture/lib/camare/listener/ReturnListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/ClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->rightClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-object p0
.end method

.method private initView()V
    .locals 14

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->setWillNotDraw(Z)V

    .line 149
    new-instance v1, Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    invoke-direct {v1, v2, v3}, Lcom/luck/picture/lib/camare/CaptureButton;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    .line 150
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 151
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    iget-object v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {v4, v1}, Lcom/luck/picture/lib/camare/CaptureButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    new-instance v4, Lcom/luck/picture/lib/camare/CaptureLayout$2;

    invoke-direct {v4, p0}, Lcom/luck/picture/lib/camare/CaptureLayout$2;-><init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V

    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/camare/CaptureButton;->setCaptureLisenter(Lcom/luck/picture/lib/camare/listener/CaptureListener;)V

    .line 202
    new-instance v1, Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    const/4 v6, 0x1

    invoke-direct {v1, v4, v6, v5}, Lcom/luck/picture/lib/camare/TypeButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    .line 203
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 204
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget v5, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v5, v5, 0x4

    iget v7, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    const/4 v8, 0x2

    div-int/2addr v7, v8

    sub-int/2addr v5, v7

    invoke-virtual {v1, v5, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    iget-object v5, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v5, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    new-instance v5, Lcom/luck/picture/lib/camare/CaptureLayout$3;

    invoke-direct {v5, p0}, Lcom/luck/picture/lib/camare/CaptureLayout$3;-><init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/camare/TypeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v1, Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    invoke-direct {v1, v5, v8, v7}, Lcom/luck/picture/lib/camare/TypeButton;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    .line 220
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x15

    .line 221
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    iget v7, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v7, v7, 0x4

    iget v9, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    div-int/2addr v9, v8

    sub-int/2addr v7, v9

    invoke-virtual {v1, v0, v0, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    iget-object v7, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v7, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    new-instance v7, Lcom/luck/picture/lib/camare/CaptureLayout$4;

    invoke-direct {v7, p0}, Lcom/luck/picture/lib/camare/CaptureLayout$4;-><init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V

    invoke-virtual {v1, v7}, Lcom/luck/picture/lib/camare/TypeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    iget v7, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v7, v7, 0x4

    iget v9, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    div-int/2addr v9, v8

    sub-int/2addr v7, v9

    invoke-virtual {v1, v0, v0, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    iget-object v7, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v7, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v1, Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    int-to-float v8, v8

    const/high16 v9, 0x40200000    # 2.5f

    div-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v7, v8}, Lcom/luck/picture/lib/camare/ReturnButton;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    .line 241
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 242
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    iget v8, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v8, v8, 0x6

    invoke-virtual {v1, v8, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    iget-object v8, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {v8, v1}, Lcom/luck/picture/lib/camare/ReturnButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    new-instance v8, Lcom/luck/picture/lib/camare/CaptureLayout$5;

    invoke-direct {v8, p0}, Lcom/luck/picture/lib/camare/CaptureLayout$5;-><init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V

    invoke-virtual {v1, v8}, Lcom/luck/picture/lib/camare/ReturnButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    .line 255
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 256
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 257
    iget v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v4, v4, 0xc

    invoke-virtual {v1, v4, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 258
    iget-object v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    .line 261
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->button_size:I

    int-to-double v8, v4

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    double-to-int v8, v8

    int-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v10

    double-to-int v4, v12

    invoke-direct {v1, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 262
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    iget v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v4, v4, 0x6

    invoke-virtual {v1, v0, v0, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 264
    iget-object v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    new-instance v4, Lcom/luck/picture/lib/camare/CaptureLayout$6;

    invoke-direct {v4, p0}, Lcom/luck/picture/lib/camare/CaptureLayout$6;-><init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    .line 275
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 276
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 278
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const-string/jumbo v4, "\u8f7b\u89e6\u62cd\u7167\uff0c\u957f\u6309\u6444\u50cf"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 281
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initEvent()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 102
    iget p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    iget p2, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_height:I

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/camare/CaptureLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetCaptureLayout()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/CaptureButton;->resetState()V

    .line 298
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CaptureButton;->setVisibility(I)V

    .line 301
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconLeft:I

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/ReturnButton;->setVisibility(I)V

    .line 307
    :goto_0
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconRight:I

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setButtonFeatures(I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CaptureButton;->setButtonFeatures(I)V

    return-void
.end method

.method public setCaptureLisenter(Lcom/luck/picture/lib/camare/listener/CaptureListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CaptureButton;->setDuration(I)V

    return-void
.end method

.method public setIconSrc(II)V
    .locals 3

    .line 345
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconLeft:I

    .line 346
    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconRight:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/camare/ReturnButton;->setVisibility(I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/ReturnButton;->setVisibility(I)V

    .line 355
    :goto_0
    iget p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconRight:I

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setLeftClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->leftClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-void
.end method

.method public setMinDuration(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CaptureButton;->setMinDuration(I)V

    return-void
.end method

.method public setReturnLisenter(Lcom/luck/picture/lib/camare/listener/ReturnListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->returnListener:Lcom/luck/picture/lib/camare/listener/ReturnListener;

    return-void
.end method

.method public setRightClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->rightClickListener:Lcom/luck/picture/lib/camare/listener/ClickListener;

    return-void
.end method

.method public setTextWithAnimation(Ljava/lang/String;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x9c4

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTypeLisenter(Lcom/luck/picture/lib/camare/listener/TypeListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->typeLisenter:Lcom/luck/picture/lib/camare/listener/TypeListener;

    return-void
.end method

.method public showTip()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public startAlphaAnimation()V
    .locals 3

    .line 313
    iget-boolean v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->isFirst:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->txt_tip:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->isFirst:Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public startTypeBtnAnimator()V
    .locals 9

    .line 114
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconLeft:I

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_return:Lcom/luck/picture/lib/camare/ReturnButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/ReturnButton;->setVisibility(I)V

    .line 118
    :goto_0
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iconRight:I

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->iv_custom_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_capture:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CaptureButton;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setClickable(Z)V

    .line 124
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/TypeButton;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_cancel:Lcom/luck/picture/lib/camare/TypeButton;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    aput v4, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const-string/jumbo v6, "translationX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    iget-object v3, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->btn_confirm:Lcom/luck/picture/lib/camare/TypeButton;

    new-array v7, v2, [F

    iget v8, p0, Lcom/luck/picture/lib/camare/CaptureLayout;->layout_width:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    aput v8, v7, v1

    aput v5, v7, v4

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 128
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    aput-object v3, v2, v4

    .line 129
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 130
    new-instance v0, Lcom/luck/picture/lib/camare/CaptureLayout$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camare/CaptureLayout$1;-><init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    .line 138
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 139
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
