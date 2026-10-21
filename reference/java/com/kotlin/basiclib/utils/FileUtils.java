package com.kotlin.basiclib.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {

    public interface OnReplaceListener {
        boolean onReplace();
    }

    public static String getAppFilePath() {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/mogu_app";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(str, "/");
        if (!file2.exists()) {
            file2.mkdir();
        }
        return str + "/";
    }

    public static File getAppCacheFile(Context context) {
        File externalCacheDir = Environment.getExternalStorageState() == "mounted" ? context.getExternalCacheDir() : context.getCacheDir();
        if (!externalCacheDir.exists()) {
            externalCacheDir.mkdir();
        }
        return externalCacheDir;
    }

    public static String getImageCacheFile(Context context) {
        String str = (Environment.getExternalStorageState() == "mounted" ? context.getExternalCacheDir() : context.getCacheDir()) + "/imagecache";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(str, "/");
        if (!file2.exists()) {
            file2.mkdir();
        }
        return str + "/";
    }

    public static String getImageFilepath(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(str);
            String strSaveBitmap = DownloadPictureUtil.saveBitmap(Bitmap.createScaledBitmap(mediaMetadataRetriever.getFrameAtTime(0L, 1), (Integer.parseInt(mediaMetadataRetriever.extractMetadata(18)) * 300) / Integer.parseInt(mediaMetadataRetriever.extractMetadata(19)), 300, true), System.currentTimeMillis() + "");
            mediaMetadataRetriever.release();
            return strSaveBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static long getFileSize(File file) throws Exception {
        long jAvailable = 0;
        if (!file.isFile() || !file.exists()) {
            return 0L;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            jAvailable = fileInputStream.available();
            fileInputStream.close();
            return jAvailable;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return jAvailable;
        }
    }

    public static long getDirSize(File file) throws Exception {
        long fileSize;
        long j = 0;
        try {
            File[] fileArrListFiles = file.listFiles();
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    fileSize = getDirSize(fileArrListFiles[i]);
                } else {
                    fileSize = getFileSize(fileArrListFiles[i]);
                }
                j += fileSize;
            }
        } catch (Exception unused) {
        }
        return j;
    }

    public static void deleteFilesByDirectory(File file) {
        if (file != null && file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    deleteFilesByDirectory(fileArrListFiles[i]);
                } else {
                    fileArrListFiles[i].delete();
                }
            }
        }
    }

    public static String getAppCacheSize(Context context) throws Exception {
        long dirSize = getDirSize(getAppCacheFile(context));
        DecimalFormat decimalFormat = new DecimalFormat("#0.00");
        StringBuilder sb = new StringBuilder();
        double d = dirSize;
        Double.isNaN(d);
        sb.append(decimalFormat.format(d / 1048576.0d));
        sb.append("M");
        return sb.toString();
    }

    public static void cleanAppCache(Context context) {
        deleteFilesByDirectory(getAppCacheFile(context));
    }

    public static void clearWebViewCache(Context context) {
        try {
            CookieSyncManager.createInstance(context);
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.removeSessionCookie();
            CookieManager.getInstance().removeAllCookie();
            File file = new File(context.getDir("cache", 0).getPath());
            File file2 = new File(context.getDir("database", 0).getPath());
            if (file2.exists()) {
                file2.delete();
            }
            if (file.exists()) {
                file.delete();
            }
            context.deleteDatabase("webview.db");
            context.deleteDatabase("webviewCache.db");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean createFileByDeleteOldFile(String str) {
        return createFileByDeleteOldFile(getFileByPath(str));
    }

    private static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static File getFileByPath(String str) {
        if (isSpace(str)) {
            return null;
        }
        return new File(str);
    }

    public static boolean createFileByDeleteOldFile(File file) {
        if (file == null) {
            return false;
        }
        if ((file.exists() && !file.delete()) || !createOrExistsDir(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean createOrExistsDir(String str) {
        return createOrExistsDir(getFileByPath(str));
    }

    public static boolean isExist(String str) {
        return new File(str).exists();
    }

    public static boolean createOrExistsDir(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean copyFile(File file, String str, String str2) {
        if (file != null && !TextUtils.isEmpty(str)) {
            File file2 = new File(str);
            if (file2.exists()) {
                file2.delete();
            } else {
                try {
                    file2.mkdirs();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            File file3 = new File(str.concat(str2));
            if (file3.exists()) {
                file3.delete();
            } else {
                try {
                    file3.createNewFile();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            try {
                FileChannel channel = new FileInputStream(file).getChannel();
                FileChannel channel2 = new FileOutputStream(file3).getChannel();
                channel.transferTo(0L, channel.size(), channel2);
                try {
                    channel.close();
                    channel2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                return true;
            } catch (FileNotFoundException e4) {
                e4.printStackTrace();
            } catch (IOException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }
}
