.class Lcom/yanbo/lib_screen/manager/ControlManager$12;
.super Lcom/yanbo/lib_screen/callback/AVTransportCallback;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->initScreenCastCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$12;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {p0, p2}, Lcom/yanbo/lib_screen/callback/AVTransportCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method protected received(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V
    .locals 1

    .line 381
    new-instance v0, Lcom/yanbo/lib_screen/event/ControlEvent;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/event/ControlEvent;-><init>()V

    .line 382
    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/event/ControlEvent;->setAvtInfo(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V

    .line 383
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
