package com.mogu.tv.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.MainActivity;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.VipVideoList;
import com.mogu.tv.utils.FileImageUtilKt;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.utils.ScreenShotUtils;
import com.qushare.news.utils.ShareUtils;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: ShareVipVIdeoDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020*H\u0002J\b\u0010,\u001a\u00020*H\u0002J\u000e\u0010-\u001a\u00020*2\u0006\u0010.\u001a\u00020/J\b\u00100\u001a\u00020*H\u0002J\b\u00101\u001a\u00020*H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001c\u0010 \u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\u001c\u0010#\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\u001c\u0010&\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0017\"\u0004\b(\u0010\u0019¨\u00062"}, d2 = {"Lcom/mogu/tv/view/ShareVipVIdeoDialog;", "Landroidx/appcompat/app/AppCompatDialog;", d.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "flRoot", "Landroid/widget/FrameLayout;", "getFlRoot", "()Landroid/widget/FrameLayout;", "setFlRoot", "(Landroid/widget/FrameLayout;)V", "ivItem", "Landroid/widget/ImageView;", "getIvItem", "()Landroid/widget/ImageView;", "setIvItem", "(Landroid/widget/ImageView;)V", "ivQrCode", "getIvQrCode", "setIvQrCode", "tvAddressTitle", "Landroid/widget/TextView;", "getTvAddressTitle", "()Landroid/widget/TextView;", "setTvAddressTitle", "(Landroid/widget/TextView;)V", "tvHint", "getTvHint", "setTvHint", "tvSaveLink", "getTvSaveLink", "setTvSaveLink", "tvSavePhoto", "getTvSavePhoto", "setTvSavePhoto", "tvShareAddress", "getTvShareAddress", "setTvShareAddress", "tvTitle", "getTvTitle", "setTvTitle", "dismiss", "", "init", "initView", "refreshData", "data", "Lcom/mogu/tv/model/VipVideoList$Data;", "setLayout", "show", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShareVipVIdeoDialog extends AppCompatDialog {
    private FrameLayout flRoot;
    private ImageView ivItem;
    private ImageView ivQrCode;
    private TextView tvAddressTitle;
    private TextView tvHint;
    private TextView tvSaveLink;
    private TextView tvSavePhoto;
    private TextView tvShareAddress;
    private TextView tvTitle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareVipVIdeoDialog(Context context) {
        super(context, R.style.NoTitleDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        init();
        setLayout();
        initView();
    }

    private final void init() {
        setContentView(R.layout.item_sharevip);
    }

    private final void setLayout() {
        Window window = getWindow();
        Intrinsics.checkNotNull(window);
        window.setGravity(17);
        Window window2 = getWindow();
        Intrinsics.checkNotNull(window2);
        WindowManager.LayoutParams attributes = window2.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        Window window3 = getWindow();
        Intrinsics.checkNotNull(window3);
        window3.setAttributes(attributes);
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    public final ImageView getIvItem() {
        return this.ivItem;
    }

    public final void setIvItem(ImageView imageView) {
        this.ivItem = imageView;
    }

    public final ImageView getIvQrCode() {
        return this.ivQrCode;
    }

    public final void setIvQrCode(ImageView imageView) {
        this.ivQrCode = imageView;
    }

    public final TextView getTvTitle() {
        return this.tvTitle;
    }

    public final void setTvTitle(TextView textView) {
        this.tvTitle = textView;
    }

    public final TextView getTvShareAddress() {
        return this.tvShareAddress;
    }

    public final void setTvShareAddress(TextView textView) {
        this.tvShareAddress = textView;
    }

    public final TextView getTvSaveLink() {
        return this.tvSaveLink;
    }

    public final void setTvSaveLink(TextView textView) {
        this.tvSaveLink = textView;
    }

    public final TextView getTvHint() {
        return this.tvHint;
    }

    public final void setTvHint(TextView textView) {
        this.tvHint = textView;
    }

    public final TextView getTvSavePhoto() {
        return this.tvSavePhoto;
    }

    public final void setTvSavePhoto(TextView textView) {
        this.tvSavePhoto = textView;
    }

    public final TextView getTvAddressTitle() {
        return this.tvAddressTitle;
    }

    public final void setTvAddressTitle(TextView textView) {
        this.tvAddressTitle = textView;
    }

    public final FrameLayout getFlRoot() {
        return this.flRoot;
    }

    public final void setFlRoot(FrameLayout frameLayout) {
        this.flRoot = frameLayout;
    }

    private final void initView() {
        this.ivItem = (ImageView) findViewById(R.id.ivItem);
        this.ivQrCode = (ImageView) findViewById(R.id.ivQrCode);
        this.tvTitle = (TextView) findViewById(R.id.tvTitle);
        this.tvShareAddress = (TextView) findViewById(R.id.tvShareAddress);
        this.flRoot = (FrameLayout) findViewById(R.id.flRoot);
        this.tvHint = (TextView) findViewById(R.id.tvHint);
        this.tvSavePhoto = (TextView) findViewById(R.id.tvSavePhoto);
        this.tvSaveLink = (TextView) findViewById(R.id.tvSaveLink);
        this.tvAddressTitle = (TextView) findViewById(R.id.tvAddressTitle);
    }

    public final void refreshData(VipVideoList.Data data) {
        Intrinsics.checkNotNullParameter(data, "data");
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setText(data.getTitle());
        }
        ImageView imageView = this.ivItem;
        if (imageView != null) {
            ImageUtilKt.with(imageView, data.getCover());
        }
        TextView textView2 = this.tvShareAddress;
        if (textView2 != null) {
            textView2.setText(GlobeAppData.INSTANCE.getShareLinkWithInvite());
        }
        ImageView imageView2 = this.ivQrCode;
        if (imageView2 != null) {
            imageView2.setImageBitmap(AndroidutilsKt.getQRBitmapFromUrl(GlobeAppData.INSTANCE.getShareLinkWithInvite()));
        }
        TextView textView3 = this.tvSaveLink;
        if (textView3 != null) {
            AndroidutilsKt.click(textView3, new Function1<View, Unit>() { // from class: com.mogu.tv.view.ShareVipVIdeoDialog.refreshData.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ShareUtils.INSTANCE.copyText(GlobeAppData.INSTANCE.getShareLinkWithInvite());
                }
            });
        }
        TextView textView4 = this.tvSavePhoto;
        if (textView4 != null) {
            AndroidutilsKt.click(textView4, new AnonymousClass2());
        }
    }

    /* JADX INFO: renamed from: com.mogu.tv.view.ShareVipVIdeoDialog$refreshData$2, reason: invalid class name */
    /* JADX INFO: compiled from: ShareVipVIdeoDialog.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    static final class AnonymousClass2 extends Lambda implements Function1<View, Unit> {
        AnonymousClass2() {
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
            TextView tvSavePhoto = ShareVipVIdeoDialog.this.getTvSavePhoto();
            if (tvSavePhoto != null) {
                AndroidutilsKt.setVisible(tvSavePhoto, false);
            }
            TextView tvSaveLink = ShareVipVIdeoDialog.this.getTvSaveLink();
            if (tvSaveLink != null) {
                AndroidutilsKt.setVisible(tvSaveLink, false);
            }
            TextView tvHint = ShareVipVIdeoDialog.this.getTvHint();
            if (tvHint != null) {
                AndroidutilsKt.setVisible(tvHint, true);
            }
            TextView tvAddressTitle = ShareVipVIdeoDialog.this.getTvAddressTitle();
            if (tvAddressTitle != null) {
                tvAddressTitle.setText("下载地址");
            }
            Activity activityCurrentActivity = AcManage.getAppManager().currentActivity();
            Intrinsics.checkNotNull(activityCurrentActivity, "null cannot be cast to non-null type com.mogu.tv.MainActivity");
            CommonBaseActivity.showLoadingDialog$default((MainActivity) activityCurrentActivity, false, null, 3, null);
            TextView tvAddressTitle2 = ShareVipVIdeoDialog.this.getTvAddressTitle();
            if (tvAddressTitle2 != null) {
                final ShareVipVIdeoDialog shareVipVIdeoDialog = ShareVipVIdeoDialog.this;
                tvAddressTitle2.postDelayed(new Runnable() { // from class: com.mogu.tv.view.ShareVipVIdeoDialog$refreshData$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ShareVipVIdeoDialog.AnonymousClass2.m316invoke$lambda0(shareVipVIdeoDialog);
                    }
                }, 500L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m316invoke$lambda0(ShareVipVIdeoDialog this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            String str = System.currentTimeMillis() + "蘑菇分享图片.jpg";
            Bitmap loadBitmapFromView = ScreenShotUtils.loadBitmapFromView(this$0.getFlRoot());
            Intrinsics.checkNotNullExpressionValue(loadBitmapFromView, "loadBitmapFromView");
            Context context = this$0.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            Uri uriSaveToAlbum$default = FileImageUtilKt.saveToAlbum$default(loadBitmapFromView, context, str, null, 0, 12, null);
            if (uriSaveToAlbum$default != null) {
                ShareUtils shareUtils = ShareUtils.INSTANCE;
                Context context2 = this$0.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                shareUtils.shareImg(context2, uriSaveToAlbum$default);
            }
            ToastUtil.INSTANCE.toast("保存成功,前去分享!可在相册查看邀请海报");
            Activity activityCurrentActivity = AcManage.getAppManager().currentActivity();
            Intrinsics.checkNotNull(activityCurrentActivity, "null cannot be cast to non-null type com.mogu.tv.MainActivity");
            ((MainActivity) activityCurrentActivity).dissmissLoading();
            TextView tvSavePhoto = this$0.getTvSavePhoto();
            if (tvSavePhoto != null) {
                AndroidutilsKt.setVisible(tvSavePhoto, true);
            }
            TextView tvSaveLink = this$0.getTvSaveLink();
            if (tvSaveLink != null) {
                AndroidutilsKt.setVisible(tvSaveLink, true);
            }
            TextView tvHint = this$0.getTvHint();
            if (tvHint != null) {
                AndroidutilsKt.setVisible(tvHint, false);
            }
            TextView tvAddressTitle = this$0.getTvAddressTitle();
            if (tvAddressTitle == null) {
                return;
            }
            tvAddressTitle.setText("分享地址");
        }
    }
}
