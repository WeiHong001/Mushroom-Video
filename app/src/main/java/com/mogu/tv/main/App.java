package com.mogu.tv.main;

import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.amogu6.tv.BuildConfig;
import java.io.File;
import androidx.appcompat.app.AppCompatDelegate;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.base.BaseApplicaiton;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.research.RecoveryRuntime;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.model.EventChangeNightMode;
import com.mogu.tv.utils.exo.ExoMyPlayerCacheManager;
import com.mogu.tv.utils.exo.ExoMyPlayerManager;
import com.shuyu.gsyvideoplayer.cache.CacheFactory;
import com.shuyu.gsyvideoplayer.player.PlayerFactory;
import com.uuzuche.lib_zxing.activity.ZXingLibrary;
import com.yanbo.lib_screen.VApplication;
import com.zhangke.websocket.WebSocketHandler;
import org.greenrobot.eventbus.Subscribe;
import moe.codeest.enviews.ENPlayView;

/** Original initialization chain, without obsolete analytics or global trust-all TLS. */
public final class App extends BaseApplicaiton {
    private com.mogu.research.DiagnosticsRuntime diagnostics;
    @Override public SharedPreferences getSharedPreferences(String name,int mode) {
        return super.getSharedPreferences((BuildConfig.OFFLINE?"offline-":"live-")+name,mode);
    }
    @Override public File getFilesDir(){return scoped(super.getFilesDir());}
    @Override public File getCacheDir(){return scoped(super.getCacheDir());}
    @Override public File getExternalCacheDir(){return scoped(super.getExternalCacheDir());}
    @Override public File getExternalFilesDir(String type){return scoped(super.getExternalFilesDir(type));}
    private File scoped(File parent) {
        if(parent==null)return null;
        File directory=new File(parent,BuildConfig.OFFLINE?"offline":"live");
        if(!directory.isDirectory() && !directory.mkdirs() && !directory.isDirectory())throw new IllegalStateException("Cannot create mode-specific data directory");
        return directory;
    }

    @Override public void onCreate() {
        super.onCreate();
        // Bind privacy/export guards before a restored Chucker activity can create its window.
        diagnostics = new com.mogu.research.DiagnosticsRuntime(this);
        ApiClient.setDiagnosticInterceptors(diagnostics.interceptors());
        RecoveryRuntime.install(this);
        setNightMode();
        ApiClient.INSTANCE.setRetrofit(ApiClient.INSTANCE.getBaseHost());
        EventBusUtil.INSTANCE.register(this);
        ZXingLibrary.initDisplayOpinion(this);
        ENPlayView.DEFAULT_BG_LINE_WIDTH=1;
        ENPlayView.DEFAULT_LINE_WIDTH=1;
        VApplication.init(this);
        WebSocketHandler.registerNetworkChangedReceiver(this);
        PlayerFactory.setPlayManager(ExoMyPlayerManager.class);
        CacheFactory.setCacheManager(ExoMyPlayerCacheManager.class);
        registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            @Override public void onActivityCreated(Activity a,Bundle b){AcManage.getAppManager().addActivity(a);}
            @Override public void onActivityDestroyed(Activity a){AcManage.getAppManager().finishActivity(a);}
            @Override public void onActivityStarted(Activity a){ }
            @Override public void onActivityResumed(Activity a){ }
            @Override public void onActivityPaused(Activity a){ }
            @Override public void onActivityStopped(Activity a){ }
            @Override public void onActivitySaveInstanceState(Activity a,Bundle b){ }
        });
    }

    public com.mogu.research.DiagnosticsRuntime getDiagnostics() { return diagnostics; }

    public void setNightMode() {
        int value=SpUtil.INSTANCE.getInt(CacheKey.INSTANCE.getNightMode(),1);
        if(value==0)AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO);
        else if(value==1)AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES);
    }

    @Subscribe public void changeNightMode(EventChangeNightMode event){setNightMode();}
}
