package com.mogu.tv.api;

import androidx.core.app.NotificationCompat;
import com.umeng.analytics.pro.ak;
import io.reactivex.observers.DisposableObserver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: NetStringCallBack.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b)\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003B%\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bB-\b\u0016\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rB\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u000eJ\b\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020=2\u0006\u0010B\u001a\u00020\u0004H\u0016J\"\u0010C\u001a\u00020=2\u0006\u0010*\u001a\u00020\u00132\u0006\u00106\u001a\u00020\b2\b\u0010D\u001a\u0004\u0018\u00010\bH&J\b\u0010E\u001a\u00020=H\u0014R\u0014\u0010\u000f\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u0013X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u0013X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R\u001a\u0010&\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0011\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010-R \u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u0010\u000eR\u001a\u00102\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010 \"\u0004\b3\u0010\"R\u001a\u00104\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010 \"\u0004\b5\u0010\"R\u001c\u00106\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0011\"\u0004\b8\u0010)R\u001c\u00109\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0011\"\u0004\b;\u0010)¨\u0006F"}, d2 = {"Lcom/mogu/tv/api/NetStringCallBack;", "T", "", "Lio/reactivex/observers/DisposableObserver;", "Lokhttp3/ResponseBody;", "classT", "Ljava/lang/Class;", "key", "", "boolean", "", "(Ljava/lang/Class;Ljava/lang/String;Z)V", "doubleCache", "(Ljava/lang/Class;Ljava/lang/String;ZZ)V", "(Ljava/lang/Class;)V", "ANALY_ERROR", "getANALY_ERROR", "()Ljava/lang/String;", "CONNECT_ERROR_CODE", "", "getCONNECT_ERROR_CODE", "()I", "CONNECT_ERROR_STR", "getCONNECT_ERROR_STR", "EMPTY_RESULT_CODE", "getEMPTY_RESULT_CODE", "NET_ERROR_CODE", "getNET_ERROR_CODE", "NET_ERROR_STRING", "getNET_ERROR_STRING", "boolreadContent", "getBoolreadContent", "()Z", "setBoolreadContent", "(Z)V", "cacheIsEmpty", "getCacheIsEmpty", "setCacheIsEmpty", "cacheKey", "getCacheKey", "setCacheKey", "(Ljava/lang/String;)V", "code", "getCode", "setCode", "(I)V", "entityClass", "getEntityClass", "()Ljava/lang/Class;", "setEntityClass", "isCache", "setCache", "isDoubleReturn", "setDoubleReturn", NotificationCompat.CATEGORY_MESSAGE, "getMsg", "setMsg", "resultString", "getResultString", "setResultString", "onComplete", "", "onError", "e", "", "onNext", "response", "onResponse", ak.aH, "onStart", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class NetStringCallBack<T> extends DisposableObserver<ResponseBody> {
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
    private Class<T> entityClass;
    private boolean isCache;
    private boolean isDoubleReturn;
    private String msg;
    private String resultString;

    @Override // io.reactivex.Observer
    public void onError(Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
    }

    public abstract void onResponse(int code, String msg, String t);

    public NetStringCallBack(Class<T> classT) {
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
        try {
            this.entityClass = classT;
        } catch (Exception e) {
            this.entityClass = Object.class;
            e.printStackTrace();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetStringCallBack(Class<T> classT, String key, boolean z) {
        this(classT);
        Intrinsics.checkNotNullParameter(classT, "classT");
        Intrinsics.checkNotNullParameter(key, "key");
        this.isCache = z;
        this.cacheKey = key;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetStringCallBack(Class<T> classT, String key, boolean z, boolean z2) {
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
        this.resultString = str;
    }

    @Override // io.reactivex.observers.DisposableObserver
    protected void onStart() {
        super.onStart();
    }

    @Override // io.reactivex.Observer
    public void onNext(ResponseBody response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.resultString = response.string();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        onResponse(this.code, "", this.resultString);
    }
}
