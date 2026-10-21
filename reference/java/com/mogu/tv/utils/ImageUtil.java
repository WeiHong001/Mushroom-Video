package com.mogu.tv.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.amogu6.tv.R;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.utils.FileUtils;
import com.kotlin.basiclib.utils.ScreenUtils;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.mogu.tv.model.UploadImage;
import com.umeng.analytics.pro.d;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import top.zibin.luban.CompressionPredicate;
import top.zibin.luban.Luban;
import top.zibin.luban.OnCompressListener;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ImageUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u001c\u0010\u001e\u001a\u00020\u00192\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#J \u0010$\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)J \u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u001b2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010(\u001a\u00020)J \u0010,\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u001b2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010-\u001a\u00020)J \u0010.\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u000e\u0010\nR\u001b\u0010\u0010\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0011\u0010\nR\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0015\u0010\u0016¨\u0006/"}, d2 = {"Lcom/mogu/tv/utils/ImageUtil;", "", "()V", "maxNum", "", "getMaxNum", "()I", "optionsCenterCropHavePlace", "Lcom/bumptech/glide/request/RequestOptions;", "getOptionsCenterCropHavePlace", "()Lcom/bumptech/glide/request/RequestOptions;", "optionsCenterCropHavePlace$delegate", "Lkotlin/Lazy;", "optionsCenterInsideHavePlace", "getOptionsCenterInsideHavePlace", "optionsCenterInsideHavePlace$delegate", "optionsCenterUserCropHavePlace", "getOptionsCenterUserCropHavePlace", "optionsCenterUserCropHavePlace$delegate", "scaleDenity", "", "getScaleDenity", "()F", "scaleDenity$delegate", "getCompressFile", "", "filepath", "", "compressListener", "Ltop/zibin/luban/OnCompressListener;", "getImageResult", PictureConfig.EXTRA_SELECT_LIST, "", "Lcom/luck/picture/lib/entity/LocalMedia;", "callBack", "Lcom/mogu/tv/utils/PhotoZipCallBack;", "loadImage", d.R, "Landroid/content/Context;", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "imageView", "Landroid/widget/ImageView;", "loadImageSingleList", "imageUrl", "loadPhotoView", "imgView", "loadVideo", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImageUtil {
    public static final ImageUtil INSTANCE = new ImageUtil();
    private static final int maxNum = 9;

    /* JADX INFO: renamed from: optionsCenterCropHavePlace$delegate, reason: from kotlin metadata */
    private static final Lazy optionsCenterCropHavePlace = LazyKt.lazy(new Function0<RequestOptions>() { // from class: com.mogu.tv.utils.ImageUtil$optionsCenterCropHavePlace$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final RequestOptions invoke() {
            return new RequestOptions().centerCrop().placeholder(R.mipmap.icon_default_photo).error(R.mipmap.icon_default_photo);
        }
    });

    /* JADX INFO: renamed from: optionsCenterInsideHavePlace$delegate, reason: from kotlin metadata */
    private static final Lazy optionsCenterInsideHavePlace = LazyKt.lazy(new Function0<RequestOptions>() { // from class: com.mogu.tv.utils.ImageUtil$optionsCenterInsideHavePlace$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final RequestOptions invoke() {
            return new RequestOptions().centerInside().placeholder(R.mipmap.icon_default_photo).error(R.mipmap.icon_default_photo);
        }
    });

    /* JADX INFO: renamed from: optionsCenterUserCropHavePlace$delegate, reason: from kotlin metadata */
    private static final Lazy optionsCenterUserCropHavePlace = LazyKt.lazy(new Function0<RequestOptions>() { // from class: com.mogu.tv.utils.ImageUtil$optionsCenterUserCropHavePlace$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final RequestOptions invoke() {
            return new RequestOptions().centerCrop().placeholder(R.mipmap.default_user).error(R.mipmap.default_user);
        }
    });

    /* JADX INFO: renamed from: scaleDenity$delegate, reason: from kotlin metadata */
    private static final Lazy scaleDenity = LazyKt.lazy(new Function0<Float>() { // from class: com.mogu.tv.utils.ImageUtil$scaleDenity$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Float invoke() {
            return Float.valueOf(ScreenUtils.INSTANCE.getDensity(BaseApplicaitonKt.getApplication()) / 2);
        }
    });

    private ImageUtil() {
    }

    public final int getMaxNum() {
        return maxNum;
    }

    public final RequestOptions getOptionsCenterCropHavePlace() {
        return (RequestOptions) optionsCenterCropHavePlace.getValue();
    }

    public final RequestOptions getOptionsCenterInsideHavePlace() {
        return (RequestOptions) optionsCenterInsideHavePlace.getValue();
    }

    public final RequestOptions getOptionsCenterUserCropHavePlace() {
        return (RequestOptions) optionsCenterUserCropHavePlace.getValue();
    }

    public final float getScaleDenity() {
        return ((Number) scaleDenity.getValue()).floatValue();
    }

    public final void getImageResult(List<? extends LocalMedia> selectList, final PhotoZipCallBack callBack) {
        Intrinsics.checkNotNullParameter(selectList, "selectList");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        int size = selectList.size();
        int size2 = maxNum;
        if (size <= size2) {
            size2 = selectList.size();
        }
        for (int i = 0; i < size2; i++) {
            String path = selectList.get(i).getCompressPath();
            String path2 = selectList.get(i).getPath();
            Intrinsics.checkNotNullExpressionValue(path, "path");
            if (path.length() == 0) {
                path = path2;
            }
            Intrinsics.checkNotNullExpressionValue(path, "path");
            final UploadImage uploadImage = new UploadImage(path);
            uploadImage.setSourcePath(path2);
            String path3 = uploadImage.getPath();
            if (path3 == null) {
                path3 = "";
            }
            getCompressFile(path3, new OnCompressListener() { // from class: com.mogu.tv.utils.ImageUtil.getImageResult.1
                @Override // top.zibin.luban.OnCompressListener
                public void onError(Throwable e) {
                }

                @Override // top.zibin.luban.OnCompressListener
                public void onStart() {
                }

                @Override // top.zibin.luban.OnCompressListener
                public void onSuccess(File file) {
                    uploadImage.setPath(file != null ? file.getPath() : null);
                    callBack.success(uploadImage);
                }
            });
        }
    }

    public final void getCompressFile(String filepath, OnCompressListener compressListener) {
        Intrinsics.checkNotNullParameter(filepath, "filepath");
        Intrinsics.checkNotNullParameter(compressListener, "compressListener");
        Luban.with(BaseApplicaitonKt.getApplication()).load(filepath).ignoreBy(100).setTargetDir(FileUtils.getImageCacheFile(BaseApplicaitonKt.getApplication())).filter(new CompressionPredicate() { // from class: com.mogu.tv.utils.ImageUtil.getCompressFile.1
            @Override // top.zibin.luban.CompressionPredicate
            public boolean apply(String path) {
                Intrinsics.checkNotNullParameter(path, "path");
                if (TextUtils.isEmpty(path)) {
                    return false;
                }
                String lowerCase = path.toLowerCase();
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                return !StringsKt.endsWith$default(lowerCase, ".gif", false, 2, (Object) null);
            }
        }).setCompressListener(compressListener).launch();
    }

    public final void loadPhotoView(String url, Context context, ImageView imgView) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(imgView, "imgView");
        if (context == null) {
            return;
        }
        if (StringsKt.endsWith$default(url, PictureFileUtils.POST_VIDEO, false, 2, (Object) null)) {
            loadVideo(context, url, imgView);
            return;
        }
        RequestOptions requestOptionsOverride = new RequestOptions().diskCacheStrategy(DiskCacheStrategy.ALL).override(Integer.MIN_VALUE, Integer.MIN_VALUE);
        Intrinsics.checkNotNullExpressionValue(requestOptionsOverride, "RequestOptions()\n       …mpleTarget.SIZE_ORIGINAL)");
        GlideApp.with(context).setDefaultRequestOptions(requestOptionsOverride).load(url).into(imgView);
    }

    public final void loadVideo(Context context, String url, ImageView imageView) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        if (context == null) {
            return;
        }
        GlideApp.with(context).load(Uri.fromFile(new File(url))).into(imageView);
    }

    public final void loadImage(Context context, String url, ImageView imageView) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        if (context == null) {
            return;
        }
        GlideApp.with(context).load(url).apply(getOptionsCenterCropHavePlace()).into(imageView);
    }

    public final void loadImageSingleList(final String imageUrl, final Context context, final ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        if (context == null || TextUtils.isEmpty(imageUrl)) {
            return;
        }
        GlideApp.with(context).load(imageUrl).apply(getOptionsCenterCropHavePlace()).into(new SimpleTarget<Drawable>() { // from class: com.mogu.tv.utils.ImageUtil.loadImageSingleList.1
            @Override // com.bumptech.glide.request.target.Target
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                onResourceReady((Drawable) obj, (Transition<? super Drawable>) transition);
            }

            public void onResourceReady(Drawable resource, Transition<? super Drawable> transition) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                WidthAndHeight widthAndHeight = new WidthAndHeight();
                if (resource instanceof BitmapDrawable) {
                    Bitmap bitmap = ((BitmapDrawable) resource).getBitmap();
                    widthAndHeight.setH(bitmap.getHeight());
                    widthAndHeight.setW(bitmap.getWidth());
                }
                if (resource instanceof GifDrawable) {
                    GlideApp.with(context).load(imageUrl).into(imageView);
                    return;
                }
                double h = widthAndHeight.getH();
                double w = widthAndHeight.getW();
                Double.isNaN(h);
                Double.isNaN(w);
                double d = h / w;
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setVisibility(0);
                if (widthAndHeight.getW() > 500) {
                    double w2 = widthAndHeight.getW();
                    Double.isNaN(w2);
                    widthAndHeight.setW(500);
                    double h2 = widthAndHeight.getH();
                    Double.isNaN(h2);
                    widthAndHeight.setH((int) (h2 * (500.0d / w2)));
                }
                if (widthAndHeight.getH() > 500) {
                    double h3 = widthAndHeight.getH();
                    Double.isNaN(h3);
                    widthAndHeight.setH(500);
                    double w3 = widthAndHeight.getW();
                    Double.isNaN(w3);
                    widthAndHeight.setW((int) (w3 * (500.0d / h3)));
                }
                if (widthAndHeight.getW() < 100 && d > 5.0d) {
                    layoutParams.width = (int) (180 * ImageUtil.INSTANCE.getScaleDenity());
                    layoutParams.height = (int) (700 * ImageUtil.INSTANCE.getScaleDenity());
                    imageView.setLayoutParams(layoutParams);
                    GlideApp.with(context).load(imageUrl).into(imageView);
                    return;
                }
                layoutParams.width = (int) (widthAndHeight.getW() * ImageUtil.INSTANCE.getScaleDenity());
                layoutParams.height = (int) (widthAndHeight.getH() * ImageUtil.INSTANCE.getScaleDenity());
                imageView.setLayoutParams(layoutParams);
                GlideApp.with(context).load(resource).into(imageView);
            }
        });
    }
}
