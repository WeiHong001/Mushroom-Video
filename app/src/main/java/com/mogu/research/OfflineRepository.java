package com.mogu.research;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import okhttp3.Request;
import okio.Buffer;

/** A local fixture adapter, deliberately separate from the real HTTP protocol. */
final class OfflineRepository {
    private final JsonObject catalog;
    private final SharedPreferences state;
    private final String mediaBase;
    private final Context context;

    OfflineRepository(Context context, String mediaBase) throws IOException {
        this.context=context;
        this.mediaBase=mediaBase;
        state=context.getSharedPreferences("research-fixtures",Context.MODE_PRIVATE);
        try (InputStream input=context.getAssets().open("research/catalog.json")) {
            String text=new String(com.kotlin.basiclib.utils.MD5EncryptNf.toByteArray(input),StandardCharsets.UTF_8);
            catalog=new JsonParser().parse(text.replace("@MEDIA@",mediaBase)).getAsJsonObject();
        }
        if (!state.contains("account:13800000000")) state.edit().putString("account:13800000000",hash("study114")).apply();
    }

    synchronized String loginDemo() {
        return startSession().getAsJsonObject().get("token_type").getAsString()+" "+state.getString("session-access","");
    }

    synchronized String respond(Request request) throws IOException {
        String path=request.url().encodedPath();
        String method=request.method();
        try {
            if (path.equals("/resolve")) return "https://api.research.example.com";
            if (path.equals("/api/captcha")) {
                JsonObject captcha=new JsonObject();
                captcha.addProperty("CaptchaId","offline-captcha");
                try (InputStream input=context.getAssets().open("research/images/cover.png")) {
                    captcha.addProperty("CaptchaUrl","data:image/png;base64,"+Base64.encodeToString(com.kotlin.basiclib.utils.MD5EncryptNf.toByteArray(input),Base64.NO_WRAP));
                }
                return captcha.toString();
            }
            if (method.equals("GET")) return read(request,path);
            if(path.equals("/index.php/user/portrait"))return error(501,"头像上传缺少受控后台配置，未发送文件");
            JsonObject body=body(request);
            if (path.equals("/api/user/login") || path.equals("/api/user/register")) {
                String phone=text(body,"phone"), password=text(body,"password");
                if (!phone.matches("1[0-9]{10}") || password.length()<6) return error(422,"请输入11位研究手机号和至少6位密码");
                if (body.has("captcha") && !text(body,"captcha").equals("0000")) return error(422,"离线验证码为0000");
                if (path.endsWith("register")) {
                    if (state.contains("account:"+phone)) return error(409,"此本机研究账号已存在");
                    state.edit().putString("account:"+phone,hash(password)).apply();
                } else if (!hash(password).equals(state.getString("account:"+phone,""))) return error(403,"本机研究账号或密码错误");
                return envelope(startSession(),"离线研究账号已登录，未连接真实账号系统");
            }
            if (path.equals("/api/user/sms")) {
                if (!text(body,"phone").matches("1[0-9]{10}") || !text(body,"captcha").equals("0000")) return error(422,"研究手机号或验证码无效，离线图形码为0000");
                state.edit().putString("sms-phone",text(body,"phone")).apply();
                return envelope(new JsonObject(),"未发送短信；本机研究短信码为0000");
            }
            if (path.equals("/api/user/resetpasswd")) {
                String phone=text(body,"phone"),password=text(body,"password");
                if (!phone.equals(state.getString("sms-phone","")) || !text(body,"verification").equals("0000") || password.length()<6) return error(422,"请先请求本机短信码，输入0000和至少6位密码");
                state.edit().putString("account:"+phone,hash(password)).apply();
                return envelope(new JsonObject(),"本机研究账号密码已更新");
            }
            if (path.startsWith("/api/user/") && !authorized(request)) return error(403,"请先登录本机研究账号");
            if (path.equals("/api/user/update")) {
                if (body.size()==0) return error(422,"修改内容不能为空");
                JsonObject profile=profile();
                for (java.util.Map.Entry<String,JsonElement> field:body.entrySet()) profile.add(field.getKey(),field.getValue());
                state.edit().putString("profile",profile.toString()).apply();
                return envelope(new JsonObject(),"本机研究资料已保存");
            }
            if (path.endsWith("/star/add") || path.endsWith("/star/delete") || path.equals("/api/user/vod/history/add") || path.equals("/api/user/vod/history/delete") || path.startsWith("/api/user/follow/")) {
                String key=path.contains("/history/")?"history":path.contains("/follow/")?"follow":path.contains("/blog/")?"blog-stars":path.contains("/vlog/")?"short-stars":"stars";
                String id=request.url().queryParameter("id");
                if (id==null) for (String name:new String[]{"vod_id","blog_id","vlog_id","user_id"}) {
                    if (body.has(name)) id=text(body,name);
                    if (id==null) id=request.url().queryParameter(name);
                    if (id!=null) break;
                }
                if (id==null || id.isEmpty()) return error(422,"缺少内容ID");
                if(!id.matches("[0-9]+(,[0-9]+)*"))return error(422,"内容ID格式无效");
                Set<String> values=new HashSet<>(state.getStringSet(key,new HashSet<>()));
                for (String item:id.split(",")) {
                    if (path.endsWith("/delete")) values.remove(item); else values.add(item);
                }
                state.edit().putStringSet(key,values).apply();
                return envelope(new JsonObject(),"仅本机研究记录已更新");
            }
            if (path.endsWith("/comment/add")) {
                String comment=text(body,"comment");
                if (comment.trim().isEmpty()) return error(422,"评论不能为空");
                JsonArray list=comments(path).getAsJsonArray("list");
                JsonObject item=new JsonObject();
                item.addProperty("id",10000+list.size());item.addProperty("comment",comment);
                item.addProperty("created_at","1792555200");item.addProperty("vod_id",1001);
                item.add("user",catalog.getAsJsonObject("comments").getAsJsonArray("list").get(0).getAsJsonObject().get("user"));
                list.add(item);
                state.edit().putString(commentKey(path),list.toString()).apply();
                return envelope(new JsonObject(),"离线评论已保存在本机，未发布");
            }
            if (path.equals("/api/suggest/add") || path.equals("/api.php/gbook/save")) {
                if (body.size()==0) return error(422,"反馈内容不能为空");
                state.edit().putString("pending-feedback",body.toString()).apply();
                return envelope(new JsonObject(),"反馈仅保存在本机，未发送");
            }
            return error(501,"该操作缺少可验证的离线实现，未向后台发送："+path);
        } catch (IllegalArgumentException | IllegalStateException | com.google.gson.JsonParseException error) {
            return error(422,"离线请求参数不符合原协议");
        }
    }

