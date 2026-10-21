package com.kotlin.basiclib.utils;

import android.content.SharedPreferences;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.luck.picture.lib.camare.util.LogUtil;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.eclipse.jetty.servlet.ServletHandler;

/* JADX INFO: compiled from: SpUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u0012J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u0018J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u001aJ\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u0004J\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0001J\u000e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00042\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040 J\u0016\u0010!\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0001R#\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\r¨\u0006\""}, d2 = {"Lcom/kotlin/basiclib/utils/SpUtil;", "", "()V", "name", "", "kotlin.jvm.PlatformType", "getName", "()Ljava/lang/String;", "name$delegate", "Lkotlin/Lazy;", "prefs", "Landroid/content/SharedPreferences;", "getPrefs", "()Landroid/content/SharedPreferences;", "prefs$delegate", "clear", "", "getBoolean", "", "key", ServletHandler.__DEFAULT_SERVLET, "getFloat", "", "getInt", "", "getLong", "", "getString", "getValue", "remove", "saveStringSets", "value", "", "saveValue", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SpUtil {
    public static final SpUtil INSTANCE = new SpUtil();

    /* JADX INFO: renamed from: name$delegate, reason: from kotlin metadata */
    private static final Lazy name = LazyKt.lazy(new Function0<String>() { // from class: com.kotlin.basiclib.utils.SpUtil$name$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return BaseApplicaitonKt.getApplication().getPackageName();
        }
    });

    /* JADX INFO: renamed from: prefs$delegate, reason: from kotlin metadata */
    private static final Lazy prefs = LazyKt.lazy(new Function0<SharedPreferences>() { // from class: com.kotlin.basiclib.utils.SpUtil$prefs$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final SharedPreferences invoke() {
            return BaseApplicaitonKt.getApplication().getSharedPreferences(SpUtil.INSTANCE.getName(), 0);
        }
    });

    private SpUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getName() {
        return (String) name.getValue();
    }

    private final SharedPreferences getPrefs() {
        Object value = prefs.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-prefs>(...)");
        return (SharedPreferences) value;
    }

    public final Object getValue(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(obj, "default");
        SharedPreferences prefs2 = getPrefs();
        if (obj instanceof Integer) {
            return Integer.valueOf(prefs2.getInt(key, ((Number) obj).intValue()));
        }
        if (obj instanceof String) {
            return prefs2.getString(key, (String) obj);
        }
        if (obj instanceof Long) {
            return Long.valueOf(prefs2.getLong(key, ((Number) obj).longValue()));
        }
        if (obj instanceof Float) {
            return Float.valueOf(prefs2.getFloat(key, ((Number) obj).floatValue()));
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(prefs2.getBoolean(key, ((Boolean) obj).booleanValue()));
        }
        throw new IllegalArgumentException("SharedPreferences 类型错误");
    }

    public static /* synthetic */ String getString$default(SpUtil spUtil, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return spUtil.getString(str, str2);
    }

    public final String getString(String key, String str) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(str, "default");
        Object value = getValue(key, str);
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.String");
        return (String) value;
    }

    public static /* synthetic */ int getInt$default(SpUtil spUtil, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return spUtil.getInt(str, i);
    }

    public final int getInt(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value = getValue(key, Integer.valueOf(i));
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) value).intValue();
    }

    public static /* synthetic */ long getLong$default(SpUtil spUtil, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return spUtil.getLong(str, j);
    }

    public final long getLong(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value = getValue(key, Long.valueOf(j));
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) value).longValue();
    }

    public static /* synthetic */ boolean getBoolean$default(SpUtil spUtil, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return spUtil.getBoolean(str, z);
    }

    public final boolean getBoolean(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value = getValue(key, Boolean.valueOf(z));
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) value).booleanValue();
    }

    public static /* synthetic */ float getFloat$default(SpUtil spUtil, String str, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return spUtil.getFloat(str, f);
    }

    public final float getFloat(String key, float f) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object value = getValue(key, Float.valueOf(f));
        Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) value).floatValue();
    }

    public final void saveValue(String key, Object value) {
        SharedPreferences.Editor editorPutBoolean;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        SharedPreferences.Editor editorEdit = getPrefs().edit();
        LogUtil.e("saveValue", key);
        if (value instanceof Long) {
            editorPutBoolean = editorEdit.putLong(key, ((Number) value).longValue());
        } else if (value instanceof Integer) {
            editorPutBoolean = editorEdit.putInt(key, ((Number) value).intValue());
        } else if (value instanceof String) {
            editorPutBoolean = editorEdit.putString(key, (String) value);
        } else if (value instanceof Float) {
            editorPutBoolean = editorEdit.putFloat(key, ((Number) value).floatValue());
        } else {
            if (!(value instanceof Boolean)) {
                throw new IllegalArgumentException("SharedPreferences 类型错误");
            }
            editorPutBoolean = editorEdit.putBoolean(key, ((Boolean) value).booleanValue());
        }
        editorPutBoolean.apply();
    }

    public final void saveStringSets(String key, Set<String> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        SharedPreferences.Editor editorEdit = getPrefs().edit();
        LogUtil.e("saveStringSets", key);
        editorEdit.putStringSet(key, value).apply();
    }

    public final void clear() {
        getPrefs().edit().clear().apply();
    }

    public final void remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        getPrefs().edit().remove(key).apply();
    }
}
