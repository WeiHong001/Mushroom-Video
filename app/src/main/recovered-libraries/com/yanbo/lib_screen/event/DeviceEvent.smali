.class public Lcom/yanbo/lib_screen/event/DeviceEvent;
.super Ljava/lang/Object;
.source "DeviceEvent.java"


# instance fields
.field private clingDevice:Lcom/yanbo/lib_screen/entity/ClingDevice;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/yanbo/lib_screen/event/DeviceEvent;->type:I

    return-void
.end method
