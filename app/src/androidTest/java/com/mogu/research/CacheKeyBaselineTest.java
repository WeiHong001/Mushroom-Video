package com.mogu.research;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import com.amogu6.tv.BuildConfig;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Captures key names, never preference values or account material. */
@RunWith(AndroidJUnit4.class)
public class CacheKeyBaselineTest {
    @Test public void originalStorageKeyValuesAbiAndMetadata() throws Exception {
        assertTrue(BuildConfig.OFFLINE);
        Class<?> type=InstrumentationRegistry.getInstrumentation().getTargetContext().getClassLoader().loadClass("com.mogu.tv.common.cache.CacheKey");
        assertEquals(Modifier.PUBLIC|Modifier.FINAL,type.getModifiers());assertEquals(Object.class,type.getSuperclass());assertEquals(Modifier.PRIVATE,type.getDeclaredConstructor().getModifiers());
        assertEquals(10,type.getDeclaredFields().length);assertEquals(9,type.getDeclaredMethods().length);assertEquals(0,type.getInterfaces().length);
        Field singleton=type.getDeclaredField("INSTANCE");assertEquals(Modifier.PUBLIC|Modifier.STATIC|Modifier.FINAL,singleton.getModifiers());assertEquals(type,singleton.getType());Object instance=singleton.get(null);
        String[][] keys={{"CACHECOMMENTKEY","getCACHECOMMENTKEY","replycachekey_news"},{"NightMode","getNightMode","nightmode"},{"USER_TOKEN","getUSER_TOKEN","user_token"},{"SEARCH_LIST_KEY","getSEARCH_LIST_KEY","search_list_key"},{"SAVE_PLAYDATA","getSAVE_PLAYDATA","save_playdata"},{"LOCK","getLOCK","suopingstr"},{"SHORTVIDEOPAGE","getSHORTVIDEOPAGE","shortvideopage"},{"FIRSTLOADVERSION_1","getFIRSTLOADVERSION_1","firstloadversion_1"},{"LOADSHARE","getLOADSHARE","loadshare"}};
        JsonObject observations=new JsonObject(),values=new JsonObject();observations.add("keyNames",values);
        for(String[] key:keys){Field field=type.getDeclaredField(key[0]);field.setAccessible(true);assertEquals(Modifier.PRIVATE|Modifier.STATIC|Modifier.FINAL,field.getModifiers());assertEquals(String.class,field.getType());Method method=type.getDeclaredMethod(key[1]);assertEquals(Modifier.PUBLIC|Modifier.FINAL,method.getModifiers());assertEquals(String.class,method.getReturnType());Object actual=method.invoke(instance);assertEquals(key[2],actual);assertSame("Getter returns original immutable field",field.get(null),actual);values.addProperty(key[1],(String)actual);}
        Metadata metadata=type.getAnnotation(Metadata.class);assertNotNull(metadata);JsonObject annotation=new JsonObject();Gson gson=new Gson();annotation.addProperty("k",metadata.k());annotation.addProperty("xi",metadata.xi());annotation.add("mv",gson.toJsonTree(metadata.mv()));annotation.add("d1",gson.toJsonTree(metadata.d1()));annotation.add("d2",gson.toJsonTree(metadata.d2()));observations.add("metadata",annotation);observations.addProperty("classFieldsMethodsConstructorAbi",true);observations.addProperty("allNineGetterFieldIdentities",true);
        File dir=new File(InstrumentationRegistry.getInstrumentation().getTargetContext().getExternalFilesDir(null),"validation");assertTrue(dir.isDirectory()||dir.mkdirs());try(FileOutputStream out=new FileOutputStream(new File(dir,"cache-key-observations.json"))){out.write(observations.toString().getBytes(StandardCharsets.UTF_8));}
    }
}
