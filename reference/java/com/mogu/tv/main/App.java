package com.mogu.tv.main;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;
import android.os.Process;
import androidx.appcompat.app.AppCompatDelegate;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.base.BaseApplicaiton;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.model.EventChangeNightMode;
import com.mogu.tv.utils.exo.ExoMyPlayerCacheManager;
import com.mogu.tv.utils.exo.ExoMyPlayerManager;
import com.shuyu.gsyvideoplayer.cache.CacheFactory;
import com.shuyu.gsyvideoplayer.player.PlayerFactory;
import com.umeng.commonsdk.UMConfigure;
import com.uuzuche.lib_zxing.activity.ZXingLibrary;
import com.yanbo.lib_screen.VApplication;
import com.zhangke.websocket.WebSocketHandler;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import moe.codeest.enviews.ENPlayView;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: compiled from: App.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0016J\u0006\u0010\u000e\u001a\u00020\u0004J\b\u0010\u000f\u001a\u00020\u0004H\u0002¨\u0006\u0010"}, d2 = {"Lcom/mogu/tv/main/App;", "Lcom/kotlin/basiclib/base/BaseApplicaiton;", "()V", "addActivityLife", "", "changeNightMode", "mode", "Lcom/mogu/tv/model/EventChangeNightMode;", "getCurrentProcessName", "", "initExoplay", "initLePin", "initUmeng", "onCreate", "setNightMode", "trustAllHosts", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class App extends BaseApplicaiton {
    private final void initExoplay() {
    }

    @Override // com.kotlin.basiclib.base.BaseApplicaiton, android.app.Application
    public void onCreate() {
        super.onCreate();
        setNightMode();
        ApiClient.INSTANCE.setRetrofit(ApiClient.INSTANCE.getBaseHost());
        EventBusUtil.INSTANCE.register(this);
        App app = this;
        ZXingLibrary.initDisplayOpinion(app);
        initUmeng();
        initLePin();
        VApplication.init(app);
        WebSocketHandler.registerNetworkChangedReceiver(app);
        PlayerFactory.setPlayManager(ExoMyPlayerManager.class);
        CacheFactory.setCacheManager(ExoMyPlayerCacheManager.class);
        initExoplay();
        addActivityLife();
        trustAllHosts();
    }

    public final void setNightMode() {
        int i = SpUtil.INSTANCE.getInt(CacheKey.INSTANCE.getNightMode(), 1);
        if (i == 0) {
            AppCompatDelegate.setDefaultNightMode(1);
        } else {
            if (i != 1) {
                return;
            }
            AppCompatDelegate.setDefaultNightMode(2);
        }
    }

    @Subscribe
    public final void changeNightMode(EventChangeNightMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        setNightMode();
    }

    private final void trustAllHosts() {
        X509TrustManager x509TrustManager = new X509TrustManager() { // from class: com.mogu.tv.main.App$trustAllHosts$manager$1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] chain, String authType) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] chain, String authType) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (Exception unused) {
        }
    }

    private final void initLePin() {
        ENPlayView.DEFAULT_BG_LINE_WIDTH = 1;
        ENPlayView.DEFAULT_LINE_WIDTH = 1;
    }

    private final void addActivityLife() {
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.mogu.tv.main.App.addActivityLife.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity p0, Bundle p1) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Intrinsics.checkNotNullParameter(p1, "p1");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity p0, Bundle p1) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                AcManage.getAppManager().addActivity(p0);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                AcManage.getAppManager().finishActivity(p0);
            }
        });
    }

    private final void initUmeng() {
        UMConfigure.setLogEnabled(true);
        App app = this;
        UMConfigure.preInit(app, AppKt.UmengAppKey, "mogushare");
        UMConfigure.init(app, AppKt.UmengAppKey, "mogushare", 1, "");
    }

    private final String getCurrentProcessName() {
        int iMyPid = Process.myPid();
        Object systemService = getApplicationContext().getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        String str = "";
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) systemService).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == iMyPid) {
                str = runningAppProcessInfo.processName;
                Intrinsics.checkNotNullExpressionValue(str, "process.processName");
            }
        }
        return str;
    }
}
