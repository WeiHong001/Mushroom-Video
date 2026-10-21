package com.kotlin.basiclib.utils;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class CXAESUtil {
    private static final String HEX = "0123456789ABCDEF";
    private static final String defaultV = "0";
    private static final int keyLenght = 16;

    public static String encrypt(String str, String str2) throws Exception {
        return toHex(encrypt(toMakekey(str, 16, "0").getBytes(), str2.getBytes("utf-8")));
    }

    public static String getSha1(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(bArr);
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArrDigest) {
            stringBuffer.append(Integer.toString((b & 255) + 256, 16).substring(1));
        }
        return stringBuffer.toString();
    }

    public static String encrypt2Java(String str, String str2) throws Exception {
        return toHex(encrypt2Java(toMakekey(str, 16, "0").getBytes(), str2.getBytes("utf-8")));
    }

    public static String toMakekey(String str, int i, String str2) {
        int length = str.length();
        if (length < i) {
            while (length < i) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append(str2);
                str = stringBuffer.toString();
                length = str.length();
            }
        }
        return str;
    }

    private static byte[] encrypt(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(1, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    private static byte[] encrypt2Java(byte[] bArr, byte[] bArr2) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
        return cipher.doFinal(bArr2);
    }

    public static byte[] hexToByteArray(String str) {
        byte[] bArr;
        int length = str.length();
        if (length % 2 == 1) {
            length++;
            bArr = new byte[length / 2];
            str = "0" + str;
        } else {
            bArr = new byte[length / 2];
        }
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 2;
            bArr[i2] = hexToByte(str.substring(i, i3));
            i2++;
            i = i3;
        }
        return bArr;
    }

    public static byte hexToByte(String str) {
        return (byte) Integer.parseInt(str, 16);
    }

    public static byte[] decrypt(String str, byte[] bArr) throws Exception {
        byte[] bArrHexToByteArray = hexToByteArray(str);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArrHexToByteArray, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArrHexToByteArray));
        return cipher.doFinal(bArr);
    }

    private static Key toKey(byte[] bArr) {
        return new SecretKeySpec(bArr, "AES");
    }

    public static String toHex(String str) {
        return toHex(str.getBytes());
    }

    public static String fromHex(String str) {
        return new String(toByte(str));
    }

    public static byte[] toByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = Integer.valueOf(str.substring(i2, i2 + 2), 16).byteValue();
        }
        return bArr;
    }

    public static String toHex(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b : bArr) {
            appendHex(stringBuffer, b);
        }
        return stringBuffer.toString();
    }

    private static void appendHex(StringBuffer stringBuffer, byte b) {
        stringBuffer.append(HEX.charAt((b >> 4) & 15));
        stringBuffer.append(HEX.charAt(b & 15));
    }

    public static Cipher initAESCipher(String str, int i) {
        Cipher cipher = null;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(toMakekey(str, 16, "0").getBytes(), "AES");
            cipher = Cipher.getInstance("AES");
            cipher.init(i, secretKeySpec);
            return cipher;
        } catch (InvalidKeyException e) {
            e.printStackTrace();
            return cipher;
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return cipher;
        } catch (NoSuchPaddingException e3) {
            e3.printStackTrace();
            return cipher;
        }
    }
}
