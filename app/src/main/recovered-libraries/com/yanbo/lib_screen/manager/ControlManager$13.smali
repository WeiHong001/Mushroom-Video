.class Lcom/yanbo/lib_screen/manager/ControlManager$13;
.super Lcom/yanbo/lib_screen/callback/RenderingControlCallback;
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

    .line 389
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$13;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {p0, p2}, Lcom/yanbo/lib_screen/callback/RenderingControlCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method protected received(Lcom/yanbo/lib_screen/entity/RenderingControlInfo;)V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->isMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   volume  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p1}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderingControlCallback received: mute:%b, volume:%d"

    .line 392
    invoke-static {v1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/yanbo/lib_screen/event/ControlEvent;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/event/ControlEvent;-><init>()V

    .line 395
    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/event/ControlEvent;->setRcInfo(Lcom/yanbo/lib_screen/entity/RenderingControlInfo;)V

    .line 396
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
