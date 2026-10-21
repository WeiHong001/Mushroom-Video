.class public Lcom/yanbo/lib_screen/entity/RenderingControlInfo;
.super Ljava/lang/Object;
.source "RenderingControlInfo.java"


# instance fields
.field private isMute:Z

.field private presetNameList:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->isMute:Z

    .line 15
    iput p2, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->volume:I

    return-void
.end method


# virtual methods
.method public getPresetNameList()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->presetNameList:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->volume:I

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->isMute:Z

    return v0
.end method

.method public setMute(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->isMute:Z

    return-void
.end method

.method public setPresetNameList(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->presetNameList:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->volume:I

    return-void
.end method
