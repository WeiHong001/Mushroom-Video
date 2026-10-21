package com.mogu.research;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import com.amogu6.tv.BuildConfig;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.FutureTarget;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.utils.PlayIdSaveUtils;
import com.mogu.tv.utils.exo.HlsMyPlaylistParser;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;
import static org.junit.Assume.assumeTrue;

@RunWith(AndroidJUnit4.class)
public class MediaContractsTest {
    private final Context context=InstrumentationRegistry.getInstrumentation().getTargetContext();
    @Before public void offlineOnly(){assumeTrue(BuildConfig.OFFLINE);}

    @Test public void realHlsParserAcceptsPlainAndEncryptedManifests() throws Exception {
        for(String name:new String[]{"sample.m3u8","encrypted.playlist"}) {
            String url=RecoveryRuntime.mediaBase()+"media/"+name;
            PlayIdSaveUtils.INSTANCE.savePlayData("1002",url);
            try(InputStream input=context.getAssets().open("research/media/"+name)) {
                HlsMediaPlaylist playlist=(HlsMediaPlaylist)new HlsMyPlaylistParser().parse(Uri.parse(url),input);
                assertEquals(4,playlist.segments.size());
                assertTrue(playlist.hasEndTag);
                assertEquals(8_000_000L,playlist.durationUs);
            }
        }
        String wrong=RecoveryRuntime.mediaBase()+"media/wrong.playlist";
        PlayIdSaveUtils.INSTANCE.savePlayData("wrong-id",wrong);
        try(InputStream input=context.getAssets().open("research/media/encrypted.playlist")) {
            try {new HlsMyPlaylistParser().parse(Uri.parse(wrong),input);fail("Wrong encryption key must not become a successful playlist");}
            catch(java.io.IOException expected){ }
        }
    }

    @Test public void originalGlideModuleLoadsAllImageEnvelopes() throws Exception {
        for(String name:new String[]{"cover.png","normal-cover.bin","vlog-cover.bin"}) {
            FutureTarget<Bitmap> result=Glide.with(context).asBitmap().load(RecoveryRuntime.mediaBase()+"images/"+name).submit();
            assertTrue(result.get(15,TimeUnit.SECONDS).getWidth()>0);
            InstrumentationRegistry.getInstrumentation().runOnMainSync(()->Glide.with(context).clear(result));
        }
    }

    @Test public void originalApiChainAuthenticatesAndPersistsFavoriteChanges() throws Exception {
        String token=RecoveryRuntime.repository().loginDemo();
        Class<?> type=context.getClassLoader().loadClass("com.mogu.tv.main.UserManager");
        Object manager=type.getField("INSTANCE").get(null);
        type.getMethod("refreshToken",String.class).invoke(manager,token);
        JsonObject user=json(ApiClient.INSTANCE.getService().getUserInfo().blockingFirst().string());
        assertEquals(200,user.get("code").getAsInt());
        assertEquals("9001",user.getAsJsonObject("data").get("id").getAsString());
        RequestBody body=RequestBody.create(MediaType.parse("application/json"),"{\"vod_id\":1001}");
        assertEquals(200,json(ApiClient.INSTANCE.getService().addStar(body).blockingFirst().string()).get("code").getAsInt());
        assertTrue(ApiClient.INSTANCE.getService().getStarList(new HashMap<>()).blockingFirst().string().contains("1001"));
        assertEquals(200,json(ApiClient.INSTANCE.getService().deleteDetailsStar("1001").blockingFirst().string()).get("code").getAsInt());
        assertFalse(ApiClient.INSTANCE.getService().getStarList(new HashMap<>()).blockingFirst().string().contains("1001"));
        Request invalid=new Request.Builder().url("https://api.research.example.com/api/user/vod/star/add").header("x-token",token).put(RequestBody.create(MediaType.parse("application/json"),"{}" )).build();
        assertEquals(422,json(RecoveryRuntime.repository().respond(invalid)).get("code").getAsInt());
        Request upload=new Request.Builder().url("https://api.research.example.com/index.php/user/portrait").post(body).build();
        assertEquals(501,json(RecoveryRuntime.repository().respond(upload)).get("code").getAsInt());
    }

    @Test public void playWhenReadyReasonIsNotReportedAsPlaybackState() {
        InstrumentationRegistry.getInstrumentation().runOnMainSync(()->{
            try {
                Class<?> adapter=context.getClassLoader().loadClass("com.mogu.tv.utils.exo.IjkExoMyMediaPlayer");
                Object bridge=adapter.getConstructor(Context.class).newInstance(context);
                com.google.android.exoplayer2.ExoPlayer player=new com.google.android.exoplayer2.ExoPlayer.Builder(context).build();
                java.lang.reflect.Field internal=adapter.getDeclaredField("mInternalPlayer");internal.setAccessible(true);internal.set(bridge,player);
                adapter.getMethod("onPlayWhenReadyChanged",boolean.class,int.class).invoke(bridge,false,2);
                java.lang.reflect.Field state=adapter.getDeclaredField("lastReportedPlaybackState");state.setAccessible(true);
                assertEquals("Reason 2 must not turn an IDLE player into BUFFERING",player.getPlaybackState(),state.getInt(bridge));
                adapter.getMethod("release").invoke(bridge);
            } catch(ReflectiveOperationException error){throw new AssertionError(error);}
        });
    }
    private static JsonObject json(String text){return new JsonParser().parse(text).getAsJsonObject();}
}
