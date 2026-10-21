package com.mogu.tv.utils.exo;

import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import com.shuyu.gsyvideoplayer.model.VideoOptionModel;
import com.shuyu.gsyvideoplayer.player.BasePlayerManager;
import java.util.List;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public class ExoMyPlayerManager extends BasePlayerManager {
    private Context context;
    private PlaceholderSurface dummySurface;
    private IjkExoMyMediaPlayer mediaPlayer;
    private Surface surface;
    private long lastTotalRxBytes = 0;
    private long lastTimeStamp = 0;

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public boolean isSurfaceSupportLockCanvas() {
        return false;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void setSpeedPlaying(float f, boolean z) {
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public IMediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        this.context = context.getApplicationContext();
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = new IjkExoMyMediaPlayer(context);
        this.mediaPlayer = ijkExoMyMediaPlayer;
        ijkExoMyMediaPlayer.setAudioStreamType(3);
        boolean z = false;
        if (this.dummySurface == null) {
            this.dummySurface = PlaceholderSurface.newInstanceV17(context, false);
        }
        GSYModel gSYModel = (GSYModel) message.obj;
        try {
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            IjkExoMyMediaPlayer ijkExoMyMediaPlayer2 = this.mediaPlayer;
            if (gSYModel.getMapHeadData() != null && gSYModel.getMapHeadData().size() > 0) {
                z = true;
            }
            ijkExoMyMediaPlayer2.setPreview(z);
            if (gSYModel.isCache() && iCacheManager != null) {
                iCacheManager.doCacheLogic(context, this.mediaPlayer, gSYModel.getUrl(), gSYModel.getMapHeadData(), gSYModel.getCachePath());
            } else {
                this.mediaPlayer.setCache(gSYModel.isCache());
                this.mediaPlayer.setCacheDir(gSYModel.getCachePath());
                this.mediaPlayer.setOverrideExtension(gSYModel.getOverrideExtension());
                this.mediaPlayer.setDataSource(context, Uri.parse(gSYModel.getUrl()), gSYModel.getMapHeadData());
            }
            if (gSYModel.getSpeed() != 1.0f && gSYModel.getSpeed() > 0.0f) {
                this.mediaPlayer.setSpeed(gSYModel.getSpeed(), 1.0f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        initSuccess(gSYModel);
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void showDisplay(Message message) {
        if (this.mediaPlayer != null) {
            if (message.obj == null) {
                this.mediaPlayer.setSurface(this.dummySurface);
                return;
            }
            Surface surface = (Surface) message.obj;
            this.surface = surface;
            this.mediaPlayer.setSurface(surface);
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void setSpeed(float f, boolean z) {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            try {
                ijkExoMyMediaPlayer.setSpeed(f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void setNeedMute(boolean z) {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            if (z) {
                ijkExoMyMediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                ijkExoMyMediaPlayer.setVolume(1.0f, 1.0f);
            }
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void setVolume(float f, float f2) {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.setVolume(f, f2);
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void releaseSurface() {
        if (this.surface != null) {
            this.surface = null;
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void release() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.setSurface(null);
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        PlaceholderSurface placeholderSurface = this.dummySurface;
        if (placeholderSurface != null) {
            placeholderSurface.release();
            this.dummySurface = null;
        }
        this.lastTotalRxBytes = 0L;
        this.lastTimeStamp = 0L;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public int getBufferedPercentage() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getBufferedPercentage();
        }
        return 0;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public long getNetSpeed() {
        if (this.mediaPlayer != null) {
            return getNetSpeed(this.context);
        }
        return 0L;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void start() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.start();
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void stop() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.stop();
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void pause() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.pause();
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public int getVideoWidth() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public int getVideoHeight() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public boolean isPlaying() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public void seekTo(long j) {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.seekTo(j);
        }
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public long getCurrentPosition() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public long getDuration() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public int getVideoSarNum() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override // com.shuyu.gsyvideoplayer.player.IPlayerManager
    public int getVideoSarDen() {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            return ijkExoMyMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    public void setSeekParameter(SeekParameters seekParameters) {
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = this.mediaPlayer;
        if (ijkExoMyMediaPlayer != null) {
            ijkExoMyMediaPlayer.setSeekParameter(seekParameters);
        }
    }

    private long getNetSpeed(Context context) {
        if (context == null) {
            return 0L;
        }
        long totalRxBytes = TrafficStats.getUidRxBytes(context.getApplicationInfo().uid) == -1 ? 0L : TrafficStats.getTotalRxBytes() / 1024;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastTimeStamp;
        if (j == 0) {
            return j;
        }
        long j2 = ((totalRxBytes - this.lastTotalRxBytes) * 1000) / j;
        this.lastTimeStamp = jCurrentTimeMillis;
        this.lastTotalRxBytes = totalRxBytes;
        return j2;
    }
}
