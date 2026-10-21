package com.mogu.tv.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class LogUtil {
    private static final String DEFAULT_TAG = "CJT";

    public static void e(String str, String str2) {
    }

    public static void i(String str, String str2) {
    }

    public static void v(String str, String str2) {
        Log.v(str, str2);
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
    }

    public static void i(String str) {
        i(DEFAULT_TAG, str);
    }

    public static void v(String str) {
        v(DEFAULT_TAG, str);
    }

    public static void d(String str) {
        d(DEFAULT_TAG, str);
    }

    public static void e(String str) {
        e(DEFAULT_TAG, str);
    }
}
