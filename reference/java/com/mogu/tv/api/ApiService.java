package com.mogu.tv.api;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.reactivex.Observable;
import java.util.HashMap;
import kotlin.Metadata;
import master.flame.danmaku.danmaku.parser.IDataSource;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;

/* JADX INFO: compiled from: ApiService.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b?\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u0018\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'J4\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\u000fH'J\u0018\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\u000fH'J\u0018\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\u000fH'J\u0018\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\"\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0019\u001a\u00020\u000f2\b\b\u0001\u0010\u001a\u001a\u00020\u000fH'J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u0018\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u001e\u001a\u00020\u000fH'J\u0018\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'J4\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J4\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J4\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J4\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\"\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010&\u001a\u00020\n2\b\b\u0001\u0010'\u001a\u00020\nH'J4\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J4\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u000e\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u0018\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010/\u001a\u00020\u000fH'J\u0018\u00100\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J4\u00101\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J4\u00102\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J4\u00103\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u000e\u00104\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J4\u00106\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u0018\u00107\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u00108\u001a\u00020\nH'J\"\u00109\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010:\u001a\u00020\n2\b\b\u0001\u0010'\u001a\u00020\nH'J\u000e\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J4\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u0018\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010>\u001a\u00020\u000fH'J\"\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010:\u001a\u00020\n2\b\b\u0001\u0010'\u001a\u00020\nH'J4\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032$\b\u0001\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0012j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u0013H'J\u000e\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u0018\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u0018\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u0018\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\u000fH'J\u0018\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010P\u001a\u00020\nH'J\u0018\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010R\u001a\u00020SH'J\u0018\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'¨\u0006U"}, d2 = {"Lcom/mogu/tv/api/ApiService;", "", "addHistory", "Lio/reactivex/Observable;", "Lokhttp3/ResponseBody;", TtmlNode.TAG_BODY, "Lokhttp3/RequestBody;", "addStar", "blogDeleteStar", "id", "", "blogDeleteStarDetails", "blogStar", "clickAd", "ids", "", "commentLists", "map", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "deleteDetailsStar", "deleteHistory", "deleteStar", "focusUser", "gbookSave", "gbook_content", "verify", "get24upload", "getAds", "getAppConfig", "name", "getAppDetials", "getBlobList", "getBlobLoveList", "getCacheShareCode", "getCommentListBlog", "getCommentListShort", "getFocusList", "user_id", "page", "getFocusVideoList", "getHistory", "getHostTxt", "getIndexRecommendLables", "getLabels", "getNvyou", "getRankList", "type", "getShequDetails", "getShortLists", "getShortStarLists", "getStarList", "getTypeAll", "getUserInfo", "getUserList", "getUserOhterInfo", "userId", "getUserShareList", "limit", "getVerifyCode", "getVideoList", "getVideoRecommend", "vodid", "getVipVideoData", "getVodClever", "getcdnHost", "loginUser", "postSms", "postSuggest", "postshare", "registUser", "resetPasswd", "saveComment", "saveShortComment", "saveblogComment", "shortVideoStar", "shortVideoStarDelete", "shortVideoStarDeleteDetails", "unFocusUser", "unlockvipVIdeo", "vipid", "updateUserHead", IDataSource.SCHEME_FILE_TAG, "Lokhttp3/MultipartBody$Part;", "updateUserName", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ApiService {
    @PUT("/api/user/vod/history/add")
    Observable<ResponseBody> addHistory(@Body RequestBody body);

    @PUT("/api/user/vod/star/add")
    Observable<ResponseBody> addStar(@Body RequestBody body);

    @DELETE("/api/user/blog/star/delete")
    Observable<ResponseBody> blogDeleteStar(@Query("id") int id);

    @DELETE("/api/user/blog/star/delete")
    Observable<ResponseBody> blogDeleteStarDetails(@Query("blog_id") int id);

    @PUT("/api/user/blog/star/add")
    Observable<ResponseBody> blogStar(@Body RequestBody body);

    @GET("/api/adclick")
    Observable<ResponseBody> clickAd(@Query("id") String ids);

    @GET("/api/vod/comment/list")
    Observable<ResponseBody> commentLists(@QueryMap HashMap<String, Object> map);

    @DELETE("/api/user/vod/star/delete")
    Observable<ResponseBody> deleteDetailsStar(@Query("vod_id") String id);

    @DELETE("/api/user/vod/history/delete")
    Observable<ResponseBody> deleteHistory(@Query("id") String id);

    @DELETE("/api/user/vod/star/delete")
    Observable<ResponseBody> deleteStar(@Query("id") String id);

    @PUT("/api/user/follow/add")
    Observable<ResponseBody> focusUser(@Body RequestBody body);

    @FormUrlEncoded
    @POST("/api.php/gbook/save")
    Observable<ResponseBody> gbookSave(@Field("gbook_content") String gbook_content, @Field("verify") String verify);

    @GET("/api/vod/24upload")
    Observable<ResponseBody> get24upload();

    @GET("/api/ads")
    Observable<ResponseBody> getAds();

    @GET("/api/config")
    Observable<ResponseBody> getAppConfig(@Query("name") String name);

    @GET("/api/vod/info")
    Observable<ResponseBody> getAppDetials(@Query("id") String ids);

    @GET("/api/blog/list")
    Observable<ResponseBody> getBlobList(@QueryMap HashMap<String, Object> map);

    @GET("/api/user/blog/star/list")
    Observable<ResponseBody> getBlobLoveList(@QueryMap HashMap<String, Object> map);

    @GET("/api/cache")
    Observable<ResponseBody> getCacheShareCode();

    @GET("/api/blog/comment/list")
    Observable<ResponseBody> getCommentListBlog(@QueryMap HashMap<String, Object> map);

    @GET("/api/vlog/comment/list")
    Observable<ResponseBody> getCommentListShort(@QueryMap HashMap<String, Object> map);

    @GET("/api/user/follow")
    Observable<ResponseBody> getFocusList(@Query("user_id") int user_id, @Query("page") int page);

    @GET("/api/vod/list/follow")
    Observable<ResponseBody> getFocusVideoList(@QueryMap HashMap<String, Object> map);

    @GET("/api/user/vod/history/list")
    Observable<ResponseBody> getHistory(@QueryMap HashMap<String, Object> map);

    @GET("https://dns.alidns.com/resolve?name=apihost.mgsp.me&short=true&type=16")
    Observable<ResponseBody> getHostTxt();

    @GET("/api/vod/index")
    Observable<ResponseBody> getIndexRecommendLables();

    @GET("/api/vodlabel/all")
    Observable<ResponseBody> getLabels();

    @GET("/api/user/actor")
    Observable<ResponseBody> getNvyou();

    @GET("/api/vod/hotspot")
    Observable<ResponseBody> getRankList(@Query("type") String type);

    @GET("/api/blog/info")
    Observable<ResponseBody> getShequDetails(@Query("id") int id);

    @GET("/api/vlog/list")
    Observable<ResponseBody> getShortLists(@QueryMap HashMap<String, Object> map);

    @GET("/api/user/vlog/star/list")
    Observable<ResponseBody> getShortStarLists(@QueryMap HashMap<String, Object> map);

    @GET("/api/user/vod/star/list")
    Observable<ResponseBody> getStarList(@QueryMap HashMap<String, Object> map);

    @GET("/api/vod/type")
    Observable<ResponseBody> getTypeAll();

    @GET("/api/user/info")
    Observable<ResponseBody> getUserInfo();

    @GET("/api/user/list")
    Observable<ResponseBody> getUserList(@QueryMap HashMap<String, Object> map);

    @GET("/api/user/other")
    Observable<ResponseBody> getUserOhterInfo(@Query("id") int userId);

    @GET("/api/user/share")
    Observable<ResponseBody> getUserShareList(@Query("limit") int limit, @Query("page") int page);

    @GET("/api/captcha")
    Observable<ResponseBody> getVerifyCode();

    @GET("/api/vod/list")
    Observable<ResponseBody> getVideoList(@QueryMap HashMap<String, Object> map);

    @GET("/api/vod/recommend")
    Observable<ResponseBody> getVideoRecommend(@Query("id") String vodid);

    @GET("/api/vod/vip/list")
    Observable<ResponseBody> getVipVideoData(@Query("limit") int limit, @Query("page") int page);

    @GET("/api/vod/clever")
    Observable<ResponseBody> getVodClever(@QueryMap HashMap<String, Object> map);

    @GET("/api/cdnhost")
    Observable<ResponseBody> getcdnHost();

    @POST("/api/user/login")
    Observable<ResponseBody> loginUser(@Body RequestBody body);

    @POST("/api/user/sms")
    Observable<ResponseBody> postSms(@Body RequestBody body);

    @POST("/api/suggest/add")
    Observable<ResponseBody> postSuggest(@Body RequestBody body);

    @POST("/api/user/share")
    Observable<ResponseBody> postshare(@Body RequestBody body);

    @POST("/api/user/register")
    Observable<ResponseBody> registUser(@Body RequestBody body);

    @POST("/api/user/resetpasswd")
    Observable<ResponseBody> resetPasswd(@Body RequestBody body);

    @POST("/api/vod/comment/add")
    Observable<ResponseBody> saveComment(@Body RequestBody body);

    @POST("/api/vlog/comment/add")
    Observable<ResponseBody> saveShortComment(@Body RequestBody body);

    @POST("/api/blog/comment/add")
    Observable<ResponseBody> saveblogComment(@Body RequestBody body);

    @PUT("/api/user/vlog/star/add")
    Observable<ResponseBody> shortVideoStar(@Body RequestBody body);

    @DELETE("/api/user/vlog/star/delete")
    Observable<ResponseBody> shortVideoStarDelete(@Query("id") int id);

    @DELETE("/api/user/vlog/star/delete")
    Observable<ResponseBody> shortVideoStarDeleteDetails(@Query("vlog_id") int id);

    @DELETE("/api/user/follow/delete")
    Observable<ResponseBody> unFocusUser(@Query("id") String id);

    @GET("/api/vod/vip/unlock")
    Observable<ResponseBody> unlockvipVIdeo(@Query("vipid") int vipid);

    @POST("/index.php/user/portrait")
    @Multipart
    Observable<ResponseBody> updateUserHead(@Part MultipartBody.Part file);

    @PUT("/api/user/update")
    Observable<ResponseBody> updateUserName(@Body RequestBody body);
}
