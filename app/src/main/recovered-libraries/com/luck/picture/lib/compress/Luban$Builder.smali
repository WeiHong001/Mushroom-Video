.class public Lcom/luck/picture/lib/compress/Luban$Builder;
.super Ljava/lang/Object;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/compress/Luban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

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
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 211
    iput v0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mLeastCompressSize:I

    .line 215
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->context:Landroid/content/Context;

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mPaths:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mPaths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->medias:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/compress/Luban$Builder;)Landroid/content/Context;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/compress/Luban$Builder;)Lcom/luck/picture/lib/compress/OnCompressListener;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/compress/Luban$Builder;)I
    .locals 0

    .line 206
    iget p0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mLeastCompressSize:I

    return p0
.end method

.method private build()Lcom/luck/picture/lib/compress/Luban;
    .locals 2

    .line 220
    new-instance v0, Lcom/luck/picture/lib/compress/Luban;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/compress/Luban;-><init>(Lcom/luck/picture/lib/compress/Luban$Builder;Lcom/luck/picture/lib/compress/Luban$1;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lcom/luck/picture/lib/compress/Luban$Builder;->build()Lcom/luck/picture/lib/compress/Luban;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/luck/picture/lib/compress/Luban;->access$1300(Lcom/luck/picture/lib/compress/Luban;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

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

    .line 286
    invoke-direct {p0}, Lcom/luck/picture/lib/compress/Luban$Builder;->build()Lcom/luck/picture/lib/compress/Luban;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/compress/Luban;->access$1400(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ignoreBy(I)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 0

    .line 265
    iput p1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mLeastCompressSize:I

    return-object p0
.end method

.method public launch()V
    .locals 2

    .line 273
    invoke-direct {p0}, Lcom/luck/picture/lib/compress/Luban$Builder;->build()Lcom/luck/picture/lib/compress/Luban;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/compress/Luban;->access$1200(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;)V

    return-void
.end method

.method public load(Ljava/io/File;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mPaths:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/util/List;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/luck/picture/lib/compress/Luban$Builder;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public loadLocalMedia(Ljava/util/List;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/compress/Luban$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 240
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->medias:Ljava/util/List;

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 244
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mPaths:Ljava/util/List;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setCompressListener(Lcom/luck/picture/lib/compress/OnCompressListener;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    return-object p0
.end method

.method public setTargetDir(Ljava/lang/String;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method
