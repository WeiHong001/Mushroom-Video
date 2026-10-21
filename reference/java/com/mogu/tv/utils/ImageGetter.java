package com.mogu.tv.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.luck.picture.lib.tools.ScreenUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ImageGetter implements Html.ImageGetter {
    private Context context;
    private TextView textView;

    ImageGetter(Context context, TextView textView) {
        this.context = context;
        this.textView = textView;
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        RequestOptions requestOptions = new RequestOptions();
        requestOptions.override(ScreenUtils.getScreenWidth(this.context), ScreenUtils.dip2px(this.context, 110.0f));
        requestOptions.diskCacheStrategy(DiskCacheStrategy.ALL);
        final UrlDrawable urlDrawable = new UrlDrawable();
        Glide.with(this.context).asBitmap().load(str).into(new SimpleTarget<Bitmap>() { // from class: com.mogu.tv.utils.ImageGetter.1
            @Override // com.bumptech.glide.request.target.Target
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
            }

            public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) {
                float width = ImageGetter.this.textView.getWidth();
                if (bitmap.getWidth() > width) {
                    float width2 = width / bitmap.getWidth();
                    int width3 = (int) (bitmap.getWidth() * width2);
                    int height = (int) (bitmap.getHeight() * width2);
                    urlDrawable.setBounds(0, 0, width3, height);
                    urlDrawable.setBitmap(ImageGetter.this.resizeBitmap(bitmap, width3, height));
                } else {
                    urlDrawable.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    urlDrawable.setBitmap(bitmap);
                }
                ImageGetter.this.textView.invalidate();
                ImageGetter.this.textView.setText(ImageGetter.this.textView.getText());
            }
        });
        return urlDrawable;
    }

    private class UrlDrawable extends BitmapDrawable {
        private Bitmap bitmap;

        private UrlDrawable() {
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.bitmap != null) {
                canvas.drawBitmap(this.bitmap, (canvas.getWidth() - this.bitmap.getWidth()) / 2, 0.0f, getPaint());
            }
        }

        @Override // android.graphics.drawable.BitmapDrawable
        public void setBitmap(Bitmap bitmap) {
            this.bitmap = bitmap;
        }
    }

    public Bitmap resizeBitmap(Bitmap bitmap, int i, int i2) {
        new Matrix().postScale(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        return Bitmap.createBitmap(bitmap, 0, 0, ScreenUtils.getScreenWidth(this.context), ScreenUtils.dip2px(this.context, 110.0f), (Matrix) null, true);
    }
}
