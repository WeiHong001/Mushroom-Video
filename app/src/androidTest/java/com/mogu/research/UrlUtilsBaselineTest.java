package com.mogu.research;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import com.amogu6.tv.BuildConfig;
import com.google.gson.JsonArray;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.TreeMap;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Capture original Android smali results before replacing UrlUtils. */
@RunWith(AndroidJUnit4.class)
public class UrlUtilsBaselineTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();
    private static final JsonObject observations=new JsonObject();
    private Class<?> type;

    @Before public void offlineRuntimeType() throws Exception {
        assertTrue(BuildConfig.OFFLINE);
        type=context.getClassLoader().loadClass("com.kotlin.basiclib.utils.UrlUtils");
    }

    @After public void saveObservations() throws Exception {
        File dir=new File(context.getExternalFilesDir(null),"validation");assertTrue(dir.isDirectory()||dir.mkdirs());
        try(FileOutputStream out=new FileOutputStream(new File(dir,"url-utils-observations.json"))) {
            out.write(observations.toString().getBytes(StandardCharsets.UTF_8));
        }
    }

    @Test public void queryBoundariesAndOriginalExceptions() throws Exception {
        String[] inputs={null,"","x","?","u?","u?&","u?=","u?==","u?=x","u?a=","u?a==b","u?a=b=c",
                "u?a=1&a=2","u?a=1?b=2","u??a=1","?a=1"," u?a=1 ","u?a=1&","u?a=1&&b=2",
                "u?flag","u?a=1#frag","u?a=%E4%B8%AD+文","u? a = 1 & b =2","u?\u3000=1",
                "u?A=1&a=2","u?a=1&=x","u?&&","u?=x=tail","u?a=1?","u?x=1\n2"};
        String[] expected={"!java.lang.NullPointerException","{}","{}","{}","{}","{}",
                "!java.lang.ArrayIndexOutOfBoundsException","!java.lang.ArrayIndexOutOfBoundsException",
                "{\"\":\"x\"}","{\"a\":\"\"}","{\"a\":\"\"}","{\"a\":\"b\"}",
                "{\"a\":\"2\"}","{\"a\":\"1\"}","{\"\":\"\"}","{\"a\":\"1\"}","{\"a\":\"1\"}",
                "{\"a\":\"1\"}","{\"\":\"\",\"a\":\"1\",\"b\":\"2\"}","{\"flag\":\"\"}",
                "{\"a\":\"1#frag\"}","{\"a\":\"%E4%B8%AD+文\"}","{\" a \":\" 1 \",\" b \":\"2\"}",
                "{\"　\":\"1\"}","{\"A\":\"1\",\"a\":\"2\"}","{\"a\":\"1\",\"\":\"x\"}",
                "{}","{\"\":\"x\"}","{\"a\":\"1\"}","{\"x\":\"1\\n2\"}"};
        JsonArray cases=new JsonArray();observations.add("queryCases",cases);
        for(String input:inputs) {
            JsonObject row=new JsonObject();
            if(input==null)row.add("input",JsonNull.INSTANCE);else row.addProperty("input",input);
            try {
                Object result=type.getMethod("getURLparams",String.class).invoke(null,input);
                assertEquals("java.util.HashMap",result.getClass().getName());
                JsonObject values=new JsonObject();
                for(Map.Entry<?,?> entry:new TreeMap<>((Map<?,?>)result).entrySet())values.addProperty((String)entry.getKey(),(String)entry.getValue());
                row.add("result",values);
            } catch(InvocationTargetException error) {row.addProperty("exception",error.getCause().getClass().getName());}
            cases.add(row);
        }
        // Preserve all original observations before checking provisional expectations.
        for(int i=0;i<inputs.length;i++) {
            JsonObject row=cases.get(i).getAsJsonObject();
            if(expected[i].startsWith("!"))assertEquals("input "+i,expected[i].substring(1),row.get("exception").getAsString());
            else assertEquals("input "+i,new JsonParser().parse(expected[i]),row.get("result"));
        }
    }

    @Test public void runtimeBinaryContract() throws Exception {
        assertEquals(Modifier.PUBLIC,type.getModifiers());assertEquals(Object.class,type.getSuperclass());
        assertEquals(0,type.getDeclaredFields().length);assertEquals(1,type.getDeclaredConstructors().length);
        assertEquals(Modifier.PUBLIC,type.getConstructor().getModifiers());
        Method api=type.getDeclaredMethod("getURLparams",String.class);
        assertEquals(Modifier.PUBLIC|Modifier.STATIC,api.getModifiers());assertEquals(Map.class,api.getReturnType());
        assertEquals("java.util.Map<java.lang.String, java.lang.String>",api.getGenericReturnType().getTypeName());
        Method helper=type.getDeclaredMethod("TruncateUrlPage",String.class);
        assertEquals(Modifier.PRIVATE|Modifier.STATIC,helper.getModifiers());assertEquals(String.class,helper.getReturnType());
        assertEquals(2,type.getDeclaredMethods().length);observations.addProperty("binaryContract",true);
    }

    @Test @SuppressWarnings("unchecked") public void originalRouteConsumerPreservesDetailsIds() throws Exception {
        Class<?> users=load("com.mogu.tv.main.UserManager");
        users.getMethod("refreshToken",String.class).invoke(users.getField("INSTANCE").get(null),RecoveryRuntime.repository().loginDemo());
        ActivityTestRule<Activity> rule=new ActivityTestRule<>((Class<Activity>)load("com.mogu.tv.MainActivity"),false,false);
        rule.launchActivity(new Intent().setClassName(context,"com.mogu.tv.MainActivity"));instrumentation.waitForIdleSync();
        try {
            Class<?> routes=load("com.mogu.tv.common.arouter.ArouterUtils");Object router=routes.getField("INSTANCE").get(null);
            Method jump=routes.getMethod("toUrlPraseJump",Activity.class,String.class);
            JsonArray cases=new JsonArray();observations.add("routeConsumer",cases);
            for(String[] sample:new String[][]{{"moguapp://vod?id=1001","1001"},{"moguapp://vod?id=1001&id=1002","1002"},{"moguapp://vod?other=1",""}}) {
                Instrumentation.ActivityMonitor monitor=instrumentation.addMonitor("com.mogu.tv.ui.DetailsActivity",null,false);
                Activity details=null;
                try {
                    instrumentation.runOnMainSync(()->call(jump,router,rule.getActivity(),sample[0]));
                    details=instrumentation.waitForMonitorWithTimeout(monitor,10000);assertNotNull("Original router must navigate",details);
                    assertEquals(sample[1],details.getIntent().getStringExtra("ids"));
                    JsonObject row=new JsonObject();row.addProperty("url",sample[0]);row.addProperty("ids",details.getIntent().getStringExtra("ids"));cases.add(row);
                } finally {
                    instrumentation.removeMonitor(monitor);
                    if(details!=null){Activity finished=details;instrumentation.runOnMainSync(finished::finish);instrumentation.waitForIdleSync();}
                }
            }
            Instrumentation.ActivityMonitor monitor=instrumentation.addMonitor("com.mogu.tv.ui.DetailsActivity",null,false);
            try {
                instrumentation.runOnMainSync(()->call(jump,router,rule.getActivity(),"moguapp://vod?"));
                assertNull("An empty query must not navigate",instrumentation.waitForMonitorWithTimeout(monitor,1500));
                observations.addProperty("emptyQueryDoesNotNavigate",true);
            } finally {instrumentation.removeMonitor(monitor);}
        } finally {rule.finishActivity();}
    }

    private Class<?> load(String name) throws ClassNotFoundException {return context.getClassLoader().loadClass(name);}
    private static void call(Method method,Object target,Object...args) {
        try {method.invoke(target,args);}catch(ReflectiveOperationException error){throw new AssertionError(error);}
    }
}
