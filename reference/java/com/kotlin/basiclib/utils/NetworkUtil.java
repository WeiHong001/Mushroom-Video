package com.kotlin.basiclib.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkUtil {
    public static final int NETTYPE_CMNET = 3;
    public static final int NETTYPE_CMWAP = 2;
    public static final int NETTYPE_WIFI = 1;

    public static int getNetworkType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return 0;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            return type == 1 ? 1 : 0;
        }
        String extraInfo = activeNetworkInfo.getExtraInfo();
        if (TextUtils.isEmpty(extraInfo)) {
            return 0;
        }
        return "cmnet".equals(extraInfo.toLowerCase()) ? 3 : 2;
    }

    public static String[] getGprsIPs(Context context) {
        String[] strArr = new String[2];
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress()) {
                        if (inetAddressNextElement instanceof Inet4Address) {
                            strArr[0] = inetAddressNextElement.getHostAddress();
                        } else if (inetAddressNextElement instanceof Inet6Address) {
                            strArr[1] = inetAddressNextElement.getHostAddress();
                        }
                    }
                }
            }
        } catch (SocketException e) {
            e.printStackTrace();
        }
        return strArr;
    }

    public static String intToIp(int i) {
        return (i & 255) + Consts.DOT + ((i >> 8) & 255) + Consts.DOT + ((i >> 16) & 255) + Consts.DOT + ((i >> 24) & 255);
    }
}
