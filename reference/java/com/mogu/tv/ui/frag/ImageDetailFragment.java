package com.mogu.tv.ui.frag;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.VideoView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.amogu6.tv.R;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.kotlin.basiclib.utils.FileUtils;
import com.luck.picture.lib.photoview.OnViewTapListener;
import com.luck.picture.lib.photoview.PhotoView;
import com.luck.picture.lib.tools.PictureFileUtils;
import com.mogu.tv.utils.ImageUtil;
import com.umeng.analytics.pro.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ImageDetailFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0004H\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/mogu/tv/ui/frag/ImageDetailFragment;", "Landroidx/fragment/app/Fragment;", "()V", "mContext", "Landroid/app/Activity;", "getMContext", "()Landroid/app/Activity;", "setMContext", "(Landroid/app/Activity;)V", "mImageUrl", "", "mImageView", "Lcom/luck/picture/lib/photoview/PhotoView;", "progressBar", "Landroid/widget/ProgressBar;", "vv_video", "Landroid/widget/VideoView;", "onActivityCreated", "", "savedInstanceState", "Landroid/os/Bundle;", "onAttach", "activity", "onCreate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "Companion", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImageDetailFragment extends Fragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public Activity mContext;
    private String mImageUrl;
    private PhotoView mImageView;
    private ProgressBar progressBar;
    private VideoView vv_video;

    public final Activity getMContext() {
        Activity activity = this.mContext;
        if (activity != null) {
            return activity;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mContext");
        return null;
    }

    public final void setMContext(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<set-?>");
        this.mContext = activity;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        super.onAttach(activity);
        setMContext(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mImageUrl = getArguments() != null ? requireArguments().getString(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL) : null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_image_detail, container, false);
        this.mImageView = (PhotoView) viewInflate.findViewById(R.id.imagedetail_image);
        this.progressBar = (ProgressBar) viewInflate.findViewById(R.id.imagedetail_loading);
        this.vv_video = (VideoView) viewInflate.findViewById(R.id.vv_video);
        PhotoView photoView = this.mImageView;
        Intrinsics.checkNotNull(photoView);
        photoView.setOnViewTapListener(new OnViewTapListener() { // from class: com.mogu.tv.ui.frag.ImageDetailFragment$$ExternalSyntheticLambda0
            @Override // com.luck.picture.lib.photoview.OnViewTapListener
            public final void onViewTap(View view, float f, float f2) {
                ImageDetailFragment.m246onCreateView$lambda0(this.f$0, view, f, f2);
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCreateView$lambda-0, reason: not valid java name */
    public static final void m246onCreateView$lambda0(ImageDetailFragment this$0, View view, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getMContext().finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (TextUtils.isEmpty(this.mImageUrl)) {
            this.mImageUrl = " ";
        }
        String str = this.mImageUrl;
        Intrinsics.checkNotNull(str);
        if (StringsKt.endsWith$default(str, PictureFileUtils.POST_VIDEO, false, 2, (Object) null)) {
            VideoView videoView = this.vv_video;
            Intrinsics.checkNotNull(videoView);
            videoView.setVisibility(0);
            VideoView videoView2 = this.vv_video;
            Intrinsics.checkNotNull(videoView2);
            videoView2.setMediaController(new MediaController(getActivity()));
            String str2 = this.mImageUrl;
            Intrinsics.checkNotNull(str2);
            if (StringsKt.startsWith$default(str2, "http", false, 2, (Object) null)) {
                VideoView videoView3 = this.vv_video;
                Intrinsics.checkNotNull(videoView3);
                videoView3.setVideoURI(Uri.parse(this.mImageUrl));
            } else {
                VideoView videoView4 = this.vv_video;
                Intrinsics.checkNotNull(videoView4);
                videoView4.setVideoURI(Uri.fromFile(new File(this.mImageUrl)));
            }
            VideoView videoView5 = this.vv_video;
            Intrinsics.checkNotNull(videoView5);
            videoView5.start();
            return;
        }
        ProgressBar progressBar = this.progressBar;
        Intrinsics.checkNotNull(progressBar);
        progressBar.setVisibility(4);
        ImageUtil imageUtil = ImageUtil.INSTANCE;
        String str3 = this.mImageUrl;
        Intrinsics.checkNotNull(str3);
        FragmentActivity activity = getActivity();
        PhotoView photoView = this.mImageView;
        Intrinsics.checkNotNull(photoView);
        imageUtil.loadPhotoView(str3, activity, photoView);
        PhotoView photoView2 = this.mImageView;
        Intrinsics.checkNotNull(photoView2);
        photoView2.setMaximumScale(15.0f);
    }

    /* JADX INFO: compiled from: ImageDetailFragment.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;", "", "()V", "newInstance", "Lcom/mogu/tv/ui/frag/ImageDetailFragment;", "imageUrl", "", "saveImageToGallery", "", d.R, "Landroid/content/Context;", "bmp", "Landroid/graphics/Bitmap;", "name", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ImageDetailFragment newInstance(String imageUrl) {
            Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
            ImageDetailFragment imageDetailFragment = new ImageDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putString(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, imageUrl);
            imageDetailFragment.setArguments(bundle);
            return imageDetailFragment;
        }

        public final void saveImageToGallery(Context context, Bitmap bmp, String name) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bmp, "bmp");
            Intrinsics.checkNotNullParameter(name, "name");
            File file = new File(new File(FileUtils.getAppFilePath()), name + ".jpg");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                bmp.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + file.getAbsolutePath())));
        }
    }
}
