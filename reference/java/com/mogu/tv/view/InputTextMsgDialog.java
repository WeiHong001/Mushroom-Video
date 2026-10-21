package com.mogu.tv.view;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatDialog;
import com.amogu6.tv.R;
import com.kotlin.basiclib.utils.ToastUtil;

/* JADX INFO: loaded from: classes2.dex */
public class InputTextMsgDialog extends AppCompatDialog {
    private InputMethodManager imm;
    private Context mContext;
    private int mLastDiff;
    private OnTextSendListener mOnTextSendListener;
    private int maxNumber;
    private EditText messageTextView;
    private RelativeLayout rlDlg;
    private TextView tvNumber;

    public interface OnTextSendListener {
        void dismiss();

        void onTextSend(String str);
    }

    public InputTextMsgDialog(Context context, int i) {
        super(context, i);
        this.mLastDiff = 0;
        this.maxNumber = 100;
        this.mContext = context;
        init();
        setLayout();
    }

    public void setMaxNumber(int i) {
        this.maxNumber = i;
        this.tvNumber.setText("0/" + i);
    }

    public void setHint(String str) {
        this.messageTextView.setHint(str);
    }

    private void init() {
        setContentView(R.layout.dialog_input_text_msg);
        this.messageTextView = (EditText) findViewById(R.id.et_input_message);
        this.tvNumber = (TextView) findViewById(R.id.tv_test);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.rl_inputdlg_view);
        this.messageTextView.requestFocus();
        this.messageTextView.addTextChangedListener(new TextWatcher() { // from class: com.mogu.tv.view.InputTextMsgDialog.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                InputTextMsgDialog.this.tvNumber.setText(editable.length() + "/" + InputTextMsgDialog.this.maxNumber);
            }
        });
        this.imm = (InputMethodManager) this.mContext.getSystemService("input_method");
        ((TextView) findViewById(R.id.tv_confirm)).setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.view.InputTextMsgDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String strTrim = InputTextMsgDialog.this.messageTextView.getText().toString().trim();
                if (strTrim.length() > InputTextMsgDialog.this.maxNumber) {
                    Toast.makeText(InputTextMsgDialog.this.mContext, "超过最大字数限制" + InputTextMsgDialog.this.maxNumber, 1).show();
                    return;
                }
                if (!TextUtils.isEmpty(strTrim)) {
                    InputTextMsgDialog.this.mOnTextSendListener.onTextSend(strTrim);
                    InputTextMsgDialog.this.imm.showSoftInput(InputTextMsgDialog.this.messageTextView, 2);
                    InputTextMsgDialog.this.imm.hideSoftInputFromWindow(InputTextMsgDialog.this.messageTextView.getWindowToken(), 0);
                    InputTextMsgDialog.this.messageTextView.setText("");
                    InputTextMsgDialog.this.dismiss();
                } else {
                    ToastUtil.INSTANCE.toast("请输入文字");
                }
                InputTextMsgDialog.this.messageTextView.setText((CharSequence) null);
            }
        });
        this.messageTextView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mogu.tv.view.InputTextMsgDialog.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i == 4) {
                    InputTextMsgDialog.this.dismiss();
                    return false;
                }
                if (i != 6 && i != 66) {
                    return false;
                }
                if (InputTextMsgDialog.this.messageTextView.getText().length() > InputTextMsgDialog.this.maxNumber) {
                    Toast.makeText(InputTextMsgDialog.this.mContext, "超过最大字数限制", 1).show();
                    return true;
                }
                if (InputTextMsgDialog.this.messageTextView.getText().length() > 0) {
                    InputTextMsgDialog.this.imm.hideSoftInputFromWindow(InputTextMsgDialog.this.messageTextView.getWindowToken(), 0);
                    InputTextMsgDialog.this.dismiss();
                } else {
                    Toast.makeText(InputTextMsgDialog.this.mContext, "请输入文字", 1).show();
                }
                return true;
            }
        });
        this.messageTextView.setOnKeyListener(new View.OnKeyListener() { // from class: com.mogu.tv.view.InputTextMsgDialog.4
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                Log.d("My test", "onKey " + keyEvent.getCharacters());
                return false;
            }
        });
        linearLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.mogu.tv.view.InputTextMsgDialog.5
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Rect rect = new Rect();
                InputTextMsgDialog.this.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                int height = InputTextMsgDialog.this.getWindow().getDecorView().getRootView().getHeight() - rect.bottom;
                if (height <= 0 && InputTextMsgDialog.this.mLastDiff > 0) {
                    InputTextMsgDialog.this.dismiss();
                }
                InputTextMsgDialog.this.mLastDiff = height;
            }
        });
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.mogu.tv.view.InputTextMsgDialog.6
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i != 4 || keyEvent.getRepeatCount() != 0) {
                    return false;
                }
                InputTextMsgDialog.this.dismiss();
                return false;
            }
        });
    }

    private void setLayout() {
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        setCancelable(true);
        getWindow().setSoftInputMode(4);
    }

    public void setmOnTextSendListener(OnTextSendListener onTextSendListener) {
        this.mOnTextSendListener = onTextSendListener;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.mLastDiff = 0;
        OnTextSendListener onTextSendListener = this.mOnTextSendListener;
        if (onTextSendListener != null) {
            onTextSendListener.dismiss();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
