.class public Lcom/github/like/Icon;
.super Ljava/lang/Object;
.source "Icon.java"


# instance fields
.field private iconType:Lcom/github/like/IconType;

.field private offIconResourceId:I

.field private onIconResourceId:I


# direct methods
.method public constructor <init>(IILcom/github/like/IconType;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/github/like/Icon;->onIconResourceId:I

    .line 15
    iput p2, p0, Lcom/github/like/Icon;->offIconResourceId:I

    .line 16
    iput-object p3, p0, Lcom/github/like/Icon;->iconType:Lcom/github/like/IconType;

    return-void
.end method


# virtual methods
.method public getIconType()Lcom/github/like/IconType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/github/like/Icon;->iconType:Lcom/github/like/IconType;

    return-object v0
.end method

.method public getOffIconResourceId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/github/like/Icon;->offIconResourceId:I

    return v0
.end method

.method public getOnIconResourceId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/github/like/Icon;->onIconResourceId:I

    return v0
.end method

.method public setIconType(Lcom/github/like/IconType;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/github/like/Icon;->iconType:Lcom/github/like/IconType;

    return-void
.end method

.method public setOffIconResourceId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/github/like/Icon;->offIconResourceId:I

    return-void
.end method

.method public setOnIconResourceId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/github/like/Icon;->onIconResourceId:I

    return-void
.end method
