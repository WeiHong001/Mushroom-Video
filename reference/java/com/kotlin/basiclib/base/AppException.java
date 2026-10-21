package com.kotlin.basiclib.base;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.umeng.analytics.pro.d;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.UnknownHostException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppException.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000  2\u00060\u0001j\u0002`\u00022\u00020\u0003:\u0001 B\u0007\b\u0012¢\u0006\u0002\u0010\u0004B#\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\u0010\t\u001a\u00060\u0001j\u0002`\u0002¢\u0006\u0002\u0010\nJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011¨\u0006!"}, d2 = {"Lcom/kotlin/basiclib/base/AppException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Ljava/lang/Thread$UncaughtExceptionHandler;", "()V", "type", "", "code", "", "excp", "(BILjava/lang/Exception;)V", "getCode", "()Ljava/lang/Integer;", "setCode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "mDefaultHandler", "Ljava/lang/Byte;", "getCrashReport", "", d.R, "Landroid/content/Context;", "ex", "", "getPackageInfo", "Landroid/content/pm/PackageInfo;", "handleException", "", "uncaughtException", "", "thread", "Ljava/lang/Thread;", "Companion", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AppException extends Exception implements Thread.UncaughtExceptionHandler {
    private static final boolean Debug = false;
    private Integer code;
    private Thread.UncaughtExceptionHandler mDefaultHandler;
    private Byte type;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String cacheKey = "error";
    private static final byte TYPE_NETWORK = 1;
    private static final byte TYPE_SOCKET = 2;
    private static final byte TYPE_HTTP_CODE = 3;
    private static final byte TYPE_HTTP_ERROR = 4;
    private static final byte TYPE_XML = 5;
    private static final byte TYPE_IO = 6;
    private static final byte TYPE_RUN = 7;
    private static final byte TYPE_JSON = 8;

    public /* synthetic */ AppException(byte b, int i, Exception exc, DefaultConstructorMarker defaultConstructorMarker) {
        this(b, i, exc);
    }

    public /* synthetic */ AppException(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final Integer getCode() {
        return this.code;
    }

    public final void setCode(Integer num) {
        this.code = num;
    }

    private AppException() {
        this.code = 0;
        this.mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
    }

    private AppException(byte b, int i, Exception exc) {
        super(exc);
        this.code = 0;
        this.type = Byte.valueOf(b);
        this.code = Integer.valueOf(i);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable ex) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        Intrinsics.checkNotNullParameter(thread, "thread");
        Intrinsics.checkNotNullParameter(ex, "ex");
        if (handleException(ex) || (uncaughtExceptionHandler = this.mDefaultHandler) == null) {
            return;
        }
        Intrinsics.checkNotNull(uncaughtExceptionHandler);
        uncaughtExceptionHandler.uncaughtException(thread, ex);
    }

    private final boolean handleException(Throwable ex) {
        if (ex == null) {
            return false;
        }
        Log.e("Exception-------", "崩溃信息: " + getCrashReport(BaseApplicaitonKt.getApplication(), ex));
        AcManage.getAppManager().AppExit(BaseApplicaitonKt.getApplication());
        System.exit(0);
        return true;
    }

    private final String getCrashReport(Context context, Throwable ex) {
        PackageInfo packageInfo = getPackageInfo(context);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Version: " + packageInfo.versionName + '(' + packageInfo.versionCode + ")\n");
        stringBuffer.append("Android: " + Build.VERSION.RELEASE + '(' + Build.MODEL + ")\n");
        StringBuilder sb = new StringBuilder();
        sb.append("Exception: ");
        sb.append(ex.getMessage());
        sb.append('\n');
        stringBuffer.append(sb.toString());
        for (StackTraceElement stackTraceElement : ex.getStackTrace()) {
            stringBuffer.append(stackTraceElement.toString() + '\n');
        }
        String string = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(string, "exceptionStr.toString()");
        return string;
    }

    public final PackageInfo getPackageInfo(Context context) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace(System.err);
            packageInfo = null;
        }
        return packageInfo == null ? new PackageInfo() : packageInfo;
    }

    /* JADX INFO: compiled from: AppException.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u001f\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010#\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010$\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010%\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010&\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010'\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR\u0014\u0010\r\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\bR\u0014\u0010\u000f\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\bR\u0014\u0010\u0011\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\bR\u0014\u0010\u0013\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\bR\u0014\u0010\u0015\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\bR\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u0006("}, d2 = {"Lcom/kotlin/basiclib/base/AppException$Companion;", "", "()V", "Debug", "", "TYPE_HTTP_CODE", "", "getTYPE_HTTP_CODE", "()B", "TYPE_HTTP_ERROR", "getTYPE_HTTP_ERROR", "TYPE_IO", "getTYPE_IO", "TYPE_JSON", "getTYPE_JSON", "TYPE_NETWORK", "getTYPE_NETWORK", "TYPE_RUN", "getTYPE_RUN", "TYPE_SOCKET", "getTYPE_SOCKET", "TYPE_XML", "getTYPE_XML", "appExceptionHandler", "Lcom/kotlin/basiclib/base/AppException;", "getAppExceptionHandler", "()Lcom/kotlin/basiclib/base/AppException;", "cacheKey", "", "getCacheKey", "()Ljava/lang/String;", "http", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "io", "network", "run", "socket", "xml", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getCacheKey() {
            return AppException.cacheKey;
        }

        public final byte getTYPE_NETWORK() {
            return AppException.TYPE_NETWORK;
        }

        public final byte getTYPE_SOCKET() {
            return AppException.TYPE_SOCKET;
        }

        public final byte getTYPE_HTTP_CODE() {
            return AppException.TYPE_HTTP_CODE;
        }

        public final byte getTYPE_HTTP_ERROR() {
            return AppException.TYPE_HTTP_ERROR;
        }

        public final byte getTYPE_XML() {
            return AppException.TYPE_XML;
        }

        public final byte getTYPE_IO() {
            return AppException.TYPE_IO;
        }

        public final byte getTYPE_RUN() {
            return AppException.TYPE_RUN;
        }

        public final byte getTYPE_JSON() {
            return AppException.TYPE_JSON;
        }

        public final AppException http(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return new AppException(getTYPE_HTTP_ERROR(), 0, e, null);
        }

        public final AppException socket(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return new AppException(getTYPE_SOCKET(), 0, e, null);
        }

        public final AppException io(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            DefaultConstructorMarker defaultConstructorMarker = null;
            int i = 0;
            if ((e instanceof UnknownHostException) || (e instanceof ConnectException)) {
                return new AppException(getTYPE_NETWORK(), i, e, defaultConstructorMarker);
            }
            if (e instanceof IOException) {
                return new AppException(getTYPE_IO(), i, e, defaultConstructorMarker);
            }
            return run(e);
        }

        public final AppException xml(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return new AppException(getTYPE_XML(), 0, e, null);
        }

        public final AppException network(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            if ((e instanceof UnknownHostException) || (e instanceof ConnectException)) {
                return new AppException(getTYPE_NETWORK(), 0, e, null);
            }
            if (e instanceof SocketException) {
                return socket(e);
            }
            return http(e);
        }

        public final AppException run(Exception e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return new AppException(getTYPE_RUN(), 0, e, null);
        }

        public final AppException getAppExceptionHandler() {
            return new AppException(null);
        }
    }
}