    private String read(Request request,String path) {
        JsonElement data=null;
        switch (path) {
            case "/api/ads": data=catalog.get("ads");break;
            case "/api/config": return envelope(config(request.url().queryParameter("name")),"离线配置样例");
            case "/api/cache": return envelope(new com.google.gson.JsonPrimitive(""),"离线，无邀请剪贴板归因");
            case "/api/cdnhost": return envelope(new com.google.gson.JsonPrimitive(mediaBase),"本机媒体");
            case "/api/vod/type": data=catalog.get("types");break;
            case "/api/vod/index": data=catalog.get("index");break;
            case "/api/vodlabel/all": data=catalog.get("labels");break;
            case "/api/vod/24upload": JsonObject count=new JsonObject();count.addProperty("total","8");data=count;break;
            case "/api/vod/list": case "/api/vod/list/follow": case "/api/vod/clever": case "/api/vod/recommend":
                data=catalog.get("videos").deepCopy();
                String query=request.url().queryParameter("wd");
                if (query!=null && !query.isEmpty()) {
                    JsonArray filtered=new JsonArray();
                    for (JsonElement item:data.getAsJsonObject().getAsJsonArray("list")) if (item.getAsJsonObject().get("title").getAsString().contains(query)) filtered.add(item);
                    data.getAsJsonObject().add("list",filtered);
                }
                break;
            case "/api/vod/hotspot": data=catalog.getAsJsonObject("videos").get("list");break;
            case "/api/vod/info":
                data=catalog.get("details").deepCopy();String id=request.url().queryParameter("id");
                if(id!=null)data.getAsJsonObject().addProperty("id",id);
                if("1002".equals(id))data.getAsJsonObject().addProperty("play_url",mediaBase+"media/encrypted.playlist");
                break;
            case "/api/vlog/list": data=catalog.get("shorts");break;
            case "/api/vod/vip/list":
                data=catalog.get("vip").deepCopy();
                Set<String> unlocked=state.getStringSet("vip-unlocked",new HashSet<>());
                for (JsonElement item:data.getAsJsonObject().getAsJsonArray("list")) item.getAsJsonObject().addProperty("unlock",unlocked.contains(item.getAsJsonObject().get("ID").getAsString()));
                break;
            case "/api/vod/vip/unlock":
                if(!authorized(request))return error(403,"请先登录本机研究账号");
                String vip=request.url().queryParameter("vipid");
                if(vip==null||!vip.matches("400[1-3]"))return error(422,"未知精品样例ID");
                Set<String> all=new HashSet<>(state.getStringSet("vip-unlocked",new HashSet<>()));all.add(vip);
                state.edit().putStringSet("vip-unlocked",all).apply();
                return envelope(new JsonObject(),"离线样例解锁已保存，未购买或扣费");
            case "/api/blog/list": data=catalog.get("blogs");break;
            case "/api/blog/info":
                data=catalog.getAsJsonObject("blogs").getAsJsonArray("list").get(0).deepCopy();data.getAsJsonObject().addProperty("id",3001);break;
            case "/api/vod/comment/list": case "/api/vlog/comment/list": case "/api/blog/comment/list": data=comments(path);break;
            case "/api/user/list": data=catalog.get("users");break;
            case "/api/user/actor": data=catalog.get("actors");break;
            case "/api/user/other": data=catalog.get("other");break;
            case "/api/user/info": if(!authorized(request))return error(403,"请先登录本机研究账号");data=profile();break;
            case "/api/user/vod/history/list": data=videoRecords("history");break;
            case "/api/user/vod/star/list": data=videoRecords("stars");break;
            case "/api/user/blog/star/list": case "/api/user/vlog/star/list":
                JsonArray starred=new JsonArray();
                boolean blog=path.contains("/blog/");
                Set<String> ids=state.getStringSet(blog?"blog-stars":"short-stars",new HashSet<>());
                for (JsonElement entry:catalog.getAsJsonObject(blog?"blogs":"shorts").getAsJsonArray("list")) if(ids.contains(entry.getAsJsonObject().get("id").getAsString())) {
                    JsonObject record=new JsonObject();record.addProperty("id",entry.getAsJsonObject().get("id").getAsInt());record.add(blog?"blog":"vlog",entry);record.addProperty("updated_at","1792555200");starred.add(record);
                }
                data=list(starred);break;
            case "/api/user/follow":
                JsonArray follows=new JsonArray();if(!state.getStringSet("follow",new HashSet<>()).isEmpty())follows.add(catalog.getAsJsonObject("users").getAsJsonArray("list").get(0));data=list(follows);break;
            case "/api/user/share": data=list(new JsonArray());break;
            default:return error(501,"此路径尚无离线样例："+path);
        }
        if (data.isJsonObject() && data.getAsJsonObject().has("list")) {
            String page=request.url().queryParameter("page");
            if(page!=null && Integer.parseInt(page)>1) {data=data.deepCopy();data.getAsJsonObject().add("list",new JsonArray());}
        }
        return envelope(data,"离线合成样例");
    }

