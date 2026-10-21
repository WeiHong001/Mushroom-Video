package com.kotlin.basiclib.widget;

import android.R;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.github.lzyzsd.jsbridge.BridgeWebView;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressWebView extends BridgeWebView {
    private static final int FILE_CHOOSER_RESULT_CODE = 10000;
    private Context context;
    NFWebViewClientListener nfWebViewClientListener;
    public SlowlyProgressBar slowlyProgressBar;
    private ValueCallback<Uri> uploadMessage;
    private ValueCallback<Uri[]> uploadMessageAboveL;

    public interface NFWebViewClientListener {
        void onFinished(String str, String str2);

        boolean onOverrideUrlLoad(WebView webView, String str);

        void onStart(String str);
    }

    public ProgressWebView(Context context) {
        super(context);
        this.context = context;
        init(context);
    }

    public ProgressWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = context;
        init(context);
    }

    public void onProgressStart() {
        SlowlyProgressBar slowlyProgressBar = this.slowlyProgressBar;
        if (slowlyProgressBar != null) {
            slowlyProgressBar.onProgressStart();
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        SlowlyProgressBar slowlyProgressBar = this.slowlyProgressBar;
        if (slowlyProgressBar != null) {
            slowlyProgressBar.destroy();
            this.slowlyProgressBar = null;
        }
        super.destroy();
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void init(final Context context) {
        ProgressBar progressBar = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        progressBar.setLayoutParams(new FrameLayout.LayoutParams(-1, dip2px(context, 3.0f)));
        progressBar.setProgressDrawable(context.getResources().getDrawable(com.kotlin.basiclib.R.drawable.web_progress_bg));
        this.slowlyProgressBar = new SlowlyProgressBar(progressBar);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        WebSettings settings = getSettings();
        settings.setDomStorageEnabled(false);
        settings.setDatabaseEnabled(false);
        String path = context.getDir("database", 0).getPath();
        settings.setGeolocationEnabled(true);
        settings.setGeolocationDatabasePath(path);
        settings.setDatabasePath(path);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setLoadWithOverviewMode(true);
        settings.setAppCacheEnabled(true);
        settings.setBlockNetworkImage(false);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        settings.setAppCachePath(context.getDir("cache", 0).getPath());
        settings.setAppCacheMaxSize(104857600L);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowFileAccess(true);
        settings.setSaveFormData(true);
        settings.setLoadsImagesAutomatically(true);
        setWebChromeClient(new MyWebChromeClient() { // from class: com.kotlin.basiclib.widget.ProgressWebView.1
            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                if (ProgressWebView.this.nfWebViewClientListener != null) {
                    ProgressWebView.this.nfWebViewClientListener.onFinished(str, webView.getUrl());
                }
                super.onReceivedTitle(webView, str);
            }
        });
        setDownloadListener(new MyWebViewDownLoadListener());
        setWebViewClient(new WebViewClient() { // from class: com.kotlin.basiclib.widget.ProgressWebView.2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                Log.e("Override", str);
                if (str.startsWith("weixin://")) {
                    try {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(str));
                        context.startActivity(intent);
                        ProgressWebView.this.goBack();
                    } catch (Exception unused) {
                    }
                    return true;
                }
                if (str.startsWith("tel:")) {
                    Intent intent2 = new Intent("android.intent.action.DIAL", Uri.parse(str));
                    intent2.setFlags(268435456);
                    context.startActivity(intent2);
                    return true;
                }
                if (str.startsWith("sms:")) {
                    Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + str.substring(4, str.length())));
                    intent3.setFlags(268435456);
                    context.startActivity(intent3);
                    return true;
                }
                if (str.contains("alipays://")) {
                    try {
                        Intent intent4 = new Intent();
                        intent4.setAction("android.intent.action.VIEW");
                        intent4.setData(Uri.parse(str));
                        context.startActivity(intent4);
                        ProgressWebView.this.goBack();
                    } catch (Exception unused2) {
                    }
                    return true;
                }
                if (str.contains("mqqwpa://")) {
                    try {
                        Intent intent5 = new Intent();
                        intent5.setAction("android.intent.action.VIEW");
                        intent5.setData(Uri.parse(str));
                        context.startActivity(intent5);
                    } catch (Exception unused3) {
                    }
                    return true;
                }
                if (ProgressWebView.this.nfWebViewClientListener == null || !ProgressWebView.this.nfWebViewClientListener.onOverrideUrlLoad(webView, str)) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                Log.e("onPageStarted", str);
                ProgressWebView.this.onProgressStart();
                if (ProgressWebView.this.nfWebViewClientListener != null) {
                    ProgressWebView.this.nfWebViewClientListener.onStart(str);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                String title = webView.getTitle() == null ? "" : webView.getTitle();
                if (ProgressWebView.this.nfWebViewClientListener != null) {
                    if (title.startsWith("http") || title.contains(":") || title.contains("/")) {
                        ProgressWebView.this.nfWebViewClientListener.onFinished("", str);
                    } else {
                        ProgressWebView.this.nfWebViewClientListener.onFinished(title, str);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (Build.VERSION.SDK_INT < 23 || !webResourceRequest.getUrl().toString().equals(webView.getUrl())) {
                    return;
                }
                Log.e("onReceivedError", webResourceError.getDescription().toString());
            }
        });
    }

    private class MyWebViewDownLoadListener implements DownloadListener {
        private MyWebViewDownLoadListener() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            ProgressWebView.this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public class MyWebChromeClient extends WebChromeClient {
        public MyWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            if (ProgressWebView.this.slowlyProgressBar != null) {
                ProgressWebView.this.slowlyProgressBar.onProgressChange(i);
            }
        }

        public void openFileChooser(ValueCallback valueCallback, String str) {
            ProgressWebView.this.uploadMessage = valueCallback;
            ProgressWebView.this.openImageChooserActivity();
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
            ProgressWebView.this.uploadMessage = valueCallback;
            ProgressWebView.this.openImageChooserActivity();
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            ProgressWebView.this.uploadMessageAboveL = valueCallback;
            ProgressWebView.this.openImageChooserActivity();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openImageChooserActivity() {
        try {
            Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
            intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
            ((Activity) this.context).startActivityForResult(intent, 10000);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                Intent intent2 = new Intent("android.intent.action.GET_CONTENT", (Uri) null);
                intent2.setType("image/*");
                ((Activity) this.context).startActivityForResult(intent2, 10000);
            } catch (Exception unused) {
                e.printStackTrace();
            }
        }
    }

    public void onActivityResultAboveL(int i, int i2, Intent intent) {
        Uri[] uriArr;
        if (i != 10000 || this.uploadMessageAboveL == null) {
            return;
        }
        if (i2 != -1 || intent == null) {
            uriArr = null;
        } else {
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr = new Uri[clipData.getItemCount()];
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    uriArr[i3] = clipData.getItemAt(i3).getUri();
                }
            } else {
                uriArr = null;
            }
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            }
        }
        this.uploadMessageAboveL.onReceiveValue(uriArr);
        this.uploadMessageAboveL = null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10000) {
            if (this.uploadMessage == null && this.uploadMessageAboveL == null) {
                return;
            }
            Uri data = (intent == null || i2 != -1) ? null : intent.getData();
            if (this.uploadMessageAboveL != null) {
                onActivityResultAboveL(i, i2, intent);
                return;
            }
            ValueCallback<Uri> valueCallback = this.uploadMessage;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(data);
                this.uploadMessage = null;
            }
        }
    }

    public void setNFWebViewClientListner(NFWebViewClientListener nFWebViewClientListener) {
        this.nfWebViewClientListener = nFWebViewClientListener;
    }
}
