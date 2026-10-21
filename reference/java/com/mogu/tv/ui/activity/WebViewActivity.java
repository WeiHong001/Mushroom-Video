package com.mogu.tv.ui.activity;

import android.webkit.WebView;
import android.widget.LinearLayout;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.widget.ProgressWebView;
import com.mogu.tv.databinding.ActWebviewBinding;
import com.wgq.wangeqiu.main.H5toNative;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: WebViewActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/ui/activity/WebViewActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActWebviewBinding;", "()V", "mUrl", "", "getMUrl", "()Ljava/lang/String;", "setMUrl", "(Ljava/lang/String;)V", "initData", "", "initView", "onBackPressed", "onDestroy", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class WebViewActivity extends CommonBaseActivity<ActWebviewBinding> {
    private String mUrl = "";

    public final String getMUrl() {
        return this.mUrl;
    }

    public final void setMUrl(String str) {
        this.mUrl = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llContent;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llContent");
        fitStatubar(linearLayout);
        setTitle("");
        getBinding().webview.setNFWebViewClientListner(new ProgressWebView.NFWebViewClientListener() { // from class: com.mogu.tv.ui.activity.WebViewActivity.initView.1
            @Override // com.kotlin.basiclib.widget.ProgressWebView.NFWebViewClientListener
            public boolean onOverrideUrlLoad(WebView view, String url) {
                return false;
            }

            @Override // com.kotlin.basiclib.widget.ProgressWebView.NFWebViewClientListener
            public void onStart(String url) {
            }

            @Override // com.kotlin.basiclib.widget.ProgressWebView.NFWebViewClientListener
            public void onFinished(String title, String url) {
                WebViewActivity webViewActivity = WebViewActivity.this;
                if (title == null) {
                    title = "";
                }
                webViewActivity.setTitle(title);
            }
        });
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        getBinding().webview.destroy();
        super.onDestroy();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        this.mUrl = getIntent().getStringExtra(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL);
        getBinding().webview.addJavascriptInterface(new H5toNative(this), "native");
        ProgressWebView progressWebView = getBinding().webview;
        String str = this.mUrl;
        if (str == null) {
            str = "";
        }
        progressWebView.loadUrl(str);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (getBinding().webview.canGoBack()) {
            getBinding().webview.goBack();
        } else {
            super.onBackPressed();
        }
    }
}
