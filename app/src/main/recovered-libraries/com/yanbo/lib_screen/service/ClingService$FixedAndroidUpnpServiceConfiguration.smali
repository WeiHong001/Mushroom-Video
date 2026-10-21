.class Lcom/yanbo/lib_screen/service/ClingService$FixedAndroidUpnpServiceConfiguration;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;
.source "ClingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanbo/lib_screen/service/ClingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedAndroidUpnpServiceConfiguration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/service/ClingService;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/service/ClingService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/yanbo/lib_screen/service/ClingService$FixedAndroidUpnpServiceConfiguration;->this$0:Lcom/yanbo/lib_screen/service/ClingService;

    invoke-direct {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public createStreamServer(Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;)Lorg/fourthline/cling/transport/spi/StreamServer;
    .locals 3

    .line 121
    new-instance v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;

    new-instance v1, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    sget-object v2, Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer;->INSTANCE:Lcom/yanbo/lib_screen/service/upnp/AndroidJettyServletContainer;

    .line 123
    invoke-interface {p1}, Lorg/fourthline/cling/transport/spi/NetworkAddressFactory;->getStreamListenPort()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;-><init>(Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;I)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;)V

    return-object v0
.end method
