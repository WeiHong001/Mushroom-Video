package com.mogu.research;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject2;
import androidx.test.uiautomator.Until;
import com.amogu6.tv.BuildConfig;
import com.mogu.inspector.*;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.api.ApiService;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;
import okhttp3.ResponseBody;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Runs the real restored business DEX, Application graph, patched Chucker and Compose host. */
@RunWith(AndroidJUnit4.class)
public class DiagnosticsIntegrationTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();
    private InspectorHost host() throws Exception {
        Field field=DiagnosticsRuntime.class.getDeclaredField("host");field.setAccessible(true);
        Object application=context.getApplicationContext();
        Object runtime=application.getClass().getMethod("getDiagnostics").invoke(application);
        return (InspectorHost)field.get(runtime);
    }
    private NetworkLogStore store(InspectorHost host) throws Exception {
        Field field=NetworkInspector.class.getDeclaredField("store");field.setAccessible(true);
        return (NetworkLogStore)field.get(host.getInspector());
    }
    private void enabled(InspectorHost host,boolean enabled) {
        instrumentation.runOnMainSync(()->{
            try {
                for(Method method:NetworkInspector.class.getDeclaredMethods()) if(method.getName().startsWith("setEnabled")) {
                    method.invoke(host.getInspector(),enabled);return;
                }
                throw new AssertionError("Missing capture control");
            } catch(Exception error){throw new AssertionError(error);}
        });
    }
    private void privacy(InspectorHost host,boolean enabled) {
        long deadline=SystemClock.uptimeMillis()+5000;
        while(!host.getPrivacy().getState().getValue().getReady() && SystemClock.uptimeMillis()<deadline) SystemClock.sleep(25);
        instrumentation.runOnMainSync(()->host.getPrivacy().setEnabled(enabled));
        while(host.getPrivacy().getState().getValue().getSaving() && SystemClock.uptimeMillis()<deadline) SystemClock.sleep(25);
        assertEquals(enabled,host.getPrivacy().getState().getValue().getHidesContent());
    }
    private String call(ApiService service,int page) throws Exception {
        HashMap<String,Object> params=new HashMap<>();params.put("page",page);params.put("limit",20);
        try(ResponseBody response=service.getShortLists(params).blockingFirst()) { return response.string(); }
    }
    private List<?> nativeRows() throws Exception {
        Class<?> provider=Class.forName("com.chuckerteam.chucker.internal.data.repository.RepositoryProvider");
        Object repository=provider.getMethod("transaction").invoke(provider.getField("INSTANCE").get(null));
        return (List<?>)repository.getClass().getMethod("getTransactionsInTimeRange",Long.class).invoke(repository,(Object)null);
    }

    @Test public void realApiAndNativeDatabaseRespectDynamicCapturePauseAndPrivacy() throws Exception {
        assertTrue("Build this test with -PresearchMode=offline",BuildConfig.OFFLINE);
        InspectorHost host=host();NetworkLogStore store=store(host);
        boolean originalEnabled=context.getApplicationContext().getSharedPreferences("network_inspector",0).getBoolean("enabled",false);
        boolean originalPrivacy=host.getPrivacy().getState().getValue().getEnabled();
        boolean recording=store.getState().getValue().getRecording();
        ApiService service=ApiClient.INSTANCE.getService();
        try {
            enabled(host,false);privacy(host,false);store.clear();store.setRecording(true);
            String off=call(service,711);assertTrue(store.getState().getValue().getLogs().isEmpty());
            enabled(host,true);
            String wire=call(service,712);
            assertSame(service,ApiClient.INSTANCE.getService());
            assertEquals(1,store.getState().getValue().getLogs().size());
            NetworkLog log=store.getState().getValue().getLogs().get(0);
            assertEquals(wire,log.getResponseBody().getText());
            assertEquals(Integer.valueOf(200),log.getCode());
            assertTrue(log.getRequestHeaders().toString().contains("application/json"));
            long deadline=SystemClock.uptimeMillis()+10000;boolean found=false;
            do {
                for(Object row:nativeRows()) if(log.getUrl().equals(row.getClass().getMethod("getUrl").invoke(row))) {
                    found=wire.equals(row.getClass().getMethod("getResponseBody").invoke(row));
                }
                if(!found)SystemClock.sleep(50);
            } while(!found && SystemClock.uptimeMillis()<deadline);
            assertTrue("Real Chucker Room row must contain the same synthetic response",found);
            store.setRecording(false);call(service,713);
            store.setRecording(true);privacy(host,true);call(service,714);
            enabled(host,false);privacy(host,false);call(service,715);
            assertEquals(1,store.getState().getValue().getLogs().size());
            for(Object row:nativeRows()) {
                String url=String.valueOf(row.getClass().getMethod("getUrl").invoke(row));
                for(int page:new int[]{711,713,714,715}) assertFalse(url,url.contains("page="+page));
            }
        } finally { enabled(host,originalEnabled);privacy(host,originalPrivacy);store.setRecording(recording);store.clear(); }
    }

    private UiObject2 find(String value) {
        UiDevice device=UiDevice.getInstance(instrumentation);
        UiObject2 node=device.findObject(By.textContains(value));
        return node==null?device.findObject(By.desc(value)):node;
    }
    private void click(String value) {
        UiDevice device=UiDevice.getInstance(instrumentation);
        UiObject2 node=device.wait(Until.findObject(By.textContains(value)),2500);
        if(node==null)node=device.wait(Until.findObject(By.desc(value)),2500);
        assertNotNull("Missing UI: "+value,node);
        while(node!=null && !node.isClickable())node=node.getParent();
        assertNotNull("No clickable ancestor: "+value,node);
        node.click();
        instrumentation.waitForIdleSync();SystemClock.sleep(350);
    }
    private void screenshot(String name) throws Exception {
        SystemClock.sleep(600); // Let the real device's sheet spring settle before visual evidence.
        android.graphics.Bitmap bitmap=instrumentation.getUiAutomation().takeScreenshot();
        assertNotNull(bitmap);
        try(java.io.FileOutputStream output=new java.io.FileOutputStream(new java.io.File(context.getCacheDir(),name+".png"))) {
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG,100,output);
        } finally {bitmap.recycle();}
    }

    @Test public void realViewSettingsAndFloatingComposePanelOpenPauseAndClose() throws Exception {
        assertTrue(BuildConfig.OFFLINE);
        InspectorHost host=host();NetworkLogStore store=store(host);
        boolean original=context.getApplicationContext().getSharedPreferences("network_inspector",0).getBoolean("enabled",false);
        boolean hidden=host.getPrivacy().getState().getValue().getEnabled();
        boolean recording=store.getState().getValue().getRecording();
        Activity activity=null;
        try {
            enabled(host,false);privacy(host,false);store.clear();store.setRecording(true);
            // MIUI blocks instrumentation's initial background start. Enter via the exported launcher
            // using shell first, then exercise the real internal settings Activity while foreground.
            try(java.io.InputStream launch=new android.os.ParcelFileDescriptor.AutoCloseInputStream(
                instrumentation.getUiAutomation().executeShellCommand("am start -W -n "+context.getPackageName()+"/com.mogu.tv.ui.LoadingActivity"))) {
                byte[] bytes=new byte[1024];while(launch.read(bytes)!=-1) { }
            }
            SystemClock.sleep(1200);
            Intent intent=new Intent().setClassName(context,"com.mogu.tv.ui.activity.SettingActivity").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            activity=instrumentation.startActivitySync(intent);instrumentation.waitForIdleSync();
            Activity target=activity;instrumentation.runOnMainSync(()->target.getWindow().addFlags(android.view.WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON));
            screenshot("inspector-settings");
            click(context.getString(com.mogu.inspector.R.string.inspector_setting_title));
            store.clear();
            call(ApiClient.INSTANCE.getService(),721);
            click(context.getString(com.mogu.inspector.R.string.inspector_open,1));
            screenshot("inspector-requests");
            click("/api/vlog/list");
            screenshot("inspector-response");
            click(context.getString(com.mogu.inspector.R.string.inspector_back));
            screenshot("inspector-after-back");
            click(context.getString(com.mogu.inspector.R.string.inspector_pause));
            assertFalse(store.getState().getValue().getRecording());
            click(context.getString(com.mogu.inspector.R.string.inspector_chucker));
            screenshot("inspector-native-history");
            instrumentation.sendKeyDownUpSync(android.view.KeyEvent.KEYCODE_BACK);
            SystemClock.sleep(600);
            click(context.getString(com.mogu.inspector.R.string.inspector_close));
            assertFalse(activity.isFinishing());
            assertNotNull(find(context.getString(com.mogu.inspector.R.string.inspector_setting_title)));
            assertFalse(context.getApplicationContext().getSharedPreferences("network_inspector",0).getBoolean("recording",true));
        } finally {
            if(activity!=null){Activity target=activity;instrumentation.runOnMainSync(target::finish);}
            enabled(host,original);privacy(host,hidden);store.setRecording(recording);
            context.getApplicationContext().getSharedPreferences("network_inspector",0).edit().putBoolean("recording",recording).commit();store.clear();
        }
    }
}
