package com.mogu.tv.main;

import android.view.View;
import com.kotlin.basiclib.AndroidutilsKt;
import com.mogu.tv.common.arouter.ArouterUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004¨\u0006\u0005"}, d2 = {"LoginClick", "", "Landroid/view/View;", "action", "Lkotlin/Function0;", "app_mogushareRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class UserManagerKt {
    public static final void LoginClick(View view, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        AndroidutilsKt.click(view, new Function1<View, Unit>() { // from class: com.mogu.tv.main.UserManagerKt.LoginClick.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                invoke2(view2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (UserManager.INSTANCE.isLogin()) {
                    action.invoke();
                } else {
                    ArouterUtils.INSTANCE.toLoginActivity();
                }
            }
        });
    }
}
