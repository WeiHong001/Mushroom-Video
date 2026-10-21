package com.kotlin.basiclib.widget.customview;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.WindowManager;
import com.kotlin.basiclib.R;

/* JADX INFO: loaded from: classes2.dex */
public class FullScreenDialog extends Dialog {
    private int mGravity;

    public FullScreenDialog(Context context) {
        this(context, R.style.dialog_full_screen);
    }

    public FullScreenDialog(Context context, int i) {
        super(context, i);
    }

    protected FullScreenDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
    }

    public void setGravity(int i) {
        this.mGravity = i;
    }

    public void showAtBottom() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.gravity = 80;
        getWindow().setWindowAnimations(R.style.dialog_anima_default);
        super.show();
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().getAttributes().width = -1;
        super.show();
    }

    public void showWithoutAnima() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        super.show();
    }
}
