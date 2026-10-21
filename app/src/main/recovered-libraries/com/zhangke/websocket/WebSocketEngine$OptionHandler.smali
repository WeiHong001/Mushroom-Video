.class Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;
.super Landroid/os/Handler;
.source "WebSocketEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangke/websocket/WebSocketEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionHandler"
.end annotation


# static fields
.field private static final QUIT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangke/websocket/WebSocketEngine$1;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
