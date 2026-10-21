package com.mogu.tv.utils;

import okhttp3.OkHttpClient;

/** Original API retained; platform certificate and hostname validation restored. */
public final class SSLOkhttp {
    private SSLOkhttp() { }

    public static OkHttpClient.Builder getUnsafeOkHttpClient() {
        return new OkHttpClient.Builder();
    }
}
