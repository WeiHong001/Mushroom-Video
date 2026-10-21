package com.mogu.tv.utils;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.text.HtmlCompat;
import com.alibaba.android.arouter.utils.Consts;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.utils.ScreenUtils;
import com.kotlin.basiclib.widget.customview.FullScreenDialog;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.view.TipsEditText;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.eclipse.jetty.http.MimeTypes;

/* JADX INFO: compiled from: DialogUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001*B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\"\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001c\u0010\u0017\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u0019J0\u0010\u001a\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020\u0006J\u000e\u0010!\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0006J\u001c\u0010#\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00120\u0019J\u0006\u0010%\u001a\u00020\u0012J6\u0010&\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u00192\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0019J$\u0010)\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u0019¨\u0006+"}, d2 = {"Lcom/mogu/tv/utils/DialogUtils;", "", "()V", "checkNeedUpgrade", "", "appVersion", "", "latestVersion", "getClickableHtml", "", "html", "textView", "Landroid/widget/TextView;", "act", "Landroid/app/Activity;", "parseVersionCode", "n", "setLinkClickable", "", "clickableHtmlBuilder", "Landroid/text/SpannableStringBuilder;", "urlSpan", "Landroid/text/style/URLSpan;", "showDialogPermission", "confirm", "Lkotlin/Function0;", "showEditDialog", "hint", "maxLength", "", "editListenr", "Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;", "content", "showJpProductDialog", "showNoticeDialog", "showQQProductDialog", "goShare", "showQrCodeDialog", "showSimpleDialog", "txt", "cancel", "showSureDialog", "EditContentGetListner", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DialogUtils {
    public static final DialogUtils INSTANCE = new DialogUtils();

    /* JADX INFO: compiled from: DialogUtils.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;", "", "getContent", "", "str", "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface EditContentGetListner {
        void getContent(String str);
    }

    private DialogUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showSimpleDialog$default(DialogUtils dialogUtils, Activity activity, CharSequence charSequence, Function0 function0, Function0 function1, int i, Object obj) {
        if ((i & 8) != 0) {
            function1 = null;
        }
        dialogUtils.showSimpleDialog(activity, charSequence, function0, function1);
    }

    public final void showSimpleDialog(Activity act, CharSequence txt, final Function0<Unit> confirm, final Function0<Unit> cancel) {
        Intrinsics.checkNotNullParameter(act, "act");
        Intrinsics.checkNotNullParameter(txt, "txt");
        Intrinsics.checkNotNullParameter(confirm, "confirm");
        View viewInflate = act.getLayoutInflater().inflate(R.layout.layout_simple_dialog, (ViewGroup) null, false);
        View viewFindViewById = viewInflate.findViewById(R.id.content);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(txt);
        final Dialog dialog = new Dialog(act, R.style.NoTitleDialog);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.mogu.tv.utils.DialogUtils$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogUtils.m309showSimpleDialog$lambda0(dialog, confirm, cancel, view);
            }
        };
        viewInflate.findViewById(R.id.cancel).setOnClickListener(onClickListener);
        viewInflate.findViewById(R.id.ok).setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showSimpleDialog$lambda-0, reason: not valid java name */
    public static final void m309showSimpleDialog$lambda0(Dialog dialog, Function0 confirm, Function0 function0, View view) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        Intrinsics.checkNotNullParameter(confirm, "$confirm");
        dialog.dismiss();
        if (view.getId() == R.id.ok) {
            confirm.invoke();
        }
        if (view.getId() != R.id.cancel || function0 == null) {
            return;
        }
        function0.invoke();
    }

    public final void showJpProductDialog(Activity act) {
        Intrinsics.checkNotNullParameter(act, "act");
        View view = act.getLayoutInflater().inflate(R.layout.layout_jpproduct, (ViewGroup) null, false);
        final Dialog dialog = new Dialog(act, R.style.NoTitleDialog);
        dialog.setContentView(view, new ViewGroup.LayoutParams(-1, -2));
        Intrinsics.checkNotNullExpressionValue(view, "view");
        AndroidutilsKt.click(view, new Function1<View, Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showJpProductDialog.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                invoke2(view2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                dialog.dismiss();
            }
        });
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
    }

    public final void showQQProductDialog(Activity act, final Function0<Unit> goShare) {
        Intrinsics.checkNotNullParameter(act, "act");
        Intrinsics.checkNotNullParameter(goShare, "goShare");
        View viewInflate = act.getLayoutInflater().inflate(R.layout.layout_qqget, (ViewGroup) null, false);
        Dialog dialog = new Dialog(act, R.style.NoTitleDialog);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        ImageView ivUnlock = (ImageView) viewInflate.findViewById(R.id.ivUnlock);
        final TextView textView = (TextView) viewInflate.findViewById(R.id.content);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Intrinsics.checkNotNullExpressionValue(ivUnlock, "ivUnlock");
        UserManagerKt.LoginClick(ivUnlock, new Function0<Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showQQProductDialog.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                if (UserManager.INSTANCE.getShareTotal() < 3) {
                    textView.setText("您还没有邀请3个用户下载app。请点击下方“前去邀请”去邀请。可在-我的页面-查看邀请数量");
                } else {
                    if (booleanRef.element) {
                        return;
                    }
                    booleanRef.element = true;
                    ApiManager apiManager = ApiManager.INSTANCE;
                    final TextView textView2 = textView;
                    apiManager.getMoguConfig("qqsharequn", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showQQProductDialog.1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, MoguConfig moguConfig) {
                            invoke(num.intValue(), str, moguConfig);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i, String msg, MoguConfig moguConfig) {
                            Intrinsics.checkNotNullParameter(msg, "msg");
                            if (i == 200) {
                                if (UserManager.INSTANCE.getShareTotal() >= 3) {
                                    TextView textView3 = textView2;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("QQ群号:");
                                    sb.append(moguConfig != null ? moguConfig.getValue() : null);
                                    sb.append(",口令为mogu.tv。QQ群严禁发送广告,群的目的是给狼友一个公开免费的讨论环境。'");
                                    textView3.setText(sb.toString());
                                    return;
                                }
                                textView2.setText("您还没有邀请3个用户下载app。请点击下方“前去邀请”去邀请。可在-我的页面-查看邀请数量");
                            }
                        }
                    });
                }
            }
        });
        ImageView ivGoShare = (ImageView) viewInflate.findViewById(R.id.ivGoShare);
        Intrinsics.checkNotNullExpressionValue(ivGoShare, "ivGoShare");
        UserManagerKt.LoginClick(ivGoShare, new Function0<Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showQQProductDialog.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                goShare.invoke();
            }
        });
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
    }

    public static /* synthetic */ void showEditDialog$default(DialogUtils dialogUtils, Activity activity, String str, int i, EditContentGetListner editContentGetListner, String str2, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            str2 = "";
        }
        dialogUtils.showEditDialog(activity, str, i, editContentGetListner, str2);
    }

    public final void showEditDialog(Activity act, String hint, int maxLength, final EditContentGetListner editListenr, String content) {
        Intrinsics.checkNotNullParameter(act, "act");
        Intrinsics.checkNotNullParameter(hint, "hint");
        Intrinsics.checkNotNullParameter(editListenr, "editListenr");
        Intrinsics.checkNotNullParameter(content, "content");
        View viewInflate = act.getLayoutInflater().inflate(R.layout.dialog_edit, (ViewGroup) null, false);
        final TipsEditText tipsEditText = (TipsEditText) viewInflate.findViewById(R.id.et_content);
        TextView tv_cancel = (TextView) viewInflate.findViewById(R.id.tv_cancel);
        TextView tv_ok = (TextView) viewInflate.findViewById(R.id.tv_ok);
        final FullScreenDialog fullScreenDialog = new FullScreenDialog(act);
        tipsEditText.setMaxLength(maxLength);
        tipsEditText.setHint(hint);
        tipsEditText.setText(content);
        Intrinsics.checkNotNullExpressionValue(tv_cancel, "tv_cancel");
        AndroidutilsKt.click(tv_cancel, new Function1<View, Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showEditDialog.1
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
                fullScreenDialog.dismiss();
            }
        });
        Intrinsics.checkNotNullExpressionValue(tv_ok, "tv_ok");
        AndroidutilsKt.click(tv_ok, new Function1<View, Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showEditDialog.2
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
                EditContentGetListner editContentGetListner = editListenr;
                String content2 = tipsEditText.getContent();
                Intrinsics.checkNotNullExpressionValue(content2, "et_content.content");
                editContentGetListner.getContent(content2);
                fullScreenDialog.dismiss();
            }
        });
        fullScreenDialog.setContentView(viewInflate);
        fullScreenDialog.showAtBottom();
    }

    public final void showSureDialog(Activity act, CharSequence txt, final Function0<Unit> confirm) {
        Intrinsics.checkNotNullParameter(act, "act");
        Intrinsics.checkNotNullParameter(txt, "txt");
        Intrinsics.checkNotNullParameter(confirm, "confirm");
        View viewInflate = act.getLayoutInflater().inflate(R.layout.layout_sure_dialog, (ViewGroup) null, false);
        View viewFindViewById = viewInflate.findViewById(R.id.content);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(txt);
        final Dialog dialog = new Dialog(act, R.style.NoTitleDialog);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
        viewInflate.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.utils.DialogUtils$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogUtils.m310showSureDialog$lambda1(dialog, confirm, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showSureDialog$lambda-1, reason: not valid java name */
    public static final void m310showSureDialog$lambda1(Dialog dialog, Function0 confirm, View view) {
        Intrinsics.checkNotNullParameter(dialog, "$dialog");
        Intrinsics.checkNotNullParameter(confirm, "$confirm");
        dialog.dismiss();
        if (view.getId() == R.id.ok) {
            confirm.invoke();
        }
    }

    private final void setLinkClickable(final Activity act, SpannableStringBuilder clickableHtmlBuilder, final URLSpan urlSpan) {
        clickableHtmlBuilder.setSpan(new ClickableSpan() { // from class: com.mogu.tv.utils.DialogUtils$setLinkClickable$clickableSpan$1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                String url = urlSpan.getURL();
                ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                Activity activity = act;
                Intrinsics.checkNotNullExpressionValue(url, "url");
                arouterUtils.toUrlPraseJump(activity, url);
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                Intrinsics.checkNotNullParameter(ds, "ds");
                ds.setUnderlineText(false);
                ds.setColor(Color.parseColor("#00ce88"));
            }
        }, clickableHtmlBuilder.getSpanStart(urlSpan), clickableHtmlBuilder.getSpanEnd(urlSpan), clickableHtmlBuilder.getSpanFlags(urlSpan));
    }

    private final CharSequence getClickableHtml(String html, TextView textView, Activity act) {
        ImageGetter imageGetter = new ImageGetter(BaseApplicaitonKt.getApplication(), textView);
        Spanned spannedFromHtml = HtmlCompat.fromHtml(html, 0, imageGetter, null);
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, "fromHtml(\n            ht…textView), null\n        )");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml);
        URLSpan[] urls = (URLSpan[]) spannableStringBuilder.getSpans(0, spannedFromHtml.length(), URLSpan.class);
        Intrinsics.checkNotNullExpressionValue(urls, "urls");
        for (URLSpan span : urls) {
            Intrinsics.checkNotNullExpressionValue(span, "span");
            setLinkClickable(act, spannableStringBuilder, span);
        }
        return spannableStringBuilder;
    }

    public final void showQrCodeDialog() {
        Activity activityCurrentActivity = AcManage.getAppManager().currentActivity();
        View viewInflate = activityCurrentActivity.getLayoutInflater().inflate(R.layout.layout_qr_dialog, (ViewGroup) null, false);
        View viewFindViewById = viewInflate.findViewById(R.id.ivQrCode);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.ImageView");
        ((ImageView) viewFindViewById).setImageBitmap(AndroidutilsKt.getQRBitmapFromUrl(GlobeAppData.INSTANCE.getShareLinkWithInvite()));
        Dialog dialog = new Dialog(activityCurrentActivity, R.style.NoTitleDialog);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [T, android.view.View] */
    public final void showNoticeDialog(Activity act, String html) {
        Intrinsics.checkNotNullParameter(act, "act");
        Intrinsics.checkNotNullParameter(html, "html");
        View view = act.getLayoutInflater().inflate(R.layout.layout_notice_dialog, (ViewGroup) null, false);
        final Dialog dialog = new Dialog(act, R.style.NoTitleDialog);
        dialog.setContentView(view, new ViewGroup.LayoutParams(-1, -2));
        dialog.setCanceledOnTouchOutside(true);
        dialog.setCancelable(true);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = view.findViewById(R.id.tv_content);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        AndroidutilsKt.click(view, new Function1<View, Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showNoticeDialog.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view2) {
                invoke2(view2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                dialog.dismiss();
            }
        });
        ((WebView) objectRef.element).loadData(html, MimeTypes.TEXT_HTML, "UTF-8");
        ((WebView) objectRef.element).postDelayed(new Runnable() { // from class: com.mogu.tv.utils.DialogUtils$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DialogUtils.m308showNoticeDialog$lambda2(objectRef);
            }
        }, 400L);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            double screenWidth = ScreenUtils.INSTANCE.getScreenWidth();
            Double.isNaN(screenWidth);
            attributes.width = (int) (screenWidth * 0.8d);
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: showNoticeDialog$lambda-2, reason: not valid java name */
    public static final void m308showNoticeDialog$lambda2(Ref.ObjectRef tvcontent) {
        Intrinsics.checkNotNullParameter(tvcontent, "$tvcontent");
        ((WebView) tvcontent.element).setVisibility(0);
    }

    public final void showDialogPermission(Activity act, final Function0<Unit> confirm) {
        Intrinsics.checkNotNullParameter(act, "act");
        Intrinsics.checkNotNullParameter(confirm, "confirm");
        View viewInflate = act.getLayoutInflater().inflate(R.layout.layout_permission_dialog, (ViewGroup) null, false);
        final Dialog dialog = new Dialog(act, R.style.NoTitleDialog);
        dialog.setContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        dialog.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
        View viewFindViewById = viewInflate.findViewById(R.id.tv_submit);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "view.findViewById<TextView>(R.id.tv_submit)");
        AndroidutilsKt.click(viewFindViewById, new Function1<View, Unit>() { // from class: com.mogu.tv.utils.DialogUtils.showDialogPermission.1
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
                dialog.dismiss();
                confirm.invoke();
            }
        });
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            double screenWidth = ScreenUtils.INSTANCE.getScreenWidth();
            Double.isNaN(screenWidth);
            attributes.width = (int) (screenWidth * 0.7d);
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        dialog.show();
    }

    public final boolean parseVersionCode(String n) {
        Intrinsics.checkNotNullParameter(n, "n");
        return checkNeedUpgrade(BaseApplicaitonKt.getApplication().getPackageManager().getPackageInfo(BaseApplicaitonKt.getApplication().getPackageName(), 0).versionName, n);
    }

    public final boolean checkNeedUpgrade(String appVersion, String latestVersion) {
        String str = appVersion;
        if (!(str == null || StringsKt.isBlank(str))) {
            String str2 = latestVersion;
            if (!(str2 == null || StringsKt.isBlank(str2))) {
                List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{Consts.DOT}, false, 0, 6, (Object) null);
                List listSplit$default2 = StringsKt.split$default((CharSequence) str2, new String[]{Consts.DOT}, false, 0, 6, (Object) null);
                int iMin = Math.min(listSplit$default.size(), listSplit$default2.size());
                int i = 0;
                while (true) {
                    if (i < iMin) {
                        if ((!StringsKt.isBlank((CharSequence) listSplit$default.get(i))) && (!StringsKt.isBlank((CharSequence) listSplit$default2.get(i)))) {
                            Integer intOrNull = StringsKt.toIntOrNull((String) listSplit$default.get(i));
                            int iIntValue = intOrNull != null ? intOrNull.intValue() : -1;
                            Integer intOrNull2 = StringsKt.toIntOrNull((String) listSplit$default2.get(i));
                            int iIntValue2 = intOrNull2 != null ? intOrNull2.intValue() : -1;
                            if (iIntValue2 > iIntValue) {
                                return true;
                            }
                            if (iIntValue2 < iIntValue) {
                                return false;
                            }
                        }
                        i++;
                    } else if (listSplit$default2.size() > iMin) {
                        int size = listSplit$default2.size();
                        while (iMin < size) {
                            Integer intOrNull3 = StringsKt.toIntOrNull((String) listSplit$default2.get(iMin));
                            if ((intOrNull3 != null ? intOrNull3.intValue() : -1) > 0) {
                                return true;
                            }
                            iMin++;
                        }
                    }
                }
            }
        }
        return false;
    }
}
