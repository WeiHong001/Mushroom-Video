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
import moe.codeest.enviews.ENDownloadView;
import moe.codeest.enviews.ENPlayView;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoLayoutNormalBinding implements ViewBinding {
    public final ImageView back;
    public final ImageView backTiny;
    public final ProgressBar bottomProgressbar;
    public final TextView current;
    public final ImageView fullscreen;
    public final ImageView ivLiveSelect;
    public final ImageView ivShareLive;
    public final ImageView ivTouping;
    public final LinearLayout layoutBottom;
    public final LinearLayout layoutTop;
    public final ENDownloadView loading;
    public final ImageView lockScreen;
    public final SeekBar progress;
    private final RelativeLayout rootView;
    public final ImageView smallClose;
    public final ENPlayView start;
    public final RelativeLayout surfaceContainer;
    public final RelativeLayout thumb;
    public final TextView title;
    public final TextView total;
    public final TextView tvKuaijin;
    public final TextView tvKuaitui;
    public final TextView tvPlayspeed;

    private VideoLayoutNormalBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ProgressBar progressBar, TextView textView, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, LinearLayout linearLayout, LinearLayout linearLayout2, ENDownloadView eNDownloadView, ImageView imageView7, SeekBar seekBar, ImageView imageView8, ENPlayView eNPlayView, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = relativeLayout;
        this.back = imageView;
        this.backTiny = imageView2;
        this.bottomProgressbar = progressBar;
        this.current = textView;
        this.fullscreen = imageView3;
        this.ivLiveSelect = imageView4;
        this.ivShareLive = imageView5;
        this.ivTouping = imageView6;
        this.layoutBottom = linearLayout;
        this.layoutTop = linearLayout2;
        this.loading = eNDownloadView;
        this.lockScreen = imageView7;
        this.progress = seekBar;
        this.smallClose = imageView8;
        this.start = eNPlayView;
        this.surfaceContainer = relativeLayout2;
        this.thumb = relativeLayout3;
        this.title = textView2;
        this.total = textView3;
        this.tvKuaijin = textView4;
        this.tvKuaitui = textView5;
        this.tvPlayspeed = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static VideoLayoutNormalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VideoLayoutNormalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.video_layout_normal, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static VideoLayoutNormalBinding bind(View view) {
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
                            i = R.id.iv_live_select;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_live_select);
                            if (imageView4 != null) {
                                i = R.id.iv_share_live;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_share_live);
                                if (imageView5 != null) {
                                    i = R.id.iv_touping;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_touping);
                                    if (imageView6 != null) {
                                        i = R.id.layout_bottom;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_bottom);
                                        if (linearLayout != null) {
                                            i = R.id.layout_top;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_top);
                                            if (linearLayout2 != null) {
                                                i = R.id.loading;
                                                ENDownloadView eNDownloadView = (ENDownloadView) ViewBindings.findChildViewById(view, R.id.loading);
                                                if (eNDownloadView != null) {
                                                    i = R.id.lock_screen;
                                                    ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.lock_screen);
                                                    if (imageView7 != null) {
                                                        i = R.id.progress;
                                                        SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.progress);
                                                        if (seekBar != null) {
                                                            i = R.id.small_close;
                                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.small_close);
                                                            if (imageView8 != null) {
                                                                i = R.id.start;
                                                                ENPlayView eNPlayView = (ENPlayView) ViewBindings.findChildViewById(view, R.id.start);
                                                                if (eNPlayView != null) {
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
                                                                                    i = R.id.tv_kuaijin;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_kuaijin);
                                                                                    if (textView4 != null) {
                                                                                        i = R.id.tv_kuaitui;
                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_kuaitui);
                                                                                        if (textView5 != null) {
                                                                                            i = R.id.tv_playspeed;
                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_playspeed);
                                                                                            if (textView6 != null) {
                                                                                                return new VideoLayoutNormalBinding((RelativeLayout) view, imageView, imageView2, progressBar, textView, imageView3, imageView4, imageView5, imageView6, linearLayout, linearLayout2, eNDownloadView, imageView7, seekBar, imageView8, eNPlayView, relativeLayout, relativeLayout2, textView2, textView3, textView4, textView5, textView6);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
