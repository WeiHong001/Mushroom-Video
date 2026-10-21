.class public Lcom/luck/picture/lib/compress/Luban;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/compress/Luban$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "luban_disk_cache"

.field private static final MSG_COMPRESS_ERROR:I = 0x2

.field private static final MSG_COMPRESS_MULTIPLE_SUCCESS:I = 0x3

.field private static final MSG_COMPRESS_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Luban"


# instance fields
.field private context:Landroid/content/Context;

.field private index:I

.field private mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

.field private mHandler:Landroid/os/Handler;

.field private mLeastCompressSize:I

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDir:Ljava/lang/String;

.field private medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/luck/picture/lib/compress/Luban$Builder;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    .line 41
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$000(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mPaths:Ljava/util/List;

    .line 42
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$100(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->medias:Ljava/util/List;

    .line 43
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$200(Lcom/luck/picture/lib/compress/Luban$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->context:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$300(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$400(Lcom/luck/picture/lib/compress/Luban$Builder;)Lcom/luck/picture/lib/compress/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    .line 46
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$500(Lcom/luck/picture/lib/compress/Luban$Builder;)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/luck/picture/lib/compress/Luban$Builder;Lcom/luck/picture/lib/compress/Luban$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;-><init>(Lcom/luck/picture/lib/compress/Luban$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban;->medias:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;->launch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/luck/picture/lib/compress/Luban;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/Luban;->get(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;->get(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/compress/Luban;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    return p0
.end method

.method static synthetic access$608(Lcom/luck/picture/lib/compress/Luban;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    return v0
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/compress/Luban;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private get(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget v0, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    invoke-static {v0, p1}, Lcom/luck/picture/lib/compress/Checker;->isNeedCompress(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/luck/picture/lib/compress/Engine;

    .line 165
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Checker;->checkSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/luck/picture/lib/compress/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private get(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban;->mPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    invoke-static {v2}, Lcom/luck/picture/lib/compress/Checker;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    iget v3, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    invoke-static {v3, v2}, Lcom/luck/picture/lib/compress/Checker;->isNeedCompress(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/luck/picture/lib/compress/Engine;

    .line 178
    invoke-static {v2}, Lcom/luck/picture/lib/compress/Checker;->checkSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/luck/picture/lib/compress/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 180
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getImageCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "luban_disk_cache"

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 94
    invoke-static {p1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ".jpg"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private launch(Landroid/content/Context;)V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mPaths:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "image file cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    .line 122
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-static {v1}, Lcom/luck/picture/lib/compress/Checker;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/luck/picture/lib/compress/Luban$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/luck/picture/lib/compress/Luban$1;-><init>(Lcom/luck/picture/lib/compress/Luban;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not read the path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    .line 155
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 1

    .line 51
    new-instance v0, Lcom/luck/picture/lib/compress/Luban$Builder;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/compress/Luban$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    invoke-interface {p1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onStart()V

    :goto_0
    return v1
.end method