    private JsonObject profile() { return state.contains("profile")?new JsonParser().parse(state.getString("profile","{}")).getAsJsonObject():catalog.getAsJsonObject("user").deepCopy(); }
    private boolean authorized(Request request) {String token=state.getString("session-token","");return !token.isEmpty()&&token.equals(request.header("x-token"));}
    private JsonElement startSession() {
        String access="local-"+UUID.randomUUID();
        state.edit().putString("session-access",access).putString("session-token","Research "+access).apply();
        JsonObject session=new JsonObject();session.addProperty("token_type","Research");session.addProperty("access_token",access);return session;
    }
    private JsonObject videoRecords(String key) {
        JsonArray records=new JsonArray();
        for(String id:state.getStringSet(key,new HashSet<>())) for(JsonElement video:catalog.getAsJsonObject("videos").getAsJsonArray("list")) if(video.getAsJsonObject().get("id").getAsString().equals(id)) {
            JsonObject item=new JsonObject();item.addProperty("id",Integer.parseInt(id));item.addProperty("updated_at","1792555200");item.add("vod",video);records.add(item);
        }
        return list(records);
    }
    private static String commentKey(String path) {return path.contains("/blog/")?"comments-blog":path.contains("/vlog/")?"comments-short":"comments-video";}
    private JsonObject comments(String path) {String saved=state.getString(commentKey(path),null);return saved==null?catalog.getAsJsonObject("comments").deepCopy():list(new JsonParser().parse(saved).getAsJsonArray());}
    private static JsonObject list(JsonArray items) {JsonObject result=new JsonObject();result.add("list",items);result.addProperty("total",items.size());return result;}
    private static String text(JsonObject value,String name) {return value.has(name)&&!value.get(name).isJsonNull()?value.get(name).getAsString():"";}
    private static JsonObject body(Request request) throws IOException {
        if(request.body()==null)return new JsonObject();
        if(request.body() instanceof okhttp3.FormBody) {
            okhttp3.FormBody form=(okhttp3.FormBody)request.body();JsonObject fields=new JsonObject();
            for(int i=0;i<form.size();i++)fields.addProperty(form.name(i),form.value(i));
            return fields;
        }
        Buffer buffer=new Buffer();request.body().writeTo(buffer);
        if(buffer.size()>1024*1024)throw new IllegalArgumentException("Offline request too large");
        String value=buffer.readUtf8();
        return value.startsWith("{")?new JsonParser().parse(value).getAsJsonObject():new JsonObject();
    }
    private static String hash(String value) {
        try {return com.kotlin.basiclib.utils.MD5EncryptNf.hexString(MessageDigest.getInstance("SHA-256").digest(value.getBytes(StandardCharsets.UTF_8)));}
        catch(java.security.NoSuchAlgorithmException error){throw new IllegalStateException(error);}
    }
    private JsonObject config(String name) {
        String value="";
        if(name!=null)switch(name) {
            case "searchhot":value="合成样例,播放器,自定义View";break;
            case "notice":case "sqnotice":value="离线研究：所有视频、账号与社区内容均为本机合成样本。";break;
            case "shareurl":value="https://example.invalid/mushroom-research";break;
            case "updateandroid":value="{\"version\":\"1.1.4\",\"force\":0,\"url\":\"\",\"text\":\"离线研究版本\",\"apksize\":\"0\"}";break;
            case "qqinfo":value="{\"qq\":\"\",\"qqqun\":\"\"}";break;
            case "messagecenter":value="{\"title\":\"离线研究说明\",\"content\":\"这是合成消息，未连接原后台。\",\"create_at\":\"1792555200\"}";break;
            case "businessnumber":value="离线研究，无真实商务联系方式";break;
        }
        JsonObject result=new JsonObject();result.addProperty("Name",name);result.addProperty("Value",value);result.addProperty("Comment","离线研究样例");return result;
    }
    private static String envelope(JsonElement data,String message) {JsonObject result=new JsonObject();result.addProperty("code",200);result.addProperty("message",message);result.addProperty("_source","synthetic-local");result.add("data",data);return result.toString();}
    private static String error(int code,String message) {JsonObject result=new JsonObject();result.addProperty("code",code);result.addProperty("message",message);result.addProperty("_source","synthetic-local");result.add("data",com.google.gson.JsonNull.INSTANCE);return result.toString();}
}
