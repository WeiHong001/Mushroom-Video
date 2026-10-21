.class public Lcom/yanbo/lib_screen/entity/ClingDevice;
.super Ljava/lang/Object;
.source "ClingDevice.java"


# instance fields
.field private device:Lorg/fourthline/cling/model/meta/Device;

.field private isSelected:Z


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/yanbo/lib_screen/entity/ClingDevice;->isSelected:Z

    .line 13
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/ClingDevice;->device:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method


# virtual methods
.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/ClingDevice;->device:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/yanbo/lib_screen/entity/ClingDevice;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/yanbo/lib_screen/entity/ClingDevice;->isSelected:Z

    return-void
.end method
