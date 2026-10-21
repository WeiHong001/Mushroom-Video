.class public Lcom/yanbo/lib_screen/entity/AVTransportInfo;
.super Ljava/lang/Object;
.source "AVTransportInfo.java"


# static fields
.field public static PAUSED_PLAYBACK:Ljava/lang/String; = "PAUSED_PLAYBACK"

.field public static PLAYING:Ljava/lang/String; = "PLAYING"

.field public static STOPPED:Ljava/lang/String; = "STOPPED"

.field public static TRANSITIONING:Ljava/lang/String; = "TRANSITIONING"


# instance fields
.field private mediaDuration:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private timePosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaDuration()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->mediaDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTimePosition()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->timePosition:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaDuration(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->mediaDuration:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->state:Ljava/lang/String;

    return-void
.end method

.method public setTimePosition(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->timePosition:Ljava/lang/String;

    return-void
.end method
