package com.kotlin.basiclib.utils;

import android.util.Log;
import android.widget.Toast;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClickUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/kotlin/basiclib/utils/ClickUtils;", "", "()V", "SPACE_TIME", "", "isDoubleClick", "", "()Z", "lastClickTime", "", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "doubleTime", "matchTimeDouble", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ClickUtils {
    public static final ClickUtils INSTANCE = new ClickUtils();
    private static final int SPACE_TIME = 1200;
    private static long lastClickTime;

    private ClickUtils() {
    }

    public final long getLastClickTime() {
        return lastClickTime;
    }

    public final void setLastClickTime(long j) {
        lastClickTime = j;
    }

    public final synchronized boolean isDoubleClick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - lastClickTime;
        if (0 < j && j < SPACE_TIME) {
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }

    public final synchronized boolean isDoubleClick(int doubleTime) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - lastClickTime;
        if (0 < j && j < doubleTime) {
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        Log.e("time", System.currentTimeMillis() + "");
        return false;
    }

    public final synchronized boolean matchTimeDouble(int doubleTime) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - lastClickTime;
        if (0 < j) {
            long j2 = doubleTime;
            if (j < j2) {
                Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "还需等待" + ((j2 - j) / ((long) 1000)) + "秒，才能继续发言", 0);
                toastMakeText.show();
                Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                return true;
            }
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }
}
