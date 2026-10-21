.class Lcom/luck/picture/lib/compress/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# static fields
.field private static final BMP:Ljava/lang/String; = "bmp"

.field private static final GIF:Ljava/lang/String; = "gif"

.field private static final JPEG:Ljava/lang/String; = "jpeg"

.field private static final JPG:Ljava/lang/String; = "jpg"

.field private static final PNG:Ljava/lang/String; = "png"

.field private static final WEBP:Ljava/lang/String; = "webp"

.field private static format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    const-string v1, "jpg"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    const-string v1, "jpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    const-string v1, "png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    const-string/jumbo v1, "webp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    const-string v1, "gif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    const-string v1, "bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ".jpg"

    return-object p0

    :cond_0
    const-string v0, "."

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isImage(Ljava/lang/String;)Z
    .locals 2

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "."

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 33
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->format:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static isJPG(Ljava/lang/String;)Z
    .locals 3

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "."

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jpg"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static isNeedCompress(ILjava/lang/String;)Z
    .locals 4

    if-lez p0, :cond_1

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    shl-int/lit8 p0, p0, 0xa

    int-to-long p0, p0

    cmp-long v0, v2, p0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
