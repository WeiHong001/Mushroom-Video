package com.kotlin.basiclib.base;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.viewbinding.ViewBinding;
import com.alibaba.android.arouter.launcher.ARouter;
import com.kotlin.basiclib.ActivityBinding;
import com.kotlin.basiclib.ActivityBindingDelegate;
import com.kotlin.basiclib.R;
import com.kotlin.basiclib.StatusBarUtil;
import com.kotlin.basiclib.databinding.LayoutLoadingViewBinding;
import com.mogu.tv.common.arouter.ArouterUrls;
import com.umeng.analytics.MobclickAgent;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import pub.devrel.easypermissions.AppSettingsDialog;
import pub.devrel.easypermissions.EasyPermissions;

/* JADX INFO: compiled from: CommonBaseActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0015J\u0006\u0010\u0019\u001a\u00020\u0013J\b\u0010\u001a\u001a\u00020\u0013H&J\b\u0010\u001b\u001a\u00020\u0013H\u0002J\b\u0010\u001c\u001a\u00020\u0013H&J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\u0012\u0010\u001e\u001a\u00020\u00132\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\b\u0010!\u001a\u00020\u0013H\u0014J\b\u0010\"\u001a\u00020\u0013H\u0014J\u001e\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\u001e\u0010)\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J/\u0010*\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u000e\b\u0001\u0010+\u001a\b\u0012\u0004\u0012\u00020(0,2\b\b\u0001\u0010-\u001a\u00020.H\u0016¢\u0006\u0002\u0010/J\b\u00100\u001a\u00020\u0013H\u0014J\u000e\u00101\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u000202J\u0006\u00103\u001a\u00020\u0013J\u001c\u00104\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u00020(J\u000e\u00108\u001a\u00020\u00132\u0006\u00109\u001a\u00020\u0015J\r\u0010:\u001a\u00020\u0015*\u00020;H\u0096\u0001R\u0012\u0010\u0007\u001a\u00028\u0000X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006<"}, d2 = {"Lcom/kotlin/basiclib/base/CommonBaseActivity;", "VB", "Landroidx/viewbinding/ViewBinding;", "Landroidx/appcompat/app/AppCompatActivity;", "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;", "Lcom/kotlin/basiclib/ActivityBinding;", "()V", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "loadingDialog", "Landroid/app/Dialog;", "mActivity", "Landroidx/fragment/app/FragmentActivity;", "getMActivity", "()Landroidx/fragment/app/FragmentActivity;", "setMActivity", "(Landroidx/fragment/app/FragmentActivity;)V", "closeKeyBord", "", "mEditText", "Landroid/view/View;", "dissmissLoading", "fitStatubar", "rootView", "fullScreen", "initData", "initListener", "initView", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "onPermissionsDenied", "requestCode", "", "perms", "", "", "onPermissionsGranted", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onResume", "openKeyBord", "Landroid/widget/EditText;", "setOrientationPro", "showLoadingDialog", "cancelable", "", "text", "whiteStatuBar", "parenrGroupView", "setContentViewWithBinding", "Landroid/app/Activity;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class CommonBaseActivity<VB extends ViewBinding> extends AppCompatActivity implements EasyPermissions.PermissionCallbacks, ActivityBinding<VB> {
    private final /* synthetic */ ActivityBindingDelegate<VB> $$delegate_0 = new ActivityBindingDelegate<>();
    private Dialog loadingDialog;
    public FragmentActivity mActivity;

    private final void initListener() {
    }

    @Override // com.kotlin.basiclib.ActivityBinding
    public VB getBinding() {
        return (VB) this.$$delegate_0.getBinding();
    }

    public abstract void initData();

    public abstract void initView();

    @Override // com.kotlin.basiclib.ActivityBinding
    public View setContentViewWithBinding(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        return this.$$delegate_0.setContentViewWithBinding(activity);
    }

    public final FragmentActivity getMActivity() {
        FragmentActivity fragmentActivity = this.mActivity;
        if (fragmentActivity != null) {
            return fragmentActivity;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mActivity");
        return null;
    }

    public final void setMActivity(FragmentActivity fragmentActivity) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<set-?>");
        this.mActivity = fragmentActivity;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setMActivity(this);
        setContentViewWithBinding(this);
        initView();
        initData();
        initListener();
    }

    public final void setOrientationPro() {
        if (Build.VERSION.SDK_INT < 26) {
            setRequestedOrientation(1);
        }
    }

    public final void whiteStatuBar(View parenrGroupView) {
        Intrinsics.checkNotNullParameter(parenrGroupView, "parenrGroupView");
        try {
            StatusBarUtil.setPadding(this, parenrGroupView);
            StatusBarUtil.StatusBarLightMode(this);
            StatusBarUtil.immersive(this, ContextCompat.getColor(this, R.color.transparent_white));
        } catch (Exception unused) {
        }
    }

    public final void fitStatubar(View rootView) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        try {
            StatusBarUtil.setPadding(this, rootView);
            StatusBarUtil.immersive(this, ContextCompat.getColor(getMActivity(), R.color.mian_bg_color));
        } catch (Exception unused) {
        }
    }

    public final void fullScreen() {
        int i = Build.VERSION.SDK_INT;
        if (19 <= i && i < 21) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.flags = 67108864 | attributes.flags;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            View decorView = getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
            decorView.setSystemUiVisibility(1280);
            getWindow().setStatusBarColor(0);
        }
    }

    public static /* synthetic */ Dialog showLoadingDialog$default(CommonBaseActivity commonBaseActivity, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoadingDialog");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = "稍等";
        }
        return commonBaseActivity.showLoadingDialog(z, str);
    }

    public final Dialog showLoadingDialog(boolean cancelable, String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (isDestroyed()) {
            return null;
        }
        LayoutLoadingViewBinding layoutLoadingViewBindingInflate = LayoutLoadingViewBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(layoutLoadingViewBindingInflate, "inflate(layoutInflater)");
        layoutLoadingViewBindingInflate.txt.setText(text);
        Dialog dialog = new Dialog(this, R.style.dialog_full_screen);
        dialog.setContentView(layoutLoadingViewBindingInflate.getRoot());
        dialog.setCancelable(cancelable);
        dialog.show();
        this.loadingDialog = dialog;
        return dialog;
    }

    public final void dissmissLoading() {
        Dialog dialog = this.loadingDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (AcManage.getAppManager().getActivitySize() == 1 && !Intrinsics.areEqual(AcManage.getAppManager().currentActivity().getClass().getName(), "com.wgq.wangeqiu.ui.main.activity.MainActivity")) {
            ARouter.getInstance().build(ArouterUrls.AppArouterUrl.MAINACTIVITY).navigation();
        }
        super.onBackPressed();
    }

    public final void openKeyBord(EditText mEditText) {
        Intrinsics.checkNotNullParameter(mEditText, "mEditText");
        Object systemService = getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        inputMethodManager.showSoftInput(mEditText, 2);
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public final void closeKeyBord(View mEditText) {
        Intrinsics.checkNotNullParameter(mEditText, "mEditText");
        Object systemService = getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(mEditText.getWindowToken(), 0);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults, this);
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int requestCode, List<String> perms) {
        Intrinsics.checkNotNullParameter(perms, "perms");
        Log.i("EasyPermissions", "获取成功的权限" + perms);
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsDenied(int requestCode, List<String> perms) {
        Intrinsics.checkNotNullParameter(perms, "perms");
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = perms.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
            stringBuffer.append("\n");
        }
        stringBuffer.replace(stringBuffer.length() - 2, stringBuffer.length(), "");
        CommonBaseActivity<VB> commonBaseActivity = this;
        if (EasyPermissions.somePermissionPermanentlyDenied(commonBaseActivity, perms)) {
            Toast.makeText(this, "已拒绝权限" + ((Object) stringBuffer) + "并不再询问", 0).show();
            new AppSettingsDialog.Builder(commonBaseActivity).setRationale("此功能需要" + ((Object) stringBuffer) + "权限，否则无法正常使用，是否打开设置").setPositiveButton("好").setNegativeButton("不行").build().show();
        }
    }
}
