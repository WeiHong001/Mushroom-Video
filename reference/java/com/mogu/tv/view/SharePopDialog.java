package com.mogu.tv.view;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.luck.picture.lib.tools.ScreenUtils;
import com.mogu.tv.model.ShareEventSavePhoto;
import com.mogu.tv.utils.DialogUtils;
import com.qushare.news.utils.ShareUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SharePopDialog extends Dialog implements View.OnClickListener {
    private int localResImg;
    private String mContent;
    private Context mContext;
    private String mType;
    private String mUrl;

    public Dialog showSaveImage(boolean z) {
        if (z) {
            findViewById(R.id.ll_saveImage).setVisibility(0);
        } else {
            findViewById(R.id.ll_saveImage).setVisibility(8);
        }
        return this;
    }

    public SharePopDialog(Context context, int i, String str, String str2, String str3) {
        super(context, R.style.action_sheet_dialog);
        this.mType = "";
        this.mContext = context;
        this.mUrl = str;
        this.mContent = str3;
        this.localResImg = i;
        initView();
    }

    public void initView() {
        requestWindowFeature(1);
        setContentView(R.layout.dialog_app_share);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.ll_wechat);
        TextView textView = (TextView) findViewById(R.id.tv_cancel);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.ll_wechat_circle);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.ll_share_more);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R.id.ll_copy_link);
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R.id.ll_qq);
        LinearLayout linearLayout6 = (LinearLayout) findViewById(R.id.ll_qrCode);
        LinearLayout linearLayout7 = (LinearLayout) findViewById(R.id.ll_sina);
        LinearLayout linearLayout8 = (LinearLayout) findViewById(R.id.ll_qqzone);
        LinearLayout linearLayout9 = (LinearLayout) findViewById(R.id.ll_report);
        LinearLayout linearLayout10 = (LinearLayout) findViewById(R.id.ll_saveImage);
        linearLayout.setOnClickListener(this);
        linearLayout2.setOnClickListener(this);
        linearLayout4.setOnClickListener(this);
        linearLayout3.setOnClickListener(this);
        textView.setOnClickListener(this);
        linearLayout8.setOnClickListener(this);
        linearLayout10.setOnClickListener(this);
        linearLayout7.setOnClickListener(this);
        linearLayout6.setOnClickListener(this);
        linearLayout5.setOnClickListener(this);
        linearLayout9.setOnClickListener(this);
        Window window = getWindow();
        window.setGravity(80);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = ScreenUtils.getScreenWidth(this.mContext);
        window.setAttributes(attributes);
        setCanceledOnTouchOutside(true);
        window.setWindowAnimations(R.style.action_sheet_animation);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.ll_copy_link) {
            ShareUtils.INSTANCE.copyText(this.mUrl);
        } else if (id == R.id.ll_saveImage) {
            EventBusUtil.INSTANCE.post(new ShareEventSavePhoto());
        } else if (id == R.id.ll_qrCode) {
            DialogUtils.INSTANCE.showQrCodeDialog();
        } else if (id == R.id.ll_share_more) {
            ShareUtils.INSTANCE.shareText(getContext(), this.mContent);
        } else if (id != R.id.ll_report && id == R.id.tv_cancel) {
            dismiss();
        }
        dismiss();
    }
}
