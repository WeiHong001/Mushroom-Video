.class public Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;
.source "ClingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanbo/lib_screen/service/ClingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/service/ClingService;


# direct methods
.method public constructor <init>(Lcom/yanbo/lib_screen/service/ClingService;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;->this$0:Lcom/yanbo/lib_screen/service/ClingService;

    invoke-direct {p0, p1}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;-><init>(Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .line 127
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->get()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 127
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 127
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 127
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/yanbo/lib_screen/service/ClingService;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;->this$0:Lcom/yanbo/lib_screen/service/ClingService;

    return-object v0
.end method
