package com.qushare.news.utils;

import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.os.StrictMode;
import android.text.TextUtils;
import android.widget.Toast;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.utils.FileUtils;
import com.umeng.analytics.pro.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.eclipse.jetty.http.MimeTypes;

/* JADX INFO: compiled from: ShareUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J>\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0002J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u001c\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011J\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u0016\u0010\u0018\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0007¨\u0006\u001d"}, d2 = {"Lcom/qushare/news/utils/ShareUtils;", "", "()V", "checkFileUriExposure", "", "copyText", "txt", "", "isAppInstall", "", d.R, "Landroid/content/Context;", "appPackageName", "shareFile", "path", "shareImage", "pathList", "", "pkg", "cls", "shareImageToQQ", "shareImageToQZone", "shareImageToWeChat", "shareImageToWeChatFriend", "shareImg", "uri", "Landroid/net/Uri;", "shareText", "text", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShareUtils {
    public static final ShareUtils INSTANCE = new ShareUtils();

    private ShareUtils() {
    }

    public final void shareText(Context context, String text) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(text, "text");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", text);
        intent.setType(MimeTypes.TEXT_PLAIN);
        context.startActivity(Intent.createChooser(intent, "分享到"));
    }

    public final void shareImg(Context context, Uri uri) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.TEXT", "蘑菇视频分享邀请下载");
        Intent intentCreateChooser = Intent.createChooser(intent, "蘑菇视频分享邀请下载");
        Intrinsics.checkNotNullExpressionValue(intentCreateChooser, "createChooser(intent, \"蘑菇视频分享邀请下载\")");
        context.startActivity(intentCreateChooser);
    }

    public final void copyText(String txt) {
        Intrinsics.checkNotNullParameter(txt, "txt");
        try {
            Object systemService = BaseApplicaitonKt.getApplication().getSystemService("clipboard");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipboardManager clipboardManager = (ClipboardManager) systemService;
            String str = txt;
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            clipboardManager.setText(str.subSequence(i, length + 1).toString());
            Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "复制成功", 0);
            toastMakeText.show();
            Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
        } catch (Exception unused) {
        }
    }

    public final void shareFile(Context context, String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        checkFileUriExposure();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(path)));
        intent.setType("*/*");
        context.startActivity(Intent.createChooser(intent, "分享"));
    }

    public final void shareImage(Context context, String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        shareImage(context, path, null, null, null);
    }

    public final void shareImageToWeChat(Context context, String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        if (isAppInstall(context, "com.tencent.mm")) {
            shareImage(context, path, null, "com.tencent.mm", "com.tencent.mm.ui.tools.ShareImgUI");
            return;
        }
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "您还没有安装微信", 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    public final void shareImageToWeChatFriend(Context context, String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        if (isAppInstall(context, "com.tencent.mm")) {
            shareImage(context, path, null, "com.tencent.mm", "com.tencent.mm.ui.tools.ShareToTimeLineUI");
            return;
        }
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "您还没有安装微信", 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    public final void shareImageToQQ(Context context, String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        if (isAppInstall(context, "com.tencent.mobileqq")) {
            shareImage(context, path, null, "com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
            return;
        }
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "您还没有安装QQ", 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    public final void shareImageToQQ(Context context, List<String> pathList) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathList, "pathList");
        if (isAppInstall(context, "com.tencent.mobileqq")) {
            shareImage(context, null, pathList, "com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
            return;
        }
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "您还没有安装QQ", 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    public final void shareImageToQZone(Context context, String path) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        if (isAppInstall(context, "com.qzone")) {
            shareImage(context, path, null, "com.qzone", "com.qzonex.module.operation.ui.QZonePublishMoodActivity");
            return;
        }
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "您还没有安装QQ空间", 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    public final boolean isAppInstall(Context context, String appPackageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appPackageName, "appPackageName");
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        Intrinsics.checkNotNullExpressionValue(installedPackages, "packageManager.getInstalledPackages(0)");
        int size = installedPackages.size();
        for (int i = 0; i < size; i++) {
            if (Intrinsics.areEqual(appPackageName, installedPackages.get(i).packageName)) {
                return true;
            }
        }
        return false;
    }

    private final void checkFileUriExposure() {
        if (Build.VERSION.SDK_INT >= 18) {
            StrictMode.VmPolicy.Builder builder = new StrictMode.VmPolicy.Builder();
            StrictMode.setVmPolicy(builder.build());
            builder.detectFileUriExposure();
        }
    }

    private final void shareImage(Context context, String path, List<String> pathList, String pkg, String cls) {
        if (path != null || pathList != null) {
            checkFileUriExposure();
            try {
                if (path != null) {
                    if (FileUtils.isExist(path)) {
                        Intent intent = new Intent();
                        if (pkg != null && cls != null) {
                            if (Intrinsics.areEqual(pkg, "com.sina.weibo")) {
                                intent.setPackage(pkg);
                            } else {
                                intent.setComponent(new ComponentName(pkg, cls));
                            }
                        }
                        intent.setAction("android.intent.action.SEND");
                        intent.setFlags(268435456);
                        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(path)));
                        intent.setType("image/*");
                        context.startActivity(Intent.createChooser(intent, "分享"));
                        return;
                    }
                    Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "图片不存在，请检查后重试", 0);
                    toastMakeText.show();
                    Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                    return;
                }
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Intrinsics.checkNotNull(pathList);
                int size = pathList.size();
                for (int i = 0; i < size; i++) {
                    if (!FileUtils.isExist(pathList.get(i))) {
                        Toast toastMakeText2 = Toast.makeText(BaseApplicaitonKt.getApplication(), (char) 31532 + (i + 1) + "张图片不存在，请检查后重试", 0);
                        toastMakeText2.show();
                        Intrinsics.checkExpressionValueIsNotNull(toastMakeText2, "Toast\n        .makeText(…         show()\n        }");
                        return;
                    }
                    arrayList.add(Uri.fromFile(new File(pathList.get(i))));
                }
                Intent intent2 = new Intent();
                if (pkg != null && cls != null) {
                    if (Intrinsics.areEqual(pkg, "com.sina.weibo")) {
                        intent2.setPackage(pkg);
                    } else {
                        intent2.setComponent(new ComponentName(pkg, cls));
                    }
                }
                intent2.setAction("android.intent.action.SEND_MULTIPLE");
                intent2.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
                intent2.setFlags(268435456);
                intent2.setType("image/*");
                context.startActivity(Intent.createChooser(intent2, "分享"));
                return;
            } catch (Exception unused) {
                Toast toastMakeText3 = Toast.makeText(BaseApplicaitonKt.getApplication(), "分享失败，未知错误", 0);
                toastMakeText3.show();
                Intrinsics.checkExpressionValueIsNotNull(toastMakeText3, "Toast\n        .makeText(…         show()\n        }");
                return;
            }
        }
        Toast toastMakeText4 = Toast.makeText(BaseApplicaitonKt.getApplication(), "找不到您要分享的图片文件", 0);
        toastMakeText4.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText4, "Toast\n        .makeText(…         show()\n        }");
    }
}
