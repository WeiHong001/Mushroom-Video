.class public Lcom/luck/picture/lib/tools/VoiceUtils;
.super Ljava/lang/Object;
.source "VoiceUtils.java"


# static fields
.field private static soundID:I

.field private static soundPool:Landroid/media/SoundPool;


# instance fields
.field private isPlay:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/media/SoundPool;
    .locals 1

    .line 18
    sget-object v0, Lcom/luck/picture/lib/tools/VoiceUtils;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public static play(ZLandroid/media/SoundPool;)V
    .locals 7

    if-eqz p0, :cond_0

    .line 42
    sget v1, Lcom/luck/picture/lib/tools/VoiceUtils;->soundID:I

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method public static playVoice(Landroid/content/Context;Z)V
    .locals 4

    .line 28
    sget-object v0, Lcom/luck/picture/lib/tools/VoiceUtils;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/luck/picture/lib/tools/VoiceUtils;->soundPool:Landroid/media/SoundPool;

    .line 30
    sget v1, Lcom/luck/picture/lib/R$raw;->music:I

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    sput p0, Lcom/luck/picture/lib/tools/VoiceUtils;->soundID:I

    .line 32
    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/luck/picture/lib/tools/VoiceUtils$1;

    invoke-direct {v0, p1}, Lcom/luck/picture/lib/tools/VoiceUtils$1;-><init>(Z)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static release()V
    .locals 2

    .line 57
    sget-object v0, Lcom/luck/picture/lib/tools/VoiceUtils;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 58
    sget v1, Lcom/luck/picture/lib/tools/VoiceUtils;->soundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/luck/picture/lib/tools/VoiceUtils;->soundPool:Landroid/media/SoundPool;

    return-void
.end method
