package com.mogu.tv.ui.frag;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.FragLoginBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.CaptchaModel;
import com.mogu.tv.model.LoginResult;
import com.mogu.tv.ui.ForgetPassWordActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LoginFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0016J\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/mogu/tv/ui/frag/LoginFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragLoginBinding;", "()V", "capObj", "Lcom/mogu/tv/model/CaptchaModel;", "getCapObj", "()Lcom/mogu/tv/model/CaptchaModel;", "setCapObj", "(Lcom/mogu/tv/model/CaptchaModel;)V", "getVerifyCode", "", "initData", "initView", "onDestroy", "covertBase64ToBitmap", "Landroid/graphics/Bitmap;", "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LoginFragment extends CommonBaseFragment<FragLoginBinding> {
    private CaptchaModel capObj;

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        TextView textView;
        ImageView imageView;
        TextView textView2;
        FragLoginBinding binding = getBinding();
        if (binding != null && (textView2 = binding.tvClick) != null) {
            AndroidutilsKt.click(textView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.LoginFragment.initView.1
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
                    LoginFragment.this.getVerifyCode();
                }
            });
        }
        FragLoginBinding binding2 = getBinding();
        if (binding2 != null && (imageView = binding2.ivVerify) != null) {
            AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.LoginFragment.initView.2
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
                    LoginFragment.this.getVerifyCode();
                }
            });
        }
        FragLoginBinding binding3 = getBinding();
        if (binding3 != null && (textView = binding3.tvForgetPass) != null) {
            AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.LoginFragment.initView.3
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
                    LoginFragment.this.startActivity(new Intent(LoginFragment.this.getContext(), (Class<?>) ForgetPassWordActivity.class));
                }
            });
        }
        getVerifyCode();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
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

    public final CaptchaModel getCapObj() {
        return this.capObj;
    }

    public final void setCapObj(CaptchaModel captchaModel) {
        this.capObj = captchaModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getVerifyCode() {
        ApiManager.INSTANCE.getVerifyCodeImage(new Function3<Integer, String, String, Unit>() { // from class: com.mogu.tv.ui.frag.LoginFragment.getVerifyCode.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, String str2) {
                invoke(num.intValue(), str, str2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, String str) {
                ImageView imageView;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if ((str != null ? str.length() : 0) > 10) {
                    LoginFragment.this.setCapObj((CaptchaModel) new Gson().fromJson(str, CaptchaModel.class));
                    FragLoginBinding binding = LoginFragment.this.getBinding();
                    if (binding == null || (imageView = binding.ivVerify) == null) {
                        return;
                    }
                    LoginFragment loginFragment = LoginFragment.this;
                    CaptchaModel capObj = loginFragment.getCapObj();
                    imageView.setImageBitmap(loginFragment.covertBase64ToBitmap(capObj != null ? capObj.getCaptchaUrl() : null));
                }
            }
        });
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        TextView textView;
        FragLoginBinding binding = getBinding();
        if (binding == null || (textView = binding.tvSubmit) == null) {
            return;
        }
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.LoginFragment.initData.1
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
                String captchaId;
                Intrinsics.checkNotNullParameter(it, "it");
                FragLoginBinding binding2 = LoginFragment.this.getBinding();
                if (binding2 != null) {
                    final LoginFragment loginFragment = LoginFragment.this;
                    EditText etAccount = binding2.etAccount;
                    Intrinsics.checkNotNullExpressionValue(etAccount, "etAccount");
                    if (!AndroidutilsKt.isEmpty(etAccount)) {
                        EditText etPassword = binding2.etPassword;
                        Intrinsics.checkNotNullExpressionValue(etPassword, "etPassword");
                        if (!AndroidutilsKt.isEmpty(etPassword)) {
                            EditText etVerify = binding2.etVerify;
                            Intrinsics.checkNotNullExpressionValue(etVerify, "etVerify");
                            if (!AndroidutilsKt.isEmpty(etVerify)) {
                                CommonBaseFragment.showLoadingDialog$default(loginFragment, false, null, 3, null);
                                ApiManager apiManager = ApiManager.INSTANCE;
                                EditText etAccount2 = binding2.etAccount;
                                Intrinsics.checkNotNullExpressionValue(etAccount2, "etAccount");
                                String strContent = AndroidutilsKt.content(etAccount2);
                                EditText etPassword2 = binding2.etPassword;
                                Intrinsics.checkNotNullExpressionValue(etPassword2, "etPassword");
                                String strContent2 = AndroidutilsKt.content(etPassword2);
                                CaptchaModel capObj = loginFragment.getCapObj();
                                if (capObj == null || (captchaId = capObj.getCaptchaId()) == null) {
                                    captchaId = "";
                                }
                                EditText etVerify2 = binding2.etVerify;
                                Intrinsics.checkNotNullExpressionValue(etVerify2, "etVerify");
                                apiManager.loginUser(strContent, strContent2, captchaId, AndroidutilsKt.content(etVerify2), new Function3<Integer, String, LoginResult, Unit>() { // from class: com.mogu.tv.ui.frag.LoginFragment$initData$1$1$4
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, LoginResult loginResult) {
                                        invoke(num.intValue(), str, loginResult);
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(int i, String msg, LoginResult loginResult) {
                                        Intrinsics.checkNotNullParameter(msg, "msg");
                                        loginFragment.dissmissLoading();
                                        if (i == 200 && loginResult != null) {
                                            AndroidutilsKt.toast("登录成功");
                                            UserManager.INSTANCE.refreshToken(loginResult.getAccess_token());
                                            FragmentActivity activity = loginFragment.getActivity();
                                            if (activity != null) {
                                                activity.onBackPressed();
                                                return;
                                            }
                                            return;
                                        }
                                        AndroidutilsKt.toast(msg);
                                    }
                                });
                                return;
                            }
                            Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "验证码不能为空", 0);
                            toastMakeText.show();
                            Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                            return;
                        }
                        Toast toastMakeText2 = Toast.makeText(BaseApplicaitonKt.getApplication(), "密码不能为空", 0);
                        toastMakeText2.show();
                        Intrinsics.checkExpressionValueIsNotNull(toastMakeText2, "Toast\n        .makeText(…         show()\n        }");
                        return;
                    }
                    Toast toastMakeText3 = Toast.makeText(BaseApplicaitonKt.getApplication(), "账号不能为空", 0);
                    toastMakeText3.show();
                    Intrinsics.checkExpressionValueIsNotNull(toastMakeText3, "Toast\n        .makeText(…         show()\n        }");
                }
            }
        });
    }
}
