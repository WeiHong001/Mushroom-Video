package com.kotlin.basiclib.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.transition.Transition;
import com.luck.picture.lib.config.PictureMimeType;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadPictureUtil {
    public static String getImageTypeWithMime(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        String str2 = options.outMimeType;
        return TextUtils.isEmpty(str2) ? "" : str2.substring(6);
    }

    public static String saveBitmap(Bitmap bitmap, String str) {
        try {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/mogu/" + str + PictureMimeType.PNG;
            File file = new File(str2);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return str2;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "";
        } catch (IOException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void downloadPicture(final Context context, final String str) {
        Glide.with(context).downloadOnly().load(str).into(new FileTarget() { // from class: com.kotlin.basiclib.utils.DownloadPictureUtil.1
            @Override // com.kotlin.basiclib.utils.FileTarget, com.bumptech.glide.request.target.Target
            public void onLoadStarted(Drawable drawable) {
                super.onLoadStarted(drawable);
                ToastUtil.INSTANCE.toast("开始下载...");
                super.onLoadStarted(drawable);
            }

            @Override // com.kotlin.basiclib.utils.FileTarget, com.bumptech.glide.request.target.Target
            public void onLoadFailed(Drawable drawable) {
                super.onLoadFailed(drawable);
                ToastUtil.INSTANCE.toast("保存失败...");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.kotlin.basiclib.utils.FileTarget, com.bumptech.glide.request.target.Target
            public void onResourceReady(File file, Transition<? super File> transition) {
                String strEncode;
                super.onResourceReady(file, transition);
                String str2 = Environment.getExternalStorageDirectory() + "/mogu/";
                try {
                    String str3 = str;
                    String strSubstring = str3.substring(str3.lastIndexOf("/") + 1);
                    if (strSubstring.contains(Consts.DOT)) {
                        strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf(Consts.DOT));
                    }
                    strEncode = MD5EncryptNf.encode(strSubstring);
                } catch (Exception e) {
                    e.printStackTrace();
                    strEncode = System.currentTimeMillis() + "";
                }
                String str4 = strEncode + Consts.DOT + DownloadPictureUtil.getImageTypeWithMime(file.getAbsolutePath());
                FileUtils.createFileByDeleteOldFile(str2 + str4);
                if (FileUtils.copyFile(file, str2, str4)) {
                    ToastUtil.INSTANCE.toast("成功保存到 ".concat(str2).concat(str4));
                    new SingleMediaScanner(context, str2.concat(str4), new SingleMediaScanner.ScanListener() { // from class: com.kotlin.basiclib.utils.DownloadPictureUtil.1.1
                        @Override // com.kotlin.basiclib.utils.SingleMediaScanner.ScanListener
                        public void onScanFinish() {
                        }
                    });
                } else {
                    ToastUtil.INSTANCE.toast("保存失败");
                }
            }
        });
    }
}
