.class public Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;
.super Landroid/os/Binder;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanbo/lib_screen/service/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/service/SystemService;


# direct methods
.method public constructor <init>(Lcom/yanbo/lib_screen/service/SystemService;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/yanbo/lib_screen/service/SystemService;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    return-object v0
.end method
