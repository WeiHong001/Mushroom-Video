package com.kotlin.basiclib.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class MD5EncryptNf {
    public static String encode(String str) {
        if (str == null) {
            return null;
        }
        return md5(str);
    }

    public static String encode(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2)) {
            return null;
        }
        return md5(str + str2);
    }

    private static boolean isEmpty(String str) {
        return str == null || "".equals(str);
    }

    private static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            try {
                messageDigest.update(str.getBytes("utf-8"));
                return new String(hexString(messageDigest.digest()));
            } catch (UnsupportedEncodingException unused) {
                throw new IllegalStateException("System doesn't support your  EncodingException.");
            }
        } catch (NoSuchAlgorithmException unused2) {
            throw new IllegalStateException("System doesn't support MD5 algorithm.");
        }
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 != i) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static String hexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            int i = b & 255;
            if (i < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i));
        }
        return stringBuffer.toString();
    }

    public static String sHA1(Context context) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                String upperCase = Integer.toHexString(b & 255).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                stringBuffer.append(":");
            }
            String string = stringBuffer.toString();
            return string.substring(0, string.length() - 1);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String getFileMD5String(File file) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i > 0) {
                    messageDigest.update(bArr, 0, i);
                } else {
                    fileInputStream.close();
                    return hexString(messageDigest.digest());
                }
            }
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalStateException("System doesn't support MD5 algorithm.");
        }
    }
}
