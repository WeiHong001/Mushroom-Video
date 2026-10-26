package com.mogu.research;

import android.os.Process;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import com.google.gson.JsonArray;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

@RunWith(AndroidJUnit4.class)
public class PlayDataBaselineTest extends PlayDataTestSupport {
    @Test public void runtimeBinaryContract() throws Exception {
        assertEquals(Modifier.PUBLIC|Modifier.FINAL,utility.getModifiers());assertEquals(Modifier.PUBLIC|Modifier.FINAL,model.getModifiers());
        assertEquals(Modifier.PUBLIC|Modifier.STATIC|Modifier.FINAL,vod.getModifiers());
        assertEquals(Modifier.PRIVATE,utility.getDeclaredConstructor().getModifiers());assertEquals(Modifier.PUBLIC,model.getConstructor().getModifiers());assertEquals(Modifier.PUBLIC,vod.getConstructor().getModifiers());
        assertEquals(Modifier.PUBLIC|Modifier.STATIC|Modifier.FINAL,utility.getDeclaredField("INSTANCE").getModifiers());
        assertEquals(Modifier.PRIVATE|Modifier.STATIC,cache.getModifiers());assertEquals(model,cache.getType());
        method(utility,"getPlayData",vod,String.class);method(utility,"savePlayData",void.class,String.class,long.class);
        method(model,"getDatas",ArrayList.class);method(model,"setDatas",void.class,ArrayList.class);
        ParameterizedType generic=(ParameterizedType)model.getMethod("getDatas").getGenericReturnType();assertEquals(vod,generic.getActualTypeArguments()[0]);
        for(String name:new String[]{"Id","Name"}) {method(vod,"get"+name,String.class);method(vod,"set"+name,void.class,String.class);}
        method(vod,"getProgress",Long.class);method(vod,"setProgress",void.class,Long.class);
        assertEquals(Modifier.PUBLIC,vod.getDeclaredMethod("equals",Object.class).getModifiers());
        assertEquals(2,utility.getDeclaredMethods().length);assertEquals(2,model.getDeclaredMethods().length);assertEquals(7,vod.getDeclaredMethods().length);
        assertEquals(2,utility.getDeclaredFields().length);assertEquals(1,model.getDeclaredFields().length);assertEquals(3,vod.getDeclaredFields().length);
        for(Field field:model.getDeclaredFields())assertEquals(Modifier.PRIVATE,field.getModifiers());
        for(Field field:vod.getDeclaredFields())assertEquals(Modifier.PRIVATE,field.getModifiers());
        assertEquals(0,model.getInterfaces().length);assertEquals(0,vod.getInterfaces().length);
        observations.addProperty("binaryContract",true);
    }

    @Test public void modelDefaultsNullSettersAndIdOnlyEquality() throws Exception {
        Object outer=model.getConstructor().newInstance(),a=vod.getConstructor().newInstance(),b=vod.getConstructor().newInstance();
        assertTrue(((ArrayList<?>)property(outer,"getDatas")).isEmpty());
        assertEquals(new JsonParser().parse("{\"id\":\"\",\"name\":\"\",\"progress\":0}"),value(a));
        observations.add("defaultVod",value(a));
        set(a,"setId",String.class,"same");set(a,"setName",String.class,"first");set(a,"setProgress",Long.class,1L);
        set(b,"setId",String.class,"same");set(b,"setName",String.class,"second");set(b,"setProgress",Long.class,99L);
        assertTrue(a.equals(b));ArrayList<Object> values=new ArrayList<>();values.add(a);values.add(b);assertTrue(values.contains(b));assertEquals(0,values.indexOf(b));
        set(b,"setId",String.class,"SAME");assertFalse(a.equals(b));assertFalse(a.equals("same"));assertFalse(a.equals(null));
        set(a,"setId",String.class,null);set(b,"setId",String.class,null);assertTrue(a.equals(b));
        set(a,"setName",String.class,null);set(a,"setProgress",Long.class,null);assertNull(property(a,"getName"));assertNull(property(a,"getProgress"));
        set(outer,"setDatas",ArrayList.class,null);assertNull(property(outer,"getDatas"));
        assertEquals("{}",gson.toJson(a));assertEquals("{}",gson.toJson(outer));
        observations.addProperty("idOnlyEqualityFirstIndex",true);observations.addProperty("nullableSettersAndGsonNullOmission",true);
    }

    @Test public void legacyJsonCorpusAndOriginalFailures() throws Exception {
        String[] fixtures={"","null","{}","{\"datas\":null}","{\"datas\":[]}",
                "{\"datas\":[{\"id\":\"legacy\",\"name\":\"旧样本\",\"progress\":1234}],\"future\":true}",
                "{\"datas\":[{\"id\":\"legacy\"}]}","{\"datas\":[{\"id\":\"legacy\",\"name\":null,\"progress\":null}]}",
                "{\"datas\":[{\"id\":null,\"progress\":12}]}","{\"datas\":[null,{\"id\":\"legacy\",\"progress\":1234}]}","{","[]",
                "{\"datas\":[{\"id\":\" legacy \",\"progress\":1234}]}"};
        JsonArray rows=new JsonArray();observations.add("legacyJson",rows);
        for(int i=0;i<fixtures.length;i++) {
            stored(fixtures[i],true);JsonObject row=new JsonObject();row.addProperty("fixture",fixtures[i]);
            try {JsonObject result=value(get(i==8?"0":"legacy"));row.add("result",result==null?JsonNull.INSTANCE:result);}
            catch(RuntimeException error){row.addProperty("exception",error.getClass().getName());}
            rows.add(row);
        }
        for(int i:new int[]{0,1,2,3,4,8,12})assertEquals("fixture "+i,JsonNull.INSTANCE,rows.get(i).getAsJsonObject().get("result"));
        assertEquals("旧样本",rows.get(5).getAsJsonObject().getAsJsonObject("result").get("name").getAsString());
        assertEquals(0,rows.get(6).getAsJsonObject().getAsJsonObject("result").get("progress").getAsLong());
        assertEquals(JsonNull.INSTANCE,rows.get(7).getAsJsonObject().getAsJsonObject("result").get("progress"));
        assertEquals(NullPointerException.class.getName(),rows.get(9).getAsJsonObject().get("exception").getAsString());
        for(int i:new int[]{10,11})assertEquals(JsonSyntaxException.class.getName(),rows.get(i).getAsJsonObject().get("exception").getAsString());
    }

