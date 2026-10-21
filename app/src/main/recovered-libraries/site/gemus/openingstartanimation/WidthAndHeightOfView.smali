.class public Lsite/gemus/openingstartanimation/WidthAndHeightOfView;
.super Ljava/lang/Object;
.source "WidthAndHeightOfView.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 29
    iget v0, p0, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 25
    iget v0, p0, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->width:I

    return v0
.end method

.method setHeight(I)V
    .locals 0

    .line 21
    iput p1, p0, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->height:I

    return-void
.end method

.method setWidth(I)V
    .locals 0

    .line 17
    iput p1, p0, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->width:I

    return-void
.end method
