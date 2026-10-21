package com.mogu.tv.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.amogu6.tv.R;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.StatusBarUtil;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.ActForgetpassBinding;
import com.mogu.tv.model.CaptchaModel;
import com.mogu.tv.model.JustReturnMsg;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

/* JADX INFO: compiled from: ForgetPassWordActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0011H\u0014J\b\u0010\u0015\u001a\u00020\u0011H\u0002J\u000e\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0004\u0018\u00010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/mogu/tv/ui/ForgetPassWordActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActForgetpassBinding;", "()V", "capObj", "Lcom/mogu/tv/model/CaptchaModel;", "getCapObj", "()Lcom/mogu/tv/model/CaptchaModel;", "setCapObj", "(Lcom/mogu/tv/model/CaptchaModel;)V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "getVerifyCode", "", "initData", "initView", "onDestroy", "senSms", "covertBase64ToBitmap", "Landroid/graphics/Bitmap;", "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ForgetPassWordActivity extends CommonBaseActivity<ActForgetpassBinding> {
    private CaptchaModel capObj;

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.getMActivity());
        }
    });

    public final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        try {
            StatusBarUtil.setPadding(this, getBinding().llHead);
            StatusBarUtil.immersive(this, ContextCompat.getColor(getMActivity(), R.color.mian_bg_color));
        } catch (Exception unused) {
        }
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity.initView.1
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
                ForgetPassWordActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("忘记密码");
        TextView textView = getBinding().tvClick;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvClick");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity.initView.2
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
                ForgetPassWordActivity.this.getVerifyCode();
            }
        });
        ImageView imageView2 = getBinding().ivVerify;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivVerify");
        AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity.initView.3
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
                ForgetPassWordActivity.this.getVerifyCode();
            }
        });
        getVerifyCode();
        TextView textView2 = getBinding().tvGetVerifycation;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvGetVerifycation");
        AndroidutilsKt.click(textView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity.initView.4
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
                ActForgetpassBinding binding = ForgetPassWordActivity.this.getBinding();
                ForgetPassWordActivity forgetPassWordActivity = ForgetPassWordActivity.this;
                ActForgetpassBinding actForgetpassBinding = binding;
                EditText etAccount = actForgetpassBinding.etAccount;
                Intrinsics.checkNotNullExpressionValue(etAccount, "etAccount");
                if (!AndroidutilsKt.isEmpty(etAccount)) {
                    EditText etImgverify = actForgetpassBinding.etImgverify;
                    Intrinsics.checkNotNullExpressionValue(etImgverify, "etImgverify");
                    if (!AndroidutilsKt.isEmpty(etImgverify)) {
                        forgetPassWordActivity.senSms();
                        return;
                    }
                    Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "图片验证码不能为空", 0);
                    toastMakeText.show();
                    Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                    return;
                }
                Toast toastMakeText2 = Toast.makeText(BaseApplicaitonKt.getApplication(), "账号不能为空", 0);
                toastMakeText2.show();
                Intrinsics.checkExpressionValueIsNotNull(toastMakeText2, "Toast\n        .makeText(…         show()\n        }");
            }
        });
    }

    public final CaptchaModel getCapObj() {
        return this.capObj;
    }

    public final void setCapObj(CaptchaModel captchaModel) {
        this.capObj = captchaModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getVerifyCode() {
        ApiManager.INSTANCE.getVerifyCodeImage(new Function3<Integer, String, String, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity.getVerifyCode.1
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
                if ((str != null ? str.length() : 0) > 10) {
                    ForgetPassWordActivity.this.setCapObj((CaptchaModel) new Gson().fromJson(str, CaptchaModel.class));
                    ImageView imageView = ForgetPassWordActivity.this.getBinding().ivVerify;
                    ForgetPassWordActivity forgetPassWordActivity = ForgetPassWordActivity.this;
                    CaptchaModel capObj = forgetPassWordActivity.getCapObj();
                    imageView.setImageBitmap(forgetPassWordActivity.covertBase64ToBitmap(capObj != null ? capObj.getCaptchaUrl() : null));
                }
            }
        });
    }

    public final Bitmap covertBase64ToBitmap(String str) {
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            return null;
        }
        if (StringsKt.contains$default((CharSequence) str2, (CharSequence) "data:image/png;base64,", false, 2, (Object) null)) {
            str = StringsKt.replace$default(str, "data:image/png;base64,", "", false, 4, (Object) null);
        }
        byte[] bArrDecode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        TextView textView = getBinding().tvSubmit;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvSubmit");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity.initData.1
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
                ActForgetpassBinding binding = ForgetPassWordActivity.this.getBinding();
                final ForgetPassWordActivity forgetPassWordActivity = ForgetPassWordActivity.this;
                ActForgetpassBinding actForgetpassBinding = binding;
                EditText etAccount = actForgetpassBinding.etAccount;
                Intrinsics.checkNotNullExpressionValue(etAccount, "etAccount");
                if (!AndroidutilsKt.isEmpty(etAccount)) {
                    EditText etPassword = actForgetpassBinding.etPassword;
                    Intrinsics.checkNotNullExpressionValue(etPassword, "etPassword");
                    if (!AndroidutilsKt.isEmpty(etPassword)) {
                        EditText etPassword2 = actForgetpassBinding.etPassword2;
                        Intrinsics.checkNotNullExpressionValue(etPassword2, "etPassword2");
                        if (!AndroidutilsKt.isEmpty(etPassword2)) {
                            EditText etPassword3 = actForgetpassBinding.etPassword;
                            Intrinsics.checkNotNullExpressionValue(etPassword3, "etPassword");
                            String strContent = AndroidutilsKt.content(etPassword3);
                            EditText etPassword4 = actForgetpassBinding.etPassword2;
                            Intrinsics.checkNotNullExpressionValue(etPassword4, "etPassword2");
                            if (!(!strContent.equals(AndroidutilsKt.content(etPassword4)))) {
                                EditText etVerify = actForgetpassBinding.etVerify;
                                Intrinsics.checkNotNullExpressionValue(etVerify, "etVerify");
                                if (!AndroidutilsKt.isEmpty(etVerify)) {
                                    ApiManager apiManager = ApiManager.INSTANCE;
                                    EditText etAccount2 = actForgetpassBinding.etAccount;
                                    Intrinsics.checkNotNullExpressionValue(etAccount2, "etAccount");
                                    String strContent2 = AndroidutilsKt.content(etAccount2);
                                    EditText etPassword5 = actForgetpassBinding.etPassword;
                                    Intrinsics.checkNotNullExpressionValue(etPassword5, "etPassword");
                                    String strContent3 = AndroidutilsKt.content(etPassword5);
                                    EditText etVerify2 = actForgetpassBinding.etVerify;
                                    Intrinsics.checkNotNullExpressionValue(etVerify2, "etVerify");
                                    apiManager.resetPassword(strContent2, strContent3, AndroidutilsKt.content(etVerify2), new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity$initData$1$1$6
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
                                            if (i == 200 && justReturnMsg != null) {
                                                AndroidutilsKt.toast("重置成功");
                                                forgetPassWordActivity.onBackPressed();
                                            } else {
                                                AndroidutilsKt.toast(msg);
                                            }
                                        }
                                    });
                                    return;
                                }
                                Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "手机验证码不能为空", 0);
                                toastMakeText.show();
                                Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                                return;
                            }
                            Toast toastMakeText2 = Toast.makeText(BaseApplicaitonKt.getApplication(), "密码输入不相同", 0);
                            toastMakeText2.show();
                            Intrinsics.checkExpressionValueIsNotNull(toastMakeText2, "Toast\n        .makeText(…         show()\n        }");
                            return;
                        }
                        Toast toastMakeText3 = Toast.makeText(BaseApplicaitonKt.getApplication(), "密码不能为空", 0);
                        toastMakeText3.show();
                        Intrinsics.checkExpressionValueIsNotNull(toastMakeText3, "Toast\n        .makeText(…         show()\n        }");
                        return;
                    }
                    Toast toastMakeText4 = Toast.makeText(BaseApplicaitonKt.getApplication(), "密码不能为空", 0);
                    toastMakeText4.show();
                    Intrinsics.checkExpressionValueIsNotNull(toastMakeText4, "Toast\n        .makeText(…         show()\n        }");
                    return;
                }
                Toast toastMakeText5 = Toast.makeText(BaseApplicaitonKt.getApplication(), "账号不能为空", 0);
                toastMakeText5.show();
                Intrinsics.checkExpressionValueIsNotNull(toastMakeText5, "Toast\n        .makeText(…         show()\n        }");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void senSms() {
        String captchaId;
        ActForgetpassBinding binding = getBinding();
        ApiManager apiManager = ApiManager.INSTANCE;
        EditText etAccount = binding.etAccount;
        Intrinsics.checkNotNullExpressionValue(etAccount, "etAccount");
        String strContent = AndroidutilsKt.content(etAccount);
        CaptchaModel captchaModel = this.capObj;
        if (captchaModel == null || (captchaId = captchaModel.getCaptchaId()) == null) {
            captchaId = "";
        }
        EditText etImgverify = binding.etImgverify;
        Intrinsics.checkNotNullExpressionValue(etImgverify, "etImgverify");
        apiManager.senSMs(strContent, captchaId, AndroidutilsKt.content(etImgverify), new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.ForgetPassWordActivity$senSms$1$1
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
                if (i == 200) {
                    AndroidutilsKt.toast("发送成功");
                    TextView textView = this.this$0.getBinding().tvGetVerifycation;
                    Intrinsics.checkNotNullExpressionValue(textView, "binding.tvGetVerifycation");
                    AndroidutilsKt.YzmCountDown(textView, RangesKt.downTo(60, 0));
                    return;
                }
                AndroidutilsKt.toast(msg);
            }
        });
    }
}
