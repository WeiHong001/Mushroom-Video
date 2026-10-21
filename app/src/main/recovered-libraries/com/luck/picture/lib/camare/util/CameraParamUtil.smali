.class public Lcom/luck/picture/lib/camare/util/CameraParamUtil;
.super Ljava/lang/Object;
.source "CameraParamUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JCameraView"

.field private static cameraParamUtil:Lcom/luck/picture/lib/camare/util/CameraParamUtil;


# instance fields
.field private sizeComparator:Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;-><init>(Lcom/luck/picture/lib/camare/util/CameraParamUtil;Lcom/luck/picture/lib/camare/util/CameraParamUtil$1;)V

    iput-object v0, p0, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->sizeComparator:Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;

    return-void
.end method

.method private equalRate(Landroid/hardware/Camera$Size;F)Z
    .locals 3

    .line 81
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    sub-float/2addr v0, p2

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getBestSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;F)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 70
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    sub-float v3, p2, v4

    .line 71
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    .line 72
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public static getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;
    .locals 1

    .line 23
    sget-object v0, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->cameraParamUtil:Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    invoke-direct {v0}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->cameraParamUtil:Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCameraDisplayOrientation(Landroid/content/Context;I)I
    .locals 3

    .line 121
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 122
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const-string/jumbo p2, "window"

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 124
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 141
    :cond_3
    :goto_0
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, p2, :cond_4

    .line 142
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    rsub-int p1, p1, 0x168

    .line 143
    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 146
    :cond_4
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    :goto_1
    return p1
.end method

.method public getPictureSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;IF)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->sizeComparator:Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 52
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v3, p2, :cond_0

    invoke-direct {p0, v2, p3}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->equalRate(Landroid/hardware/Camera$Size;F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MakeSure Picture :w = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JCameraView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne v1, p2, :cond_2

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getBestSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object p1

    return-object p1

    .line 61
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;IF)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->sizeComparator:Lcom/luck/picture/lib/camare/util/CameraParamUtil$CameraSizeComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 35
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v3, p2, :cond_0

    invoke-direct {p0, v2, p3}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->equalRate(Landroid/hardware/Camera$Size;F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MakeSure Preview :w = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JCameraView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne v1, p2, :cond_2

    .line 42
    invoke-direct {p0, p1, p3}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getBestSize(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object p1

    return-object p1

    .line 44
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public isSupportedFocusMode(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "JCameraView"

    if-ge v1, v2, :cond_1

    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FocusMode supported "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FocusMode not supported "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupportedPictureFormats(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "JCameraView"

    if-ge v1, v2, :cond_1

    .line 98
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Formats supported "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Formats not supported "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
