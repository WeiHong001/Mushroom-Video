package com.mogu.tv.view;

import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatDialog;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.VipVideoList;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LockVipVideoDialog.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u000fH\u0002J\b\u0010\u0012\u001a\u00020\u000fH\u0002J?\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u000f0\u0019J\b\u0010\u001e\u001a\u00020\u000fH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u001f"}, d2 = {"Lcom/mogu/tv/view/LockVipVideoDialog;", "Landroidx/appcompat/app/AppCompatDialog;", d.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "ivGoShare", "Landroid/widget/ImageView;", "getIvGoShare", "()Landroid/widget/ImageView;", "setIvGoShare", "(Landroid/widget/ImageView;)V", "ivUnlock", "getIvUnlock", "setIvUnlock", "dismiss", "", "init", "initView", "setLayout", "setUnLockData", "data", "Lcom/mogu/tv/model/VipVideoList$Data;", "goShare", "Lkotlin/Function0;", "unlockData", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "vipId", "show", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LockVipVideoDialog extends AppCompatDialog {
    private ImageView ivGoShare;
    private ImageView ivUnlock;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LockVipVideoDialog(Context context) {
        super(context, R.style.NoTitleDialog);
        Intrinsics.checkNotNullParameter(context, "context");
        init();
        setLayout();
        initView();
    }

    private final void init() {
        setContentView(R.layout.dialog_unlockvipvideo);
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

    public final ImageView getIvUnlock() {
        return this.ivUnlock;
    }

    public final void setIvUnlock(ImageView imageView) {
        this.ivUnlock = imageView;
    }

    public final ImageView getIvGoShare() {
        return this.ivGoShare;
    }

    public final void setIvGoShare(ImageView imageView) {
        this.ivGoShare = imageView;
    }

    private final void initView() {
        this.ivUnlock = (ImageView) findViewById(R.id.ivUnlock);
        this.ivGoShare = (ImageView) findViewById(R.id.ivGoShare);
    }

    public final void setUnLockData(final VipVideoList.Data data, final Function0<Unit> goShare, final Function1<? super Integer, Unit> unlockData) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(goShare, "goShare");
        Intrinsics.checkNotNullParameter(unlockData, "unlockData");
        ImageView imageView = this.ivUnlock;
        if (imageView != null) {
            UserManagerKt.LoginClick(imageView, new Function0<Unit>() { // from class: com.mogu.tv.view.LockVipVideoDialog.setUnLockData.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ApiManager apiManager = ApiManager.INSTANCE;
                    int id = data.getID();
                    final LockVipVideoDialog lockVipVideoDialog = this;
                    final Function1<Integer, Unit> function1 = unlockData;
                    final VipVideoList.Data data2 = data;
                    apiManager.unlockVipVIdeo(id, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.view.LockVipVideoDialog.setUnLockData.1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
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
                                ToastUtil.INSTANCE.toast("解锁成功");
                                lockVipVideoDialog.dismiss();
                                function1.invoke(Integer.valueOf(data2.getID()));
                                return;
                            }
                            ToastUtil.INSTANCE.toast("当前积分不足");
                        }
                    });
                }
            });
        }
        ImageView imageView2 = this.ivGoShare;
        if (imageView2 != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.view.LockVipVideoDialog.setUnLockData.2
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
                    goShare.invoke();
                    this.dismiss();
                }
            });
        }
    }
}
