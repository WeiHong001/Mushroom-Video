package com.mogu.tv.view;

import android.content.Context;
import android.util.AttributeSet;
import com.amogu6.tv.R;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class ShortVideoView extends StandardGSYVideoPlayer {
    DYLoadingView loading;

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_shortview;
    }

    public ShortVideoView(Context context, Boolean bool) {
        super(context, bool);
        initView(context);
    }

    public ShortVideoView(Context context) {
        super(context);
        initView(context);
    }

    public ShortVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }

    private void initView(Context context) {
        this.loading = (DYLoadingView) findViewById(R.id.loading);
        Debuger.enable();
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPreparingShow() {
        this.loading.start();
        super.changeUiToPreparingShow();
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPauseShow() {
        super.changeUiToPauseShow();
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingShow() {
        this.loading.stop();
        super.changeUiToPlayingShow();
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingBufferingShow() {
        this.loading.start();
        super.changeUiToPlayingBufferingShow();
    }
}
