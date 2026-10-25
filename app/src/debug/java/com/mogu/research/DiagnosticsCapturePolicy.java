package com.mogu.research;

import java.util.*;
import okhttp3.*;

/** Explicit content API allowlist. Credentials can also occur in URLs/bodies, not just headers. */
public final class DiagnosticsCapturePolicy {
    private static final Set<String> PATHS=new HashSet<>(Arrays.asList(
        "/api/vod/comment/list", "/api/vod/24upload", "/api/ads", "/api/config",
        "/api/vod/info", "/api/blog/list", "/api/user/blog/star/list", "/api/blog/comment/list",
        "/api/vlog/comment/list", "/api/user/follow", "/api/vod/list/follow", "/api/user/vod/history/list",
        "/api/vod/index", "/api/vodlabel/all", "/api/user/actor", "/api/vod/hotspot", "/api/blog/info",
        "/api/vlog/list", "/api/user/vlog/star/list", "/api/user/vod/star/list", "/api/vod/type",
        "/api/user/list", "/api/user/other", "/api/user/share", "/api/vod/list", "/api/vod/recommend",
        "/api/vod/vip/list", "/api/vod/clever", "/api/cdnhost"));
    private static final Set<String> QUERY_FIELDS=new HashSet<>(Arrays.asList(
        "id","type","name","user_id","page","limit","keyword","keywords","wd","search","order",
        "sort","area","year","lang","tag","label","labels","label_id","type_id","actor_id","actor","class",
        "status","by","level","category","category_id","tid","cid","vod_id","blog_id","vlog_id","types","users"));
    private DiagnosticsCapturePolicy() { }
    public static boolean allows(String method,String address,String baseAddress) {
        HttpUrl url=HttpUrl.parse(address), base=HttpUrl.parse(baseAddress);
        if(url==null || base==null || !"GET".equals(method) || !url.scheme().equals(base.scheme()) ||
            !url.host().equals(base.host()) || url.port()!=base.port() ||
            !url.username().isEmpty() || !url.password().isEmpty() || !PATHS.contains(url.encodedPath())) return false;
        // Unknown query fields are excluded, so a future token/signature parameter fails closed.
        for(String field:url.queryParameterNames()) if(!QUERY_FIELDS.contains(field.toLowerCase(Locale.ROOT))) return false;
        return true;
    }
    public static boolean safeBody(Request request) {
        // Only normal, bodyless JSON API reads enter either collector in this integration.
        String accept=request.header("Accept");
        return request.body()==null && (accept==null || !accept.toLowerCase(Locale.ROOT).contains("text/event-stream"));
    }
}
