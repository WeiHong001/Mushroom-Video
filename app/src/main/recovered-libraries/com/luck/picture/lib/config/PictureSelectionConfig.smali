.class public final Lcom/luck/picture/lib/config/PictureSelectionConfig;
.super Ljava/lang/Object;
.source "PictureSelectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/config/PictureSelectionConfig$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/config/PictureSelectionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aspect_ratio_x:I

.field public aspect_ratio_y:I

.field public camera:Z

.field public checkNumMode:Z

.field public circleDimmedLayer:Z

.field public compressSavePath:Ljava/lang/String;

.field public cropCompressQuality:I

.field public cropHeight:I

.field public cropWidth:I

.field public enPreviewVideo:Z

.field public enableCrop:Z

.field public enablePreview:Z

.field public enablePreviewAudio:Z

.field public freeStyleCropEnabled:Z

.field public hideBottomControls:Z

.field public imageSpanCount:I

.field public isCamera:Z

.field public isCompress:Z

.field public isDragFrame:Z

.field public isGif:Z

.field public maxSelectNum:I

.field public mimeType:I

.field public minSelectNum:I

.field public minimumCompressSize:I

.field public openClickSound:Z

.field public outputCameraPath:Ljava/lang/String;

.field public overrideHeight:I

.field public overrideWidth:I

.field public previewEggs:Z

.field public recordVideoSecond:I

.field public rotateEnabled:Z

.field public scaleEnabled:Z

.field public selectionMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field public selectionMode:I

.field public showCropFrame:Z

.field public showCropGrid:Z

.field public sizeMultiplier:F

.field public suffixType:Ljava/lang/String;

.field public synOrAsy:Z

.field public themeStyleId:I

.field public videoMaxSecond:I

.field public videoMinSecond:I

.field public videoQuality:I

.field public zoomAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    new-instance v0, Lcom/luck/picture/lib/config/PictureSelectionConfig$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/config/PictureSelectionConfig$1;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outputCameraPath:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoQuality:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideWidth:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideHeight:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->sizeMultiplier:F

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->zoomAnim:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreviewAudio:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->hideBottomControls:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_14

    :cond_14
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    .line 231
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    return-void
.end method

.method public static getCleanInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;
    .locals 1

    .line 122
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    .line 123
    invoke-direct {v0}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->reset()V

    return-object v0
.end method

.method public static getInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;
    .locals 1

    .line 118
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig$InstanceHolder;->access$000()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    return-object v0
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x1

    .line 71
    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    .line 73
    sget v2, Lcom/luck/picture/lib/R$style;->picture_default_style:I

    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    const/4 v2, 0x2

    .line 74
    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/16 v2, 0x9

    .line 75
    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    .line 76
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    .line 77
    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoQuality:I

    const/16 v2, 0x5a

    .line 78
    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    .line 79
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    .line 80
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    const/16 v2, 0x3c

    .line 81
    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    const/16 v2, 0x64

    .line 82
    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    const/4 v2, 0x4

    .line 83
    iput v2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    .line 84
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideWidth:I

    .line 85
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideHeight:I

    .line 86
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    .line 87
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    .line 88
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    .line 89
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    .line 90
    iput v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    .line 91
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    .line 92
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    .line 93
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    .line 94
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    .line 95
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreviewAudio:Z

    .line 96
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    .line 97
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    .line 98
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    .line 99
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    .line 100
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    .line 101
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    .line 102
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    .line 103
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->hideBottomControls:Z

    .line 104
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    .line 105
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    .line 107
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    .line 108
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->zoomAnim:Z

    .line 109
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outputCameraPath:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    const-string v0, ".JPEG"

    .line 112
    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 113
    iput v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->sizeMultiplier:F

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 138
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-object p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outputCameraPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->sizeMultiplier:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 159
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->zoomAnim:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 162
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 163
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 166
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreviewAudio:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 169
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 170
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 171
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 175
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->hideBottomControls:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 176
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 179
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 180
    iget-boolean p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-object p2, p0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
