package com.kotlin.basiclib;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class StatusBarUtil {
    public static float DEFAULT_ALPHA = 0.0f;
    public static int DEFAULT_COLOR = 0;
    public static final int MIN_API = 19;

    public static int mixtureColor(int i, float f) {
        return (i & 16777215) | (((int) ((((-16777216) & i) == 0 ? 255 : i >>> 24) * f)) << 24);
    }

    public static void immersive(Activity activity) {
        immersive(activity, DEFAULT_COLOR, DEFAULT_ALPHA);
    }

    public static void immersive(Activity activity, int i, float f) {
        immersive(activity.getWindow(), i, f);
    }

    public static void immersive(Activity activity, int i) {
        immersive(activity.getWindow(), i, 1.0f);
    }

    public static void immersive(Window window) {
        immersive(window, DEFAULT_COLOR, DEFAULT_ALPHA);
    }

    public static void immersive(Window window, int i) {
        immersive(window, i, 1.0f);
    }

    public static void immersive(Window window, int i, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(mixtureColor(i, f));
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1024 | 256);
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            setTranslucentView((ViewGroup) window.getDecorView(), i, f);
        } else {
            if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT <= 16) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1024 | 256);
        }
    }

    public static void darkMode(Activity activity, boolean z) {
        if (isFlyme4Later()) {
            darkModeForFlyme4(activity.getWindow(), z);
        } else if (isMIUI6Later()) {
            darkModeForMIUI6(activity.getWindow(), z);
        } else if (Build.VERSION.SDK_INT >= 23) {
            darkModeForM(activity.getWindow(), z);
        }
    }

    public static void darkMode(Activity activity) {
        darkMode(activity.getWindow(), DEFAULT_COLOR, DEFAULT_ALPHA);
    }

    public static void darkMode(Activity activity, int i, float f) {
        darkMode(activity.getWindow(), i, f);
    }

    public static void darkMode(Window window, int i, float f) {
        if (isFlyme4Later()) {
            darkModeForFlyme4(window, true);
            immersive(window, i, f);
            return;
        }
        if (isMIUI6Later()) {
            darkModeForMIUI6(window, true);
            immersive(window, i, f);
        } else if (Build.VERSION.SDK_INT >= 23) {
            darkModeForM(window, true);
            immersive(window, i, f);
        } else if (Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            setTranslucentView((ViewGroup) window.getDecorView(), i, f);
        } else {
            immersive(window, i, f);
        }
    }

    private static void darkModeForM(Window window, boolean z) {
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        window.getDecorView().setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    public static boolean darkModeForFlyme4(Window window, boolean z) {
        if (window != null) {
            try {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(null);
                int i2 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z ? i2 | i : (i ^ (-1)) & i2);
                window.setAttributes(attributes);
                return true;
            } catch (Exception unused) {
                Log.e("StatusBar", "darkIcon: failed");
            }
        }
        return false;
    }

    public static boolean darkModeForMIUI6(Window window, boolean z) {
        Class<?> cls = window.getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z ? i : 0);
            objArr[1] = Integer.valueOf(i);
            method.invoke(window, objArr);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isFlyme4Later() {
        return Build.FINGERPRINT.contains("Flyme_OS_4") || Build.VERSION.INCREMENTAL.contains("Flyme_OS_4") || Pattern.compile("Flyme OS [4|5]", 2).matcher(Build.DISPLAY).find();
    }

    public static boolean isMIUI6Later() {
        try {
            return Integer.parseInt(((String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "ro.miui.ui.version.name")).replaceAll("[vV]", "")) >= 6;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void setPadding(Context context, View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + getStatusBarHeight(context), view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public static void setPaddingSmart(Context context, View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.height > 0) {
                layoutParams.height += getStatusBarHeight(context);
            }
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + getStatusBarHeight(context), view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public static void setHeightAndPadding(Context context, View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.getLayoutParams().height += getStatusBarHeight(context);
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + getStatusBarHeight(context), view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public static void setMargin(Context context, View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin += getStatusBarHeight(context);
            }
            view.setLayoutParams(layoutParams);
        }
    }

    public static void setTranslucentView(ViewGroup viewGroup, int i, float f) {
        if (Build.VERSION.SDK_INT >= 19) {
            int iMixtureColor = mixtureColor(i, f);
            View viewFindViewById = viewGroup.findViewById(android.R.id.custom);
            if (viewFindViewById == null && iMixtureColor != 0) {
                viewFindViewById = new View(viewGroup.getContext());
                viewFindViewById.setId(android.R.id.custom);
                viewGroup.addView(viewFindViewById, new ViewGroup.LayoutParams(-1, getStatusBarHeight(viewGroup.getContext())));
            }
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(iMixtureColor);
            }
        }
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return (int) TypedValue.applyDimension(1, 24, Resources.getSystem().getDisplayMetrics());
    }

    public static int StatusBarLightMode(Activity activity) {
        if (Build.VERSION.SDK_INT >= 19) {
            if (Build.VERSION.SDK_INT >= 23) {
                activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                return 3;
            }
            if (MIUISetStatusBarLightMode(activity.getWindow(), true)) {
                return 1;
            }
            if (FlymeSetStatusBarLightMode(activity.getWindow(), true)) {
                return 2;
            }
        }
        return 0;
    }

    public static boolean FlymeSetStatusBarLightMode(Window window, boolean z) {
        if (window != null) {
            try {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(null);
                int i2 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z ? i2 | i : (i ^ (-1)) & i2);
                window.setAttributes(attributes);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean MIUISetStatusBarLightMode(Window window, boolean z) {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
