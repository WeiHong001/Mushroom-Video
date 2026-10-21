.class public Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;
.super Ljava/lang/Object;
.source "JettyResourceServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private mServer:Lorg/eclipse/jetty/server/Server;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/eclipse/jetty/server/Server;

    const v1, 0xd91b

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/Server;-><init>(I)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    const/16 v1, 0x3e8

    .line 33
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->setGracefulShutdown(I)V

    return-void
.end method


# virtual methods
.method public getServerState()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 66
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>()V

    const-string v1, "/"

    .line 67
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setContextPath(Ljava/lang/String;)V

    const-string v1, "org.eclipse.jetty.servlet.Default.gzip"

    const-string v2, "false"

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Server;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 71
    const-class v1, Lcom/yanbo/lib_screen/service/upnp/AudioResourceServlet;

    const-string v2, "/audio/*"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addServlet(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 72
    const-class v1, Lcom/yanbo/lib_screen/service/upnp/ImageResourceServlet;

    const-string v2, "/image/*"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addServlet(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 73
    const-class v1, Lcom/yanbo/lib_screen/service/upnp/VideoResourceServlet;

    const-string v2, "/video/*"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addServlet(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 75
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->startIfNotRunning()V

    return-void
.end method

.method public declared-synchronized startIfNotRunning()V
    .locals 4

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting JettyResourceServer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    sget-object v1, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t start Jetty server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopIfRunning()V
    .locals 4

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->log:Ljava/util/logging/Logger;

    const-string v1, "Stopping JettyResourceServer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    :try_start_2
    sget-object v1, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t stop Jetty server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
