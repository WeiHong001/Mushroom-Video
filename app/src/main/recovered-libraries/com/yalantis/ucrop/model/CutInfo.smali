.class public Lcom/yalantis/ucrop/model/CutInfo;
.super Ljava/lang/Object;
.source "CutInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cutPath:Ljava/lang/String;

.field private imageHeight:I

.field private imageWidth:I

.field private isCut:Z

.field private offsetX:I

.field private offsetY:I

.field private path:Ljava/lang/String;

.field private resultAspectRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->path:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/yalantis/ucrop/model/CutInfo;->isCut:Z

    return-void
.end method


# virtual methods
.method public getCutPath()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->cutPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->imageWidth:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->offsetY:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getResultAspectRatio()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->resultAspectRatio:F

    return v0
.end method

.method public isCut()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/yalantis/ucrop/model/CutInfo;->isCut:Z

    return v0
.end method

.method public setCut(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->isCut:Z

    return-void
.end method

.method public setCutPath(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->cutPath:Ljava/lang/String;

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->imageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->imageWidth:I

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->offsetY:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setResultAspectRatio(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/yalantis/ucrop/model/CutInfo;->resultAspectRatio:F

    return-void
.end method
