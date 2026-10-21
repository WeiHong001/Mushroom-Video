.class Lcom/yanbo/lib_screen/manager/ControlManager$8;
.super Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->muteCast(ZLcom/yanbo/lib_screen/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

.field final synthetic val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;ZLcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$8;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iput-object p5, p0, Lcom/yanbo/lib_screen/manager/ControlManager$8;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/renderingcontrol/callback/SetMute;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Z)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Mute error %s"

    .line 281
    invoke-static {p1, p3}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$8;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    sget p2, Lcom/yanbo/lib_screen/VError;->UNKNOWN:I

    invoke-interface {p1, p2, p3}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    const-string p1, ""

    const-string v0, "Mute success"

    .line 275
    invoke-static {p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$8;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-interface {p1}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onSuccess()V

    return-void
.end method
