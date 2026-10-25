package com.mogu.research;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import com.amogu6.tv.BuildConfig;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.FutureTarget;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.utils.PlayIdSaveUtils;
import com.mogu.tv.utils.SSLOkhttp;
import com.mogu.tv.utils.exo.HlsMyPlaylistParser;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;
import static org.junit.Assume.assumeTrue;

/** Explicit live build only: public GETs, no credentials or remote payloads in reports. */
@RunWith(AndroidJUnit4.class)
public class LiveReadOnlyTest {
    @Test public void publicImageAndPlaylistUseOriginalDecoders() throws Exception {
        assumeTrue(!BuildConfig.OFFLINE);
        Context context=InstrumentationRegistry.getInstrumentation().getTargetContext();
        JsonObject report=new JsonObject();report.addProperty("mode","real-read-only-media");
        JsonArray calls=new JsonArray();report.add("calls",calls);
        try {
            report.addProperty("phase","public-detail");
            ApiClient.INSTANCE.setRetrofit(BuildConfig.API_BASE);
            HashMap<String,Object> query=new HashMap<>();query.put("limit",1);query.put("page",1);
            JsonObject list=read("/api/vod/list",ApiClient.INSTANCE.getService().getVideoList(query),calls);
            String id=list.getAsJsonArray("list").get(0).getAsJsonObject().get("id").getAsString();
            JsonObject details=read("/api/vod/info",ApiClient.INSTANCE.getService().getAppDetials(id),calls);
            report.addProperty("phase","cover-glide");
            FutureTarget<Bitmap> image=Glide.with(context).asBitmap().load(details.get("cover").getAsString()).submit();
            try {assertTrue(image.get(25,TimeUnit.SECONDS).getWidth()>0);report.addProperty("cover_decoded",true);}
            finally {InstrumentationRegistry.getInstrumentation().runOnMainSync(()->Glide.with(context).clear(image));}

            report.addProperty("phase","hls-playlist");
            String url=details.get("play_url").getAsString();
            PlayIdSaveUtils.INSTANCE.savePlayData(id,url);
            OkHttpClient client=SSLOkhttp.getUnsafeOkHttpClient().connectTimeout(15,TimeUnit.SECONDS).readTimeout(15,TimeUnit.SECONDS).build();
            try(Response response=client.newCall(new Request.Builder().url(url).get().build()).execute()) {
                assertTrue(response.isSuccessful());
                ByteArrayOutputStream bytes=new ByteArrayOutputStream();byte[] buffer=new byte[8192];int count;
                InputStream input=response.body().byteStream();
                while((count=input.read(buffer))!=-1) {
                    assertTrue("Playlist exceeds read-only probe limit",bytes.size()+count<=2*1024*1024);bytes.write(buffer,0,count);
                }
                byte[] payload=bytes.toByteArray();
                report.addProperty("manifest_plaintext_input",new String(payload,0,Math.min(7,payload.length),StandardCharsets.UTF_8).startsWith("#EXTM3U"));
                HlsPlaylist playlist=new HlsMyPlaylistParser().parse(Uri.parse(url),new ByteArrayInputStream(payload));
                assertNotNull(playlist);report.addProperty("playlist_type",playlist.getClass().getSimpleName());
                report.addProperty("company_envelope_path",!url.contains("m3u8"));
                if(playlist instanceof HlsMediaPlaylist) {
                    int segments=((HlsMediaPlaylist)playlist).segments.size();assertTrue(segments>0);report.addProperty("segments",segments);
                }
            }
            report.addProperty("passed",true);
        } catch(Exception|AssertionError error) {
            report.addProperty("passed",false);report.addProperty("error_class",error.getClass().getName());throw error;
        } finally {
            try(FileOutputStream stream=new FileOutputStream(new File(context.getExternalFilesDir(null),"live-media-validation.json"))) {
                stream.write(report.toString().getBytes(StandardCharsets.UTF_8));
            }
        }
    }

    @Test public void publicApiChainAndMutationGuard() throws Exception {
        assumeTrue(!BuildConfig.OFFLINE);
        Context context=InstrumentationRegistry.getInstrumentation().getTargetContext();
        JsonObject report=new JsonObject();
        report.addProperty("mode","real-read-only");
        report.addProperty("api_base",BuildConfig.API_BASE);
        JsonArray calls=new JsonArray();report.add("calls",calls);
        try {
            ApiClient.INSTANCE.setRetrofit(BuildConfig.API_BASE);
            JsonObject types=read("/api/vod/type",ApiClient.INSTANCE.getService().getTypeAll(),calls);
            assertTrue(types.getAsJsonArray("list").size()>0);
            HashMap<String,Object> query=new HashMap<>();query.put("limit",20);query.put("page",1);
            JsonObject list=read("/api/vod/list",ApiClient.INSTANCE.getService().getVideoList(query),calls);
            Class<?> modelClass=context.getClassLoader().loadClass("com.mogu.tv.model.VideoListModel");
            Object model=new Gson().fromJson(list,modelClass);
            List<?> videos=(List<?>)modelClass.getMethod("getList").invoke(model);
            assertNotNull(videos);assertFalse(videos.isEmpty());
            String id=(String)videos.get(0).getClass().getMethod("getId").invoke(videos.get(0));
            JsonObject details=read("/api/vod/info",ApiClient.INSTANCE.getService().getAppDetials(id),calls);
            assertTrue(details.has("title"));

            Request mutation=new Request.Builder().url(BuildConfig.API_BASE+"/api/user/login")
                    .post(RequestBody.create(MediaType.parse("application/json"),"{}")).build();
            Interceptor.Chain fake=(Interceptor.Chain)Proxy.newProxyInstance(Interceptor.Chain.class.getClassLoader(),
                    new Class<?>[]{Interceptor.Chain.class},(proxy,method,args)->{
                        if(method.getName().equals("request"))return mutation;
                        if(method.getName().equals("proceed"))throw new AssertionError("Mutation forwarded");
                        return null;
                    });
            try(Response blocked=new ResearchAccessInterceptor().intercept(fake)) {
                assertEquals("blocked-local",blocked.header("X-Mushroom-Data-Source"));
                assertEquals(403,JsonParser.parseString(blocked.body().string()).getAsJsonObject().get("code").getAsInt());
            }
            report.addProperty("mutation_guard_verified_without_network",true);
            report.addProperty("passed",true);
        } catch(Exception|AssertionError error) {
            report.addProperty("passed",false);report.addProperty("error",error.toString());throw error;
        } finally {
            File output=new File(context.getExternalFilesDir(null),"live-validation.json");
            try(FileOutputStream stream=new FileOutputStream(output)) {
                stream.write(report.toString().getBytes(StandardCharsets.UTF_8));
            }
        }
    }

    private JsonObject read(String path,io.reactivex.Observable<ResponseBody> request,JsonArray calls) throws Exception {
        try(ResponseBody body=request.timeout(35,TimeUnit.SECONDS).blockingFirst()) {
            JsonObject envelope=JsonParser.parseString(body.string()).getAsJsonObject();
            JsonObject item=new JsonObject();item.addProperty("path",path);item.addProperty("code",envelope.get("code").getAsInt());calls.add(item);
            assertEquals(200,envelope.get("code").getAsInt());
            JsonObject data=envelope.getAsJsonObject("data");
            if(data.has("list"))item.addProperty("items",data.getAsJsonArray("list").size());
            return data;
        }
    }
}
