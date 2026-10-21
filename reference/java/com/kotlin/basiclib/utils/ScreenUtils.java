package com.kotlin.basiclib.utils;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.umeng.analytics.pro.d;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScreenUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0010J\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0010R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006¨\u0006\u001d"}, d2 = {"Lcom/kotlin/basiclib/utils/ScreenUtils;", "", "()V", "screenHeight", "", "getScreenHeight", "()I", "screenHeight$delegate", "Lkotlin/Lazy;", "screenWidth", "getScreenWidth", "screenWidth$delegate", "dip2px", d.R, "Landroid/content/Context;", "dpValue", "", "getDensity", "getHeight", "mContext", "getWidth", "isInLeft", "", "xPos", "isInRight", "px2sp", "pxValue", "sp2px", "sp", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ScreenUtils {
    public static final ScreenUtils INSTANCE = new ScreenUtils();

    /* JADX INFO: renamed from: screenWidth$delegate, reason: from kotlin metadata */
    private static final Lazy screenWidth = LazyKt.lazy(new Function0<Integer>() { // from class: com.kotlin.basiclib.utils.ScreenUtils$screenWidth$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(ScreenUtils.INSTANCE.getWidth(BaseApplicaitonKt.getApplication()));
        }
    });

    /* JADX INFO: renamed from: screenHeight$delegate, reason: from kotlin metadata */
    private static final Lazy screenHeight = LazyKt.lazy(new Function0<Integer>() { // from class: com.kotlin.basiclib.utils.ScreenUtils$screenHeight$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Integer invoke() {
            return Integer.valueOf(ScreenUtils.INSTANCE.getHeight(BaseApplicaitonKt.getApplication()));
        }
    });

    private ScreenUtils() {
    }

    public final int getScreenWidth() {
        return ((Number) screenWidth.getValue()).intValue();
    }

    public final int getScreenHeight() {
        return ((Number) screenHeight.getValue()).intValue();
    }

    public final int getWidth(Context mContext) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = mContext.getApplicationContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public final float getDensity(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getResources().getDisplayMetrics().density;
    }

    public final int getHeight(Context mContext) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = mContext.getApplicationContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public final boolean isInRight(Context mContext, int xPos) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        return xPos > getWidth(mContext) / 2;
    }

    public final boolean isInLeft(Context mContext, int xPos) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        return xPos < getWidth(mContext) / 2;
    }

    public final int dip2px(Context context, float dpValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final int dip2px(int dpValue) {
        return (int) ((dpValue * BaseApplicaitonKt.getApplication().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final int px2sp(float pxValue) {
        return (int) ((pxValue / BaseApplicaitonKt.getApplication().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public final int sp2px(float sp) {
        return (int) ((sp * BaseApplicaitonKt.getApplication().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
