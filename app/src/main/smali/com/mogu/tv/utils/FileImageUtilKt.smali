.class public final Lcom/mogu/tv/utils/FileImageUtilKt;
.super Ljava/lang/Object;
.source "FileImageUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001\u001a&\u0010\u000b\u001a\u00020\u000c*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0002\u001a\u000c\u0010\u0010\u001a\u00020\u0011*\u00020\u0001H\u0002\u001a\u000e\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u0001H\u0002\u001a,\u0010\u0013\u001a\u0004\u0018\u00010\u0005*\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00012\u0008\u0010\n\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002\u001a\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u0005*\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a2\u0010\u001a\u001a\u0004\u0018\u00010\u0005*\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u001a&\u0010\u001a\u001a\u0004\u0018\u00010\u0005*\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001\"\u0016\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "ALBUM_DIR",
        "",
        "kotlin.jvm.PlatformType",
        "TAG",
        "copyToAlbum",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "relativePath",
        "finishPending",
        "",
        "resolver",
        "Landroid/content/ContentResolver;",
        "outputFile",
        "getBitmapFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "getMimeType",
        "insertMediaImage",
        "outputFileTaker",
        "Lcom/mogu/tv/utils/OutputFileTaker;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "queryMediaImage28",
        "imagePath",
        "saveToAlbum",
        "Landroid/graphics/Bitmap;",
        "quality",
        "",
        "Ljava/io/InputStream;",
        "app_mogushareRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ALBUM_DIR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ImageExt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    sput-object v0, Lcom/mogu/tv/utils/FileImageUtilKt;->ALBUM_DIR:Ljava/lang/String;

    return-void
.end method

.method public static final copyToAlbum(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 35
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object p0, v0

    check-cast p0, Ljava/io/FileInputStream;

    .line 36
    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/utils/FileImageUtilKt;->saveToAlbum(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 32
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "check: read file error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageExt"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static final finishPending(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 5

    .line 113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_1

    if-eqz p3, :cond_0

    .line 116
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v1, "_size"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    :cond_0
    invoke-virtual {p2, p0, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "is_pending"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    invoke-virtual {p2, p0, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static final getBitmapFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 4

    .line 130
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".png"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 132
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_0
    const-string v0, ".jpg"

    .line 133
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".jpeg"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ".webp"

    .line 134
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    .line 135
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 136
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 133
    :cond_4
    :goto_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    return-object p0
.end method

.method private static final getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 141
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".png"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 143
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "image/png"

    goto :goto_1

    :cond_0
    const-string v0, ".jpg"

    .line 144
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".jpeg"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ".webp"

    .line 145
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "image/webp"

    goto :goto_1

    :cond_2
    const-string v0, ".gif"

    .line 146
    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v3, "image/gif"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "image/jpeg"

    :cond_4
    :goto_1
    return-object v3
.end method

.method private static final insertMediaImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/utils/OutputFileTaker;)Landroid/net/Uri;
    .locals 9

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    invoke-static {p1}, Lcom/mogu/tv/utils/FileImageUtilKt;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "mime_type"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date_added"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const-string v3, "_display_name"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mogu/tv/utils/FileImageUtilKt;->ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/mogu/tv/utils/FileImageUtilKt;->ALBUM_DIR:Ljava/lang/String;

    .line 174
    :goto_0
    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "relative_path"

    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_pending"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "external_primary"

    .line 178
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "getContentUri(MediaStore.VOLUME_EXTERNAL_PRIMARY)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 183
    :cond_2
    sget-object v1, Lcom/mogu/tv/utils/FileImageUtilKt;->ALBUM_DIR:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_3

    .line 184
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 186
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    const-string v2, "ImageExt"

    if-nez p2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "save: error: can\'t create Pictures directory"

    .line 187
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p2}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "imageFile.absolutePath"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lcom/mogu/tv/utils/FileImageUtilKt;->queryMediaImage28(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_5

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/mogu/tv/utils/FileImageUtilKt;->queryMediaImage28(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    move v8, v6

    move-object v6, p2

    move-object p2, v4

    move v4, v8

    goto :goto_1

    .line 205
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "_data"

    .line 209
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_6

    goto :goto_2

    .line 211
    :cond_6
    invoke-virtual {p3, p2}, Lcom/mogu/tv/utils/OutputFileTaker;->setFile(Ljava/io/File;)V

    .line 212
    :goto_2
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p2, "EXTERNAL_CONTENT_URI"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic insertMediaImage$default(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/utils/OutputFileTaker;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 154
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/utils/FileImageUtilKt;->insertMediaImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/utils/OutputFileTaker;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static final outputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;
    .locals 1

    .line 101
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save: open stream error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageExt"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 104
    move-object p1, p0

    check-cast p1, Ljava/io/OutputStream;

    :goto_0
    return-object p0
.end method

.method private static final queryMediaImage28(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    return-object v1

    .line 225
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    const-string v3, "query: path: "

    const-string v4, "ImageExt"

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 232
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v5, "_data"

    .line 237
    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v9, v5

    const/4 v10, 0x0

    const-string v8, "_data == ?"

    move-object v5, p0

    move-object v6, v0

    .line 235
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 241
    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v5, p0

    check-cast v5, Landroid/database/Cursor;

    .line 242
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 244
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 245
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "withAppendedId(collection, id)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exists uri: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 249
    :cond_2
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static final saveToAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/mogu/tv/utils/OutputFileTaker;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/mogu/tv/utils/OutputFileTaker;-><init>(Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, "resolver"

    .line 84
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, p3, v1}, Lcom/mogu/tv/utils/FileImageUtilKt;->insertMediaImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/utils/OutputFileTaker;)Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "ImageExt"

    const-string p1, "insert: error: uri == null"

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 91
    :cond_0
    invoke-static {p3, v0}, Lcom/mogu/tv/utils/FileImageUtilKt;->outputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/io/OutputStream;

    .line 92
    invoke-static {p2}, Lcom/mogu/tv/utils/FileImageUtilKt;->getBitmapFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p2

    .line 93
    invoke-virtual {p0, p2, p4, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 94
    invoke-virtual {v1}, Lcom/mogu/tv/utils/OutputFileTaker;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p3, p1, v0, p0}, Lcom/mogu/tv/utils/FileImageUtilKt;->finishPending(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 95
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final saveToAlbum(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/mogu/tv/utils/OutputFileTaker;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/mogu/tv/utils/OutputFileTaker;-><init>(Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, "resolver"

    .line 50
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, p3, v1}, Lcom/mogu/tv/utils/FileImageUtilKt;->insertMediaImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/utils/OutputFileTaker;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "ImageExt"

    const-string p1, "insert: error: uri == null"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 56
    :cond_0
    invoke-static {p2, v0}, Lcom/mogu/tv/utils/FileImageUtilKt;->outputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v2

    :cond_1
    check-cast p3, Ljava/io/Closeable;

    :try_start_0
    move-object v3, p3

    check-cast v3, Ljava/io/OutputStream;

    .line 57
    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v4, p0

    check-cast v4, Ljava/io/InputStream;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 58
    invoke-static {v4, v3, v5, v6, v2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 59
    invoke-virtual {v1}, Lcom/mogu/tv/utils/OutputFileTaker;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/mogu/tv/utils/FileImageUtilKt;->finishPending(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 56
    invoke-static {p3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 57
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 56
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {p3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic saveToAlbum$default(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/16 p4, 0x4b

    .line 75
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mogu/tv/utils/FileImageUtilKt;->saveToAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
