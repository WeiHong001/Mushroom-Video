package com.kotlin.basiclib.base;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.viewbinding.ViewBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.kotlin.basiclib.FragmentBinding;
import com.kotlin.basiclib.FragmentBindingDelegate;
import com.kotlin.basiclib.R;
import com.kotlin.basiclib.databinding.LayoutLoadingViewBinding;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import pub.devrel.easypermissions.AppSettingsDialog;
import pub.devrel.easypermissions.EasyPermissions;

/* JADX INFO: compiled from: CommonBaseFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u000fJ\b\u0010\u0015\u001a\u00020\u000fH&J\b\u0010\u0016\u001a\u00020\u000fH&J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001e\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#H\u0016J\u001e\u0010%\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#H\u0016J/\u0010&\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u000e\b\u0001\u0010'\u001a\b\u0012\u0004\u0012\u00020$0(2\b\b\u0001\u0010)\u001a\u00020*H\u0016¢\u0006\u0002\u0010+J\u001a\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001c\u0010.\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u00020$J\u001f\u00101\u001a\u00020\u0018*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0001R\u0014\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/kotlin/basiclib/base/CommonBaseFragment;", "VB", "Landroidx/viewbinding/ViewBinding;", "Landroidx/fragment/app/Fragment;", "Lcom/kotlin/basiclib/FragmentBinding;", "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;", "()V", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "isViewPrepare", "", "loadingDialog", "Landroid/app/Dialog;", "closeKeyBord", "", "mEditText", "Landroid/widget/EditText;", "mContext", "Landroid/content/Context;", "dissmissLoading", "initData", "initView", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onPermissionsDenied", "requestCode", "", "perms", "", "", "onPermissionsGranted", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onViewCreated", "view", "showLoadingDialog", "cancelable", "text", "createViewWithBinding", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class CommonBaseFragment<VB extends ViewBinding> extends Fragment implements FragmentBinding<VB>, EasyPermissions.PermissionCallbacks {
    private final /* synthetic */ FragmentBindingDelegate<VB> $$delegate_0 = new FragmentBindingDelegate<>();
    private boolean isViewPrepare;
    private Dialog loadingDialog;

    @Override // com.kotlin.basiclib.FragmentBinding
    public View createViewWithBinding(Fragment fragment, LayoutInflater inflater, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return this.$$delegate_0.createViewWithBinding(fragment, inflater, viewGroup);
    }

    @Override // com.kotlin.basiclib.FragmentBinding
    public VB getBinding() {
        return (VB) this.$$delegate_0.getBinding();
    }

    public abstract void initData();

    public abstract void initView();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return createViewWithBinding(this, inflater, container);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.isViewPrepare = true;
        initView();
        initData();
    }

    public static /* synthetic */ Dialog showLoadingDialog$default(CommonBaseFragment commonBaseFragment, boolean z, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoadingDialog");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            str = "稍等";
        }
        return commonBaseFragment.showLoadingDialog(z, str);
    }

    public final Dialog showLoadingDialog(boolean cancelable, String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (isDetached()) {
            return null;
        }
        LayoutLoadingViewBinding layoutLoadingViewBindingInflate = LayoutLoadingViewBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(layoutLoadingViewBindingInflate, "inflate(layoutInflater)");
        layoutLoadingViewBindingInflate.txt.setText(text);
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        Dialog dialog = new Dialog(context, R.style.dialog_full_screen);
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

    @Override // androidx.fragment.app.Fragment, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
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
        CommonBaseFragment<VB> commonBaseFragment = this;
        if (EasyPermissions.somePermissionPermanentlyDenied(commonBaseFragment, perms)) {
            Toast.makeText(getActivity(), "已拒绝权限" + ((Object) stringBuffer) + "并不再询问", 0).show();
            new AppSettingsDialog.Builder(commonBaseFragment).setRationale("此功能需要" + ((Object) stringBuffer) + "权限，否则无法正常使用，是否打开设置").setPositiveButton("好").setNegativeButton("不行").build().show();
        }
    }

    public final void closeKeyBord(EditText mEditText, Context mContext) {
        Intrinsics.checkNotNullParameter(mEditText, "mEditText");
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Object systemService = mContext.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(mEditText.getWindowToken(), 0);
    }
}
