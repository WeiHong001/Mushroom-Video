package com.mogu.tv.model;

import android.content.Context;
import android.graphics.Typeface;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.main.UserManager;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: GlobeAppData.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001e\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\u0004J\b\u0010#\u001a\u0004\u0018\u00010\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006$"}, d2 = {"Lcom/mogu/tv/model/GlobeAppData;", "", "()V", "ShareLink", "", "getShareLink", "()Ljava/lang/String;", "setShareLink", "(Ljava/lang/String;)V", "adConfigData", "Lcom/mogu/tv/model/AllAdsModel;", "getAdConfigData", "()Lcom/mogu/tv/model/AllAdsModel;", "setAdConfigData", "(Lcom/mogu/tv/model/AllAdsModel;)V", "font", "Landroid/graphics/Typeface;", "getFont", "()Landroid/graphics/Typeface;", "setFont", "(Landroid/graphics/Typeface;)V", "searchHot", "getSearchHot", "setSearchHot", "typeLists", "Lcom/mogu/tv/model/VideoTypes;", "getTypeLists", "()Lcom/mogu/tv/model/VideoTypes;", "setTypeLists", "(Lcom/mogu/tv/model/VideoTypes;)V", "getAdData", "getGlobeIconFont", d.R, "Landroid/content/Context;", "getShareLinkWithInvite", "getTypes", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GlobeAppData {
    private static AllAdsModel adConfigData;
    private static Typeface font;
    private static VideoTypes typeLists;
    public static final GlobeAppData INSTANCE = new GlobeAppData();
    private static String searchHot = "";
    private static String ShareLink = "https://www.mogu1.tv";

    private GlobeAppData() {
    }

    public final AllAdsModel getAdConfigData() {
        return adConfigData;
    }

    public final void setAdConfigData(AllAdsModel allAdsModel) {
        adConfigData = allAdsModel;
    }

    public final String getSearchHot() {
        return searchHot;
    }

    public final void setSearchHot(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        searchHot = str;
    }

    public final String getShareLink() {
        return ShareLink;
    }

    public final void setShareLink(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        ShareLink = str;
    }

    public final VideoTypes getTypeLists() {
        return typeLists;
    }

    public final void setTypeLists(VideoTypes videoTypes) {
        typeLists = videoTypes;
    }

    public final Typeface getFont() {
        return font;
    }

    public final void setFont(Typeface typeface) {
        font = typeface;
    }

    public final Typeface getGlobeIconFont(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (font == null) {
            font = Typeface.createFromAsset(context.getAssets(), "iconfont.ttf");
        }
        Typeface typeface = font;
        Intrinsics.checkNotNull(typeface);
        return typeface;
    }

    public final String getShareLinkWithInvite() {
        if (UserManager.INSTANCE.isLogin()) {
            if (StringsKt.contains$default((CharSequence) ShareLink, (CharSequence) "?", false, 2, (Object) null)) {
                return ShareLink + "&share=" + UserManager.INSTANCE.getUserId();
            }
            return ShareLink + "?share=" + UserManager.INSTANCE.getUserId();
        }
        return ShareLink;
    }

    public final VideoTypes getTypes() {
        VideoTypes videoTypes = typeLists;
        if (videoTypes != null) {
            if ((videoTypes != null ? videoTypes.getList() : null) != null) {
                return typeLists;
            }
        }
        ApiManager.INSTANCE.getTypeAll(new Function3<Integer, String, VideoTypes, Unit>() { // from class: com.mogu.tv.model.GlobeAppData.getTypes.1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoTypes videoTypes2) {
                invoke(num.intValue(), str, videoTypes2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, VideoTypes videoTypes2) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i == 200) {
                    GlobeAppData.INSTANCE.setTypeLists(videoTypes2);
                }
            }
        });
        return typeLists;
    }

    public final AllAdsModel getAdData() {
        AllAdsModel allAdsModel = adConfigData;
        if (allAdsModel != null) {
            if ((allAdsModel != null ? allAdsModel.getActivity() : null) != null) {
                return adConfigData;
            }
        }
        ApiManager.INSTANCE.getAllAd(new Function3<Integer, String, AllAdsModel, Unit>() { // from class: com.mogu.tv.model.GlobeAppData.getAdData.1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, AllAdsModel allAdsModel2) {
                invoke(num.intValue(), str, allAdsModel2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, AllAdsModel allAdsModel2) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i == 200) {
                    GlobeAppData.INSTANCE.setAdConfigData(allAdsModel2);
                }
            }
        });
        return adConfigData;
    }
}
