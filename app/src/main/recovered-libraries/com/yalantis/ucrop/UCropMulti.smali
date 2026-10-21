.class public Lcom/yalantis/ucrop/UCropMulti;
.super Ljava/lang/Object;
.source "UCropMulti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/UCropMulti$Options;
    }
.end annotation


# static fields
.field public static final EXTRA_ASPECT_RATIO_X:Ljava/lang/String; = "com.yalantis.ucrop.AspectRatioX"

.field public static final EXTRA_ASPECT_RATIO_Y:Ljava/lang/String; = "com.yalantis.ucrop.AspectRatioY"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "com.yalantis.ucrop.Error"

.field public static final EXTRA_INPUT_URI:Ljava/lang/String; = "com.yalantis.ucrop.InputUri"

.field public static final EXTRA_MAX_SIZE_X:Ljava/lang/String; = "com.yalantis.ucrop.MaxSizeX"

.field public static final EXTRA_MAX_SIZE_Y:Ljava/lang/String; = "com.yalantis.ucrop.MaxSizeY"

.field public static final EXTRA_OUTPUT_CROP_ASPECT_RATIO:Ljava/lang/String; = "com.yalantis.ucrop.CropAspectRatio"

.field public static final EXTRA_OUTPUT_IMAGE_HEIGHT:Ljava/lang/String; = "com.yalantis.ucrop.ImageHeight"

.field public static final EXTRA_OUTPUT_IMAGE_WIDTH:Ljava/lang/String; = "com.yalantis.ucrop.ImageWidth"

.field public static final EXTRA_OUTPUT_OFFSET_X:Ljava/lang/String; = "com.yalantis.ucrop.OffsetX"

.field public static final EXTRA_OUTPUT_OFFSET_Y:Ljava/lang/String; = "com.yalantis.ucrop.OffsetY"

.field public static final EXTRA_OUTPUT_URI:Ljava/lang/String; = "com.yalantis.ucrop.OutputUri"

.field public static final EXTRA_OUTPUT_URI_LIST:Ljava/lang/String; = "com.yalantis.ucrop.OutputUriList"

.field private static final EXTRA_PREFIX:Ljava/lang/String; = "com.yalantis.ucrop"

.field public static final REQUEST_MULTI_CROP:I = 0x261

.field public static final RESULT_ERROR:I = 0x60


# instance fields
.field private mCropIntent:Landroid/content/Intent;

.field private mCropOptionsBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropIntent:Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.InputUri"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v0, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static getError(Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "com.yalantis.ucrop.Error"

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public static getOutput(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/yalantis/ucrop/model/CutInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "com.yalantis.ucrop.OutputUriList"

    .line 193
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getOutputCropAspectRatio(Landroid/content/Intent;)F
    .locals 1

    const-string v0, "com.yalantis.ucrop.CropAspectRatio"

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getOutputImageHeight(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "com.yalantis.ucrop.ImageHeight"

    const/4 v1, -0x1

    .line 211
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getOutputImageWidth(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "com.yalantis.ucrop.ImageWidth"

    const/4 v1, -0x1

    .line 202
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCropMulti;
    .locals 1

    .line 66
    new-instance v0, Lcom/yalantis/ucrop/UCropMulti;

    invoke-direct {v0, p0, p1}, Lcom/yalantis/ucrop/UCropMulti;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropIntent:Landroid/content/Intent;

    const-class v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 182
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public start(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x261

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/UCropMulti;->start(Landroid/app/Activity;I)V

    return-void
.end method

.method public start(Landroid/app/Activity;I)V
    .locals 1

    .line 132
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropMulti;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1

    const/16 v0, 0x261

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/yalantis/ucrop/UCropMulti;->start(Landroid/content/Context;Landroid/app/Fragment;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;I)V
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropMulti;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/16 v0, 0x261

    .line 150
    invoke-virtual {p0, p1, p2, v0}, Lcom/yalantis/ucrop/UCropMulti;->start(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public start(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/UCropMulti;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public useSourceImageAspectRatio()Lcom/yalantis/ucrop/UCropMulti;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.AspectRatioX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 95
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.AspectRatioY"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public withAspectRatio(FF)Lcom/yalantis/ucrop/UCropMulti;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.AspectRatioX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 85
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v0, "com.yalantis.ucrop.AspectRatioY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public withMaxResultSize(II)Lcom/yalantis/ucrop/UCropMulti;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.MaxSizeX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v0, "com.yalantis.ucrop.MaxSizeY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withOptions(Lcom/yalantis/ucrop/UCropMulti$Options;)Lcom/yalantis/ucrop/UCropMulti;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/yalantis/ucrop/UCropMulti;->mCropOptionsBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/UCropMulti$Options;->getOptionBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method
