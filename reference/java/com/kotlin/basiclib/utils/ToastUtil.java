package com.kotlin.basiclib.utils;

import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ToastUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/kotlin/basiclib/utils/ToastUtil;", "", "()V", "toast", "", NotificationCompat.CATEGORY_MESSAGE, "", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ToastUtil {
    public static final ToastUtil INSTANCE = new ToastUtil();

    private ToastUtil() {
    }

    public final void toast(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Toast.makeText(BaseApplicaitonKt.getApplication(), msg, 0).show();
    }
}
