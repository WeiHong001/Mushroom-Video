package com.mogu.research;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.test.platform.app.InstrumentationRegistry;
import com.amogu6.tv.BuildConfig;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import org.junit.After;
import org.junit.Before;
import static org.junit.Assert.*;

/** Tests use the original SpUtil preference instance, preserving its offline isolation. */
public abstract class PlayDataTestSupport {
    protected final Context context=InstrumentationRegistry.getInstrumentation().getTargetContext();
    protected final Gson gson=new Gson();
    protected static final JsonObject observations=new JsonObject();
    protected Class<?> utility,model,vod,spType;
    protected Object utils,sp;
    protected Field cache;
    protected SharedPreferences prefs;
    protected String key,priorJson;
    protected Object priorCache;
    protected boolean priorExists,keepForRestart;

    @Before public void loadAndPreserveOnlyPlayDataKey() throws Exception {
        assertTrue("Only the offline APK",BuildConfig.OFFLINE);
        utility=load("com.mogu.tv.utils.PlayDataSaveUtils");model=load("com.mogu.tv.model.SavePlayVod");vod=load("com.mogu.tv.model.SavePlayVod$VodData");
        utils=utility.getField("INSTANCE").get(null);cache=utility.getDeclaredField("staticPlayData");cache.setAccessible(true);priorCache=cache.get(null);
        spType=load("com.kotlin.basiclib.utils.SpUtil");sp=spType.getField("INSTANCE").get(null);
        Method accessor=spType.getDeclaredMethod("getPrefs");accessor.setAccessible(true);prefs=(SharedPreferences)accessor.invoke(sp);
        Class<?> keys=load("com.mogu.tv.common.cache.CacheKey");key=(String)keys.getMethod("getSAVE_PLAYDATA").invoke(keys.getField("INSTANCE").get(null));
        assertEquals("save_playdata",key);priorExists=prefs.contains(key);priorJson=prefs.getString(key,null);cache.set(null,null);
    }

    @After public void restoreOnlyPlayDataKeyAndRecordSyntheticObservations() throws Exception {
        try {
            if(!keepForRestart&&prefs!=null&&key!=null) {
                SharedPreferences.Editor editor=prefs.edit();
                if(priorExists)editor.putString(key,priorJson);else editor.remove(key);
                assertTrue("Restore the original key",editor.commit());cache.set(null,priorCache);
            }
        } finally {
            File dir=new File(context.getExternalFilesDir(null),"validation");assertTrue(dir.isDirectory()||dir.mkdirs());
            String phase=InstrumentationRegistry.getArguments().getString("evidencePhase","contracts");
            assertTrue(phase.matches("[a-z-]+"));
            try(FileOutputStream out=new FileOutputStream(new File(dir,"play-data-"+phase+".json"))) {
                out.write(observations.toString().getBytes(StandardCharsets.UTF_8));
            }
        }
    }

    protected Class<?> load(String name) throws ClassNotFoundException {return context.getClassLoader().loadClass(name);}
    protected Object call(Object receiver,String name,Class<?>[] types,Object...args) throws Exception {
        try {return receiver.getClass().getMethod(name,types).invoke(receiver,args);}
        catch(InvocationTargetException error){Throwable c=error.getCause();if(c instanceof RuntimeException)throw (RuntimeException)c;if(c instanceof Error)throw (Error)c;throw error;}
    }
    protected Object property(Object receiver,String name) throws Exception {return call(receiver,name,new Class<?>[0]);}
    protected void set(Object receiver,String name,Class<?> type,Object value) throws Exception {call(receiver,name,new Class<?>[]{type},value);}
    protected Object get(String id) throws Exception {return call(utils,"getPlayData",new Class<?>[]{String.class},id);}
    protected void save(String id,long progress) throws Exception {call(utils,"savePlayData",new Class<?>[]{String.class,long.class},id,progress);}
    protected void stored(String json,boolean clearCache) throws Exception {
        call(sp,"saveValue",new Class<?>[]{String.class,Object.class},key,json);
        if(clearCache)cache.set(null,null);
    }
    protected JsonObject value(Object item) throws Exception {
        if(item==null)return null;
        JsonObject result=new JsonObject();result.addProperty("id",(String)property(item,"getId"));result.addProperty("name",(String)property(item,"getName"));result.addProperty("progress",(Long)property(item,"getProgress"));return result;
    }
    protected JsonObject persisted() {return new JsonParser().parse(prefs.getString(key,"")).getAsJsonObject();}
    protected File restartFile(){return new File(context.getFilesDir(),"migration-play-data-restart.json");}
    protected void exception(String name,Class<? extends Throwable> type,CheckedAction action) throws Exception {
        try {action.run();fail(name+" accepted invalid input");}
        catch(Throwable error){if(error instanceof AssertionError)throw (AssertionError)error;assertEquals(name,type,error.getClass());observations.addProperty(name,error.getClass().getName());}
    }
    protected interface CheckedAction {void run() throws Exception;}
}
