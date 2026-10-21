.class public Ltop/zibin/luban/Luban$Builder;
.super Ljava/lang/Object;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/zibin/luban/Luban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private focusAlpha:Z

.field private mCompressListener:Ltop/zibin/luban/OnCompressListener;

.field private mCompressionPredicate:Ltop/zibin/luban/CompressionPredicate;

.field private mLeastCompressSize:I

.field private mRenameListener:Ltop/zibin/luban/OnRenameListener;

.field private mStreamProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltop/zibin/luban/InputStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 215
    iput v0, p0, Ltop/zibin/luban/Luban$Builder;->mLeastCompressSize:I

    .line 222
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder;->context:Landroid/content/Context;

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Ltop/zibin/luban/Luban$Builder;)Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Ltop/zibin/luban/Luban$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/OnRenameListener;
    .locals 0

    .line 211
    iget-object p0, p0, Ltop/zibin/luban/Luban$Builder;->mRenameListener:Ltop/zibin/luban/OnRenameListener;

    return-object p0
.end method

.method static synthetic access$200(Ltop/zibin/luban/Luban$Builder;)Ljava/util/List;
    .locals 0

    .line 211
    iget-object p0, p0, Ltop/zibin/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/OnCompressListener;
    .locals 0

    .line 211
    iget-object p0, p0, Ltop/zibin/luban/Luban$Builder;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    return-object p0
.end method

.method static synthetic access$400(Ltop/zibin/luban/Luban$Builder;)I
    .locals 0

    .line 211
    iget p0, p0, Ltop/zibin/luban/Luban$Builder;->mLeastCompressSize:I

    return p0
.end method

.method static synthetic access$500(Ltop/zibin/luban/Luban$Builder;)Ltop/zibin/luban/CompressionPredicate;
    .locals 0

    .line 211
    iget-object p0, p0, Ltop/zibin/luban/Luban$Builder;->mCompressionPredicate:Ltop/zibin/luban/CompressionPredicate;

    return-object p0
.end method

.method static synthetic access$900(Ltop/zibin/luban/Luban$Builder;)Landroid/content/Context;
    .locals 0

    .line 211
    iget-object p0, p0, Ltop/zibin/luban/Luban$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method private build()Ltop/zibin/luban/Luban;
    .locals 2

    .line 227
    new-instance v0, Ltop/zibin/luban/Luban;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltop/zibin/luban/Luban;-><init>(Ltop/zibin/luban/Luban$Builder;Ltop/zibin/luban/Luban$1;)V

    return-object v0
.end method


# virtual methods
.method public filter(Ltop/zibin/luban/CompressionPredicate;)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    .line 341
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder;->mCompressionPredicate:Ltop/zibin/luban/CompressionPredicate;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Ltop/zibin/luban/Luban$Builder;->build()Ltop/zibin/luban/Luban;

    move-result-object v0

    new-instance v1, Ltop/zibin/luban/Luban$Builder$4;

    invoke-direct {v1, p0, p1}, Ltop/zibin/luban/Luban$Builder$4;-><init>(Ltop/zibin/luban/Luban$Builder;Ljava/lang/String;)V

    iget-object p1, p0, Ltop/zibin/luban/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Ltop/zibin/luban/Luban;->access$1100(Ltop/zibin/luban/Luban;Ltop/zibin/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 373
    invoke-direct {p0}, Ltop/zibin/luban/Luban$Builder;->build()Ltop/zibin/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltop/zibin/luban/Luban;->access$1200(Ltop/zibin/luban/Luban;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ignoreBy(I)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    .line 331
    iput p1, p0, Ltop/zibin/luban/Luban$Builder;->mLeastCompressSize:I

    return-object p0
.end method

.method public launch()V
    .locals 2

    .line 350
    invoke-direct {p0}, Ltop/zibin/luban/Luban$Builder;->build()Ltop/zibin/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Ltop/zibin/luban/Luban;->access$1000(Ltop/zibin/luban/Luban;Landroid/content/Context;)V

    return-void
.end method

.method public load(Landroid/net/Uri;)Ltop/zibin/luban/Luban$Builder;
    .locals 2

    .line 281
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    new-instance v1, Ltop/zibin/luban/Luban$Builder$3;

    invoke-direct {v1, p0, p1}, Ltop/zibin/luban/Luban$Builder$3;-><init>(Ltop/zibin/luban/Luban$Builder;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/io/File;)Ltop/zibin/luban/Luban$Builder;
    .locals 2

    .line 236
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    new-instance v1, Ltop/zibin/luban/Luban$Builder$1;

    invoke-direct {v1, p0, p1}, Ltop/zibin/luban/Luban$Builder$1;-><init>(Ltop/zibin/luban/Luban$Builder;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;
    .locals 2

    .line 251
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    new-instance v1, Ltop/zibin/luban/Luban$Builder$2;

    invoke-direct {v1, p0, p1}, Ltop/zibin/luban/Luban$Builder$2;-><init>(Ltop/zibin/luban/Luban$Builder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/util/List;)Ltop/zibin/luban/Luban$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ltop/zibin/luban/Luban$Builder;"
        }
    .end annotation

    .line 266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 267
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltop/zibin/luban/Luban$Builder;->load(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    goto :goto_0

    .line 269
    :cond_0
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 270
    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Ltop/zibin/luban/Luban$Builder;->load(Ljava/io/File;)Ltop/zibin/luban/Luban$Builder;

    goto :goto_0

    .line 271
    :cond_1
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 272
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ltop/zibin/luban/Luban$Builder;->load(Landroid/net/Uri;)Ltop/zibin/luban/Luban$Builder;

    goto :goto_0

    .line 274
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incoming data type exception, it must be String, File, Uri or Bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p0
.end method

.method public load(Ltop/zibin/luban/InputStreamProvider;)Ltop/zibin/luban/Luban$Builder;
    .locals 1

    .line 231
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putGear(I)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    return-object p0
.end method

.method public setCompressListener(Ltop/zibin/luban/OnCompressListener;)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder;->mCompressListener:Ltop/zibin/luban/OnCompressListener;

    return-object p0
.end method

.method public setFocusAlpha(Z)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    .line 321
    iput-boolean p1, p0, Ltop/zibin/luban/Luban$Builder;->focusAlpha:Z

    return-object p0
.end method

.method public setRenameListener(Ltop/zibin/luban/OnRenameListener;)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    .line 300
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder;->mRenameListener:Ltop/zibin/luban/OnRenameListener;

    return-object p0
.end method

.method public setTargetDir(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;
    .locals 0

    .line 310
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method
