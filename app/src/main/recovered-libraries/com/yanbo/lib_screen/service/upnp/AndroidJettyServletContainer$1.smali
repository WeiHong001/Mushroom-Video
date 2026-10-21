.class Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer$1;
.super Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;
.source "AndroidJettyServletContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer$1;->this$0:Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer;

    invoke-direct {p0, p2}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
