package com.kotlin.basiclib.utils;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class UrlUtils {
    public static Map<String, String> getURLparams(String str) {
        HashMap map = new HashMap();
        String strTruncateUrlPage = TruncateUrlPage(str);
        if (strTruncateUrlPage == null) {
            return map;
        }
        for (String str2 : strTruncateUrlPage.split("[&]")) {
            String[] strArrSplit = str2.split("[=]");
            if (strArrSplit.length > 1) {
                map.put(strArrSplit[0], strArrSplit[1]);
            } else if (strArrSplit[0] != "") {
                map.put(strArrSplit[0], "");
            }
        }
        return map;
    }

    private static String TruncateUrlPage(String str) {
        String strTrim = str.trim();
        String[] strArrSplit = strTrim.split("[?]");
        if (strTrim.length() <= 1 || strArrSplit.length <= 1 || strArrSplit[1] == null) {
            return null;
        }
        return strArrSplit[1];
    }
}
