package com.mogu.tv.api;

import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.kotlin.basiclib.base.BaseApplicaiton;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.utils.FileCacheManager;
import com.kotlin.basiclib.utils.NetworkUtil;
import com.luck.picture.lib.camare.util.LogUtil;
import com.umeng.analytics.pro.ak;
import io.reactivex.observers.DisposableObserver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: NetCallBack.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b,\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003B%\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bB-\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rB\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u000eJ\b\u0010?\u001a\u00020@H\u0002J\b\u0010A\u001a\u00020@H\u0016J\u0010\u0010B\u001a\u00020@2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020@2\u0006\u0010F\u001a\u00020\u0004H\u0016J'\u0010G\u001a\u00020@2\u0006\u0010*\u001a\u00020\u00132\u0006\u00109\u001a\u00020\b2\b\u0010H\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0002\u0010IJ\b\u0010J\u001a\u00020@H\u0014R\u0014\u0010\u000f\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u0013X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u0013X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R\u001a\u0010&\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0011\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010-R\u001a\u0010.\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0015\"\u0004\b0\u0010-R \u00101\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u0010\u000eR\u001a\u00105\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010 \"\u0004\b6\u0010\"R\u001a\u00107\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010 \"\u0004\b8\u0010\"R\u001c\u00109\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0011\"\u0004\b;\u0010)R\u001a\u0010<\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u0011\"\u0004\b>\u0010)¨\u0006K"}, d2 = {"Lcom/mogu/tv/api/NetCallBack;", "T", "", "Lio/reactivex/observers/DisposableObserver;", "Lokhttp3/ResponseBody;", "classT", "Ljava/lang/Class;", "key", "", "boolean", "", "(Ljava/lang/Class;Ljava/lang/String;Z)V", "doubleCache", "(Ljava/lang/Class;Ljava/lang/String;ZZ)V", "(Ljava/lang/Class;)V", "ANALY_ERROR", "getANALY_ERROR", "()Ljava/lang/String;", "CONNECT_ERROR_CODE", "", "getCONNECT_ERROR_CODE", "()I", "CONNECT_ERROR_STR", "getCONNECT_ERROR_STR", "EMPTY_RESULT_CODE", "getEMPTY_RESULT_CODE", "NET_ERROR_CODE", "getNET_ERROR_CODE", "NET_ERROR_STRING", "getNET_ERROR_STRING", "boolreadContent", "getBoolreadContent", "()Z", "setBoolreadContent", "(Z)V", "cacheIsEmpty", "getCacheIsEmpty", "setCacheIsEmpty", "cacheKey", "getCacheKey", "setCacheKey", "(Ljava/lang/String;)V", "code", "getCode", "setCode", "(I)V", "defaultCacheTime", "getDefaultCacheTime", "setDefaultCacheTime", "entityClass", "getEntityClass", "()Ljava/lang/Class;", "setEntityClass", "isCache", "setCache", "isDoubleReturn", "setDoubleReturn", NotificationCompat.CATEGORY_MESSAGE, "getMsg", "setMsg", "resultString", "getResultString", "setResultString", "filterData", "", "onComplete", "onError", "e", "", "onNext", "response", "onResponse", ak.aH, "(ILjava/lang/String;Ljava/lang/Object;)V", "onStart", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class NetCallBack<T> extends DisposableObserver<ResponseBody> {
    private final String ANALY_ERROR;
    private final int CONNECT_ERROR_CODE;
    private final String CONNECT_ERROR_STR;
    private final int EMPTY_RESULT_CODE;
    private final int NET_ERROR_CODE;
    private final String NET_ERROR_STRING;
    private boolean boolreadContent;
    private boolean cacheIsEmpty;
    private String cacheKey;
    private int code;
    private int defaultCacheTime;
    private Class<T> entityClass;
    private boolean isCache;
    private boolean isDoubleReturn;
    private String msg;
    private String resultString;

    public abstract void onResponse(int code, String msg, T t);

    public NetCallBack(Class<T> classT) {
        Intrinsics.checkNotNullParameter(classT, "classT");
        this.CONNECT_ERROR_STR = "连接服务器失败";
        this.CONNECT_ERROR_CODE = 1000;
        this.ANALY_ERROR = "数据出错";
        this.NET_ERROR_STRING = "网络异常，请检查网络连接";
        this.NET_ERROR_CODE = 1001;
        this.EMPTY_RESULT_CODE = 2000;
        this.code = 200;
        this.msg = "";
        this.cacheKey = "";
        this.resultString = "";
        this.defaultCacheTime = 2592000;
        try {
            this.entityClass = classT;
        } catch (Exception e) {
            this.entityClass = Object.class;
            e.printStackTrace();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetCallBack(Class<T> classT, String key, boolean z) {
        this(classT);
        Intrinsics.checkNotNullParameter(classT, "classT");
        Intrinsics.checkNotNullParameter(key, "key");
        this.isCache = z;
        this.cacheKey = key;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetCallBack(Class<T> classT, String key, boolean z, boolean z2) {
        this(classT);
        Intrinsics.checkNotNullParameter(classT, "classT");
        Intrinsics.checkNotNullParameter(key, "key");
        this.isCache = z;
        this.isDoubleReturn = z2;
        this.cacheKey = key;
    }

    public final boolean getBoolreadContent() {
        return this.boolreadContent;
    }

    public final void setBoolreadContent(boolean z) {
        this.boolreadContent = z;
    }

    public final String getCONNECT_ERROR_STR() {
        return this.CONNECT_ERROR_STR;
    }

    public final int getCONNECT_ERROR_CODE() {
        return this.CONNECT_ERROR_CODE;
    }

    public final String getANALY_ERROR() {
        return this.ANALY_ERROR;
    }

    public final String getNET_ERROR_STRING() {
        return this.NET_ERROR_STRING;
    }

    public final int getNET_ERROR_CODE() {
        return this.NET_ERROR_CODE;
    }

    public final int getEMPTY_RESULT_CODE() {
        return this.EMPTY_RESULT_CODE;
    }

    public final int getCode() {
        return this.code;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final void setMsg(String str) {
        this.msg = str;
    }

    public final Class<T> getEntityClass() {
        return this.entityClass;
    }

    public final void setEntityClass(Class<T> cls) {
        Intrinsics.checkNotNullParameter(cls, "<set-?>");
        this.entityClass = cls;
    }

    /* JADX INFO: renamed from: isCache, reason: from getter */
    public final boolean getIsCache() {
        return this.isCache;
    }

    public final void setCache(boolean z) {
        this.isCache = z;
    }

    /* JADX INFO: renamed from: isDoubleReturn, reason: from getter */
    public final boolean getIsDoubleReturn() {
        return this.isDoubleReturn;
    }

    public final void setDoubleReturn(boolean z) {
        this.isDoubleReturn = z;
    }

    public final boolean getCacheIsEmpty() {
        return this.cacheIsEmpty;
    }

    public final void setCacheIsEmpty(boolean z) {
        this.cacheIsEmpty = z;
    }

    public final String getCacheKey() {
        return this.cacheKey;
    }

    public final void setCacheKey(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.cacheKey = str;
    }

    public final String getResultString() {
        return this.resultString;
    }

    public final void setResultString(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resultString = str;
    }

    public final int getDefaultCacheTime() {
        return this.defaultCacheTime;
    }

    public final void setDefaultCacheTime(int i) {
        this.defaultCacheTime = i;
    }

    @Override // io.reactivex.observers.DisposableObserver
    protected void onStart() throws Throwable {
        if (this.isCache) {
            String strFromCache = FileCacheManager.INSTANCE.readStrFromCache(this.cacheKey);
            this.resultString = strFromCache;
            String str = strFromCache;
            if (str == null || str.length() == 0) {
                this.cacheIsEmpty = true;
            } else {
                filterData();
            }
        }
        super.onStart();
    }

    @Override // io.reactivex.Observer
    public void onNext(ResponseBody response) throws Throwable {
        Intrinsics.checkNotNullParameter(response, "response");
        String tempStr = response.string();
        if (this.isCache) {
            Intrinsics.checkNotNullExpressionValue(tempStr, "tempStr");
            if ((tempStr.length() > 0) && !Intrinsics.areEqual(tempStr, this.resultString)) {
                FileCacheManager fileCacheManager = FileCacheManager.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(tempStr, "tempStr");
                fileCacheManager.writeStrToCache(tempStr, this.cacheKey, this.defaultCacheTime);
            }
        }
        Intrinsics.checkNotNullExpressionValue(tempStr, "tempStr");
        this.resultString = tempStr;
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.isCache || this.cacheIsEmpty || this.isDoubleReturn) {
            filterData();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void filterData() {
        boolean z = true;
        String str = "";
        if (this.resultString.length() == 0) {
            onResponse(this.EMPTY_RESULT_CODE, "", null);
            return;
        }
        try {
            JsonElement jsonElement = new JsonParser().parse(this.resultString);
            if (jsonElement.getAsJsonObject().has("code")) {
                this.code = jsonElement.getAsJsonObject().get("code").getAsInt();
            }
            if (jsonElement.getAsJsonObject().has("message")) {
                this.msg = jsonElement.getAsJsonObject().get("message").getAsString();
            }
            int i = this.code;
            if (i == 1 || i == 200 || i == 201 || i == 302) {
                JsonElement jsonElement2 = jsonElement.getAsJsonObject().get("data");
                if (jsonElement2 != null && jsonElement2.isJsonArray() && jsonElement2.getAsJsonArray().size() == 0) {
                    int i2 = this.code;
                    String str2 = this.msg;
                    if (str2 != null) {
                        str = str2;
                    }
                    onResponse(i2, str, null);
                } else {
                    Object objFromJson = new Gson().fromJson(jsonElement2, (Class<Object>) this.entityClass);
                    int i3 = this.code;
                    String str3 = this.msg;
                    if (str3 != null) {
                        str = str3;
                    }
                    onResponse(i3, str, objFromJson);
                }
            } else if (i == 403) {
                String str4 = this.msg;
                if (str4 != null) {
                    str = str4;
                }
                onResponse(i, str, null);
            } else if (i == 203) {
                String str5 = this.msg;
                if (str5 != null) {
                    str = str5;
                }
                onResponse(i, str, null);
            } else if (i == 204) {
                String str6 = this.msg;
                if (str6 != null) {
                    str = str6;
                }
                onResponse(i, str, null);
            } else {
                String str7 = this.msg;
                if (str7 != null) {
                    str = str7;
                }
                onResponse(i, str, null);
            }
            if (this.code == 201) {
                String str8 = this.msg;
                Intrinsics.checkNotNull(str8);
                if (str8.length() <= 0) {
                    z = false;
                }
                if (!z || Intrinsics.areEqual(this.msg, "false") || Intrinsics.areEqual(this.msg, "null")) {
                    return;
                }
                BaseApplicaiton application = BaseApplicaitonKt.getApplication();
                String str9 = this.msg;
                Intrinsics.checkNotNull(str9);
                Toast toastMakeText = Toast.makeText(application, str9, 0);
                toastMakeText.show();
                Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
            }
        } catch (Exception e) {
            LogUtil.e("Exe", e.toString());
            String str10 = this.msg;
            if (str10 == null) {
                str10 = this.ANALY_ERROR;
            }
            onResponse(1004, str10, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0021 A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:3:0x0007, B:5:0x0012, B:10:0x0021, B:12:0x002e, B:13:0x0036), top: B:19:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x002e A[Catch: Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:3:0x0007, B:5:0x0012, B:10:0x0021, B:12:0x002e, B:13:0x0036), top: B:19:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0036 A[Catch: Exception -> 0x003e, TRY_LEAVE, TryCatch #0 {Exception -> 0x003e, blocks: (B:3:0x0007, B:5:0x0012, B:10:0x0021, B:12:0x002e, B:13:0x0036), top: B:19:0x0007 }] */
    @Override // io.reactivex.Observer
    public void onError(Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        try {
            LogUtil.e("Exe", e.toString());
            if (this.isCache) {
                if (this.resultString.length() == 0) {
                    if (NetworkUtil.getNetworkType(BaseApplicaitonKt.getApplication()) == 0) {
                        onResponse(this.NET_ERROR_CODE, this.NET_ERROR_STRING, null);
                    } else {
                        onResponse(this.CONNECT_ERROR_CODE, this.CONNECT_ERROR_STR, null);
                    }
                }
            } else if (NetworkUtil.getNetworkType(BaseApplicaitonKt.getApplication()) == 0) {
                onResponse(this.NET_ERROR_CODE, this.NET_ERROR_STRING, null);
            } else {
                onResponse(this.CONNECT_ERROR_CODE, this.CONNECT_ERROR_STR, null);
            }
        } catch (Exception e2) {
            LogUtil.e("Exe", e2.toString());
            e2.toString();
        }
    }
}
