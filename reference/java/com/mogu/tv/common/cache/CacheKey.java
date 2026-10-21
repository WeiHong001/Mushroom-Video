package com.mogu.tv.common.cache;

import kotlin.Metadata;

/* JADX INFO: compiled from: CacheKey.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0006¨\u0006\u0017"}, d2 = {"Lcom/mogu/tv/common/cache/CacheKey;", "", "()V", "CACHECOMMENTKEY", "", "getCACHECOMMENTKEY", "()Ljava/lang/String;", "FIRSTLOADVERSION_1", "getFIRSTLOADVERSION_1", "LOADSHARE", "getLOADSHARE", "LOCK", "getLOCK", "NightMode", "getNightMode", "SAVE_PLAYDATA", "getSAVE_PLAYDATA", "SEARCH_LIST_KEY", "getSEARCH_LIST_KEY", "SHORTVIDEOPAGE", "getSHORTVIDEOPAGE", "USER_TOKEN", "getUSER_TOKEN", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CacheKey {
    public static final CacheKey INSTANCE = new CacheKey();
    private static final String CACHECOMMENTKEY = "replycachekey_news";
    private static final String NightMode = "nightmode";
    private static final String USER_TOKEN = "user_token";
    private static final String SEARCH_LIST_KEY = "search_list_key";
    private static final String SAVE_PLAYDATA = "save_playdata";
    private static final String LOCK = "suopingstr";
    private static final String SHORTVIDEOPAGE = "shortvideopage";
    private static final String FIRSTLOADVERSION_1 = "firstloadversion_1";
    private static final String LOADSHARE = "loadshare";

    private CacheKey() {
    }

    public final String getCACHECOMMENTKEY() {
        return CACHECOMMENTKEY;
    }

    public final String getNightMode() {
        return NightMode;
    }

    public final String getUSER_TOKEN() {
        return USER_TOKEN;
    }

    public final String getSEARCH_LIST_KEY() {
        return SEARCH_LIST_KEY;
    }

    public final String getSAVE_PLAYDATA() {
        return SAVE_PLAYDATA;
    }

    public final String getLOCK() {
        return LOCK;
    }

    public final String getSHORTVIDEOPAGE() {
        return SHORTVIDEOPAGE;
    }

    public final String getFIRSTLOADVERSION_1() {
        return FIRSTLOADVERSION_1;
    }

    public final String getLOADSHARE() {
        return LOADSHARE;
    }
}
