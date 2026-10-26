package com.mogu.research;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import com.amogu6.tv.BuildConfig;
import com.amogu6.tv.R;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.annotations.SerializedName;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.api.ApiService;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okio.Buffer;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Original Android implementation first; fixed inputs plus explicit live-clock rules. */
@RunWith(AndroidJUnit4.class)
public class DateUtilBaselineTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();
    private static final JsonObject observations=new JsonObject();
    private static final String[] FORMATTERS={"dateFormater4","dateFormater5","dateFormater2","dateFormater3"};
    private Class<?> type;
    private Locale previousLocale,previousFormat,previousDisplay;
    private TimeZone previousZone;
    private Field firstClock,secondClock;
    private long previousFirst,previousSecond;

    @Before public void isolateDefaultsAndOriginalClockState() throws Exception {
        assertTrue(BuildConfig.OFFLINE);previousLocale=Locale.getDefault();previousFormat=Locale.getDefault(Locale.Category.FORMAT);previousDisplay=Locale.getDefault(Locale.Category.DISPLAY);previousZone=TimeZone.getDefault();
        type=load("com.kotlin.basiclib.utils.DateUtil");firstClock=field(type,"lastClickTime");secondClock=field(type,"lastClickTime2");previousFirst=firstClock.getLong(null);previousSecond=secondClock.getLong(null);
        Locale.setDefault(Locale.US);TimeZone.setDefault(TimeZone.getTimeZone("UTC"));clearFormats();
        observations.addProperty("controlUtcDay",new SimpleDateFormat("yyyy-MM-dd",Locale.US).format(new Date()));
    }
    @After public void restoreDefaultsClockAndSaveObservations() throws Exception {
        try {if(firstClock!=null){firstClock.setLong(null,previousFirst);secondClock.setLong(null,previousSecond);clearFormats();}}
        finally {
            if(previousLocale!=null){Locale.setDefault(previousLocale);Locale.setDefault(Locale.Category.FORMAT,previousFormat);Locale.setDefault(Locale.Category.DISPLAY,previousDisplay);TimeZone.setDefault(previousZone);}
            File dir=new File(context.getExternalFilesDir(null),"validation");assertTrue(dir.isDirectory()||dir.mkdirs());
            try(FileOutputStream out=new FileOutputStream(new File(dir,"date-utils-observations.json"))){out.write(observations.toString().getBytes(StandardCharsets.UTF_8));}
        }
    }

    @Test public void runtimeAbiAndFourAnonymousFormatterFactories() throws Exception {
        assertEquals(Modifier.PUBLIC,type.getModifiers());assertEquals(Modifier.PUBLIC,type.getConstructor().getModifiers());assertEquals(33,type.getDeclaredMethods().length);assertEquals(6,type.getDeclaredFields().length);
        JsonArray methods=new JsonArray();List<String> signatures=new ArrayList<>();
        for(Method m:type.getDeclaredMethods()){assertTrue(Modifier.isPublic(m.getModifiers()));assertTrue(Modifier.isStatic(m.getModifiers()));signatures.add(m.getName()+Arrays.toString(m.getParameterTypes())+":"+m.getReturnType().getName()+":"+m.getModifiers());}
        Collections.sort(signatures);for(String s:signatures)methods.add(s);observations.add("publicMethodSignatures",methods);
        JsonObject helpers=new JsonObject();String[] patterns={"MM-dd","yyyyMMdd","yyyy-MM-dd","yyyy-MM-dd HH:mm"};
        for(int i=0;i<FORMATTERS.length;i++) {
            Field f=field(type,FORMATTERS[i]);assertEquals(Modifier.PRIVATE|Modifier.STATIC|Modifier.FINAL,f.getModifiers());assertEquals(ThreadLocal.class,f.getType());
            Object local=f.get(null);assertEquals(type.getName()+"$"+(i+1),local.getClass().getName());assertTrue(local.getClass().isAnonymousClass());assertEquals(type,local.getClass().getEnclosingClass());assertEquals(0,local.getClass().getDeclaredFields().length);
            SimpleDateFormat format=(SimpleDateFormat)((ThreadLocal<?>)local).get();assertEquals(patterns[i],format.toPattern());assertTrue(format.isLenient());
            List<String> memberSignatures=new ArrayList<>();for(Method m:local.getClass().getDeclaredMethods())memberSignatures.add(m.getName()+":"+m.getReturnType().getName()+":"+m.getModifiers());Collections.sort(memberSignatures);
            JsonObject row=new JsonObject();row.addProperty("class",local.getClass().getName());row.addProperty("classModifiers",local.getClass().getModifiers());row.addProperty("genericParent",local.getClass().getGenericSuperclass().getTypeName());JsonArray values=new JsonArray();for(String s:memberSignatures)values.add(s);row.add("methods",values);helpers.add(FORMATTERS[i],row);
        }
        for(Field f:new Field[]{firstClock,secondClock}){assertEquals(long.class,f.getType());assertEquals(Modifier.PRIVATE|Modifier.STATIC,f.getModifiers());}
        observations.add("anonymousFormatterAbi",helpers);
    }

    @Test public void fixedInputMatrixAcrossLocalesTimeZonesAndDst() throws Exception {
        Locale[] locales={Locale.US,Locale.SIMPLIFIED_CHINESE,Locale.US,new Locale("ar","EG")};String[] zones={"UTC","Asia/Shanghai","America/New_York","UTC"};
        String[] strings={null,"","0","-1","1709166896","1709166896000","abc","2024-02-29 12:34","2024-02-29 12:34:56","2024-02-30 25:61:61","2024-03-10 02:30:00","2024-11-03 01:30:00","2024-02-29 trailing","999999999999999999999"};
        Long[] longs={null,-1L,0L,1709166896000L,Long.MIN_VALUE,Long.MAX_VALUE};
        long[] durations={-1,-8000,0,1,999,1000,8000,9000,9999,10000,59999,60000,68000,3599999,3600000,3661000,86400000,90000000,Long.MIN_VALUE,Long.MAX_VALUE};
        int[] integers={Integer.MIN_VALUE,-1,0,1,9,10,11,19,20,21,30,31,99,100,Integer.MAX_VALUE};
        JsonObject matrix=new JsonObject();observations.add("fixedMatrix",matrix);
        for(int config=0;config<zones.length;config++) {
            Locale.setDefault(locales[config]);TimeZone.setDefault(TimeZone.getTimeZone(zones[config]));clearFormats();JsonObject rows=new JsonObject();matrix.add(locales[config].toLanguageTag()+"/"+zones[config],rows);
            for(String name:new String[]{"getCarStrTime","getStrTime","transForDate","getMonthByLong","getOnlyMonth","getMonthTime","getWeekOfDate","getLongTimeByFullTime","getLongTimeByDay","getTimestampByDateTime","getTimestampByYearMonthDay","getTimestampByYearMDHM","getShunfengTime","strToDate"})for(int i=0;i<strings.length;i++)rows.add(name+"#"+i,probe(name,new Class<?>[]{String.class},new Object[]{strings[i]}));
            for(String name:new String[]{"getTimeShowYandM","getLongTime","getPlayTime"})for(int i=0;i<longs.length;i++)rows.add(name+"#"+i,probe(name,new Class<?>[]{Long.class},new Object[]{longs[i]}));
            for(String name:new String[]{"getTime","getDateToString","getRecentChDay"})for(int i=1;i<longs.length;i++)rows.add(name+"#"+i,probe(name,new Class<?>[]{long.class},new Object[]{longs[i]}));
            for(String name:new String[]{"getTimeShowMonthDay","getTimeShowYearMonthDay"})for(int i=0;i<longs.length;i++)rows.add(name+"#"+i,probe(name,new Class<?>[]{Date.class},new Object[]{longs[i]==null?null:new Date(longs[i])}));
            rows.add("formatTime#null",probe("formatTime",new Class<?>[]{Long.class},new Object[]{null}));for(int i=0;i<durations.length;i++)rows.add("formatTime#"+i,probe("formatTime",new Class<?>[]{Long.class},new Object[]{durations[i]}));
            for(String name:new String[]{"IntToLong","numToUpper","monthToUppder","dayToUppder"})for(int i=0;i<integers.length;i++)rows.add(name+"#"+i,probe(name,new Class<?>[]{int.class},new Object[]{integers[i]}));
            for(int i=0;i<strings.length;i++)rows.add("stampToDate#"+i,probe("stampToDate",new Class<?>[]{String.class,String.class},new Object[]{strings[i],"yyyy-MM-dd HH:mm:ss"}));
            rows.add("stampToDate#nullPattern",probe("stampToDate",new Class<?>[]{String.class,String.class},new Object[]{"0",null}));rows.add("stampToDate#badPattern",probe("stampToDate",new Class<?>[]{String.class,String.class},new Object[]{"0","INVALID"}));rows.add("stampToDate#bothNull",probe("stampToDate",new Class<?>[]{String.class,String.class},new Object[]{null,null}));
            for(String name:new String[]{"getCurrentYear","getCurrentMonth","getCurrentDay"})rows.add(name,probe(name,new Class<?>[0],new Object[0]));
            JsonObject patterns=new JsonObject();for(String f:FORMATTERS){SimpleDateFormat format=(SimpleDateFormat)((ThreadLocal<?>)field(type,f).get(null)).get();patterns.addProperty(f,format.format(new Date(-1)));}rows.add("privateFormatterValues",patterns);
        }
        assertEquals("00:00",call("formatTime",new Class<?>[]{Long.class},8000L));assertEquals("00:10",call("formatTime",new Class<?>[]{Long.class},10000L));assertEquals("01:00",call("formatTime",new Class<?>[]{Long.class},60000L));assertEquals("00:00",call("formatTime",new Class<?>[]{Long.class},86400000L));
    }

    @Test public void liveClockRulesAndCurrentDateMatchPlatform() throws Exception {
        JsonObject relative=new JsonObject();
        assertEquals(new SimpleDateFormat("yyyyMMdd",Locale.US).format(new Date()),call("getCurrentDay",new Class<?>[0]));
        Calendar calendar=Calendar.getInstance();assertEquals(String.valueOf(calendar.get(Calendar.YEAR)),call("getCurrentYear",new Class<?>[0]));assertEquals(String.valueOf(calendar.get(Calendar.MONTH)+1),call("getCurrentMonth",new Class<?>[0]));
        for(long offset:new long[]{0,-60100,-7200100,60000})relative.addProperty("getTime/now+"+offset,(String)call("getTime",new Class<?>[]{long.class},System.currentTimeMillis()+offset));
        for(long offset:new long[]{0,-60000,172800000,-86400000,-172800000,-259200000})relative.addProperty("recent/now+"+offset,(String)call("getRecentChDay",new Class<?>[]{long.class},System.currentTimeMillis()+offset));
        for(long offset:new long[]{0,-86400000,86400000})relative.addProperty("dateString/now+"+offset,(String)call("getDateToString",new Class<?>[]{long.class},System.currentTimeMillis()+offset));
        observations.add("relativeClockRules",relative);observations.addProperty("currentDateMatchesPlatform",true);
    }

    @Test public void threadLocalFormatsCaptureDefaultsAndRemainIsolated() throws Exception {
        AtomicReference<JsonObject> first=new AtomicReference<>(),cached=new AtomicReference<>(),fresh=new AtomicReference<>();AtomicReference<Throwable> failure=new AtomicReference<>();AtomicReference<Object[]> firstObjects=new AtomicReference<>(),secondObjects=new AtomicReference<>();
        Thread one=new Thread(()->{try{firstObjects.set(formatObjects());first.set(formatValues());TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"));cached.set(formatValues());}catch(Throwable error){failure.set(error);}},"date-old-default");one.start();one.join(5000);assertFalse(one.isAlive());if(failure.get()!=null)throw new AssertionError(failure.get());
        Thread two=new Thread(()->{try{secondObjects.set(formatObjects());fresh.set(formatValues());}catch(Throwable error){failure.set(error);}},"date-new-default");two.start();two.join(5000);assertFalse(two.isAlive());if(failure.get()!=null)throw new AssertionError(failure.get());
        assertEquals(first.get(),cached.get());assertNotEquals(first.get(),fresh.get());for(int i=0;i<4;i++)assertNotSame(firstObjects.get()[i],secondObjects.get()[i]);
        JsonObject row=new JsonObject();row.add("initialUtc",first.get());row.add("sameThreadAfterZoneChange",cached.get());row.add("freshShanghaiThread",fresh.get());row.addProperty("differentFormatterInstances",true);observations.add("threadLocalDefaults",row);
    }

    @Test public void independentStaticClickClocksRetainTheirLegacyBoundaries() throws Exception {
        for(int index=0;index<2;index++) {
            Field f=index==0?firstClock:secondClock;Method m=type.getMethod(index==0?"isFastClick":"isFastClick2");int window=index==0?1000:2000;
            f.setLong(null,0);long before=System.currentTimeMillis();assertFalse((Boolean)invoke(m,null));assertTrue(f.getLong(null)>=before&&f.getLong(null)<=System.currentTimeMillis());
            for(long future:new long[]{System.currentTimeMillis()+60000,Long.MIN_VALUE,Long.MAX_VALUE}){f.setLong(null,future);assertTrue((Boolean)invoke(m,null));assertEquals(future,f.getLong(null));}
            for(int boundary:new int[]{0,window}) {
                boolean found=false;long deadline=SystemClock.uptimeMillis()+5000;
                while(SystemClock.uptimeMillis()<deadline){long now=System.currentTimeMillis();f.setLong(null,now-boundary);long start=System.currentTimeMillis();boolean result=(Boolean)invoke(m,null);long end=System.currentTimeMillis();if(start==now&&end==now){assertEquals(boundary==0,result);assertEquals(now,f.getLong(null));found=true;break;}}
                assertTrue("Actual exact clock boundary",found);
            }
            f.setLong(null,0);CountDownLatch finished=new CountDownLatch(1);AtomicReference<Throwable> error=new AtomicReference<>();Thread worker=new Thread(()->{try{invoke(m,null);}catch(Throwable caught){error.set(caught);}finally{finished.countDown();}},"date-class-monitor");
            try{synchronized(type){worker.start();long deadline=SystemClock.uptimeMillis()+2000;while(worker.getState()!=Thread.State.BLOCKED&&finished.getCount()!=0&&SystemClock.uptimeMillis()<deadline)SystemClock.sleep(1);assertEquals(Thread.State.BLOCKED,worker.getState());}assertTrue(finished.await(3,TimeUnit.SECONDS));if(error.get()!=null)throw new AssertionError(error.get());}finally{worker.join(3000);}
        }
        secondClock.setLong(null,42);firstClock.setLong(null,0);call("isFastClick",new Class<?>[0]);assertEquals(42,secondClock.getLong(null));observations.addProperty("twoStaticClocksZeroFutureOverflowUpperAndMonitor",true);
    }

    @Test public void eightOriginalAdaptersRenderTimestampAndDurationFixtures() throws Exception {
        ActivityTestRule<Activity> rule=launch("com.mogu.tv.MainActivity",new Intent());JsonObject result=new JsonObject();observations.add("adapterConsumers",result);
        try {for(String name:new String[]{"HistoryAdapter","InviteListAdapter","MessageAdapter","NewCommentAdapter","ShequListAdapter","ShequLoveListAdapter","ShortCommentAdapter","VideoListsAdapter"})onMain(()->{
            Class<?> adapterType=load("com.mogu.tv.adapter."+name);Object adapter=adapterType.getConstructor().newInstance();Class<?> holderType=load("com.chad.library.adapter.base.BaseViewHolder");Method convert=null;for(Method m:adapterType.getDeclaredMethods())if(m.getName().equals("convert")&&!m.isBridge()&&m.getParameterTypes().length==2)convert=m;assertNotNull(convert);convert.setAccessible(true);
            Class<?> itemType=convert.getParameterTypes()[1];Object item=new Gson().fromJson(fixture(itemType,0),itemType);Field layout=field(load("com.chad.library.adapter.base.BaseQuickAdapter"),"mLayoutResId");int layoutId=name.equals("ShequListAdapter")?R.layout.item_friendlistlayout:layout.getInt(adapter);View view=LayoutInflater.from(rule.getActivity()).inflate(layoutId,new FrameLayout(rule.getActivity()),false);
            Object holder=holderType.getConstructor(View.class).newInstance(view);
            if(name.equals("ShequListAdapter")){Field itemTypeField=field(load("androidx.recyclerview.widget.RecyclerView$ViewHolder"),"mItemViewType");itemTypeField.setInt(holder,1);}
            invoke(convert,adapter,holder,item);String expected=name.equals("VideoListsAdapter")?"00:00":(String)call("getCarStrTime",new Class<?>[]{String.class},"1709166896");List<String> texts=new ArrayList<>();texts(view,texts);boolean found=false;for(String value:texts)if(value.contains(expected))found=true;assertTrue(name+" must show original date/duration: "+texts,found);result.addProperty(name,expected);
        });}finally{rule.finishActivity();}
    }

    @Test public void threeOriginalDetailConsumersRenderOfflineDateValues() throws Exception {
        JsonObject pages=new JsonObject();observations.add("detailConsumers",pages);
        for(String name:new String[]{"com.mogu.tv.ui.activity.MessageDetailsActivity","com.mogu.tv.ui.activity.ShequDetailsActivity","com.mogu.tv.ui.DetailsActivity"}) {
            ActivityTestRule<Activity> rule=launch(name,new Intent().putExtra("id","3001").putExtra("ids","1001"));
            try{AtomicReference<String> found=new AtomicReference<>();long deadline=SystemClock.uptimeMillis()+10000;do{onMain(()->{List<String> values=new ArrayList<>();texts(rule.getActivity().getWindow().getDecorView(),values);for(String value:values){Matcher m=Pattern.compile("[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}").matcher(value);if(m.find()){found.set(m.group());break;}}});if(found.get()!=null)break;SystemClock.sleep(100);}while(SystemClock.uptimeMillis()<deadline);assertNotNull(name+" original timestamp",found.get());pages.addProperty(name,found.get());}finally{rule.finishActivity();}
        }
    }

    @Test @SuppressWarnings("unchecked") public void mainCallbackUsesCurrentDayInRealOfflineClientRequest() throws Exception {
        ApiService previousService=ApiClient.INSTANCE.getService();Field interceptors=field(ApiClient.class,"diagnosticInterceptors");List<Interceptor> previous=(List<Interceptor>)interceptors.get(null);String host=ApiClient.INSTANCE.getBaseHost();
        Class<?> spType=load("com.kotlin.basiclib.utils.SpUtil");Object sp=spType.getField("INSTANCE").get(null);Method getPrefs=spType.getDeclaredMethod("getPrefs");getPrefs.setAccessible(true);SharedPreferences prefs=(SharedPreferences)getPrefs.invoke(sp);String key="loadshare";boolean existed=prefs.contains(key);int old=prefs.getInt(key,0);CountDownLatch captured=new CountDownLatch(1);AtomicReference<Boolean> valid=new AtomicReference<>();
        Interceptor spy=chain->{Request request=chain.request();boolean target=request.method().equals("POST")&&request.url().encodedPath().equals("/api/user/share");Boolean matches=null;if(target){try{Buffer body=new Buffer();request.body().writeTo(body);JsonObject json=new JsonParser().parse(body.readUtf8()).getAsJsonObject();String day=new SimpleDateFormat("yyyyMMdd",Locale.US).format(new Date());String raw="31337-"+day+"-mogu-"+json.get("deviceId").getAsString();byte[] digest=MessageDigest.getInstance("MD5").digest(raw.getBytes(StandardCharsets.UTF_8));StringBuilder hex=new StringBuilder();for(byte b:digest)hex.append(String.format(Locale.US,"%02x",b&255));matches=json.get("shareUserID").getAsInt()==31337&&hex.substring(1,7).equals(json.get("accessKey").getAsString());}catch(Exception error){throw new java.io.IOException(error);}}Response response=chain.proceed(request);if(target){valid.set(Boolean.TRUE.equals(matches)&&"synthetic-local".equals(response.header("X-Mushroom-Data-Source")));captured.countDown();}return response;};
        try{List<Interceptor> chain=new ArrayList<>(previous);chain.add(spy);ApiClient.setDiagnosticInterceptors(chain);ApiClient.INSTANCE.setRetrofit(host);Class<?> callback=load("com.mogu.tv.MainActivity$onStart$1");Field singleton=field(callback,"INSTANCE");Method action=callback.getDeclaredMethod("invoke",int.class,String.class,String.class);action.setAccessible(true);onMain(()->invoke(action,singleton.get(null),200,"controlled-offline","mogushare_31337"));assertTrue(captured.await(5,TimeUnit.SECONDS));assertEquals(Boolean.TRUE,valid.get());assertEquals(1,prefs.getInt(key,0));observations.addProperty("mainOnStartDateKeyUsesPlatformDayOffline",true);}
        finally{ApiClient.setDiagnosticInterceptors(previous);ApiClient.INSTANCE.setService(previousService);SharedPreferences.Editor editor=prefs.edit();if(existed)editor.putInt(key,old);else editor.remove(key);assertTrue(editor.commit());}
    }

    private JsonObject probe(String name,Class<?>[] params,Object[] args) throws Exception {Method m=type.getMethod(name,params);JsonObject result=new JsonObject();result.addProperty("returnType",m.getReturnType().getName());try{Object value=invoke(m,null,args);if(value==null)result.add("value",JsonNull.INSTANCE);else result.addProperty("value",value instanceof Date?Long.toString(((Date)value).getTime()):String.valueOf(value));}catch(RuntimeException error){result.addProperty("exception",error.getClass().getName());}return result;}
    private Object call(String name,Class<?>[] params,Object...args) throws Exception{return invoke(type.getMethod(name,params),null,args);}
    private Class<?> load(String name) throws ClassNotFoundException{return context.getClassLoader().loadClass(name);}
    private static Field field(Class<?> owner,String name) throws Exception{Field f=owner.getDeclaredField(name);f.setAccessible(true);return f;}
    private static Object invoke(Method method,Object receiver,Object...args) throws Exception{try{return method.invoke(receiver,args);}catch(InvocationTargetException error){Throwable cause=error.getCause();if(cause instanceof RuntimeException)throw (RuntimeException)cause;if(cause instanceof Error)throw (Error)cause;throw error;}}
    private void clearFormats() throws Exception{for(String name:FORMATTERS)((ThreadLocal<?>)field(type,name).get(null)).remove();}
    private Object[] formatObjects() throws Exception{Object[] values=new Object[4];for(int i=0;i<4;i++)values[i]=((ThreadLocal<?>)field(type,FORMATTERS[i]).get(null)).get();return values;}
    private JsonObject formatValues() throws Exception{JsonObject result=new JsonObject();for(String name:FORMATTERS)result.addProperty(name,((SimpleDateFormat)((ThreadLocal<?>)field(type,name).get(null)).get()).format(new Date(-1)));return result;}
    private void onMain(CheckedAction action){AtomicReference<Throwable> error=new AtomicReference<>();instrumentation.runOnMainSync(()->{try{action.run();}catch(Throwable failure){error.set(failure);}});if(error.get()!=null)throw new AssertionError(error.get());}
    private interface CheckedAction{void run() throws Exception;}
    @SuppressWarnings("unchecked") private ActivityTestRule<Activity> launch(String name,Intent intent) throws Exception{ActivityTestRule<Activity> rule=new ActivityTestRule<>((Class<Activity>)load(name),false,false);rule.launchActivity(intent.setClassName(context,name));instrumentation.waitForIdleSync();return rule;}
    private static void texts(View view,List<String> out){if(view instanceof TextView)out.add(((TextView)view).getText().toString());if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++)texts(((ViewGroup)view).getChildAt(i),out);}
    private JsonObject fixture(Class<?> item,int depth){JsonObject json=new JsonObject();if(depth>4)return json;for(Field f:item.getDeclaredFields()){if(Modifier.isStatic(f.getModifiers())||f.isSynthetic())continue;String name=f.getName(),lower=name.toLowerCase(Locale.ROOT);SerializedName serialized=f.getAnnotation(SerializedName.class);if(serialized!=null)name=serialized.value();Class<?> t=f.getType();if(t==String.class)json.addProperty(name,lower.contains("time")||lower.contains("creat")||lower.contains("updated")?"1709166896":lower.contains("duration")?"8":lower.equals("id")||lower.endsWith("_id")?"1001":"");else if(t==boolean.class||t==Boolean.class)json.addProperty(name,false);else if(t.isPrimitive()||Number.class.isAssignableFrom(t))json.addProperty(name,lower.contains("duration")?8:0);else if(t.isArray()||Collection.class.isAssignableFrom(t))json.add(name,new JsonArray());else if(Map.class.isAssignableFrom(t))json.add(name,new JsonObject());else if(t.getName().startsWith("com.mogu.tv.model."))json.add(name,fixture(t,depth+1));}return json;}
}
