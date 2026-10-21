package com.kotlin.basiclib;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Html;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.utils.DrawableUtil;
import com.umeng.analytics.pro.d;
import com.uuzuche.lib_zxing.activity.CodeUtils;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntProgression;
import kotlin.text.StringsKt;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: Androidutils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007\u001a\u0016\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f\u001a\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0005\u001a\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005\u001a*\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00052\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0017H\u0086\bø\u0001\u0000\u001a\u0012\u0010\u0018\u001a\u00020\u0012*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b\u001a\u0012\u0010\u001c\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005\u001a-\u0010\u001e\u001a\u00020\u0012*\u00020\u001f2!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\u00120 \u001a\u001b\u0010$\u001a\u00020\u0012\"\n\b\u0000\u0010%\u0018\u0001*\u00020&*\u0004\u0018\u00010\u001fH\u0086\b\u001a\n\u0010'\u001a\u00020\u0005*\u00020\u0019\u001a\u0012\u0010(\u001a\u00020\u0005*\u00020\u00052\u0006\u0010)\u001a\u00020\u0005\u001a(\u0010*\u001a\u00020\u001f*\u00020&2\u0006\u0010)\u001a\u00020\u00072\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\b\b\u0002\u0010-\u001a\u00020\u0001\u001a(\u0010*\u001a\u00020\u001f*\u00020.2\u0006\u0010)\u001a\u00020\u00072\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\b\b\u0002\u0010-\u001a\u00020\u0001\u001a\n\u0010/\u001a\u00020\u0001*\u00020\u0005\u001a\n\u00100\u001a\u00020\u0001*\u00020\u0019\u001a\f\u00100\u001a\u00020\u0001*\u0004\u0018\u000101\u001a\f\u00100\u001a\u00020\u0001*\u0004\u0018\u00010\u0005\u001a\f\u00102\u001a\u00020\u0001*\u0004\u0018\u000101\u001a\f\u00102\u001a\u00020\u0001*\u0004\u0018\u00010\u0005\u001a\n\u00103\u001a\u00020\u0012*\u00020\u001f\u001a,\u00104\u001a\u00020\u0012*\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0018\u00105\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001206\u001a\u001a\u00107\u001a\u00020\u0012*\u00020\u00192\u0006\u0010\"\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u0005\u001a\u0012\u00109\u001a\u00020\u0012*\u00020\u001f2\u0006\u0010\u0015\u001a\u00020\u0001\u001a,\u0010:\u001a\u00020\u0012*\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0018\u00105\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001206\u001a\n\u0010;\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010<\u001a\u00020\u0005*\u00020\u0005\u001a\n\u0010=\u001a\u00020\u0012*\u00020>\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006?"}, d2 = {"checkAppInstalled", "", d.R, "Landroid/content/Context;", "pkgName", "", TtmlNode.ATTR_TTS_COLOR, "", "colorId", "formatBit", "int", "value", "", "getCopyText", "getQRBitmapFromUrl", "Landroid/graphics/Bitmap;", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "toast", "", "txt", "toastIf", "boolean", "action", "Lkotlin/Function0;", "YzmCountDown", "Landroid/widget/TextView;", SessionDescription.ATTR_RANGE, "Lkotlin/ranges/IntProgression;", "addStrToEnd", "str", "click", "Landroid/view/View;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "view", "clickTo", "T", "Landroid/app/Activity;", "content", "getH5Detials", "id", "inflate", "root", "Landroid/view/ViewGroup;", "attachToRoot", "Landroidx/fragment/app/Fragment;", "isAllNumber", "isEmpty", "", "isNotEmpty", "removeParent", "secondReturn", "block", "Lkotlin/Function2;", "setKeyWordText", "keyword", "setVisible", "timerReturn", "toBoolean", "toChineseNumber", "togglePasswordStatus", "Landroid/widget/EditText;", "basiclib_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class AndroidutilsKt {
    public static final boolean toBoolean(int i) {
        return i == 1;
    }

    public static final /* synthetic */ <T extends Activity> void clickTo(final View view) {
        if (view != null) {
            Intrinsics.needClassReification();
            view.setOnClickListener(new View.OnClickListener() { // from class: com.kotlin.basiclib.AndroidutilsKt.clickTo.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Context context = view.getContext();
                    Intrinsics.reifiedOperationMarker(4, "T");
                    view.getContext().startActivity(new Intent(context, (Class<?>) Activity.class));
                }
            });
        }
    }

    public static final void setVisible(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public static final String content(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        return textView.getText().toString();
    }

    public static final boolean isEmpty(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        return isEmpty(textView.getText());
    }

    public static final void setKeyWordText(TextView textView, String name, String keyword) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        String str = name;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) keyword, false, 2, (Object) null)) {
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, keyword, 0, false, 6, (Object) null);
            int length = keyword.length();
            StringBuilder sb = new StringBuilder();
            String strSubstring = name.substring(0, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            sb.append("<font color=#FF0000>");
            int i = length + iIndexOf$default;
            String strSubstring2 = name.substring(iIndexOf$default, i);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring2);
            sb.append("</font>");
            String strSubstring3 = name.substring(i, name.length());
            Intrinsics.checkNotNullExpressionValue(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring3);
            textView.setText(Html.fromHtml(sb.toString()));
            return;
        }
        textView.setText(str);
    }

    public static final boolean isAllNumber(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (Character.isDigit(str.charAt(length)));
        return false;
    }

    public static final String getCopyText(Context context) {
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        try {
            Intrinsics.checkNotNull(clipboardManager);
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            Intrinsics.checkNotNull(primaryClip);
            string = primaryClip.getItemAt(0).getText().toString();
        } catch (Exception e) {
            e.printStackTrace();
            string = null;
        }
        return string == null ? "" : string;
    }

    public static final void toast(String txt) {
        Intrinsics.checkNotNullParameter(txt, "txt");
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), txt, 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    public static final void toastIf(boolean z, String txt, Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(txt, "txt");
        Intrinsics.checkNotNullParameter(action, "action");
        if (z) {
            Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), txt, 0);
            toastMakeText.show();
            Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
            action.invoke();
        }
    }

    public static final boolean checkAppInstalled(Context context, String pkgName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pkgName, "pkgName");
        if (isEmpty(pkgName)) {
            return false;
        }
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        Intrinsics.checkNotNullExpressionValue(installedPackages, "packageManager.getInstalledPackages(0)");
        if (installedPackages.isEmpty()) {
            return false;
        }
        Iterator<T> it = installedPackages.iterator();
        while (it.hasNext()) {
            if (pkgName.equals(((PackageInfo) it.next()).packageName)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isNotEmpty(String str) {
        return str != null && str.length() > 0;
    }

    public static final boolean isNotEmpty(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0;
    }

    public static final boolean isEmpty(String str) {
        return str == null || str.length() <= 0;
    }

    public static final boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() <= 0;
    }

    public static final int color(int i) {
        return ContextCompat.getColor(BaseApplicaitonKt.getApplication(), i);
    }

    public static final void click(final View view, final Function1<? super View, Unit> click) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(click, "click");
        view.setOnClickListener(new View.OnClickListener() { // from class: com.kotlin.basiclib.AndroidutilsKt$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidutilsKt.m148click$lambda1(view, click, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: click$lambda-1, reason: not valid java name */
    public static final void m148click$lambda1(View this_click, Function1 click, View view) {
        Intrinsics.checkNotNullParameter(this_click, "$this_click");
        Intrinsics.checkNotNullParameter(click, "$click");
        click.invoke(this_click);
    }

    public static final void togglePasswordStatus(EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        if (editText.getTransformationMethod() instanceof PasswordTransformationMethod) {
            editText.setTransformationMethod(new HideReturnsTransformationMethod());
        } else {
            editText.setTransformationMethod(new PasswordTransformationMethod());
        }
    }

    public static final String formatBit(int i, double d) {
        DecimalFormat decimalFormat;
        if (i == 0) {
            decimalFormat = new DecimalFormat("0");
        } else {
            String str = "";
            int i2 = 1;
            if (1 <= i) {
                while (true) {
                    str = str + '0';
                    if (i2 == i) {
                        break;
                    }
                    i2++;
                }
            }
            decimalFormat = new DecimalFormat("0." + str);
        }
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        String str2 = decimalFormat.format(d);
        Intrinsics.checkNotNullExpressionValue(str2, "df.format(value)");
        return str2;
    }

    public static /* synthetic */ View inflate$default(Activity activity, int i, ViewGroup viewGroup, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            viewGroup = null;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return inflate(activity, i, viewGroup, z);
    }

    public static final View inflate(Activity activity, int i, ViewGroup viewGroup, boolean z) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        View viewInflate = activity.getLayoutInflater().inflate(i, viewGroup, z);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "this.layoutInflater.infl…e(id, root, attachToRoot)");
        return viewInflate;
    }

    public static /* synthetic */ View inflate$default(Fragment fragment, int i, ViewGroup viewGroup, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            viewGroup = null;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return inflate(fragment, i, viewGroup, z);
    }

    public static final View inflate(Fragment fragment, int i, ViewGroup viewGroup, boolean z) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        View viewInflate = fragment.getLayoutInflater().inflate(i, viewGroup, z);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "this.layoutInflater.infl…e(id, root, attachToRoot)");
        return viewInflate;
    }

    public static final void removeParent(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object parent = view.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeViewInLayout((View) parent);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.collections.IntIterator] */
    public static final void timerReturn(final View view, final IntProgression range, final Function2<? super Integer, ? super Boolean, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(block, "block");
        final ?? it = range.iterator();
        new Runnable() { // from class: com.kotlin.basiclib.AndroidutilsKt.timerReturn.1
            @Override // java.lang.Runnable
            public void run() {
                if (it.hasNext()) {
                    int iNextInt = it.nextInt();
                    if (iNextInt != ((Number) CollectionsKt.maxOrThrow((Iterable<Double>) range)).intValue()) {
                        block.invoke(Integer.valueOf(iNextInt), false);
                    }
                    view.postDelayed(this, Math.abs(((long) range.getStep()) * 1000 * ((long) 60)));
                    return;
                }
                block.invoke(Integer.valueOf(range.getLast()), true);
            }
        }.run();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.collections.IntIterator] */
    public static final void secondReturn(final View view, final IntProgression range, final Function2<? super Integer, ? super Boolean, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(block, "block");
        final ?? it = range.iterator();
        new Runnable() { // from class: com.kotlin.basiclib.AndroidutilsKt.secondReturn.1
            @Override // java.lang.Runnable
            public void run() {
                if (it.hasNext()) {
                    if (it.nextInt() != ((Number) CollectionsKt.maxOrThrow((Iterable<Double>) range)).intValue()) {
                        block.invoke(Integer.valueOf(it.nextInt()), false);
                    }
                    view.postDelayed(this, Math.abs(((long) range.getStep()) * 1000 * ((long) 10)));
                    return;
                }
                block.invoke(Integer.valueOf(range.getLast()), true);
            }
        }.run();
    }

    public static final Bitmap getQRBitmapFromUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return CodeUtils.createImage(url, 300, 300, BitmapFactory.decodeResource(BaseApplicaitonKt.getApplication().getResources(), DrawableUtil.INSTANCE.getResByNameInMipmap(BaseApplicaitonKt.getApplication(), "app_logo")));
    }

    public static final String getH5Detials(String str, String id) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        return str + "?id=" + id;
    }

    public static final String addStrToEnd(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(str2, "str");
        if (str.length() == 0) {
            return str2;
        }
        return str + ',' + str2;
    }

    public static final String toChineseNumber(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() == 0) {
            return "0";
        }
        try {
            DecimalFormat decimalFormat = new DecimalFormat(".0");
            int i = Integer.parseInt(str);
            if (i > 10000) {
                StringBuilder sb = new StringBuilder();
                double d = i;
                Double.isNaN(d);
                sb.append(decimalFormat.format(d / 10000.0d));
                sb.append((char) 19975);
                return sb.toString();
            }
            return String.valueOf(i);
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator] */
    public static final void YzmCountDown(final TextView textView, final IntProgression range) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (textView.isEnabled()) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = textView;
            textView.setEnabled(false);
            final ?? it = range.iterator();
            new Runnable() { // from class: com.kotlin.basiclib.AndroidutilsKt.YzmCountDown.1
                @Override // java.lang.Runnable
                public void run() {
                    if (it.hasNext()) {
                        TextView textView2 = objectRef.element;
                        StringBuilder sb = new StringBuilder();
                        sb.append(it.nextInt());
                        sb.append('s');
                        textView2.setText(sb.toString());
                        textView.postDelayed(this, Math.abs(((long) range.getStep()) * 1000));
                        return;
                    }
                    objectRef.element.setEnabled(true);
                    objectRef.element.setText("获取验证码");
                }
            }.run();
        }
    }
}
