package com.kotlin.basiclib;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewBindingUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\u0003\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\tJ'\u0010\n\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\tJ'\u0010\u000b\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u000eJ9\u0010\u000b\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007¢\u0006\u0002\u0010\u0013J'\u0010\u000b\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0014J9\u0010\u0015\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u0018\u0012\u0004\u0012\u0002H\u00040\u0017H\u0002¢\u0006\u0002\u0010\u0019J#\u0010\u001a\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u0005*\u0002H\u00042\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/kotlin/basiclib/ViewBindingUtil;", "", "()V", "bindWithGeneric", "VB", "Landroidx/viewbinding/ViewBinding;", "genericOwner", "view", "Landroid/view/View;", "(Ljava/lang/Object;Landroid/view/View;)Landroidx/viewbinding/ViewBinding;", "getBindingWithGeneric", "inflateWithGeneric", "layoutInflater", "Landroid/view/LayoutInflater;", "(Ljava/lang/Object;Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;", "parent", "Landroid/view/ViewGroup;", "attachToParent", "", "(Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroidx/viewbinding/ViewBinding;", "(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "withGenericBindingClass", "block", "Lkotlin/Function1;", "Ljava/lang/Class;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;", "withLifecycleOwner", "(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)Landroidx/viewbinding/ViewBinding;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewBindingUtil {
    public static final ViewBindingUtil INSTANCE = new ViewBindingUtil();

    private ViewBindingUtil() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmStatic
    public static final <VB extends ViewBinding> VB inflateWithGeneric(Object genericOwner, final LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(genericOwner, "genericOwner");
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        ViewBindingUtil viewBindingUtil = INSTANCE;
        return (VB) viewBindingUtil.withLifecycleOwner(viewBindingUtil.withGenericBindingClass(genericOwner, new Function1<Class<VB>, VB>() { // from class: com.kotlin.basiclib.ViewBindingUtil.inflateWithGeneric.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Class<TVB;>;)TVB; */
            @Override // kotlin.jvm.functions.Function1
            public final ViewBinding invoke(Class clazz) throws IllegalAccessException, InvocationTargetException {
                Intrinsics.checkNotNullParameter(clazz, "clazz");
                Object objInvoke = clazz.getMethod("inflate", LayoutInflater.class).invoke(null, layoutInflater);
                Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type VB of com.kotlin.basiclib.ViewBindingUtil.inflateWithGeneric");
                return (ViewBinding) objInvoke;
            }
        }), genericOwner);
    }

    @JvmStatic
    public static final <VB extends ViewBinding> VB inflateWithGeneric(Object genericOwner, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(genericOwner, "genericOwner");
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        Intrinsics.checkNotNullExpressionValue(layoutInflaterFrom, "from(parent.context)");
        return (VB) inflateWithGeneric(genericOwner, layoutInflaterFrom, parent, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmStatic
    public static final <VB extends ViewBinding> VB inflateWithGeneric(Object genericOwner, final LayoutInflater layoutInflater, final ViewGroup parent, final boolean attachToParent) {
        Intrinsics.checkNotNullParameter(genericOwner, "genericOwner");
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        ViewBindingUtil viewBindingUtil = INSTANCE;
        return (VB) viewBindingUtil.withLifecycleOwner(viewBindingUtil.withGenericBindingClass(genericOwner, new Function1<Class<VB>, VB>() { // from class: com.kotlin.basiclib.ViewBindingUtil.inflateWithGeneric.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Class<TVB;>;)TVB; */
            @Override // kotlin.jvm.functions.Function1
            public final ViewBinding invoke(Class clazz) throws IllegalAccessException, InvocationTargetException {
                Intrinsics.checkNotNullParameter(clazz, "clazz");
                Object objInvoke = clazz.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE).invoke(null, layoutInflater, parent, Boolean.valueOf(attachToParent));
                Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type VB of com.kotlin.basiclib.ViewBindingUtil.inflateWithGeneric");
                return (ViewBinding) objInvoke;
            }
        }), genericOwner);
    }

    @JvmStatic
    public static final <VB extends ViewBinding> VB getBindingWithGeneric(Object genericOwner, View view) {
        Intrinsics.checkNotNullParameter(genericOwner, "genericOwner");
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag = view.getTag(R.id.tag_view_binding);
        VB vb = tag instanceof ViewBinding ? (VB) tag : null;
        if (vb != null) {
            return vb;
        }
        VB vb2 = (VB) bindWithGeneric(genericOwner, view);
        view.setTag(R.id.tag_view_binding, vb2);
        return vb2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated(message = "Use ViewBindingUtil.getBindingWithGeneric<VB>(genericOwner, view) instead.", replaceWith = @ReplaceWith(expression = "ViewBindingUtil.getBindingWithGeneric<VB>(genericOwner, view)", imports = {}))
    @JvmStatic
    public static final <VB extends ViewBinding> VB bindWithGeneric(Object genericOwner, final View view) {
        Intrinsics.checkNotNullParameter(genericOwner, "genericOwner");
        Intrinsics.checkNotNullParameter(view, "view");
        ViewBindingUtil viewBindingUtil = INSTANCE;
        return (VB) viewBindingUtil.withLifecycleOwner(viewBindingUtil.withGenericBindingClass(genericOwner, new Function1<Class<VB>, VB>() { // from class: com.kotlin.basiclib.ViewBindingUtil.bindWithGeneric.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Class<TVB;>;)TVB; */
            @Override // kotlin.jvm.functions.Function1
            public final ViewBinding invoke(Class clazz) throws IllegalAccessException, InvocationTargetException {
                Intrinsics.checkNotNullParameter(clazz, "clazz");
                Object objInvoke = clazz.getMethod("bind", View.class).invoke(null, view);
                Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type VB of com.kotlin.basiclib.ViewBindingUtil.bindWithGeneric");
                return (ViewBinding) objInvoke;
            }
        }), genericOwner);
    }

    private final <VB extends ViewBinding> VB withLifecycleOwner(VB vb, Object obj) {
        boolean z = vb instanceof ViewDataBinding;
        if (z && (obj instanceof ComponentActivity)) {
            ((ViewDataBinding) vb).setLifecycleOwner((LifecycleOwner) obj);
        } else if (z && (obj instanceof Fragment)) {
            ((ViewDataBinding) vb).setLifecycleOwner(((Fragment) obj).getViewLifecycleOwner());
        }
        return vb;
    }

    private final <VB extends ViewBinding> VB withGenericBindingClass(Object genericOwner, Function1<? super Class<VB>, ? extends VB> block) throws Throwable {
        Type genericSuperclass = genericOwner.getClass().getGenericSuperclass();
        for (Class<? super Object> superclass = genericOwner.getClass().getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (genericSuperclass instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                Intrinsics.checkNotNullExpressionValue(actualTypeArguments, "genericSuperclass.actualTypeArguments");
                for (Type type : actualTypeArguments) {
                    try {
                        Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<VB of com.kotlin.basiclib.ViewBindingUtil.withGenericBindingClass$lambda-2>");
                        return block.invoke((Class) type);
                    } catch (ClassCastException | NoSuchMethodException unused) {
                    } catch (InvocationTargetException e) {
                        InvocationTargetException cause = e;
                        while (cause instanceof InvocationTargetException) {
                            cause = e.getCause();
                        }
                        if (cause == null) {
                            throw new IllegalArgumentException("ViewBinding generic was found, but creation failed.");
                        }
                        throw cause;
                    }
                }
            }
            genericSuperclass = superclass.getGenericSuperclass();
        }
        throw new IllegalArgumentException("There is no generic of ViewBinding.");
    }
}
