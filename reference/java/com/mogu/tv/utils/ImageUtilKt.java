package com.mogu.tv.utils;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.amogu6.tv.R;
import com.bumptech.glide.request.RequestOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ImageUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007\u001a\u0014\u0010\b\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u000b"}, d2 = {"with", "", "Landroid/widget/ImageView;", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "Landroid/graphics/Bitmap;", "res", "", "", "withCenCropDeaultUser", "withDefaltUserPhoto", "withDefaultPhoto", "app_mogushareRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ImageUtilKt {
    public static final void with(ImageView imageView, String str) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        GlideApp.with(imageView).load(str).into(imageView);
    }

    public static final void with(ImageView imageView, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        GlideApp.with(imageView).load(bitmap).into(imageView);
    }

    public static final void withCenCropDeaultUser(ImageView imageView, String str) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        GlideApp.with(imageView).load(str).apply(ImageUtil.INSTANCE.getOptionsCenterUserCropHavePlace()).into(imageView);
    }

    public static final void with(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        GlideApp.with(imageView).load(Integer.valueOf(i)).into(imageView);
    }

    public static final void withDefaltUserPhoto(ImageView imageView, String str) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        String str2 = str;
        if ((str2 == null || str2.length() == 0) || str.length() < 30) {
            return;
        }
        GlideApp.with(imageView).load(str).apply(new RequestOptions().placeholder(R.mipmap.default_user)).into(imageView);
    }

    public static final void withDefaultPhoto(ImageView imageView, String str, int i) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        GlideApp.with(imageView).load(str).apply(new RequestOptions().placeholder(i)).into(imageView);
    }
}
