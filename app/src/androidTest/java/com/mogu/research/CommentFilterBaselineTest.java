package com.mogu.research;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import com.amogu6.tv.BuildConfig;
import com.amogu6.tv.R;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mogu.tv.api.ApiClient;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kotlin.text.Regex;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Run on the original smali first, then unchanged on its source replacement.
 * Observations are synthetic inputs only; they are also pulled with device evidence.
 */
@RunWith(AndroidJUnit4.class)
public class CommentFilterBaselineTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();
    // Instrumentation must load the installed DEX, never a compile-only ABI stub.
    private final RuntimeFilter filter=new RuntimeFilter();
    private Regex regular,replce1;
    private static final JsonObject observations=new JsonObject();

    @Before public void requireOfflineAndSaveRules() {
        assertTrue("Only the explicit offline APK is allowed",BuildConfig.OFFLINE);
        regular=filter.getRegular();replce1=filter.getReplce1();
    }

    @After public void restoreRulesAndSaveObservations() throws Exception {
        filter.setRegular(regular);filter.setReplce1(replce1);
        File folder=new File(context.getExternalFilesDir(null),"validation");
        assertTrue(folder.isDirectory()||folder.mkdirs());
        try(FileOutputStream output=new FileOutputStream(new File(folder,"comment-filter-observations.json"))) {
            output.write(observations.toString().getBytes(StandardCharsets.UTF_8));
        }
    }

    @Test public void defaultRulesAndStringIdentity() {
        assertEquals("^.*\\d{5}.*$",regular.getPattern());
        assertEquals("\\s*",replce1.getPattern());
        // Confirmed observations come from the original Android implementation, not a JVM stub.
        String[] inputs={""," ","\t","\n","\r\n","蘑菇","abc","1234","12345","123456",
                "a12345b","12345\nx","x\n12345","x12345\n","\u00a0","\u3000","１２３４５","١٢٣٤٥",
                "<b>12345</b>","😀 comment","a\nb","\u2003"};
        boolean[] expected={false,false,false,false,false,true,true,true,false,false,
                false,true,true,true,false,false,false,false,false,true,true,false};
        JsonObject matrix=new JsonObject();
        for(int i=0;i<inputs.length;i++) {
            String input=new String(inputs[i]);
            boolean actual=filter.isRegularText(input);
            matrix.addProperty(input,actual);
            observations.add("defaultRules",matrix);
            assertSame("Display must preserve the String object",input,filter.getegularTxt(input));
        }
        for(int i=0;i<inputs.length;i++)assertEquals("Original default behavior for "+new Gson().toJson(inputs[i]),
                expected[i],matrix.get(inputs[i]).getAsBoolean());
        char[] chars=new char[8192];Arrays.fill(chars,'文');
        String longText=new String(chars);
        assertSame(longText,filter.getegularTxt(longText));
        observations.addProperty("longStringIdentity",true);
    }

    @Test public void mutableRulesUseWholeStringMatches() {
        Regex first=new Regex("blocked"),second=new Regex("other");
        filter.setRegular(first);filter.setReplce1(second);
        assertSame(first,filter.getRegular());assertSame(second,filter.getReplce1());
        assertFalse(filter.isRegularText("blocked"));assertFalse(filter.isRegularText("other"));
        assertTrue(filter.isRegularText("xblockedx"));assertTrue(filter.isRegularText("xotherx"));
        assertTrue(filter.isRegularText(""));
        assertSame("blocked",filter.getegularTxt("blocked"));
        observations.addProperty("mutableRulesWholeString",true);
    }

    @Test public void nullInputsRetainExceptionAndParameterDiagnostics() {
        expectNull("getegularTxt","str",()->filter.getegularTxt(null));
        expectNull("isRegularText","str",()->filter.isRegularText(null));
        expectNull("setRegular","<set-?>",()->filter.setRegular(null));
        expectNull("setReplce1","<set-?>",()->filter.setReplce1(null));
        assertSame(regular,filter.getRegular());assertSame(replce1,filter.getReplce1());
    }

    @Test public void runtimeBinaryContract() throws Exception {
        Class<?> type=filter.type;
        assertEquals(Modifier.PUBLIC|Modifier.FINAL,type.getModifiers());
        assertEquals(Object.class,type.getSuperclass());
        Constructor<?>[] constructors=type.getDeclaredConstructors();assertEquals(1,constructors.length);
        assertEquals(Modifier.PRIVATE,constructors[0].getModifiers());assertEquals(0,constructors[0].getParameterTypes().length);
        Field instance=type.getDeclaredField("INSTANCE");
        assertEquals(type,instance.getType());assertEquals(Modifier.PUBLIC|Modifier.STATIC|Modifier.FINAL,instance.getModifiers());
        assertSame(filter.instance,instance.get(null));assertEquals(3,type.getDeclaredFields().length);
        for(String name:new String[]{"regular","replce1"}) {
            Field field=type.getDeclaredField(name);assertEquals(Regex.class,field.getType());
            assertEquals(Modifier.PRIVATE|Modifier.STATIC,field.getModifiers());
        }
        checkMethod(type,"getRegular",Regex.class);checkMethod(type,"getReplce1",Regex.class);
        checkMethod(type,"setRegular",void.class,Regex.class);checkMethod(type,"setReplce1",void.class,Regex.class);
        checkMethod(type,"getegularTxt",String.class,String.class);checkMethod(type,"isRegularText",boolean.class,String.class);
        assertEquals(6,type.getDeclaredMethods().length);
        observations.addProperty("runtimeBinaryContract",true);
    }

    @Test public void bothOriginalCommentAdaptersRenderUnchangedText() {
        instrumentation.runOnMainSync(()->{
            try {
                Class<?> holderType=load("com.chad.library.adapter.base.BaseViewHolder");
                Class<?> itemType=load("com.mogu.tv.model.CommentLists$CommentItem");
                Class<?> userType=load("com.mogu.tv.model.CommentLists$User");
                Constructor<?> itemConstructor=itemType.getConstructor(String.class,String.class,int.class,userType,int.class);
                String[] names={"NewCommentAdapter","ShortCommentAdapter"};
                int[] layouts={R.layout.item_newcomment_layout,R.layout.item_shortcomment_layout};
                for(int i=0;i<names.length;i++) {
                    Class<?> adapterType=load("com.mogu.tv.adapter."+names[i]);
                    Object adapter=adapterType.getConstructor().newInstance();
                    View view=LayoutInflater.from(context).inflate(layouts[i],new FrameLayout(context),false);
                    Object holder=holderType.getConstructor(View.class).newInstance(view);
                    Method convert=adapterType.getDeclaredMethod("convert",holderType,itemType);convert.setAccessible(true);
                    for(String input:new String[]{"12345", "<b>raw</b> 😀\n12345", "ordinary", ""}) {
                        // A null user cannot equal the logged-in ID: exercise the actual filter consumer branch.
                        Object item=itemConstructor.newInstance(input,"",1,null,1001);
                        convert.invoke(adapter,holder,item);
                        TextView text=view.findViewById(R.id.tv_comment_content);
                        assertNotNull(text);
                        if(input.isEmpty())assertEquals(View.GONE,text.getVisibility());
                        else {assertEquals(View.VISIBLE,text.getVisibility());assertEquals(input,text.getText().toString());}
                    }
                    observations.addProperty(names[i],true);
                }
            } catch(ReflectiveOperationException error){throw new AssertionError(error);}
        });
    }

    @Test @SuppressWarnings("unchecked") public void originalNicknameCallbackRejectsAndAllowsOfflineChanges() throws Exception {
        Class<?> users=load("com.mogu.tv.main.UserManager");Object manager=users.getField("INSTANCE").get(null);
        users.getMethod("refreshToken",String.class).invoke(manager,RecoveryRuntime.repository().loginDemo());
        JsonObject profile=new JsonParser().parse(ApiClient.INSTANCE.getService().getUserInfo().blockingFirst().string())
                .getAsJsonObject().getAsJsonObject("data");
        Class<?> model=load("com.mogu.tv.model.UserModel");
        users.getMethod("setGlobalUser",model).invoke(manager,new Gson().fromJson(profile,model));
        String oldName=(String)users.getMethod("getName").invoke(manager);
        Class<Activity> activityType=(Class<Activity>)load("com.mogu.tv.ui.activity.EditUserInfoActivity");
        ActivityTestRule<Activity> rule=new ActivityTestRule<>(activityType,false,false);
        rule.launchActivity(new Intent().setClass(context,activityType));instrumentation.waitForIdleSync();
        try {
            Class<?> callbackType=load("com.mogu.tv.ui.activity.EditUserInfoActivity$initData$3$1");
            Constructor<?> constructor=callbackType.getDeclaredConstructor(activityType);constructor.setAccessible(true);
            Object callback=constructor.newInstance(rule.getActivity());Method getContent=callbackType.getMethod("getContent",String.class);
            long before=countUpdates();
            instrumentation.runOnMainSync(()->invoke(getContent,callback,"12345"));
            instrumentation.waitForIdleSync();
            assertEquals(before,countUpdates());assertEquals(oldName,users.getMethod("getName").invoke(manager));
            TextView name=rule.getActivity().findViewById(R.id.tv_name);assertEquals(oldName,name.getText().toString());
            String allowed="迁移基线昵称";
            if(allowed.equals(oldName))allowed="另一个基线昵称";
            final String newName=allowed;
            instrumentation.runOnMainSync(()->invoke(getContent,callback,newName));
            long deadline=SystemClock.uptimeMillis()+10000;
            while(!newName.equals(users.getMethod("getName").invoke(manager))&&SystemClock.uptimeMillis()<deadline)SystemClock.sleep(100);
            instrumentation.waitForIdleSync();
            assertEquals(newName,users.getMethod("getName").invoke(manager));assertEquals(newName,name.getText().toString());
            assertEquals(before+1,countUpdates());
            JsonObject saved=new JsonParser().parse(ApiClient.INSTANCE.getService().getUserInfo().blockingFirst().string())
                    .getAsJsonObject().getAsJsonObject("data");
            assertEquals(newName,saved.get("name").getAsString());
            observations.addProperty("nicknameRejectedWithoutRequest",true);
            observations.addProperty("nicknameAllowedOfflineCallbackAndProfile",true);
        } finally {
            rule.finishActivity();
            JsonObject restore=new JsonObject();restore.addProperty("name",oldName);
            ApiClient.INSTANCE.getService().updateUserName(RequestBody.create(MediaType.parse("application/json"),restore.toString())).blockingFirst().close();
            users.getMethod("saveUserInfo",model).invoke(manager,new Gson().fromJson(profile,model));
        }
    }

    private Class<?> load(String name) throws ClassNotFoundException {return context.getClassLoader().loadClass(name);}
    private static void checkMethod(Class<?> type,String name,Class<?> result,Class<?>...args) throws Exception {
        Method method=type.getDeclaredMethod(name,args);assertEquals(result,method.getReturnType());
        assertEquals(Modifier.PUBLIC|Modifier.FINAL,method.getModifiers());
    }
    private static void expectNull(String api,String parameter,Runnable action) {
        try {action.run();fail(api+" accepted null");}
        catch(NullPointerException error) {
            assertTrue(error.getMessage(),error.getMessage().contains("parameter "+parameter));
            observations.addProperty(api+"Null",error.getClass().getName()+": "+error.getMessage());
        }
    }
    private static void invoke(Method method,Object target,String value) {
        try {method.invoke(target,value);}catch(ReflectiveOperationException error){throw new AssertionError(error);}
    }
    private static long countUpdates() {
        long count=0;for(String line:RecoveryRuntime.auditText().split("\n"))if(line.equals("OFFLINE PUT /api/user/update"))count++;
        return count;
    }

    private final class RuntimeFilter {
        final Class<?> type;
        final Object instance;
        RuntimeFilter() {
            try {type=load("com.mogu.tv.utils.CommentFilter");instance=type.getField("INSTANCE").get(null);}
            catch(ReflectiveOperationException error){throw new AssertionError(error);}
        }
        Regex getRegular(){return (Regex)call("getRegular",null,null);}
        Regex getReplce1(){return (Regex)call("getReplce1",null,null);}
        void setRegular(Regex value){call("setRegular",Regex.class,value);}
        void setReplce1(Regex value){call("setReplce1",Regex.class,value);}
        String getegularTxt(String value){return (String)call("getegularTxt",String.class,value);}
        boolean isRegularText(String value){return (Boolean)call("isRegularText",String.class,value);}
        private Object call(String name,Class<?> argumentType,Object value) {
            try {
                return argumentType==null?type.getMethod(name).invoke(instance):type.getMethod(name,argumentType).invoke(instance,value);
            } catch(java.lang.reflect.InvocationTargetException error) {
                Throwable cause=error.getCause();
                if(cause instanceof RuntimeException)throw (RuntimeException)cause;
                if(cause instanceof Error)throw (Error)cause;
                throw new AssertionError(cause);
            } catch(ReflectiveOperationException error){throw new AssertionError(error);}
        }
    }
}
