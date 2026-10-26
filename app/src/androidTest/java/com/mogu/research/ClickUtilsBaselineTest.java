package com.mogu.research;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.BuildConfig;
import com.amogu6.tv.R;
import com.google.gson.JsonObject;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Original wall-clock calls are bounded/observed, never replaced by ABI stubs. */
@RunWith(AndroidJUnit4.class)
public class ClickUtilsBaselineTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();
    private static final JsonObject observations=new JsonObject();
    private Class<?> type;
    private Object instance;
    private Method setter,getter,plain,custom,toast;
    private long original;

    @Before public void offlineRuntimeAndPreserveState() throws Exception {
        assertTrue(BuildConfig.OFFLINE);type=load("com.kotlin.basiclib.utils.ClickUtils");instance=type.getField("INSTANCE").get(null);
        setter=type.getMethod("setLastClickTime",long.class);getter=type.getMethod("getLastClickTime");plain=type.getMethod("isDoubleClick");
        custom=type.getMethod("isDoubleClick",int.class);toast=type.getMethod("matchTimeDouble",int.class);original=last();
    }

    @After public void restoreStateAndSaveObservations() throws Exception {
        if(setter!=null)set(original);
        File dir=new File(context.getExternalFilesDir(null),"validation");assertTrue(dir.isDirectory()||dir.mkdirs());
        try(FileOutputStream out=new FileOutputStream(new File(dir,"click-utils-observations.json"))) {out.write(observations.toString().getBytes(StandardCharsets.UTF_8));}
    }

    @Test public void runtimeBinaryContract() throws Exception {
        assertEquals(Modifier.PUBLIC|Modifier.FINAL,type.getModifiers());assertEquals(Modifier.PRIVATE,type.getDeclaredConstructor().getModifiers());
        assertEquals(3,type.getDeclaredFields().length);assertEquals(5,type.getDeclaredMethods().length);
        Field singleton=type.getDeclaredField("INSTANCE");assertEquals(type,singleton.getType());assertEquals(Modifier.PUBLIC|Modifier.STATIC|Modifier.FINAL,singleton.getModifiers());
        Field space=type.getDeclaredField("SPACE_TIME");space.setAccessible(true);assertEquals(int.class,space.getType());assertEquals(Modifier.PRIVATE|Modifier.STATIC|Modifier.FINAL,space.getModifiers());assertEquals(1200,space.getInt(null));
        Field clock=type.getDeclaredField("lastClickTime");assertEquals(long.class,clock.getType());assertEquals(Modifier.PRIVATE|Modifier.STATIC,clock.getModifiers());
        assertEquals(Modifier.PUBLIC|Modifier.FINAL,getter.getModifiers());assertEquals(Modifier.PUBLIC|Modifier.FINAL,setter.getModifiers());
        JsonObject flags=new JsonObject();
        for(Method method:new Method[]{plain,custom,toast}) {assertTrue(Modifier.isPublic(method.getModifiers()));assertTrue(Modifier.isFinal(method.getModifiers()));assertFalse(Modifier.isStatic(method.getModifiers()));assertEquals(boolean.class,method.getReturnType());flags.addProperty(method.getName()+method.getParameterTypes().length,method.getModifiers());}
        observations.add("runtimeMethodModifiers",flags);observations.addProperty("binaryContract",true);
    }

    @Test public void resetRetainRollbackOverflowAndSharedWindow() throws Exception {
        reset("defaultFirst",plain,0,0);reset("defaultExpired",plain,0,System.currentTimeMillis()-60000);
        reset("defaultRollback",plain,0,System.currentTimeMillis()+60000);reset("defaultLongMinOverflow",plain,0,Long.MIN_VALUE);reset("defaultLongMax",plain,0,Long.MAX_VALUE);
        reset("customFirst",custom,10000,0);reset("customZeroWindow",custom,0,System.currentTimeMillis()-1);reset("customNegativeWindow",custom,-1,System.currentTimeMillis()-1);reset("customMinWindow",custom,Integer.MIN_VALUE,System.currentTimeMillis()-1);
        reset("customRollback",custom,10000,System.currentTimeMillis()+60000);reset("toastZeroWindow",toast,0,System.currentTimeMillis()-1);reset("toastNegativeWindow",toast,-1,System.currentTimeMillis()-1);reset("toastRollback",toast,10000,System.currentTimeMillis()+60000);
        for(Method method:new Method[]{plain,custom}) {
            long seed=System.currentTimeMillis()-1;set(seed);assertTrue(timed(method,20000));assertEquals(seed,last());
        }
        long seed=System.currentTimeMillis()-1;set(seed);assertTrue(timed(custom,Integer.MAX_VALUE));assertTrue(timed(plain,0));assertEquals(seed,last());
        observations.addProperty("positiveWindowsRetainSharedTimestamp",true);
    }

    @Test public void actualSameMillisecondHasZeroElapsedForAllThreeApis() throws Exception {
        for(Method method:new Method[]{plain,custom,toast}) {
            boolean found=false;long deadline=SystemClock.uptimeMillis()+5000;
            while(SystemClock.uptimeMillis()<deadline) {
                long seed=System.currentTimeMillis();set(seed);long before=System.currentTimeMillis();Boolean result=null;RuntimeException error=null;
                try {result=timed(method,20000);}catch(RuntimeException caught){error=caught;}
                long after=System.currentTimeMillis();
                if(before==seed&&after==seed) {if(error!=null)throw error;assertEquals(Boolean.FALSE,result);assertEquals(seed,last());found=true;break;}
            }
            assertTrue("Observe a real zero-ms interval for "+method,found);
        }
        observations.addProperty("zeroElapsedAllThreeReturnsFalse",true);
        for(Method method:new Method[]{plain,custom,toast}) {
            int window=method==plain?1200:10000;boolean found=false;long deadline=SystemClock.uptimeMillis()+5000;
            while(SystemClock.uptimeMillis()<deadline) {
                long now=System.currentTimeMillis();set(now-window);long before=System.currentTimeMillis();Boolean result=null;RuntimeException error=null;
                try {result=timed(method,window);}catch(RuntimeException caught){error=caught;}
                long after=System.currentTimeMillis();
                if(before==now&&after==now) {if(error!=null)throw error;assertEquals(Boolean.FALSE,result);assertEquals(now,last());found=true;break;}
            }
            assertTrue("Observe the exact upper boundary for "+method,found);
        }
        observations.addProperty("upperBoundaryAllThreeReturnsFalseAndResets",true);
    }

    @Test public void timedMethodsUseInstanceMonitorAndAccessorsDoNot() throws Exception {
        for(Method method:new Method[]{plain,custom,toast}) {
            set(0);AtomicReference<Throwable> failure=new AtomicReference<>();CountDownLatch finished=new CountDownLatch(1);
            Thread worker=new Thread(()->{try {assertFalse(timed(method,0));}catch(Throwable error){failure.set(error);}finally{finished.countDown();}},"migration-click-monitor");
            try {
                synchronized(instance) {
                    worker.start();long deadline=SystemClock.uptimeMillis()+2000;
                    while(worker.getState()!=Thread.State.BLOCKED&&finished.getCount()!=0&&SystemClock.uptimeMillis()<deadline)SystemClock.sleep(1);
                    assertEquals("The original API must block on its singleton",Thread.State.BLOCKED,worker.getState());assertEquals(1,finished.getCount());
                }
                assertTrue(finished.await(3,TimeUnit.SECONDS));if(failure.get()!=null)throw new AssertionError(failure.get());
            } finally {worker.join(3000);}
        }
        CountDownLatch finished=new CountDownLatch(1);AtomicReference<Throwable> failure=new AtomicReference<>();
        Thread worker=new Thread(()->{try{set(42);assertEquals(42,last());}catch(Throwable error){failure.set(error);}finally{finished.countDown();}},"migration-click-accessors");
        try {synchronized(instance){worker.start();assertTrue("Accessors are not synchronized",finished.await(2,TimeUnit.SECONDS));}if(failure.get()!=null)throw new AssertionError(failure.get());}
        finally {worker.join(3000);}
        observations.addProperty("threeInstanceMonitorsAndUnprotectedAccessors",true);
    }

    @Test public void toastWithoutLooperRetainsStateAndReleasesMonitor() throws Exception {
        AtomicReference<Throwable> result=new AtomicReference<>();AtomicReference<Long> seed=new AtomicReference<>();
        Thread worker=new Thread(()->{try {seed.set(System.currentTimeMillis()-1);set(seed.get());timed(toast,20000);}catch(Throwable error){result.set(error);}},"migration-no-looper");
        worker.start();worker.join(5000);assertFalse(worker.isAlive());assertNotNull("Original Toast needs a Looper",result.get());
        boolean platformToast=false;for(StackTraceElement frame:result.get().getStackTrace())if(frame.getClassName().equals("android.widget.Toast"))platformToast=true;
        observations.addProperty("noLooperToastException",result.get().getClass().getName());observations.addProperty("noLooperToastMessage",result.get().getMessage());observations.addProperty("noLooperExceptionFromPlatformToast",platformToast);
        assertTrue("Exception must come from the actual platform Toast",platformToast);assertEquals(NullPointerException.class,result.get().getClass());assertEquals(seed.get().longValue(),last());
        Thread release=new Thread(()->{try{timed(custom,0);}catch(Throwable error){result.set(error);}},"migration-monitor-after-error");release.start();release.join(3000);assertFalse("Exception must release the monitor",release.isAlive());
        observations.addProperty("noLooperToastException",result.get().getClass().getName());observations.addProperty("toastExceptionRetainsStateAndReleasesMonitor",true);
    }

    @Test public void mainLooperToastIsVisibleAndRetainsTimestamp() throws Exception {
        ActivityTestRule<Activity> rule=launch("com.mogu.tv.MainActivity");
        try {
            AccessibilityEvent event=instrumentation.getUiAutomation().executeAndWaitForEvent(()->onMain(()->{
                long seed=System.currentTimeMillis()-1;set(seed);assertTrue(timed(toast,10000));assertEquals(seed,last());
            }),e->e.getEventType()==AccessibilityEvent.TYPE_NOTIFICATION_STATE_CHANGED&&Pattern.compile("还需等待[0-9]秒，才能继续发言").matcher(e.getText().toString()).find(),10000);
            try {Matcher match=Pattern.compile("还需等待([0-9]+)秒，才能继续发言").matcher(event.getText().toString());assertTrue(match.find());int seconds=Integer.parseInt(match.group(1));assertTrue(seconds>=0&&seconds<10);observations.addProperty("mainToastText",match.group());}
            finally {event.recycle();}
        } finally {rule.finishActivity();}
    }

    @Test public void allFourOriginalConsumersRejectAndAllowTheirActions() throws Exception {
        // Real Loading->Main creates the original category/Fragment state.
        Instrumentation.ActivityMonitor monitor=instrumentation.addMonitor("com.mogu.tv.MainActivity",null,false);
        ActivityTestRule<Activity> loading=launch("com.mogu.tv.ui.LoadingActivity");Activity main=instrumentation.waitForMonitorWithTimeout(monitor,15000);instrumentation.removeMonitor(monitor);assertNotNull(main);
        try {
            Class<?> routes=load("com.mogu.tv.common.arouter.ArouterUtils");Object router=routes.getField("INSTANCE").get(null);Method ad=routes.getMethod("clickAd",String.class);
            long before=count("/api/adclick");onMain(()->{set(System.currentTimeMillis()-1);invoke(ad,router,"migration-click");});SystemClock.sleep(200);assertEquals(before,count("/api/adclick"));
            onMain(()->{set(0);invoke(ad,router,"migration-click");});waitCount("/api/adclick",before+1);observations.addProperty("adRejectedAndAllowedRequest",true);
            ActivityTestRule<Activity> qiu=launch("com.mogu.tv.ui.activity.QiuPianActivity");
            try {
                long deadline=SystemClock.uptimeMillis()+5000;while(count("/api/captcha")==0&&SystemClock.uptimeMillis()<deadline)SystemClock.sleep(20);SystemClock.sleep(200);
                Class<?> callback=load("com.mogu.tv.ui.activity.QiuPianActivity$initData$1");Constructor<?> constructor=callback.getDeclaredConstructor(qiu.getActivity().getClass());constructor.setAccessible(true);Object listener=constructor.newInstance(qiu.getActivity());Method click=callback.getMethod("invoke",View.class);View image=qiu.getActivity().findViewById(R.id.iv_verify);assertNotNull(image);
                long captcha=count("/api/captcha");onMain(()->{set(System.currentTimeMillis()-1);invoke(click,listener,image);});SystemClock.sleep(200);assertEquals(captcha,count("/api/captcha"));
                onMain(()->{set(0);invoke(click,listener,image);});waitCount("/api/captcha",captcha+1);observations.addProperty("captchaRejectedAndAllowedRefresh",true);SystemClock.sleep(300);
            } finally {qiu.finishActivity();}
            instrumentation.waitForIdleSync();
            Fragment home=(Fragment)main.getClass().getMethod("getCurrentFragment").invoke(main);assertEquals("HomeFragment",home.getClass().getSimpleName());
            Object binding=home.getClass().getMethod("getBinding").invoke(home);ViewPager2 pager=(ViewPager2)binding.getClass().getField("viewPager").get(binding);
            for(String name:new String[]{"ListMainFragment","ListIndexTabFragment"}) {
                List<?> fragments=(List<?>)home.getClass().getMethod("getMFragments").invoke(home);Fragment selected=null;int position=-1;
                for(int i=0;i<fragments.size();i++)if(fragments.get(i).getClass().getSimpleName().equals(name)){selected=(Fragment)fragments.get(i);position=i;break;}
                assertNotNull(name,selected);Fragment target=selected;int page=position;onMain(()->pager.setCurrentItem(page,false));
                long deadline=SystemClock.uptimeMillis()+10000;Object[] adapter={null},row={null};View[] action={null};
                do {
                    onMain(()->{if(target.getView()!=null){adapter[0]=target.getClass().getMethod("getMAdapter").invoke(target);List<?> data=(List<?>)adapter[0].getClass().getMethod("getData").invoke(adapter[0]);if(!data.isEmpty()){row[0]=data.get(0);action[0]=target.getView().findViewById(R.id.ll_live_change);}}});
                    if(row[0]!=null&&action[0]!=null)break;SystemClock.sleep(100);
                }while(SystemClock.uptimeMillis()<deadline);
                assertNotNull(name+" data",row[0]);assertNotNull(name+" refresh view",action[0]);
                String methodName=name.equals("ListMainFragment")?"initLists$lambda-4":"initView$lambda-3";
                Method callback=target.getClass().getDeclaredMethod(methodName,target.getClass(),load("com.chad.library.adapter.base.BaseQuickAdapter"),View.class,int.class);callback.setAccessible(true);
                int oldPage=((Number)row[0].getClass().getMethod("getPage").invoke(row[0])).intValue();
                onMain(()->{set(System.currentTimeMillis()-1);invoke(callback,null,target,adapter[0],action[0],0);});assertEquals(oldPage,((Number)row[0].getClass().getMethod("getPage").invoke(row[0])).intValue());
                onMain(()->{set(0);invoke(callback,null,target,adapter[0],action[0],0);});int newPage=((Number)row[0].getClass().getMethod("getPage").invoke(row[0])).intValue();assertEquals(oldPage+1>=5?1:oldPage+1,newPage);
                JsonObject change=new JsonObject();change.addProperty("before",oldPage);change.addProperty("after",newPage);change.addProperty("rejectedPreservesPage",true);observations.add(name,change);SystemClock.sleep(300);
            }
        } finally {Activity finished=main;instrumentation.runOnMainSync(finished::finish);loading.finishActivity();}
    }

    private void reset(String name,Method method,int window,long previous) throws Exception {set(previous);long before=System.currentTimeMillis();assertFalse(timed(method,window));long after=System.currentTimeMillis();long updated=last();assertTrue(name,updated>=before&&updated<=after);observations.addProperty(name+"ResetsWithinCall",true);}
    private void set(long value) throws Exception {invoke(setter,instance,value);}
    private long last() throws Exception {return ((Number)invoke(getter,instance)).longValue();}
    private boolean timed(Method method,int window) throws Exception {return (Boolean)(method.getParameterTypes().length==0?invoke(method,instance):invoke(method,instance,window));}
    private Class<?> load(String name) throws ClassNotFoundException {return context.getClassLoader().loadClass(name);}
    private static Object invoke(Method method,Object receiver,Object...args) throws Exception {try{return method.invoke(receiver,args);}catch(InvocationTargetException error){Throwable c=error.getCause();if(c instanceof RuntimeException)throw (RuntimeException)c;if(c instanceof Error)throw (Error)c;throw error;}}
    private void onMain(CheckedAction action){AtomicReference<Throwable> failure=new AtomicReference<>();instrumentation.runOnMainSync(()->{try{action.run();}catch(Throwable error){failure.set(error);}});if(failure.get()!=null)throw new AssertionError(failure.get());}
    private interface CheckedAction{void run() throws Exception;}
    @SuppressWarnings("unchecked") private ActivityTestRule<Activity> launch(String name) throws Exception {ActivityTestRule<Activity> rule=new ActivityTestRule<>((Class<Activity>)load(name),false,false);rule.launchActivity(new Intent().setClassName(context,name));instrumentation.waitForIdleSync();return rule;}
    private static long count(String path){long total=0;for(String line:RecoveryRuntime.auditText().split("\n"))if(line.equals("OFFLINE GET "+path))total++;return total;}
    private static void waitCount(String path,long expected){long deadline=SystemClock.uptimeMillis()+5000;while(count(path)<expected&&SystemClock.uptimeMillis()<deadline)SystemClock.sleep(20);assertEquals(expected,count(path));}
}
