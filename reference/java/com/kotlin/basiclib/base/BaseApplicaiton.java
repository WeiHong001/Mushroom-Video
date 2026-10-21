package com.kotlin.basiclib.base;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import com.alibaba.android.arouter.launcher.ARouter;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseApplicaiton.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\u0004H\u0016¨\u0006\f"}, d2 = {"Lcom/kotlin/basiclib/base/BaseApplicaiton;", "Landroid/app/Application;", "()V", "attachBaseContext", "", TtmlNode.RUBY_BASE, "Landroid/content/Context;", "isBackground", "", d.R, "onCreate", "Companion", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class BaseApplicaiton extends Application {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: BaseApplicaiton.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/kotlin/basiclib/base/BaseApplicaiton$Companion;", "", "()V", "getApplication", "Landroid/content/Context;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Context getApplication() {
            return BaseApplicaitonKt.getApplication();
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        BaseApplicaitonKt.setApplication(this);
        ARouter.init(BaseApplicaitonKt.getApplication());
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
    }

    public final boolean isBackground(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) systemService).getRunningAppProcesses()) {
            if (Intrinsics.areEqual(runningAppProcessInfo.processName, context.getPackageName())) {
                return runningAppProcessInfo.importance != 100;
            }
        }
        return false;
    }
}
