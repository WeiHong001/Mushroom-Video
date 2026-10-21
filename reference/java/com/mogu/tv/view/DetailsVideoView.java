package com.mogu.tv.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class DetailsVideoView extends StandardGSYVideoPlayer {
    public ImageView iv_touping;
    float speed;
    public TextView tv_kuaijin;
    public TextView tv_kuaitui;
    TextView tv_speed;

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_normal;
    }

    public DetailsVideoView(Context context, Boolean bool) {
        super(context, bool);
        this.speed = 1.0f;
        init();
    }

    public DetailsVideoView(Context context) {
        super(context);
        this.speed = 1.0f;
        init();
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void hideAllWidget() {
        super.hideAllWidget();
        setViewShowState(this.iv_touping, 4);
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPlayingShow() {
        super.changeUiToPlayingShow();
        setViewShowState(this.iv_touping, 4);
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToNormal() {
        super.changeUiToNormal();
        setViewShowState(this.iv_touping, 4);
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer, com.shuyu.gsyvideoplayer.video.base.GSYVideoControlView
    protected void changeUiToPauseShow() {
        super.changeUiToPauseShow();
        setViewShowState(this.iv_touping, 4);
    }

    @Override // com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer
    protected void changeUiToPauseClear() {
        super.changeUiToPauseClear();
        setViewShowState(this.iv_touping, 4);
    }

    public DetailsVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.speed = 1.0f;
        init();
    }

    private void init() {
        this.tv_speed = (TextView) findViewById(R.id.tv_playspeed);
        this.iv_touping = (ImageView) findViewById(R.id.iv_touping);
        this.tv_kuaijin = (TextView) findViewById(R.id.tv_kuaijin);
        this.tv_kuaitui = (TextView) findViewById(R.id.tv_kuaitui);
        this.speed = getSpeed();
        this.tv_speed.setText(this.speed + "X");
        this.tv_kuaijin.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.view.DetailsVideoView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m311lambda$init$0$commogutvviewDetailsVideoView(view);
            }
        });
        this.tv_kuaitui.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.view.DetailsVideoView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m312lambda$init$1$commogutvviewDetailsVideoView(view);
            }
        });
        this.tv_speed.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.view.DetailsVideoView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m313lambda$init$2$commogutvviewDetailsVideoView(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$init$0$com-mogu-tv-view-DetailsVideoView, reason: not valid java name */
    /* synthetic */ void m311lambda$init$0$commogutvviewDetailsVideoView(View view) {
        seekTo((int) (getCurrentPositionWhenPlaying() + 10000));
    }

    /* JADX INFO: renamed from: lambda$init$1$com-mogu-tv-view-DetailsVideoView, reason: not valid java name */
    /* synthetic */ void m312lambda$init$1$commogutvviewDetailsVideoView(View view) {
        seekTo((int) (getCurrentPositionWhenPlaying() - 10000));
    }

    /* JADX INFO: renamed from: lambda$init$2$com-mogu-tv-view-DetailsVideoView, reason: not valid java name */
    /* synthetic */ void m313lambda$init$2$commogutvviewDetailsVideoView(View view) {
        switchSpeed();
        setSpeed(this.speed);
        this.tv_speed.setText(this.speed + "X");
    }

    private void switchSpeed() {
        float f = this.speed;
        if (f == 1.0f) {
            this.speed = 1.25f;
            return;
        }
        if (f == 1.25f) {
            this.speed = 1.5f;
            return;
        }
        if (f == 1.5f) {
            this.speed = 2.0f;
            return;
        }
        if (f == 2.0f) {
            this.speed = 0.5f;
        } else if (f == 0.5f) {
            this.speed = 0.75f;
        } else if (f == 0.75f) {
            this.speed = 1.0f;
        }
    }
}
