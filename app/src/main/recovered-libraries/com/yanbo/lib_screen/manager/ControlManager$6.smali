.class Lcom/yanbo/lib_screen/manager/ControlManager$6;
.super Lorg/fourthline/cling/support/avtransport/callback/Seek;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->seekCast(Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

.field final synthetic val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$6;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iput-object p5, p0, Lcom/yanbo/lib_screen/manager/ControlManager$6;->val$target:Ljava/lang/String;

    iput-object p6, p0, Lcom/yanbo/lib_screen/manager/ControlManager$6;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/avtransport/callback/Seek;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Seek error %s"

    .line 232
    invoke-static {p1, p3}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$6;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    sget p2, Lcom/yanbo/lib_screen/VError;->UNKNOWN:I

    invoke-interface {p1, p2, p3}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$6;->val$target:Ljava/lang/String;

    const-string v0, "Seek success - %s"

    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$6;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-interface {p1}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onSuccess()V

    return-void
.end method
