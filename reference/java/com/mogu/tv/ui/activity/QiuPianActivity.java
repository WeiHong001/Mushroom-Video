package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ClickUtils;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.ActQiupianBinding;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.utils.ImageUtilKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QiuPianActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\u0006\u0010\b\u001a\u00020\u0005¨\u0006\t"}, d2 = {"Lcom/mogu/tv/ui/activity/QiuPianActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActQiupianBinding;", "()V", "initData", "", "initView", "refreshVerify", "save", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class QiuPianActivity extends CommonBaseActivity<ActQiupianBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.QiuPianActivity.initView.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                QiuPianActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("求片");
        TextView textView = getBinding().tvSubmit;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvSubmit");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.QiuPianActivity.initView.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                EditText editText = QiuPianActivity.this.getBinding().etPassword;
                Intrinsics.checkNotNullExpressionValue(editText, "binding.etPassword");
                if (!(AndroidutilsKt.content(editText).length() == 0)) {
                    EditText editText2 = QiuPianActivity.this.getBinding().etVerify;
                    Intrinsics.checkNotNullExpressionValue(editText2, "binding.etVerify");
                    if (!(AndroidutilsKt.content(editText2).length() == 0)) {
                        QiuPianActivity.this.save();
                        return;
                    }
                    Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "验证码不能为空", 0);
                    toastMakeText.show();
                    Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                    return;
                }
                Toast toastMakeText2 = Toast.makeText(BaseApplicaitonKt.getApplication(), "内容不能为空", 0);
                toastMakeText2.show();
                Intrinsics.checkExpressionValueIsNotNull(toastMakeText2, "Toast\n        .makeText(…         show()\n        }");
            }
        });
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        ImageView imageView = getBinding().ivVerify;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivVerify");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.QiuPianActivity.initData.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (ClickUtils.INSTANCE.isDoubleClick()) {
                    return;
                }
                QiuPianActivity.this.refreshVerify();
            }
        });
        refreshVerify();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshVerify() {
        ApiManager.INSTANCE.getVerifyCodeImage(new Function3<Integer, String, String, Unit>() { // from class: com.mogu.tv.ui.activity.QiuPianActivity.refreshVerify.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, String str2) {
                invoke(num.intValue(), str, str2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, String str) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                ImageView imageView = QiuPianActivity.this.getBinding().ivVerify;
                Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivVerify");
                ImageUtilKt.with(imageView, str);
            }
        });
    }

    public final void save() {
        ApiManager apiManager = ApiManager.INSTANCE;
        EditText editText = getBinding().etPassword;
        Intrinsics.checkNotNullExpressionValue(editText, "binding.etPassword");
        String strContent = AndroidutilsKt.content(editText);
        EditText editText2 = getBinding().etVerify;
        Intrinsics.checkNotNullExpressionValue(editText2, "binding.etVerify");
        apiManager.gbookSave(strContent, AndroidutilsKt.content(editText2), new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.QiuPianActivity.save.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                invoke(num.intValue(), str, justReturnMsg);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i == 1) {
                    QiuPianActivity.this.onBackPressed();
                }
                AndroidutilsKt.toast(msg);
            }
        });
    }
}
