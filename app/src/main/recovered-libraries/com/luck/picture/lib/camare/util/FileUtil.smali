.class public Lcom/luck/picture/lib/camare/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static DST_FOLDER_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CJT"

.field private static final parentPath:Ljava/io/File;

.field private static storagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/camare/util/FileUtil;->parentPath:Ljava/io/File;

    const-string v0, ""

    .line 14
    sput-object v0, Lcom/luck/picture/lib/camare/util/FileUtil;->storagePath:Ljava/lang/String;

    const-string v0, "JCamera"

    .line 15
    sput-object v0, Lcom/luck/picture/lib/camare/util/FileUtil;->DST_FOLDER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static initPath()Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lcom/luck/picture/lib/camare/util/FileUtil;->storagePath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/luck/picture/lib/camare/util/FileUtil;->parentPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/luck/picture/lib/camare/util/FileUtil;->DST_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/camare/util/FileUtil;->storagePath:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/luck/picture/lib/camare/util/FileUtil;->storagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 25
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/camare/util/FileUtil;->storagePath:Ljava/lang/String;

    return-object v0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 29
    sput-object p0, Lcom/luck/picture/lib/camare/util/FileUtil;->DST_FOLDER_NAME:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/luck/picture/lib/camare/util/FileUtil;->initPath()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "picture_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 37
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 38
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
