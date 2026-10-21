package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.VideoView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.luck.picture.lib.photoview.PhotoView;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentImageDetailBinding implements ViewBinding {
    public final PhotoView imagedetailImage;
    public final ProgressBar imagedetailLoading;
    private final FrameLayout rootView;
    public final VideoView vvVideo;

    private FragmentImageDetailBinding(FrameLayout frameLayout, PhotoView photoView, ProgressBar progressBar, VideoView videoView) {
        this.rootView = frameLayout;
        this.imagedetailImage = photoView;
        this.imagedetailLoading = progressBar;
        this.vvVideo = videoView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentImageDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentImageDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_image_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentImageDetailBinding bind(View view) {
        int i = R.id.imagedetail_image;
        PhotoView photoView = (PhotoView) ViewBindings.findChildViewById(view, R.id.imagedetail_image);
        if (photoView != null) {
            i = R.id.imagedetail_loading;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.imagedetail_loading);
            if (progressBar != null) {
                i = R.id.vv_video;
                VideoView videoView = (VideoView) ViewBindings.findChildViewById(view, R.id.vv_video);
                if (videoView != null) {
                    return new FragmentImageDetailBinding((FrameLayout) view, photoView, progressBar, videoView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
