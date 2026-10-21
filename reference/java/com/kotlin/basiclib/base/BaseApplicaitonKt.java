package com.kotlin.basiclib.base;

import com.google.android.exoplayer2.util.MimeTypes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: BaseApplicaiton.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\"+\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"<set-?>", "Lcom/kotlin/basiclib/base/BaseApplicaiton;", MimeTypes.BASE_TYPE_APPLICATION, "getApplication", "()Lcom/kotlin/basiclib/base/BaseApplicaiton;", "setApplication", "(Lcom/kotlin/basiclib/base/BaseApplicaiton;)V", "application$delegate", "Lkotlin/properties/ReadWriteProperty;", "basiclib_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class BaseApplicaitonKt {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty0(new MutablePropertyReference0Impl(BaseApplicaitonKt.class, MimeTypes.BASE_TYPE_APPLICATION, "getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;", 1))};
    private static final ReadWriteProperty application$delegate = Delegates.INSTANCE.notNull();

    public static final BaseApplicaiton getApplication() {
        return (BaseApplicaiton) application$delegate.getValue(null, $$delegatedProperties[0]);
    }

    public static final void setApplication(BaseApplicaiton baseApplicaiton) {
        Intrinsics.checkNotNullParameter(baseApplicaiton, "<set-?>");
        application$delegate.setValue(null, $$delegatedProperties[0], baseApplicaiton);
    }
}
