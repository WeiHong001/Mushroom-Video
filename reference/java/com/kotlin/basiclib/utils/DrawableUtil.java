package com.kotlin.basiclib.utils;

import android.content.Context;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DrawableUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ \u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0002¨\u0006\f"}, d2 = {"Lcom/kotlin/basiclib/utils/DrawableUtil;", "", "()V", "getResByNameInDrawable", "", d.R, "Landroid/content/Context;", "resName", "", "getResByNameInMipmap", "getResourcesByName", "defType", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DrawableUtil {
    public static final DrawableUtil INSTANCE = new DrawableUtil();

    private DrawableUtil() {
    }

    public final int getResByNameInMipmap(Context context, String resName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(resName, "resName");
        return getResourcesByName(context, resName, "mipmap");
    }

    public final int getResByNameInDrawable(Context context, String resName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(resName, "resName");
        return getResourcesByName(context, resName, "drawable");
    }

    private final int getResourcesByName(Context context, String resName, String defType) {
        return context.getResources().getIdentifier(resName, defType, context.getPackageName());
    }
}
