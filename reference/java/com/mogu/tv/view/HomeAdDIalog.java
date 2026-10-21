package com.mogu.tv.view;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatDialog;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.utils.ImageUtilKt;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HomeAdDIalog.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u000fH\u0002J\b\u0010\u0013\u001a\u00020\u000fH\u0016J$\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/mogu/tv/view/HomeAdDIalog;", "Landroidx/appcompat/app/AppCompatDialog;", d.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "ivAd", "Landroid/widget/ImageView;", "getIvAd", "()Landroid/widget/ImageView;", "setIvAd", "(Landroid/widget/ImageView;)V", "ivClose", "getIvClose", "setIvClose", "dismiss", "", "init", "initView", "setLayout", "show", "showAdData", "Landroid/app/Activity;", "data", "Lcom/mogu/tv/model/AllAdsModel$Item;", "dissmisscall", "Lkotlin/Function0;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HomeAdDIalog extends AppCompatDialog {
    private ImageView ivAd;
    private ImageView ivClose;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeAdDIalog(Context context) {
        super(context, R.style.NoTitleDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        init();
        setLayout();
        initView();
    }

    private final void init() {
        setContentView(R.layout.dialog_homead);
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
        setCanceledOnTouchOutside(false);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    public final ImageView getIvAd() {
        return this.ivAd;
    }

    public final void setIvAd(ImageView imageView) {
        this.ivAd = imageView;
    }

    public final ImageView getIvClose() {
        return this.ivClose;
    }

    public final void setIvClose(ImageView imageView) {
        this.ivClose = imageView;
    }

    private final void initView() {
        this.ivAd = (ImageView) findViewById(R.id.ivAd);
        this.ivClose = (ImageView) findViewById(R.id.ivClose);
    }

    public final void showAdData(final Activity context, final AllAdsModel.Item data, final Function0<Unit> dissmisscall) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(dissmisscall, "dissmisscall");
        ImageView imageView = this.ivAd;
        if (imageView != null) {
            ImageUtilKt.with(imageView, data.getFile());
        }
        ImageView imageView2 = this.ivAd;
        if (imageView2 != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.view.HomeAdDIalog.showAdData.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                    Activity activity = context;
                    String action = data.getAction();
                    if (action == null) {
                        action = "";
                    }
                    arouterUtils.toUrlPraseJump(activity, action);
                    ArouterUtils.INSTANCE.clickAd(String.valueOf(data.getId()));
                }
            });
        }
        ImageView imageView3 = this.ivClose;
        if (imageView3 != null) {
            AndroidutilsKt.click(imageView3, new Function1<View, Unit>() { // from class: com.mogu.tv.view.HomeAdDIalog.showAdData.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    dissmisscall.invoke();
                    this.dismiss();
                }
            });
        }
    }
}