    @Test public void cacheStaysStaleUntilSaveReadsFreshStorage() throws Exception {
        stored("{\"datas\":[{\"id\":\"legacy\",\"name\":\"old\",\"progress\":1234}]}",true);
        Object first=get("legacy"),oldCache=cache.get(null);assertNotNull(first);
        stored("{\"datas\":[{\"id\":\"legacy\",\"name\":\"fresh\",\"progress\":9000}]}",false);
        assertSame(first,get("legacy"));assertSame(oldCache,cache.get(null));assertEquals(1234L,property(first,"getProgress"));
        save("legacy",9999);Object updated=get("legacy");assertNotSame(first,updated);assertEquals("fresh",property(updated,"getName"));assertEquals(9999L,property(updated,"getProgress"));
        observations.add("freshStorageAfterSave",value(updated));observations.addProperty("readCacheRemainsStale",true);
    }

    @Test public void saveUpdatesFirstEqualEntryAndPreservesOldFormat() throws Exception {
        stored("{\"datas\":[{\"id\":\"dup\",\"name\":\"保留名\",\"progress\":1},{\"id\":\"dup\",\"name\":\"second\",\"progress\":2}],\"future\":true}",true);
        save("dup",300);JsonObject written=persisted();JsonArray entries=written.getAsJsonArray("datas");
        assertEquals(2,entries.size());assertEquals(300,entries.get(0).getAsJsonObject().get("progress").getAsLong());assertEquals(2,entries.get(1).getAsJsonObject().get("progress").getAsLong());
        assertEquals("保留名",entries.get(0).getAsJsonObject().get("name").getAsString());assertFalse(written.has("future"));
        observations.add("updateFirstDuplicate",written);
        for(String fixture:new String[]{"", "null", "{}", "{\"datas\":null}"}) {
            stored(fixture,true);save("negative",-10);JsonObject state=persisted();assertEquals(-10,state.getAsJsonArray("datas").get(0).getAsJsonObject().get("progress").getAsLong());
            observations.add("negativeAfterEmptyState",state);
        }
    }

    @Test public void zeroProgressAndNullContractsPreserveOriginalOrdering() throws Exception {
        stored("{\"datas\":[{\"id\":\"keep\",\"progress\":77}]}",true);Object keep=get("keep"),oldCache=cache.get(null);
        stored("{",false);save("ignored",0);assertEquals("{",prefs.getString(key,""));assertSame(oldCache,cache.get(null));assertSame(keep,get("keep"));
        exception("nullIdZeroProgress",NullPointerException.class,()->save(null,0));exception("nullLookupId",NullPointerException.class,()->get(null));
        exception("malformedSave",JsonSyntaxException.class,()->save("x",1));cache.set(null,null);exception("malformedGet",JsonSyntaxException.class,()->get("x"));
        observations.addProperty("zeroProgressDoesNotParseOrChangeCache",true);
    }

    private static void method(Class<?> owner,String name,Class<?> result,Class<?>...args) throws Exception {
        Method m=owner.getDeclaredMethod(name,args);assertEquals(result,m.getReturnType());assertEquals(Modifier.PUBLIC|Modifier.FINAL,m.getModifiers());
    }

    @RunWith(AndroidJUnit4.class)
    public static class RestartSeed extends PlayDataTestSupport {
        @Test public void persistSyntheticRecordForSeparateProcess() throws Exception {
            JsonObject backup=new JsonObject();backup.addProperty("priorExists",priorExists);backup.addProperty("priorJson",priorJson);backup.addProperty("seedPid",Process.myPid());
            try(FileOutputStream out=new FileOutputStream(restartFile())){out.write(backup.toString().getBytes(StandardCharsets.UTF_8));}
            stored("{}",true);save("migration-restart",8765);assertTrue(prefs.edit().putString(key,prefs.getString(key,"")).commit());
            assertEquals(8765L,property(get("migration-restart"),"getProgress"));keepForRestart=true;observations.addProperty("restartSeedPersisted",true);
        }
    }

    @RunWith(AndroidJUnit4.class)
    public static class RestartRead extends PlayDataTestSupport {
        @Test public void separateProcessReadsOriginalPersistedFormat() throws Exception {
            assertNull("The new process had no cache before test setup",priorCache);
            JsonObject backup=new JsonParser().parse(new String(Files.readAllBytes(restartFile().toPath()),StandardCharsets.UTF_8)).getAsJsonObject();
            priorExists=backup.get("priorExists").getAsBoolean();priorJson=backup.get("priorJson").isJsonNull()?null:backup.get("priorJson").getAsString();priorCache=null;
            assertNotEquals("A real process restart is required",backup.get("seedPid").getAsInt(),Process.myPid());assertNull(cache.get(null));
            Object item=get("migration-restart");assertNotNull(item);assertEquals(8765L,property(item,"getProgress"));
            observations.add("restartRead",value(item));observations.addProperty("differentProcess",true);
        }
    }
}
