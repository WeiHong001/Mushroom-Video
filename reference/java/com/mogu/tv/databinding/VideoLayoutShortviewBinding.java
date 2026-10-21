package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.mogu.tv.view.DYLoadingView;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoLayoutShortviewBinding implements ViewBinding {
    public final ImageView back;
    public final ImageView backTiny;
    public final ProgressBar bottomProgressbar;
    public final TextView current;
    public final ImageView fullscreen;
    public final LinearLayout layoutBottom;
    public final LinearLayout layoutTop;
    public final DYLoadingView loading;
    public final ImageView lockScreen;
    public final SeekBar progress;
    private final RelativeLayout rootView;
    public final ImageView smallClose;
    public final ImageView start;
    public final RelativeLayout surfaceContainer;
    public final RelativeLayout thumb;
    public final TextView title;
    public final TextView total;

    private VideoLayoutShortviewBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ProgressBar progressBar, TextView textView, ImageView imageView3, LinearLayout linearLayout, LinearLayout linearLayout2, DYLoadingView dYLoadingView, ImageView imageView4, SeekBar seekBar, ImageView imageView5, ImageView imageView6, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView2, TextView textView3) {
        this.rootView = relativeLayout;
        this.back = imageView;
        this.backTiny = imageView2;
        this.bottomProgressbar = progressBar;
        this.current = textView;
        this.fullscreen = imageView3;
        this.layoutBottom = linearLayout;
        this.layoutTop = linearLayout2;
        this.loading = dYLoadingView;
        this.lockScreen = imageView4;
        this.progress = seekBar;
        this.smallClose = imageView5;
        this.start = imageView6;
        this.surfaceContainer = relativeLayout2;
        this.thumb = relativeLayout3;
        this.title = textView2;
        this.total = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static VideoLayoutShortviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VideoLayoutShortviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.video_layout_shortview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static VideoLayoutShortviewBinding bind(View view) {
        int i = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i = R.id.back_tiny;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.back_tiny);
            if (imageView2 != null) {
                i = R.id.bottom_progressbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.bottom_progressbar);
                if (progressBar != null) {
                    i = R.id.current;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.current);
                    if (textView != null) {
                        i = R.id.fullscreen;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.fullscreen);
                        if (imageView3 != null) {
                            i = R.id.layout_bottom;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom);
                            if (linearLayout != null) {
                                i = R.id.layout_top;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_top);
                                if (linearLayout2 != null) {
                                    i = R.id.loading;
                                    DYLoadingView dYLoadingView = (DYLoadingView) ViewBindings.findChildViewById(view, R.id.loading);
                                    if (dYLoadingView != null) {
                                        i = R.id.lock_screen;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock_screen);
                                        if (imageView4 != null) {
                                            i = R.id.progress;
                                            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.progress);
                                            if (seekBar != null) {
                                                i = R.id.small_close;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_close);
                                                if (imageView5 != null) {
                                                    i = R.id.start;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.start);
                                                    if (imageView6 != null) {
                                                        i = R.id.surface_container;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.surface_container);
                                                        if (relativeLayout != null) {
                                                            i = R.id.thumb;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.thumb);
                                                            if (relativeLayout2 != null) {
                                                                i = R.id.title;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                if (textView2 != null) {
                                                                    i = R.id.total;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.total);
                                                                    if (textView3 != null) {
                                                                        return new VideoLayoutShortviewBinding((RelativeLayout) view, imageView, imageView2, progressBar, textView, imageView3, linearLayout, linearLayout2, dYLoadingView, imageView4, seekBar, imageView5, imageView6, relativeLayout, relativeLayout2, textView2, textView3);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
