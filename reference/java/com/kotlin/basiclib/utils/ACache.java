package com.kotlin.basiclib.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.util.Base64;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ACache {
    private static final int MAX_COUNT = Integer.MAX_VALUE;
    private static final int MAX_SIZE = 209715200;
    public static final int TIME_DAY = 86400;
    public static final int TIME_HOUR = 3600;
    private static Map<String, ACache> mInstanceMap = new HashMap();
    private ACacheManager mCache;

    public static ACache get(Context context) {
        return get(context, "ACache");
    }

    public static ACache get(Context context, String str) {
        return get(new File(context.getCacheDir(), str), 209715200L, Integer.MAX_VALUE);
    }

    public static ACache get(File file) {
        return get(file, 209715200L, Integer.MAX_VALUE);
    }

    public static ACache get(Context context, long j, int i) {
        return get(new File(FileUtils.getAppCacheFile(context), "ACache"), j, i);
    }

    public static ACache get(File file, long j, int i) {
        if (!file.exists()) {
            file.mkdir();
        }
        ACache aCache = mInstanceMap.get(file.getAbsoluteFile() + myPid());
        if (aCache != null) {
            return aCache;
        }
        ACache aCache2 = new ACache(file, j, i);
        mInstanceMap.put(file.getAbsolutePath() + myPid(), aCache2);
        return aCache2;
    }

    private static String myPid() {
        return "_" + Process.myPid();
    }

    private ACache(File file, long j, int i) {
        if (!file.exists() && !file.mkdirs()) {
            throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
        }
        this.mCache = new ACacheManager(file, j, i);
    }

    class xFileOutputStream extends FileOutputStream {
        File file;

        public xFileOutputStream(File file) throws FileNotFoundException {
            super(file);
            this.file = file;
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            ACache.this.mCache.put(this.file);
        }
    }

    public void put(String str, String str2) throws Throwable {
        File fileNewFile = this.mCache.newFile(str);
        if (!fileNewFile.exists()) {
            try {
                fileNewFile.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(fileNewFile), 1024);
                try {
                    bufferedWriter2.write(str2);
                    try {
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                    }
                } catch (IOException e3) {
                    e = e3;
                    bufferedWriter = bufferedWriter2;
                    e.printStackTrace();
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.flush();
                            bufferedWriter.close();
                        } catch (IOException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        try {
                            bufferedWriter.flush();
                            bufferedWriter.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    this.mCache.put(fileNewFile);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e6) {
            e = e6;
        }
        this.mCache.put(fileNewFile);
    }

    public void put(String str, String str2, int i) throws Throwable {
        put(str, Utils.newStringWithDateInfo(i, str2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedInputStream] */
    public String getAsString(String str) throws Throwable {
        BufferedInputStream bufferedInputStream;
        File file = this.mCache.get(str);
        ?? r2 = 0;
        try {
            if (!file.exists()) {
                return null;
            }
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
                    StringBuilder sb = new StringBuilder();
                    while (bufferedReader.ready()) {
                        sb.append((char) bufferedReader.read());
                    }
                    if (Utils.isDue(sb.toString())) {
                        remove(str);
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        return null;
                    }
                    String strClearDateInfo = Utils.clearDateInfo(sb.toString());
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return strClearDateInfo;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Exception e5) {
                e = e5;
                bufferedInputStream = null;
            } catch (Throwable th) {
                th = th;
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r2 = file;
        }
    }

    public void put(String str, JSONObject jSONObject) throws Throwable {
        put(str, jSONObject.toString());
    }

    public void put(String str, JSONObject jSONObject, int i) throws Throwable {
        put(str, jSONObject.toString(), i);
    }

    public JSONObject getAsJSONObject(String str) {
        try {
            return new JSONObject(getAsString(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void put(String str, JSONArray jSONArray) throws Throwable {
        put(str, jSONArray.toString());
    }

    public void put(String str, JSONArray jSONArray, int i) throws Throwable {
        put(str, jSONArray.toString(), i);
    }

    public JSONArray getAsJSONArray(String str) {
        try {
            return new JSONArray(getAsString(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void put(String str, byte[] bArr) throws Throwable {
        File fileNewFile = this.mCache.newFile(str);
        try {
            if (!fileNewFile.exists()) {
                fileNewFile.createNewFile();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileNewFile);
                try {
                    fileOutputStream2.write(bArr);
                    try {
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    this.mCache.put(fileNewFile);
                    throw th;
                }
            } catch (Exception e6) {
                e = e6;
            }
            this.mCache.put(fileNewFile);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public OutputStream put(String str) throws FileNotFoundException {
        return new xFileOutputStream(this.mCache.newFile(str));
    }

    public InputStream get(String str) throws FileNotFoundException {
        File file = this.mCache.get(str);
        if (file.exists()) {
            return new FileInputStream(file);
        }
        return null;
    }

    public void put(String str, byte[] bArr, int i) throws Throwable {
        put(str, Utils.newByteArrayWithDateInfo(i, bArr));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0053: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:35:0x0053 */
    public byte[] getAsBinary(String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        try {
            try {
                File file = this.mCache.get(str);
                if (!file.exists()) {
                    return null;
                }
                randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    byte[] bArr = new byte[(int) randomAccessFile.length()];
                    randomAccessFile.read(bArr);
                    if (Utils.isDue(bArr)) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        remove(str);
                        return null;
                    }
                    byte[] bArrClearDateInfo = Utils.clearDateInfo(bArr);
                    try {
                        randomAccessFile.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return bArrClearDateInfo;
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th) {
                th = th;
                randomAccessFile3 = randomAccessFile2;
                if (randomAccessFile3 != null) {
                    try {
                        randomAccessFile3.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            if (randomAccessFile3 != null) {
                randomAccessFile3.close();
            }
            throw th;
        }
        e.printStackTrace();
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
        }
        return null;
    }

    public void put(String str, Serializable serializable) throws Throwable {
        put(str, serializable, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.ObjectOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public void put(String str, Serializable serializable, int i) throws Throwable {
        ?? r0 = 0;
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(serializable);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    r0 = -1;
                    if (i != -1) {
                        put(str, byteArray, i);
                    } else {
                        put(str, byteArray);
                    }
                    objectOutputStream2.close();
                } catch (Exception e) {
                    e = e;
                    objectOutputStream = objectOutputStream2;
                    e.printStackTrace();
                    objectOutputStream.close();
                    r0 = objectOutputStream;
                } catch (Throwable th) {
                    th = th;
                    r0 = objectOutputStream2;
                    try {
                        r0.close();
                    } catch (IOException unused) {
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (IOException unused2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v5 */
    public Object getAsObject(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? asBinary = getAsBinary(str);
        try {
            if (asBinary == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(asBinary);
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object object = objectInputStream.readObject();
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        return object;
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Exception e6) {
                    e = e6;
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    asBinary = 0;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    if (asBinary != 0) {
                        try {
                            asBinary.close();
                            throw th;
                        } catch (IOException e8) {
                            e8.printStackTrace();
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                byteArrayInputStream = null;
                th = th2;
                asBinary = 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void put(String str, Bitmap bitmap) throws Throwable {
        put(str, Utils.Bitmap2Bytes(bitmap));
    }

    public void put(String str, Bitmap bitmap, int i) throws Throwable {
        put(str, Utils.Bitmap2Bytes(bitmap), i);
    }

    public Bitmap getAsBitmap(String str) {
        if (getAsBinary(str) == null) {
            return null;
        }
        return Utils.Bytes2Bimap(getAsBinary(str));
    }

    public void put(String str, Drawable drawable) throws Throwable {
        put(str, Utils.drawable2Bitmap(drawable));
    }

    public void put(String str, Drawable drawable, int i) throws Throwable {
        put(str, Utils.drawable2Bitmap(drawable), i);
    }

    public Drawable getAsDrawable(String str) {
        if (getAsBinary(str) == null) {
            return null;
        }
        return Utils.bitmap2Drawable(Utils.Bytes2Bimap(getAsBinary(str)));
    }

    public File file(String str) {
        File fileNewFile = this.mCache.newFile(str);
        if (fileNewFile.exists()) {
            return fileNewFile;
        }
        return null;
    }

    public boolean remove(String str) {
        return this.mCache.remove(str);
    }

    public void clear() {
        this.mCache.clear();
    }

    public class ACacheManager {
        private final AtomicInteger cacheCount;
        protected File cacheDir;
        private final AtomicLong cacheSize;
        private final int countLimit;
        private final Map<File, Long> lastUsageDates;
        private final long sizeLimit;

        private ACacheManager(File file, long j, int i) {
            this.lastUsageDates = Collections.synchronizedMap(new HashMap());
            this.cacheDir = file;
            this.sizeLimit = j;
            this.countLimit = i;
            this.cacheSize = new AtomicLong();
            this.cacheCount = new AtomicInteger();
            calculateCacheSizeAndCacheCount();
        }

        private void calculateCacheSizeAndCacheCount() {
            new Thread(new Runnable() { // from class: com.kotlin.basiclib.utils.ACache.ACacheManager.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] fileArrListFiles = ACacheManager.this.cacheDir.listFiles();
                    if (fileArrListFiles != null) {
                        int iCalculateSize = 0;
                        int i = 0;
                        for (File file : fileArrListFiles) {
                            iCalculateSize = (int) (((long) iCalculateSize) + ACacheManager.this.calculateSize(file));
                            i++;
                            ACacheManager.this.lastUsageDates.put(file, Long.valueOf(file.lastModified()));
                        }
                        ACacheManager.this.cacheSize.set(iCalculateSize);
                        ACacheManager.this.cacheCount.set(i);
                    }
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void put(File file) {
            int iAddAndGet = this.cacheCount.get();
            while (iAddAndGet + 1 > this.countLimit) {
                this.cacheSize.addAndGet(-removeNext());
                iAddAndGet = this.cacheCount.addAndGet(-1);
            }
            this.cacheCount.addAndGet(1);
            long jCalculateSize = calculateSize(file);
            long jAddAndGet = this.cacheSize.get();
            while (jAddAndGet + jCalculateSize > this.sizeLimit) {
                jAddAndGet = this.cacheSize.addAndGet(-removeNext());
            }
            this.cacheSize.addAndGet(jCalculateSize);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(lValueOf.longValue());
            this.lastUsageDates.put(file, lValueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File get(String str) {
            File fileNewFile = newFile(str);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            fileNewFile.setLastModified(lValueOf.longValue());
            this.lastUsageDates.put(fileNewFile, lValueOf);
            return fileNewFile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File newFile(String str) {
            return new File(this.cacheDir, Base64.encodeToString(str.getBytes(), 8) + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean remove(String str) {
            return get(str).delete();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.lastUsageDates.clear();
            this.cacheSize.set(0L);
            File[] fileArrListFiles = this.cacheDir.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    file.delete();
                }
            }
        }

        private long removeNext() {
            File key;
            if (this.lastUsageDates.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> setEntrySet = this.lastUsageDates.entrySet();
            synchronized (this.lastUsageDates) {
                key = null;
                Long value = null;
                for (Map.Entry<File, Long> entry : setEntrySet) {
                    if (key == null) {
                        key = entry.getKey();
                        value = entry.getValue();
                    } else {
                        Long value2 = entry.getValue();
                        if (value2.longValue() < value.longValue()) {
                            key = entry.getKey();
                            value = value2;
                        }
                    }
                }
            }
            long jCalculateSize = calculateSize(key);
            if (key.delete()) {
                this.lastUsageDates.remove(key);
            }
            return jCalculateSize;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long calculateSize(File file) {
            return file.length();
        }
    }

    private static class Utils {
        private static final char mSeparator = ' ';

        private Utils() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(String str) {
            return isDue(str.getBytes());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(byte[] bArr) {
            String[] dateInfoFromDate = getDateInfoFromDate(bArr);
            if (dateInfoFromDate != null && dateInfoFromDate.length == 2) {
                String strSubstring = dateInfoFromDate[0];
                while (strSubstring.startsWith("0")) {
                    strSubstring = strSubstring.substring(1, strSubstring.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(strSubstring).longValue() + (Long.valueOf(dateInfoFromDate[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String newStringWithDateInfo(int i, String str) {
            return createDateInfo(i) + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] newByteArrayWithDateInfo(int i, byte[] bArr) {
            byte[] bytes = createDateInfo(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String clearDateInfo(String str) {
            return (str == null || !hasDateInfo(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] clearDateInfo(byte[] bArr) {
            return hasDateInfo(bArr) ? copyOfRange(bArr, indexOf(bArr, mSeparator) + 1, bArr.length) : bArr;
        }

        private static boolean hasDateInfo(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && indexOf(bArr, mSeparator) > 14;
        }

        private static String[] getDateInfoFromDate(byte[] bArr) {
            if (hasDateInfo(bArr)) {
                return new String[]{new String(copyOfRange(bArr, 0, 13)), new String(copyOfRange(bArr, 14, indexOf(bArr, mSeparator)))};
            }
            return null;
        }

        private static int indexOf(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        private static byte[] copyOfRange(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException(i + " > " + i2);
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
            return bArr2;
        }

        private static String createDateInfo(int i) {
            StringBuilder sb = new StringBuilder(System.currentTimeMillis() + "");
            while (sb.length() < 13) {
                sb.append("0" + sb.toString());
            }
            return ((Object) sb) + "-" + i + mSeparator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] Bitmap2Bytes(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap Bytes2Bimap(byte[] bArr) {
            if (bArr.length == 0) {
                return null;
            }
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap drawable2Bitmap(Drawable drawable) {
            if (drawable == null) {
                return null;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Drawable bitmap2Drawable(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            new BitmapDrawable(bitmap).setTargetDensity(bitmap.getDensity());
            return new BitmapDrawable(bitmap);
        }
    }
}
