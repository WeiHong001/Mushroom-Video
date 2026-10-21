package com.mogu.tv.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class GlideRequest<TranscodeType> extends RequestBuilder<TranscodeType> implements Cloneable {
    GlideRequest(Class<TranscodeType> cls, RequestBuilder<?> requestBuilder) {
        super(cls, requestBuilder);
    }

    GlideRequest(Glide glide, RequestManager requestManager, Class<TranscodeType> cls, Context context) {
        super(glide, requestManager, cls, context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<File> getDownloadOnlyRequest() {
        return new GlideRequest(File.class, this).apply(DOWNLOAD_ONLY_OPTIONS);
    }

    public GlideRequest<TranscodeType> sizeMultiplier(float f) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).sizeMultiplier(f);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).sizeMultiplier(f);
        }
        return this;
    }

    public GlideRequest<TranscodeType> useUnlimitedSourceGeneratorsPool(boolean z) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).useUnlimitedSourceGeneratorsPool(z);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).useUnlimitedSourceGeneratorsPool(z);
        }
        return this;
    }

    public GlideRequest<TranscodeType> useAnimationPool(boolean z) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).useAnimationPool(z);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).useAnimationPool(z);
        }
        return this;
    }

    public GlideRequest<TranscodeType> onlyRetrieveFromCache(boolean z) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).onlyRetrieveFromCache(z);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).onlyRetrieveFromCache(z);
        }
        return this;
    }

    public GlideRequest<TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).diskCacheStrategy(diskCacheStrategy);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).diskCacheStrategy(diskCacheStrategy);
        }
        return this;
    }

    public GlideRequest<TranscodeType> priority(Priority priority) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).priority(priority);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).priority(priority);
        }
        return this;
    }

    public GlideRequest<TranscodeType> placeholder(Drawable drawable) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).placeholder(drawable);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).placeholder(drawable);
        }
        return this;
    }

    public GlideRequest<TranscodeType> placeholder(int i) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).placeholder(i);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).placeholder(i);
        }
        return this;
    }

    public GlideRequest<TranscodeType> fallback(Drawable drawable) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).fallback(drawable);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).fallback(drawable);
        }
        return this;
    }

    public GlideRequest<TranscodeType> fallback(int i) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).fallback(i);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).fallback(i);
        }
        return this;
    }

    public GlideRequest<TranscodeType> error(Drawable drawable) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).error(drawable);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).error(drawable);
        }
        return this;
    }

    public GlideRequest<TranscodeType> error(int i) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).error(i);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).error(i);
        }
        return this;
    }

    public GlideRequest<TranscodeType> theme(Resources.Theme theme) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).theme(theme);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).theme(theme);
        }
        return this;
    }

    public GlideRequest<TranscodeType> skipMemoryCache(boolean z) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).skipMemoryCache(z);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).skipMemoryCache(z);
        }
        return this;
    }

    public GlideRequest<TranscodeType> override(int i, int i2) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).override(i, i2);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).override(i, i2);
        }
        return this;
    }

    public GlideRequest<TranscodeType> override(int i) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).override(i);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).override(i);
        }
        return this;
    }

    public GlideRequest<TranscodeType> signature(Key key) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).signature(key);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).signature(key);
        }
        return this;
    }

    public <T> GlideRequest<TranscodeType> set(Option<T> option, T t) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).set((Option) option, (Object) t);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).set((Option) option, (Object) t);
        }
        return this;
    }

    public GlideRequest<TranscodeType> decode(Class<?> cls) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).decode(cls);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).decode(cls);
        }
        return this;
    }

    public GlideRequest<TranscodeType> encodeFormat(Bitmap.CompressFormat compressFormat) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).encodeFormat(compressFormat);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).encodeFormat(compressFormat);
        }
        return this;
    }

    public GlideRequest<TranscodeType> encodeQuality(int i) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).encodeQuality(i);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).encodeQuality(i);
        }
        return this;
    }

    public GlideRequest<TranscodeType> frame(long j) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).frame(j);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).frame(j);
        }
        return this;
    }

    public GlideRequest<TranscodeType> format(DecodeFormat decodeFormat) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).format(decodeFormat);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).format(decodeFormat);
        }
        return this;
    }

    public GlideRequest<TranscodeType> disallowHardwareConfig() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).disallowHardwareConfig();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).disallowHardwareConfig();
        }
        return this;
    }

    public GlideRequest<TranscodeType> downsample(DownsampleStrategy downsampleStrategy) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).downsample(downsampleStrategy);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).downsample(downsampleStrategy);
        }
        return this;
    }

    public GlideRequest<TranscodeType> timeout(int i) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).timeout(i);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).timeout(i);
        }
        return this;
    }

    public GlideRequest<TranscodeType> optionalCenterCrop() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).optionalCenterCrop();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).optionalCenterCrop();
        }
        return this;
    }

    public GlideRequest<TranscodeType> centerCrop() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).centerCrop();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).centerCrop();
        }
        return this;
    }

    public GlideRequest<TranscodeType> optionalFitCenter() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).optionalFitCenter();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).optionalFitCenter();
        }
        return this;
    }

    public GlideRequest<TranscodeType> fitCenter() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).fitCenter();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).fitCenter();
        }
        return this;
    }

    public GlideRequest<TranscodeType> optionalCenterInside() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).optionalCenterInside();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).optionalCenterInside();
        }
        return this;
    }

    public GlideRequest<TranscodeType> centerInside() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).centerInside();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).centerInside();
        }
        return this;
    }

    public GlideRequest<TranscodeType> optionalCircleCrop() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).optionalCircleCrop();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).optionalCircleCrop();
        }
        return this;
    }

    public GlideRequest<TranscodeType> circleCrop() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).circleCrop();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).circleCrop();
        }
        return this;
    }

    public GlideRequest<TranscodeType> transform(Transformation<Bitmap> transformation) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).transform(transformation);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).transform(transformation);
        }
        return this;
    }

    public GlideRequest<TranscodeType> transforms(Transformation<Bitmap>... transformationArr) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).transforms(transformationArr);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).transforms(transformationArr);
        }
        return this;
    }

    public GlideRequest<TranscodeType> optionalTransform(Transformation<Bitmap> transformation) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).optionalTransform(transformation);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).optionalTransform(transformation);
        }
        return this;
    }

    public <T> GlideRequest<TranscodeType> optionalTransform(Class<T> cls, Transformation<T> transformation) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).optionalTransform((Class) cls, (Transformation) transformation);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).optionalTransform((Class) cls, (Transformation) transformation);
        }
        return this;
    }

    public <T> GlideRequest<TranscodeType> transform(Class<T> cls, Transformation<T> transformation) {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).transform((Class) cls, (Transformation) transformation);
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).transform((Class) cls, (Transformation) transformation);
        }
        return this;
    }

    public GlideRequest<TranscodeType> dontTransform() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).dontTransform();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).dontTransform();
        }
        return this;
    }

    public GlideRequest<TranscodeType> dontAnimate() {
        if (getMutableOptions() instanceof GlideOptions) {
            this.requestOptions = ((GlideOptions) getMutableOptions()).dontAnimate();
        } else {
            this.requestOptions = new GlideOptions().apply(this.requestOptions).dontAnimate();
        }
        return this;
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> apply(RequestOptions requestOptions) {
        return (GlideRequest) super.apply(requestOptions);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> transition(TransitionOptions<?, ? super TranscodeType> transitionOptions) {
        return (GlideRequest) super.transition((TransitionOptions) transitionOptions);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> listener(RequestListener<TranscodeType> requestListener) {
        return (GlideRequest) super.listener((RequestListener) requestListener);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> error(RequestBuilder<TranscodeType> requestBuilder) {
        return (GlideRequest) super.error((RequestBuilder) requestBuilder);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> thumbnail(RequestBuilder<TranscodeType> requestBuilder) {
        return (GlideRequest) super.thumbnail((RequestBuilder) requestBuilder);
    }

    @Override // com.bumptech.glide.RequestBuilder
    @SafeVarargs
    public final GlideRequest<TranscodeType> thumbnail(RequestBuilder<TranscodeType>... requestBuilderArr) {
        return (GlideRequest) super.thumbnail((RequestBuilder[]) requestBuilderArr);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> thumbnail(float f) {
        return (GlideRequest) super.thumbnail(f);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(Object obj) {
        return (GlideRequest) super.load(obj);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(Bitmap bitmap) {
        return (GlideRequest) super.load(bitmap);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(Drawable drawable) {
        return (GlideRequest) super.load(drawable);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(String str) {
        return (GlideRequest) super.load(str);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(Uri uri) {
        return (GlideRequest) super.load(uri);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(File file) {
        return (GlideRequest) super.load(file);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(Integer num) {
        return (GlideRequest) super.load(num);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    @Deprecated
    public GlideRequest<TranscodeType> load(URL url) {
        return (GlideRequest) super.load(url);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.ModelTypes
    public GlideRequest<TranscodeType> load(byte[] bArr) {
        return (GlideRequest) super.load(bArr);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* JADX INFO: renamed from: clone */
    public GlideRequest<TranscodeType> mo32clone() {
        return (GlideRequest) super.mo32clone();
    }
}
