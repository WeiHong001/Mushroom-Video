.class public Lcom/luck/picture/lib/model/LocalMediaLoader;
.super Ljava/lang/Object;
.source "LocalMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;
    }
.end annotation


# static fields
.field private static final AUDIO_DURATION:I = 0x1f4

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final NOT_GIF:Ljava/lang/String; = "!=\'image/gif\'"

.field private static final ORDER_BY:Ljava/lang/String; = "_id DESC"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final QUERY_URI:Landroid/net/Uri;

.field private static final SELECTION:Ljava/lang/String; = "media_type=? AND _size>0"

.field private static final SELECTION_ALL_ARGS:[Ljava/lang/String;

.field private static final SELECTION_NOT_GIF:Ljava/lang/String; = "media_type=? AND _size>0 AND mime_type!=\'image/gif\'"


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private isGif:Z

.field private type:I

.field private videoMaxS:J

.field private videoMinS:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "external"

    .line 35
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string/jumbo v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    .line 47
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x3

    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->SELECTION_ALL_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;IZJJ)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 98
    iput p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->type:I

    .line 99
    iput-boolean p3, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->isGif:Z

    .line 100
    iput-wide p4, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->videoMaxS:J

    .line 101
    iput-wide p6, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->videoMinS:J

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/model/LocalMediaLoader;JJ)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getDurationCondition(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/model/LocalMediaLoader;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->isGif:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/model/LocalMediaLoader;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getImageFolder(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/luck/picture/lib/model/LocalMediaLoader;Ljava/util/List;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->sortFolder(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForAllMediaCondition(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .line 34
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->SELECTION_ALL_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(I)[Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForSingleMediaCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/model/LocalMediaLoader;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->type:I

    return p0
.end method

.method private getDurationCondition(JJ)Ljava/lang/String;
    .locals 7

    .line 263
    iget-wide v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->videoMaxS:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    .line 264
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 266
    :cond_1
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->videoMinS:J

    .line 267
    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p2, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->videoMinS:J

    .line 268
    invoke-static {p3, p4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    cmp-long v5, p3, v2

    if-nez v5, :cond_2

    const-string p3, ""

    goto :goto_0

    :cond_2
    const-string p3, "="

    :goto_0
    aput-object p3, p2, v4

    const/4 p3, 0x2

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "%d <%s duration and duration <= %d"

    .line 266
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getImageFolder(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 241
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 243
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 247
    :cond_1
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setPath(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 251
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static getSelectionArgsForAllMediaCondition(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, " AND mime_type!=\'image/gif\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OR "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "media_type=? AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_size"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForSingleMediaCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_type=? AND _size>0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private sortFolder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/luck/picture/lib/model/LocalMediaLoader$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/model/LocalMediaLoader$2;-><init>(Lcom/luck/picture/lib/model/LocalMediaLoader;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public loadAllMedia(Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->type:I

    new-instance v2, Lcom/luck/picture/lib/model/LocalMediaLoader$1;

    invoke-direct {v2, p0, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader$1;-><init>(Lcom/luck/picture/lib/model/LocalMediaLoader;Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method
