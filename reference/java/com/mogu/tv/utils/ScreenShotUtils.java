package com.mogu.tv.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import com.kotlin.basiclib.base.BaseApplicaiton;
import com.kotlin.basiclib.utils.SingleMediaScanner;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenShotUtils {
    static /* synthetic */ void lambda$getBitmapFile$0() {
    }

    public static Bitmap loadBitmapFromView(View view) {
        if (view == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        view.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static void setViewLayoutParams(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams.height == i2 && layoutParams.width == i) {
            return;
        }
        layoutParams.width = i;
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    private static void getBitmapFile(String str, Bitmap bitmap) {
        File file = new File(str);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            new SingleMediaScanner(BaseApplicaiton.INSTANCE.getApplication(), str, new SingleMediaScanner.ScanListener() { // from class: com.mogu.tv.utils.ScreenShotUtils$$ExternalSyntheticLambda0
                @Override // com.kotlin.basiclib.utils.SingleMediaScanner.ScanListener
                public final void onScanFinish() {
                    ScreenShotUtils.lambda$getBitmapFile$0();
                }
            });
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
