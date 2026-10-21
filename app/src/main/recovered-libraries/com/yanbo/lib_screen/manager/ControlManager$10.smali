.class Lcom/yanbo/lib_screen/manager/ControlManager$10;
.super Lorg/fourthline/cling/support/avtransport/callback/SetAVTransportURI;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->setAVTransportURI(Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

.field final synthetic val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iput-object p6, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->val$uri:Ljava/lang/String;

    iput-object p7, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/fourthline/cling/support/avtransport/callback/SetAVTransportURI;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   URL   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->val$uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setAVTransportURI - error %s url:%s"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    sget p2, Lcom/yanbo/lib_screen/VError;->UNKNOWN:I

    invoke-interface {p1, p2, p3}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->val$uri:Ljava/lang/String;

    const-string v0, "setAVTransportURI success url:%s"

    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$10;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-interface {p1}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onSuccess()V

    return-void
.end method
