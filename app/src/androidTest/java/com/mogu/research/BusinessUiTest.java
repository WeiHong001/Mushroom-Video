package com.mogu.research;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import com.amogu6.tv.BuildConfig;
import com.amogu6.tv.R;
import com.mogu.tv.view.DYLoadingView;
import com.mogu.tv.view.LikeLayout;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;
import static org.junit.Assume.assumeTrue;

@RunWith(AndroidJUnit4.class)
public class BusinessUiTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();

    @SuppressWarnings("unchecked")
    private ActivityTestRule<Activity> launch(String name,Intent extras) throws Exception {
        Class<Activity> type=(Class<Activity>)context.getClassLoader().loadClass(name);
        ActivityTestRule<Activity> rule=new ActivityTestRule<>(type,false,false);
        extras.setClassName(context,name);
        rule.launchActivity(extras);
        instrumentation.waitForIdleSync();
        return rule;
    }

    @Test public void allFiveOriginalTabsNavigateAndRender() throws Exception {
        assumeTrue(BuildConfig.OFFLINE);
        ActivityTestRule<Activity> rule=launch("com.mogu.tv.MainActivity",new Intent());
        try {
            Activity activity=rule.getActivity();
            String[] expected={"HomeFragment","ShortIndexFragment","JpHomeFragment","ShequFragment","MineFragment"};
            for(int i=0;i<expected.length;i++) {
                int tab=i;
                instrumentation.runOnMainSync(()->{
                    try {activity.getClass().getMethod("setCurrentTab",int.class).invoke(activity,tab);}
                    catch(Exception error){throw new AssertionError(error);}
                });
                SystemClock.sleep(i==1?4000:1500);
                instrumentation.waitForIdleSync();
                assertFalse(activity.isFinishing());
                Fragment fragment=(Fragment)activity.getClass().getMethod("getCurrentFragment").invoke(activity);
                assertEquals(expected[i],fragment.getClass().getSimpleName());
                assertTrue(fragment.isAdded());
                assertNotNull(fragment.getView());
                screenshot("tab-"+i+"-"+expected[i]);
            }
        } finally {rule.finishActivity();}
    }

    @Test public void normalAndEncryptedDetailsActuallyAdvancePlayback() throws Exception {
        assumeTrue(BuildConfig.OFFLINE);
        for(String id:new String[]{"1001","1002"}) {
            ActivityTestRule<Activity> rule=launch("com.mogu.tv.ui.DetailsActivity",new Intent().putExtra("ids",id));
            try {
                GSYVideoPlayer[] player={null};
                long deadline=SystemClock.uptimeMillis()+20000;
                while(SystemClock.uptimeMillis()<deadline) {
                    instrumentation.runOnMainSync(()->player[0]=findPlayer(rule.getActivity().getWindow().getDecorView()));
                    if(player[0]!=null && player[0].getCurrentState()==2)break;
                    SystemClock.sleep(250);
                }
                assertNotNull("Original DetailsVideoView",player[0]);
                assertEquals("Real player must enter PLAYING for "+id,2,player[0].getCurrentState());
                long[] clock=new long[2];
                instrumentation.runOnMainSync(()->clock[0]=player[0].getCurrentPositionWhenPlaying());
                long progressDeadline=SystemClock.uptimeMillis()+10000;
                do {
                    SystemClock.sleep(200);
                    instrumentation.runOnMainSync(()->clock[1]=player[0].getCurrentPositionWhenPlaying());
                } while(clock[1]<clock[0]+750 && SystemClock.uptimeMillis()<progressDeadline);
                assertTrue("Playback clock advances for "+id+": "+clock[0]+" -> "+clock[1],clock[1]>=clock[0]+750);
                screenshot("playback-"+id);
                instrumentation.runOnMainSync(()->player[0].onVideoPause());
                assertEquals(5,player[0].getCurrentState());
                instrumentation.runOnMainSync(()->player[0].onVideoResume());
                long resumeDeadline=SystemClock.uptimeMillis()+10000;
                while(player[0].getCurrentState()!=2 && SystemClock.uptimeMillis()<resumeDeadline)SystemClock.sleep(100);
                assertEquals(2,player[0].getCurrentState());
            } finally {rule.finishActivity();}
        }
    }

    @Test public void loadingDrawingAndLikeGesturePreserveTheirStateMachines() throws Exception {
        AtomicInteger likes=new AtomicInteger(),pauses=new AtomicInteger();
        LikeLayout[] like={null};
        instrumentation.runOnMainSync(()->{
            DYLoadingView loading=new DYLoadingView(context);
            loading.stop();loading.setColors(Color.RED,Color.BLUE,Color.BLACK);
            loading.measure(View.MeasureSpec.makeMeasureSpec(240,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(100,View.MeasureSpec.EXACTLY));
            loading.layout(0,0,240,100);
            try {
                java.lang.reflect.Field fraction=DYLoadingView.class.getDeclaredField("fraction");fraction.setAccessible(true);
                fraction.setFloat(loading,0.5f);
                Bitmap frame=Bitmap.createBitmap(240,100,Bitmap.Config.ARGB_8888);loading.draw(new Canvas(frame));
                assertEquals(Color.BLACK,frame.getPixel(120,50));frame.recycle();
            } catch(ReflectiveOperationException error){throw new AssertionError(error);}
            like[0]=new LikeLayout(context);
            like[0].setOnLikeListener(()->{likes.incrementAndGet();return Unit.INSTANCE;});
            like[0].setOnPauseListener(()->{pauses.incrementAndGet();return Unit.INSTANCE;});
            touch(like[0]);touch(like[0]);
        });
        SystemClock.sleep(650);
        assertEquals(1,likes.get());assertEquals(0,pauses.get());
        instrumentation.runOnMainSync(()->touch(like[0]));
        SystemClock.sleep(650);
        assertEquals(1,pauses.get());
        instrumentation.runOnMainSync(()->{touch(like[0]);like[0].onPause();});
        SystemClock.sleep(650);
        assertEquals("Lifecycle cancellation suppresses pending single taps",1,pauses.get());
    }

    @Test public void shortVideoSwipeChangesPageAndKeepsOnePlayerActive() throws Exception {
        assumeTrue(BuildConfig.OFFLINE);
        ActivityTestRule<Activity> rule=launch("com.mogu.tv.MainActivity",new Intent());
        try {
            Activity activity=rule.getActivity();
            instrumentation.runOnMainSync(()->{
                try {activity.getClass().getMethod("setCurrentTab",int.class).invoke(activity,1);}
                catch(Exception error){throw new AssertionError(error);}
            });
            SystemClock.sleep(3500);
            androidx.viewpager2.widget.ViewPager2[] pager={null};int[] frame=new int[4];int[] page=new int[2];
            instrumentation.runOnMainSync(()->{
                pager[0]=findVerticalPager(activity.getWindow().getDecorView());assertNotNull(pager[0]);
                int[] location=new int[2];pager[0].getLocationOnScreen(location);frame[0]=location[0];frame[1]=location[1];frame[2]=pager[0].getWidth();frame[3]=pager[0].getHeight();page[0]=pager[0].getCurrentItem();
            });
            long down=SystemClock.uptimeMillis();float x=frame[0]+frame[2]*0.5f;
            for(int i=0;i<=15;i++) {
                int action=i==0?MotionEvent.ACTION_DOWN:i==15?MotionEvent.ACTION_UP:MotionEvent.ACTION_MOVE;
                float y=frame[1]+frame[3]*(0.8f-0.6f*i/15f);
                MotionEvent event=MotionEvent.obtain(down,SystemClock.uptimeMillis(),action,x,y,0);instrumentation.sendPointerSync(event);event.recycle();SystemClock.sleep(20);
            }
            SystemClock.sleep(1800);
            instrumentation.runOnMainSync(()->page[1]=pager[0].getCurrentItem());assertEquals(page[0]+1,page[1]);
            int[] playing={0};long deadline=SystemClock.uptimeMillis()+10000;
            do {SystemClock.sleep(150);instrumentation.runOnMainSync(()->playing[0]=playingCount(activity.getWindow().getDecorView()));}while(playing[0]==0 && SystemClock.uptimeMillis()<deadline);
            assertEquals("Only the current short-video page plays",1,playing[0]);screenshot("short-swipe");
        } finally {rule.finishActivity();}
    }

    @Test public void originalRouterOpensDetailsAndPlaybackRecordsHistory() throws Exception {
        assumeTrue(BuildConfig.OFFLINE);
        ActivityTestRule<Activity> rule=launch("com.mogu.tv.MainActivity",new Intent());
        Instrumentation.ActivityMonitor monitor=instrumentation.addMonitor("com.mogu.tv.ui.DetailsActivity",null,false);
        Activity[] details={null};
        try {
            Class<?> users=context.getClassLoader().loadClass("com.mogu.tv.main.UserManager");
            users.getMethod("refreshToken",String.class).invoke(users.getField("INSTANCE").get(null),RecoveryRuntime.repository().loginDemo());
            instrumentation.runOnMainSync(()->com.alibaba.android.arouter.launcher.ARouter.getInstance().build("/module/details").withString("ids","1001").navigation(rule.getActivity()));
            details[0]=instrumentation.waitForMonitorWithTimeout(monitor,10000);
            assertNotNull("The restored generated route table must open details",details[0]);
            GSYVideoPlayer[] player={null};long deadline=SystemClock.uptimeMillis()+20000;
            do {
                instrumentation.runOnMainSync(()->player[0]=findPlayer(details[0].getWindow().getDecorView()));
                if(player[0]!=null && player[0].getCurrentState()==2)break;
                SystemClock.sleep(200);
            }while(SystemClock.uptimeMillis()<deadline);
            assertNotNull(player[0]);assertEquals(2,player[0].getCurrentState());
            String history=com.mogu.tv.api.ApiClient.INSTANCE.getService().getHistory(new java.util.HashMap<>()).blockingFirst().string();
            assertTrue("The actual playback callback adds local history",history.contains("1001"));
            screenshot("flow-router-details");
        } finally {
            instrumentation.removeMonitor(monitor);
            if(details[0]!=null)instrumentation.runOnMainSync(()->details[0].finish());
            rule.finishActivity();
        }
    }

    @Test public void pageUnderTest() throws Exception {
        assumeTrue(BuildConfig.OFFLINE);
        String route=InstrumentationRegistry.getArguments().getString("route");
        assumeTrue(route!=null);
        if(!route.endsWith("RegistActivity") && !route.endsWith("ForgetPassWordActivity")) {
            Class<?> users=context.getClassLoader().loadClass("com.mogu.tv.main.UserManager");
            users.getMethod("refreshToken",String.class).invoke(users.getField("INSTANCE").get(null),RecoveryRuntime.repository().loginDemo());
        }
        Intent intent=new Intent();
        intent.putExtra("ids","1001").putExtra("id","3001").putExtra("name","合成样本").putExtra("type",1);
        intent.putExtra("comments","1").putExtra("content","离线研究样例").putExtra("favorites","0").putExtra("isZan","0");
        intent.putExtra("photo",RecoveryRuntime.mediaBase()+"images/cover.png").putExtra("playUrl",RecoveryRuntime.mediaBase()+"media/sample.m3u8");
        if(route.endsWith("UserInfoActivity")||route.endsWith("SheQuUserActivity"))intent.putExtra("id","9001");
        if(route.endsWith("ImglookActivity")) {
            java.util.ArrayList<String> images=new java.util.ArrayList<>();images.add(RecoveryRuntime.mediaBase()+"images/cover.png");intent.putStringArrayListExtra("url",images);
        } else intent.putExtra("url","about:blank");
        if(route.endsWith("DetailVipVideoActivity")) {
            Class<?> model=context.getClassLoader().loadClass("com.mogu.tv.model.VipVideoList$Data");
            Object data=new com.google.gson.Gson().fromJson("{\"ID\":4001,\"title\":\"精品合成样例\",\"cover\":\""+RecoveryRuntime.mediaBase()+"images/cover.png\",\"introduce\":\"离线研究\",\"play_url\":\""+RecoveryRuntime.mediaBase()+"media/sample.m3u8\",\"unlock\":true}",model);
            Class<?> activity=context.getClassLoader().loadClass(route);
            for(java.lang.reflect.Field field:activity.getFields()) if(java.lang.reflect.Modifier.isStatic(field.getModifiers()) && field.getType().getName().endsWith("$Companion")) {
                Object companion=field.get(null);companion.getClass().getMethod("setVipData",model).invoke(companion,data);
            }
        }
        ActivityTestRule<Activity> rule=launch(route,intent);
        try {SystemClock.sleep(1500);instrumentation.waitForIdleSync();assertFalse(rule.getActivity().isDestroyed());screenshot("page-"+route.substring(route.lastIndexOf('.')+1));}
        finally {rule.finishActivity();}
    }

    private static void touch(LikeLayout view) {
        long now=SystemClock.uptimeMillis();MotionEvent event=MotionEvent.obtain(now,now,MotionEvent.ACTION_DOWN,80,80,0);
        view.onTouchEvent(event);event.recycle();
    }
    private static GSYVideoPlayer findPlayer(View view) {
        if(view instanceof GSYVideoPlayer)return (GSYVideoPlayer)view;
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++) {GSYVideoPlayer player=findPlayer(((ViewGroup)view).getChildAt(i));if(player!=null)return player;}
        return null;
    }
    private static androidx.viewpager2.widget.ViewPager2 findVerticalPager(View view) {
        if(view instanceof androidx.viewpager2.widget.ViewPager2 && ((androidx.viewpager2.widget.ViewPager2)view).getOrientation()==1)return (androidx.viewpager2.widget.ViewPager2)view;
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++){androidx.viewpager2.widget.ViewPager2 pager=findVerticalPager(((ViewGroup)view).getChildAt(i));if(pager!=null)return pager;}
        return null;
    }
    private static int playingCount(View view) {
        int count=view instanceof GSYVideoPlayer && ((GSYVideoPlayer)view).getCurrentState()==2?1:0;
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++)count+=playingCount(((ViewGroup)view).getChildAt(i));
        return count;
    }
    private void screenshot(String name) throws Exception {
        File folder=new File(context.getExternalFilesDir(null),"validation");assertTrue(folder.isDirectory()||folder.mkdirs());
        Bitmap bitmap=instrumentation.getUiAutomation().takeScreenshot();assertNotNull(bitmap);
        try(FileOutputStream stream=new FileOutputStream(new File(folder,name+".png"))){assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG,100,stream));}
        bitmap.recycle();
    }
}
