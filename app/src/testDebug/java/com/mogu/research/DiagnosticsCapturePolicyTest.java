package com.mogu.research;

import okhttp3.*;
import org.junit.Test;
import static org.junit.Assert.*;

public class DiagnosticsCapturePolicyTest {
    private final String origin="https://synthetic.example:8443";
    @Test public void apiReadsMatchCurrentOriginAndKnownQueriesOnly() {
        assertTrue(DiagnosticsCapturePolicy.allows("GET",origin+"/api/vlog/list?page=1&limit=20",origin));
        assertTrue(DiagnosticsCapturePolicy.allows("GET",origin+"/api/vod/comment/list?vod_id=12",origin));
        for(String url:new String[]{"https://other.example:8443/api/vlog/list", "http://synthetic.example:8443/api/vlog/list",
            "https://synthetic.example/api/vlog/list",origin+"/api/vlog/list?access_token=synthetic",
            origin+"/api/vlog/list?X-Api-Key=synthetic",origin+"/api/vlog/list?new_field=synthetic",
            "https://user:synthetic@synthetic.example:8443/api/vlog/list"}) {
            assertFalse(url,DiagnosticsCapturePolicy.allows("GET",url,origin));
        }
        assertFalse(DiagnosticsCapturePolicy.allows("POST",origin+"/api/vlog/list",origin));
    }
    @Test public void authenticationDiscoveryMediaAndUnknownPathsAreExcluded() {
        for(String path:new String[]{"/api/user/login","/api/user/info","/api/captcha","/api/cache",
            "/api/user/register","/api/user/sms","/api/user/resetpasswd","/index.php/user/portrait",
            "/resolve","/api/adclick","/api/vod/vip/unlock","/api/new","/video.m3u8","/key","/segment.ts","/cover.jpg"})
            assertFalse(path,DiagnosticsCapturePolicy.allows("GET",origin+path,origin));
        Request normal=new Request.Builder().url(origin+"/api/vlog/list").build();
        assertTrue(DiagnosticsCapturePolicy.safeBody(normal));
        assertFalse(DiagnosticsCapturePolicy.safeBody(normal.newBuilder().header("Accept","text/event-stream").build()));
        assertFalse(DiagnosticsCapturePolicy.safeBody(normal.newBuilder().post(RequestBody.create(MediaType.parse("application/octet-stream"),new byte[2])).build()));
    }
}
