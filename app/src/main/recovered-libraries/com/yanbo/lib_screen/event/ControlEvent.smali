.class public Lcom/yanbo/lib_screen/event/ControlEvent;
.super Ljava/lang/Object;
.source "ControlEvent.java"


# instance fields
.field private avtInfo:Lcom/yanbo/lib_screen/entity/AVTransportInfo;

.field private rcInfo:Lcom/yanbo/lib_screen/entity/RenderingControlInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvtInfo()Lcom/yanbo/lib_screen/entity/AVTransportInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/yanbo/lib_screen/event/ControlEvent;->avtInfo:Lcom/yanbo/lib_screen/entity/AVTransportInfo;

    return-object v0
.end method

.method public getRcInfo()Lcom/yanbo/lib_screen/entity/RenderingControlInfo;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/yanbo/lib_screen/event/ControlEvent;->rcInfo:Lcom/yanbo/lib_screen/entity/RenderingControlInfo;

    return-object v0
.end method

.method public setAvtInfo(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yanbo/lib_screen/event/ControlEvent;->avtInfo:Lcom/yanbo/lib_screen/entity/AVTransportInfo;

    return-void
.end method

.method public setRcInfo(Lcom/yanbo/lib_screen/entity/RenderingControlInfo;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yanbo/lib_screen/event/ControlEvent;->rcInfo:Lcom/yanbo/lib_screen/entity/RenderingControlInfo;

    return-void
.end method
