package com.wgq.wangeqiu.main;

import android.app.Activity;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.mogu.tv.main.UserManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: H5toNative.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u0010\u001a\u00020\u0011H\u0007J\b\u0010\u0012\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0007J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0011H\u0007J\b\u0010\u0017\u001a\u00020\u000fH\u0007J\b\u0010\u0018\u001a\u00020\u000fH\u0007J\b\u0010\u0019\u001a\u00020\u000fH\u0007J\b\u0010\u001a\u001a\u00020\u000fH\u0007J\b\u0010\u001b\u001a\u00020\u000fH\u0007J\b\u0010\u001c\u001a\u00020\u000fH\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/wgq/wangeqiu/main/H5toNative;", "", "mContext", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "getMContext$app_mogushareRelease", "()Landroid/app/Activity;", "setMContext$app_mogushareRelease", "webview", "Landroid/webkit/WebView;", "getWebview", "()Landroid/webkit/WebView;", "setWebview", "(Landroid/webkit/WebView;)V", "finishPage", "", "getUserToken", "", "goBack", "rechargeAndroid", "payUrl", "showPhoto", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "toFaceToFacePage", "toLiveVerifyPage", "toLogin", "toMySoccerBeanPage", "toShopPage", "toTaskAcitivty", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class H5toNative {
    private Activity mContext;
    private WebView webview;

    @JavascriptInterface
    public final void rechargeAndroid(String payUrl) {
        Intrinsics.checkNotNullParameter(payUrl, "payUrl");
    }

    @JavascriptInterface
    public final void showPhoto(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @JavascriptInterface
    public final void toFaceToFacePage() {
    }

    @JavascriptInterface
    public final void toLiveVerifyPage() {
    }

    @JavascriptInterface
    public final void toLogin() {
    }

    @JavascriptInterface
    public final void toMySoccerBeanPage() {
    }

    @JavascriptInterface
    public final void toTaskAcitivty() {
    }

    public H5toNative(Activity mContext) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    /* JADX INFO: renamed from: getMContext$app_mogushareRelease, reason: from getter */
    public final Activity getMContext() {
        return this.mContext;
    }

    public final void setMContext$app_mogushareRelease(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<set-?>");
        this.mContext = activity;
    }

    public final WebView getWebview() {
        return this.webview;
    }

    public final void setWebview(WebView webView) {
        this.webview = webView;
    }

    @JavascriptInterface
    public final String getUserToken() {
        String userId = UserManager.INSTANCE.getUserId();
        return userId == null ? "" : userId;
    }

    @JavascriptInterface
    public final void finishPage() {
        this.mContext.finish();
    }

    @JavascriptInterface
    public final void toShopPage() {
        if (UserManager.INSTANCE.isLogin()) {
            return;
        }
        toLogin();
    }

    @JavascriptInterface
    public final void goBack() {
        WebView webView = this.webview;
        if (webView == null || webView == null) {
            return;
        }
        webView.post(new Runnable() { // from class: com.wgq.wangeqiu.main.H5toNative$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                H5toNative.m318goBack$lambda0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: goBack$lambda-0, reason: not valid java name */
    public static final void m318goBack$lambda0(H5toNative this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WebView webView = this$0.webview;
        Intrinsics.checkNotNull(webView);
        if (webView.canGoBack()) {
            WebView webView2 = this$0.webview;
            if (webView2 != null) {
                webView2.goBack();
                return;
            }
            return;
        }
        this$0.mContext.finish();
    }
}
