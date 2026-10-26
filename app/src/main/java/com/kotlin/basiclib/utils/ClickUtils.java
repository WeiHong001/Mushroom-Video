package com.kotlin.basiclib.utils;

import android.util.Log;
import android.widget.Toast;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/** Original shared wall-clock gate, including zero/backward time and Toast behavior. */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/kotlin/basiclib/utils/ClickUtils;", "", "()V", "SPACE_TIME", "", "isDoubleClick", "", "()Z", "lastClickTime", "", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "doubleTime", "matchTimeDouble", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)

public final class ClickUtils {
    public static final ClickUtils INSTANCE;
    private static final int SPACE_TIME;
    private static long lastClickTime;

    static {
        INSTANCE = new ClickUtils();
        SPACE_TIME = 1200;
    }

    private ClickUtils() { }

    public final long getLastClickTime() { return lastClickTime; }
    public final void setLastClickTime(long value) { lastClickTime = value; }

    public final synchronized boolean isDoubleClick() {
        long now = System.currentTimeMillis();
        long elapsed = now - lastClickTime;
        if (0 < elapsed && elapsed < SPACE_TIME) {
            return true;
        }
        lastClickTime = now;
        return false;
    }

    public final synchronized boolean isDoubleClick(int doubleTime) {
        long now = System.currentTimeMillis();
        long elapsed = now - lastClickTime;
        if (0 < elapsed && elapsed < doubleTime) {
            return true;
        }
        lastClickTime = now;
        Log.e("time", System.currentTimeMillis() + "");
        return false;
    }

    public final synchronized boolean matchTimeDouble(int doubleTime) {
        long now = System.currentTimeMillis();
        long elapsed = now - lastClickTime;
        if (0 < elapsed && elapsed < doubleTime) {
            long seconds = (((long) doubleTime) - elapsed) / 1000L;
            Toast message = Toast.makeText(BaseApplicaitonKt.getApplication(),
                    "还需等待" + seconds + "秒，才能继续发言", Toast.LENGTH_SHORT);
            message.show();
            Intrinsics.checkExpressionValueIsNotNull(message, "Toast\n        .makeText(…         show()\n        }");
            return true;
        }
        lastClickTime = now;
        return false;
    }
}
