package com.mogu.tv.utils;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.Log;
import com.luck.picture.lib.config.PictureMimeType;
import com.umeng.analytics.pro.ao;
import com.umeng.analytics.pro.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* JADX INFO: compiled from: FileImageUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u0001\u001a&\u0010\u000b\u001a\u00020\f*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0002\u001a\f\u0010\u0010\u001a\u00020\u0011*\u00020\u0001H\u0002\u001a\u000e\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u0001H\u0002\u001a,\u0010\u0013\u001a\u0004\u0018\u00010\u0005*\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002\u001a\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002\u001a\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u0005*\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\u001a2\u0010\u001a\u001a\u0004\u0018\u00010\u0005*\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u001a&\u0010\u001a\u001a\u0004\u0018\u00010\u0005*\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u0001\"\u0016\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"ALBUM_DIR", "", "kotlin.jvm.PlatformType", "TAG", "copyToAlbum", "Landroid/net/Uri;", "Ljava/io/File;", d.R, "Landroid/content/Context;", "fileName", "relativePath", "finishPending", "", "resolver", "Landroid/content/ContentResolver;", "outputFile", "getBitmapFormat", "Landroid/graphics/Bitmap$CompressFormat;", "getMimeType", "insertMediaImage", "outputFileTaker", "Lcom/mogu/tv/utils/OutputFileTaker;", "outputStream", "Ljava/io/OutputStream;", "queryMediaImage28", "imagePath", "saveToAlbum", "Landroid/graphics/Bitmap;", "quality", "", "Ljava/io/InputStream;", "app_mogushareRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class FileImageUtilKt {
    private static final String ALBUM_DIR = Environment.DIRECTORY_PICTURES;
    private static final String TAG = "ImageExt";

    public static final Uri copyToAlbum(File file, Context context, String fileName, String str) throws IOException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        if (!file.canRead() || !file.exists()) {
            Log.w(TAG, "check: read file error: " + file);
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Uri uriSaveToAlbum = saveToAlbum(fileInputStream, context, fileName, str);
            CloseableKt.closeFinally(fileInputStream, null);
            return uriSaveToAlbum;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static final Uri saveToAlbum(InputStream inputStream, Context context, String fileName, String str) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        ContentResolver resolver = context.getContentResolver();
        OutputFileTaker outputFileTaker = new OutputFileTaker(null, 1, null);
        Intrinsics.checkNotNullExpressionValue(resolver, "resolver");
        Uri uriInsertMediaImage = insertMediaImage(resolver, fileName, str, outputFileTaker);
        if (uriInsertMediaImage == null) {
            Log.w(TAG, "insert: error: uri == null");
            return null;
        }
        OutputStream outputStream = outputStream(uriInsertMediaImage, resolver);
        if (outputStream == null) {
            return null;
        }
        OutputStream outputStream2 = outputStream;
        try {
            InputStream inputStream2 = inputStream;
            try {
                ByteStreamsKt.copyTo$default(inputStream2, outputStream2, 0, 2, null);
                finishPending(uriInsertMediaImage, context, resolver, outputFileTaker.getFile());
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(inputStream2, null);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(outputStream2, null);
                return uriInsertMediaImage;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(inputStream2, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.closeFinally(outputStream2, th3);
                throw th4;
            }
        }
    }

    public static /* synthetic */ Uri saveToAlbum$default(Bitmap bitmap, Context context, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            i = 75;
        }
        return saveToAlbum(bitmap, context, str, str2, i);
    }

    public static final Uri saveToAlbum(Bitmap bitmap, Context context, String fileName, String str, int i) throws IOException {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        ContentResolver resolver = context.getContentResolver();
        OutputFileTaker outputFileTaker = new OutputFileTaker(null, 1, null);
        Intrinsics.checkNotNullExpressionValue(resolver, "resolver");
        Uri uriInsertMediaImage = insertMediaImage(resolver, fileName, str, outputFileTaker);
        if (uriInsertMediaImage == null) {
            Log.w(TAG, "insert: error: uri == null");
            return null;
        }
        OutputStream outputStream = outputStream(uriInsertMediaImage, resolver);
        if (outputStream == null) {
            return null;
        }
        OutputStream outputStream2 = outputStream;
        try {
            bitmap.compress(getBitmapFormat(fileName), i, outputStream2);
            finishPending(uriInsertMediaImage, context, resolver, outputFileTaker.getFile());
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(outputStream2, null);
            return uriInsertMediaImage;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(outputStream2, th);
                throw th2;
            }
        }
    }

    private static final OutputStream outputStream(Uri uri, ContentResolver contentResolver) {
        try {
            return contentResolver.openOutputStream(uri);
        } catch (FileNotFoundException e) {
            Log.e(TAG, "save: open stream error: " + e);
            return null;
        }
    }

    private static final void finishPending(Uri uri, Context context, ContentResolver contentResolver, File file) {
        ContentValues contentValues = new ContentValues();
        if (Build.VERSION.SDK_INT < 29) {
            if (file != null) {
                contentValues.put("_size", Long.valueOf(file.length()));
            }
            contentResolver.update(uri, contentValues, null, null);
            context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", uri));
            return;
        }
        contentValues.put("is_pending", (Integer) 0);
        contentResolver.update(uri, contentValues, null, null);
    }

    private static final Bitmap.CompressFormat getBitmapFormat(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        if (StringsKt.endsWith$default(lowerCase, PictureMimeType.PNG, false, 2, (Object) null)) {
            return Bitmap.CompressFormat.PNG;
        }
        if (StringsKt.endsWith$default(lowerCase, ".jpg", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, ".jpeg", false, 2, (Object) null)) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (StringsKt.endsWith$default(lowerCase, ".webp", false, 2, (Object) null)) {
            return Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.PNG;
    }

    private static final String getMimeType(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        if (StringsKt.endsWith$default(lowerCase, PictureMimeType.PNG, false, 2, (Object) null)) {
            return DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG;
        }
        if (StringsKt.endsWith$default(lowerCase, ".jpg", false, 2, (Object) null) || StringsKt.endsWith$default(lowerCase, ".jpeg", false, 2, (Object) null)) {
            return "image/jpeg";
        }
        if (StringsKt.endsWith$default(lowerCase, ".webp", false, 2, (Object) null)) {
            return "image/webp";
        }
        if (StringsKt.endsWith$default(lowerCase, ".gif", false, 2, (Object) null)) {
            return "image/gif";
        }
        return null;
    }

    static /* synthetic */ Uri insertMediaImage$default(ContentResolver contentResolver, String str, String str2, OutputFileTaker outputFileTaker, int i, Object obj) {
        if ((i & 4) != 0) {
            outputFileTaker = null;
        }
        return insertMediaImage(contentResolver, str, str2, outputFileTaker);
    }

    private static final Uri insertMediaImage(ContentResolver contentResolver, String str, String str2, OutputFileTaker outputFileTaker) throws IOException {
        Uri EXTERNAL_CONTENT_URI;
        String str3;
        ContentValues contentValues = new ContentValues();
        String mimeType = getMimeType(str);
        if (mimeType != null) {
            contentValues.put("mime_type", mimeType);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / ((long) 1000);
        contentValues.put("date_added", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("date_modified", Long.valueOf(jCurrentTimeMillis));
        int i = 1;
        if (Build.VERSION.SDK_INT >= 29) {
            if (str2 != null) {
                str3 = ALBUM_DIR + '/' + str2;
            } else {
                str3 = ALBUM_DIR;
            }
            contentValues.put("_display_name", str);
            contentValues.put("relative_path", str3);
            contentValues.put("is_pending", (Integer) 1);
            EXTERNAL_CONTENT_URI = MediaStore.Images.Media.getContentUri("external_primary");
            Intrinsics.checkNotNullExpressionValue(EXTERNAL_CONTENT_URI, "getContentUri(MediaStore.VOLUME_EXTERNAL_PRIMARY)");
        } else {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(ALBUM_DIR);
            if (str2 != null) {
                externalStoragePublicDirectory = new File(externalStoragePublicDirectory, str2);
            }
            if (!externalStoragePublicDirectory.exists() && !externalStoragePublicDirectory.mkdirs()) {
                Log.e(TAG, "save: error: can't create Pictures directory");
                return null;
            }
            File file = new File(externalStoragePublicDirectory, str);
            String nameWithoutExtension = FilesKt.getNameWithoutExtension(file);
            String extension = FilesKt.getExtension(file);
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "imageFile.absolutePath");
            Uri uriQueryMediaImage28 = queryMediaImage28(contentResolver, absolutePath);
            while (uriQueryMediaImage28 != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(nameWithoutExtension);
                sb.append('(');
                int i2 = i + 1;
                sb.append(i);
                sb.append(").");
                sb.append(extension);
                File file2 = new File(externalStoragePublicDirectory, sb.toString());
                String absolutePath2 = file2.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath2, "imageFile.absolutePath");
                uriQueryMediaImage28 = queryMediaImage28(contentResolver, absolutePath2);
                file = file2;
                i = i2;
            }
            contentValues.put("_display_name", file.getName());
            String absolutePath3 = file.getAbsolutePath();
            Log.v(TAG, "save file: " + absolutePath3);
            contentValues.put("_data", absolutePath3);
            if (outputFileTaker != null) {
                outputFileTaker.setFile(file);
            }
            EXTERNAL_CONTENT_URI = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            Intrinsics.checkNotNullExpressionValue(EXTERNAL_CONTENT_URI, "EXTERNAL_CONTENT_URI");
        }
        return contentResolver.insert(EXTERNAL_CONTENT_URI, contentValues);
    }

    private static final Uri queryMediaImage28(ContentResolver contentResolver, String str) throws IOException {
        if (Build.VERSION.SDK_INT >= 29) {
            return null;
        }
        File file = new File(str);
        if (file.canRead() && file.exists()) {
            Log.v(TAG, "query: path: " + str + " exists");
            return Uri.fromFile(file);
        }
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Cursor cursorQuery = contentResolver.query(uri, new String[]{ao.d, "_data"}, "_data == ?", new String[]{str}, null);
        if (cursorQuery != null) {
            Cursor cursor = cursorQuery;
            try {
                Cursor cursor2 = cursor;
                if (cursor2.moveToNext()) {
                    Uri uriWithAppendedId = ContentUris.withAppendedId(uri, cursor2.getLong(cursor2.getColumnIndexOrThrow(ao.d)));
                    Intrinsics.checkNotNullExpressionValue(uriWithAppendedId, "withAppendedId(collection, id)");
                    Log.v(TAG, "query: path: " + str + " exists uri: " + uriWithAppendedId);
                    CloseableKt.closeFinally(cursor, null);
                    return uriWithAppendedId;
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(cursor, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(cursor, th);
                    throw th2;
                }
            }
        }
        return null;
    }
}
