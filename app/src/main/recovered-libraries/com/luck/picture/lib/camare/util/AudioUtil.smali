.class public Lcom/luck/picture/lib/camare/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAudioManage(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0, v1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, 0x5

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0, v1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
