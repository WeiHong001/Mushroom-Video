package com.kotlin.basiclib.utils;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpMyUrlFetcher implements DataFetcher<InputStream> {
    static final HttpUrlConnectionFactory DEFAULT_CONNECTION_FACTORY = new DefaultHttpUrlConnectionFactory();
    private static final int INVALID_STATUS_CODE = -1;
    private static final int MAXIMUM_REDIRECTS = 5;
    private static final String TAG = "HttpUrlFetcher";
    private final HttpUrlConnectionFactory connectionFactory;
    private final GlideUrl glideUrl;
    private volatile boolean isCancelled;
    private InputStream stream;
    private final int timeout;
    private HttpURLConnection urlConnection;

    interface HttpUrlConnectionFactory {
        HttpURLConnection build(URL url) throws IOException;
    }

    public HttpMyUrlFetcher(GlideUrl glideUrl, int i) {
        this(glideUrl, i, DEFAULT_CONNECTION_FACTORY);
    }

    HttpMyUrlFetcher(GlideUrl glideUrl, int i, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.glideUrl = glideUrl;
        this.timeout = i;
        this.connectionFactory = httpUrlConnectionFactory;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(Priority priority, DataFetcher.DataCallback<? super InputStream> dataCallback) {
        try {
            InputStream input=loadDataWithRedirects(glideUrl.toURL(),0,null,glideUrl.getHeaders());
            if (isCancelled || input==null) { dataCallback.onDataReady(null);return; }
            byte[] bytes=MD5EncryptNf.toByteArray(input);
            // The old fallback returned an already-consumed stream after decryption failed.
            stream=new ByteArrayInputStream(decodePayload(glideUrl.toStringUrl(),bytes));
            dataCallback.onDataReady(stream);
        } catch (IOException error) {
            dataCallback.onLoadFailed(error);
        }
    }

    public static byte[] decodePayload(String url,byte[] bytes) {
        if(url.length()<27)return bytes;
        String[] parts=url.split("/");
        String name=parts[parts.length-1].split("\\.")[0];
        try {
            String key=MD5EncryptNf.encode(url.contains("vlog")?CXAESUtil.getSha1(name.getBytes(java.nio.charset.StandardCharsets.UTF_8)):name);
            return CXAESUtil.decrypt(key,bytes);
        } catch (Exception error) {
            return bytes;
        }
    }

    private InputStream loadDataWithRedirects(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i >= 5) {
            throw new HttpException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.urlConnection = this.connectionFactory.build(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.urlConnection.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.urlConnection.setConnectTimeout(this.timeout);
        this.urlConnection.setReadTimeout(this.timeout);
        this.urlConnection.setUseCaches(false);
        this.urlConnection.setDoInput(true);
        this.urlConnection.setInstanceFollowRedirects(false);
        this.urlConnection.connect();
        this.stream = this.urlConnection.getInputStream();
        if (this.isCancelled) {
            return null;
        }
        int responseCode = this.urlConnection.getResponseCode();
        if (isHttpOk(responseCode)) {
            return getStreamForSuccessfulRequest(this.urlConnection);
        }
        if (!isHttpRedirect(responseCode)) {
            if (responseCode == -1) {
                throw new HttpException(responseCode);
            }
            throw new HttpException(this.urlConnection.getResponseMessage(), responseCode);
        }
        String headerField = this.urlConnection.getHeaderField("Location");
        if (TextUtils.isEmpty(headerField)) {
            throw new HttpException("Received empty or null redirect url");
        }
        URL url3 = new URL(url, headerField);
        cleanup();
        return loadDataWithRedirects(url3, i + 1, url, map);
    }

    private static boolean isHttpOk(int i) {
        return i / 100 == 2;
    }

    private static boolean isHttpRedirect(int i) {
        return i / 100 == 3;
    }

    private InputStream getStreamForSuccessfulRequest(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.stream = ContentLengthInputStream.obtain(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.stream = httpURLConnection.getInputStream();
        }
        return this.stream;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        InputStream inputStream = this.stream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.urlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.urlConnection = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.isCancelled = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    private static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
        DefaultHttpUrlConnectionFactory() {
        }

        @Override // com.kotlin.basiclib.utils.HttpMyUrlFetcher.HttpUrlConnectionFactory
        public HttpURLConnection build(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }
}
