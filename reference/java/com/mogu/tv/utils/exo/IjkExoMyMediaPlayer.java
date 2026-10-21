package com.mogu.tv.utils.exo;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Renderer;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.video.VideoSize;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.exo2.demo.EventLogger;
import tv.danmaku.ijk.media.player.AbstractMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.MediaInfo;
import tv.danmaku.ijk.media.player.misc.IjkTrackInfo;

/* JADX INFO: loaded from: classes2.dex */
public class IjkExoMyMediaPlayer extends AbstractMediaPlayer implements Player.Listener, AnalyticsListener {
    public static int ON_POSITION_DISCOUNTINUITY = 2702;
    private static final String TAG = "IjkExo2MediaPlayer";
    protected boolean isLastReportedPlayWhenReady;
    protected Context mAppContext;
    protected File mCacheDir;
    protected String mDataSource;
    protected EventLogger mEventLogger;
    protected ExoMySourceManager mExoHelper;
    protected ExoPlayer mInternalPlayer;
    protected LoadControl mLoadControl;
    protected MediaSource mMediaSource;
    private String mOverrideExtension;
    protected DefaultRenderersFactory mRendererFactory;
    protected PlaybackParameters mSpeedPlaybackParameters;
    protected Surface mSurface;
    protected MappingTrackSelector mTrackSelector;
    protected int mVideoHeight;
    protected int mVideoWidth;
    protected Map<String, String> mHeaders = new HashMap();
    protected boolean isPreparing = true;
    protected boolean isBuffering = false;
    protected boolean isLooping = false;
    protected boolean isPreview = false;
    protected boolean isCache = false;
    protected int audioSessionId = 0;
    protected int lastReportedPlaybackState = 1;

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        return null;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public IjkTrackInfo[] getTrackInfo() {
        return null;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return 1;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return 1;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public boolean isPlayable() {
        return true;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioAttributesChanged(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        AnalyticsListener.CC.$default$onAudioAttributesChanged(this, eventTime, audioAttributes);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        Player.Listener.CC.$default$onAudioAttributesChanged(this, audioAttributes);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioCodecError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onAudioCodecError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
        AnalyticsListener.CC.$default$onAudioDecoderInitialized(this, eventTime, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j, long j2) {
        AnalyticsListener.CC.$default$onAudioDecoderInitialized(this, eventTime, str, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
        AnalyticsListener.CC.$default$onAudioDecoderReleased(this, eventTime, str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onAudioEnabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format) {
        AnalyticsListener.CC.$default$onAudioInputFormatChanged(this, eventTime, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        AnalyticsListener.CC.$default$onAudioInputFormatChanged(this, eventTime, format, decoderReuseEvaluation);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioPositionAdvancing(AnalyticsListener.EventTime eventTime, long j) {
        AnalyticsListener.CC.$default$onAudioPositionAdvancing(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAudioSessionIdChanged(int i) {
        Player.Listener.CC.$default$onAudioSessionIdChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioSessionIdChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onAudioSessionIdChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioSinkError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onAudioSinkError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        Player.Listener.CC.$default$onAvailableCommandsChanged(this, commands);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAvailableCommandsChanged(AnalyticsListener.EventTime eventTime, Player.Commands commands) {
        AnalyticsListener.CC.$default$onAvailableCommandsChanged(this, eventTime, commands);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onCues(AnalyticsListener.EventTime eventTime, CueGroup cueGroup) {
        AnalyticsListener.CC.$default$onCues(this, eventTime, cueGroup);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onCues(AnalyticsListener.EventTime eventTime, List list) {
        AnalyticsListener.CC.$default$onCues(this, eventTime, list);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onCues(CueGroup cueGroup) {
        Player.Listener.CC.$default$onCues(this, cueGroup);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onCues(List<Cue> list) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onDecoderDisabled(this, eventTime, i, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onDecoderEnabled(this, eventTime, i, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i, String str, long j) {
        AnalyticsListener.CC.$default$onDecoderInitialized(this, eventTime, i, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i, Format format) {
        AnalyticsListener.CC.$default$onDecoderInputFormatChanged(this, eventTime, i, format);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        Player.Listener.CC.$default$onDeviceInfoChanged(this, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDeviceInfoChanged(AnalyticsListener.EventTime eventTime, DeviceInfo deviceInfo) {
        AnalyticsListener.CC.$default$onDeviceInfoChanged(this, eventTime, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        Player.Listener.CC.$default$onDeviceVolumeChanged(this, i, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDeviceVolumeChanged(AnalyticsListener.EventTime eventTime, int i, boolean z) {
        AnalyticsListener.CC.$default$onDeviceVolumeChanged(this, eventTime, i, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onDownstreamFormatChanged(this, eventTime, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmSessionAcquired(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionAcquired(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onDrmSessionAcquired(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onDrmSessionReleased(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onDrmSessionReleased(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onEvents(Player player, Player.Events events) {
        Player.Listener.CC.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onEvents(Player player, AnalyticsListener.Events events) {
        AnalyticsListener.CC.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onIsLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onIsLoadingChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onIsPlayingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onIsPlayingChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onIsPlayingChanged(boolean z) {
        Player.Listener.CC.$default$onIsPlayingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadCanceled(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onLoadCanceled(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadCompleted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onLoadCompleted(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        AnalyticsListener.CC.$default$onLoadError(this, eventTime, loadEventInfo, mediaLoadData, iOException, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadStarted(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onLoadStarted(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onLoadingChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onLoadingChanged(boolean z) {
        Player.Listener.CC.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j) {
        Player.Listener.CC.$default$onMaxSeekToPreviousPositionChanged(this, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMaxSeekToPreviousPositionChanged(AnalyticsListener.EventTime eventTime, long j) {
        AnalyticsListener.CC.$default$onMaxSeekToPreviousPositionChanged(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
        Player.Listener.CC.$default$onMediaItemTransition(this, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMediaItemTransition(AnalyticsListener.EventTime eventTime, MediaItem mediaItem, int i) {
        AnalyticsListener.CC.$default$onMediaItemTransition(this, eventTime, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        Player.Listener.CC.$default$onMediaMetadataChanged(this, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMediaMetadataChanged(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        AnalyticsListener.CC.$default$onMediaMetadataChanged(this, eventTime, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onMetadata(Metadata metadata) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlayWhenReadyChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaybackStateChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onPlaybackStateChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        Player.Listener.CC.$default$onPlaybackSuppressionReasonChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onPlaybackSuppressionReasonChanged(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerError(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        AnalyticsListener.CC.$default$onPlayerError(this, eventTime, playbackException);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
        Player.Listener.CC.$default$onPlayerErrorChanged(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerErrorChanged(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        AnalyticsListener.CC.$default$onPlayerErrorChanged(this, eventTime, playbackException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerReleased(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onPlayerReleased(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
        AnalyticsListener.CC.$default$onPlayerStateChanged(this, eventTime, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
        Player.Listener.CC.$default$onPlayerStateChanged(this, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        Player.Listener.CC.$default$onPlaylistMetadataChanged(this, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaylistMetadataChanged(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        AnalyticsListener.CC.$default$onPlaylistMetadataChanged(this, eventTime, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        Player.Listener.CC.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        AnalyticsListener.CC.$default$onPositionDiscontinuity(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        AnalyticsListener.CC.$default$onPositionDiscontinuity(this, eventTime, positionInfo, positionInfo2, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onRenderedFirstFrame() {
        Player.Listener.CC.$default$onRenderedFirstFrame(this);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Object obj, long j) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onRepeatModeChanged(int i) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSeekBackIncrementChanged(long j) {
        Player.Listener.CC.$default$onSeekBackIncrementChanged(this, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSeekBackIncrementChanged(AnalyticsListener.EventTime eventTime, long j) {
        AnalyticsListener.CC.$default$onSeekBackIncrementChanged(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
        Player.Listener.CC.$default$onSeekForwardIncrementChanged(this, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSeekForwardIncrementChanged(AnalyticsListener.EventTime eventTime, long j) {
        AnalyticsListener.CC.$default$onSeekForwardIncrementChanged(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSeekProcessed() {
        Player.Listener.CC.$default$onSeekProcessed(this);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onSeekProcessed(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.CC.$default$onSeekStarted(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onShuffleModeEnabledChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSkipSilenceEnabledChanged(AnalyticsListener.EventTime eventTime, boolean z) {
        AnalyticsListener.CC.$default$onSkipSilenceEnabledChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
        Player.Listener.CC.$default$onSkipSilenceEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        Player.Listener.CC.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSurfaceSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2) {
        AnalyticsListener.CC.$default$onSurfaceSizeChanged(this, eventTime, i, i2);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
        Player.Listener.CC.$default$onTimelineChanged(this, timeline, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onTrackSelectionParametersChanged(AnalyticsListener.EventTime eventTime, TrackSelectionParameters trackSelectionParameters) {
        AnalyticsListener.CC.$default$onTrackSelectionParametersChanged(this, eventTime, trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        Player.Listener.CC.$default$onTrackSelectionParametersChanged(this, trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onTracksChanged(Tracks tracks) {
        Player.Listener.CC.$default$onTracksChanged(this, tracks);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onTracksChanged(AnalyticsListener.EventTime eventTime, Tracks tracks) {
        AnalyticsListener.CC.$default$onTracksChanged(this, eventTime, tracks);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        AnalyticsListener.CC.$default$onUpstreamDiscarded(this, eventTime, mediaLoadData);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoCodecError(AnalyticsListener.EventTime eventTime, Exception exc) {
        AnalyticsListener.CC.$default$onVideoCodecError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j) {
        AnalyticsListener.CC.$default$onVideoDecoderInitialized(this, eventTime, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderInitialized(AnalyticsListener.EventTime eventTime, String str, long j, long j2) {
        AnalyticsListener.CC.$default$onVideoDecoderInitialized(this, eventTime, str, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderReleased(AnalyticsListener.EventTime eventTime, String str) {
        AnalyticsListener.CC.$default$onVideoDecoderReleased(this, eventTime, str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onVideoDisabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoEnabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        AnalyticsListener.CC.$default$onVideoEnabled(this, eventTime, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoFrameProcessingOffset(AnalyticsListener.EventTime eventTime, long j, int i) {
        AnalyticsListener.CC.$default$onVideoFrameProcessingOffset(this, eventTime, j, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format) {
        AnalyticsListener.CC.$default$onVideoInputFormatChanged(this, eventTime, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoInputFormatChanged(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        AnalyticsListener.CC.$default$onVideoInputFormatChanged(this, eventTime, format, decoderReuseEvaluation);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f) {
        AnalyticsListener.CC.$default$onVideoSizeChanged(this, eventTime, i, i2, i3, f);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
        Player.Listener.CC.$default$onVideoSizeChanged(this, videoSize);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onVolumeChanged(float f) {
        Player.Listener.CC.$default$onVolumeChanged(this, f);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVolumeChanged(AnalyticsListener.EventTime eventTime, float f) {
        AnalyticsListener.CC.$default$onVolumeChanged(this, eventTime, f);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setAudioStreamType(int i) {
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z) {
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setLogEnabled(boolean z) {
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z) {
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setWakeMode(Context context, int i) {
    }

    public IjkExoMyMediaPlayer(Context context) {
        this.mAppContext = context.getApplicationContext();
        this.mExoHelper = ExoMySourceManager.newInstance(context, this.mHeaders);
    }

    private int getVideoRendererIndex() {
        if (this.mInternalPlayer != null) {
            for (int i = 0; i < this.mInternalPlayer.getRendererCount(); i++) {
                if (this.mInternalPlayer.getRendererType(i) == 2) {
                    return i;
                }
            }
        }
        return 0;
    }

    public Format getVideoFormat() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            return exoPlayer.getVideoFormat();
        }
        return null;
    }

    public Renderer getVideoRenderer() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            return exoPlayer.getRenderer(getVideoRendererIndex());
        }
        return null;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            setSurface(null);
        } else {
            setSurface(surfaceHolder.getSurface());
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setSurface(Surface surface) {
        this.mSurface = surface;
        if (this.mInternalPlayer != null) {
            if (surface != null && !surface.isValid()) {
                this.mSurface = null;
            }
            this.mInternalPlayer.setVideoSurface(surface);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri, Map<String, String> map) {
        if (map != null) {
            this.mHeaders.clear();
            this.mHeaders.putAll(map);
        }
        setDataSource(context, uri);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(String str) {
        setDataSource(this.mAppContext, Uri.parse(str));
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) {
        String string = uri.toString();
        this.mDataSource = string;
        this.mMediaSource = this.mExoHelper.getMediaSource(string, this.isPreview, this.isCache, this.isLooping, this.mCacheDir, this.mOverrideExtension);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(FileDescriptor fileDescriptor) {
        throw new UnsupportedOperationException("no support");
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public String getDataSource() {
        return this.mDataSource;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void prepareAsync() throws IllegalStateException {
        if (this.mInternalPlayer != null) {
            throw new IllegalStateException("can't prepare a prepared player");
        }
        prepareAsyncInternal();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void start() throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(true);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void stop() throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.release();
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void pause() throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.setPlayWhenReady(false);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return false;
        }
        int playbackState = exoPlayer.getPlaybackState();
        if (playbackState == 2 || playbackState == 3) {
            return this.mInternalPlayer.getPlayWhenReady();
        }
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void seekTo(long j) throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.seekTo(j);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return 0L;
        }
        return exoPlayer.getCurrentPosition();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public long getDuration() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return 0L;
        }
        return exoPlayer.getDuration();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void reset() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.release();
            this.mInternalPlayer = null;
        }
        ExoMySourceManager exoMySourceManager = this.mExoHelper;
        if (exoMySourceManager != null) {
            exoMySourceManager.release();
        }
        this.mSurface = null;
        this.mDataSource = null;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setLooping(boolean z) {
        this.isLooping = z;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public boolean isLooping() {
        return this.isLooping;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setVolume(float f, float f2) {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.setVolume((f + f2) / 2.0f);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getAudioSessionId() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        return exoPlayer != null ? exoPlayer.getAudioSessionId() : this.audioSessionId;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void release() {
        if (this.mInternalPlayer != null) {
            reset();
            this.mEventLogger = null;
        }
    }

    protected void prepareAsyncInternal() {
        new Handler(Looper.myLooper()).post(new Runnable() { // from class: com.mogu.tv.utils.exo.IjkExoMyMediaPlayer.1
            @Override // java.lang.Runnable
            public void run() {
                if (IjkExoMyMediaPlayer.this.mTrackSelector == null) {
                    IjkExoMyMediaPlayer.this.mTrackSelector = new DefaultTrackSelector(IjkExoMyMediaPlayer.this.mAppContext);
                }
                IjkExoMyMediaPlayer.this.mEventLogger = new EventLogger(IjkExoMyMediaPlayer.this.mTrackSelector);
                if (IjkExoMyMediaPlayer.this.mRendererFactory == null) {
                    IjkExoMyMediaPlayer.this.mRendererFactory = new DefaultRenderersFactory(IjkExoMyMediaPlayer.this.mAppContext);
                    IjkExoMyMediaPlayer.this.mRendererFactory.setExtensionRendererMode(2);
                }
                if (IjkExoMyMediaPlayer.this.mLoadControl == null) {
                    IjkExoMyMediaPlayer.this.mLoadControl = new DefaultLoadControl();
                }
                IjkExoMyMediaPlayer.this.mInternalPlayer = new ExoPlayer.Builder(IjkExoMyMediaPlayer.this.mAppContext, IjkExoMyMediaPlayer.this.mRendererFactory).setLooper(Looper.myLooper()).setTrackSelector(IjkExoMyMediaPlayer.this.mTrackSelector).setLoadControl(IjkExoMyMediaPlayer.this.mLoadControl).build();
                IjkExoMyMediaPlayer.this.mInternalPlayer.addListener(IjkExoMyMediaPlayer.this);
                IjkExoMyMediaPlayer.this.mInternalPlayer.addAnalyticsListener(IjkExoMyMediaPlayer.this);
                IjkExoMyMediaPlayer.this.mInternalPlayer.addListener(IjkExoMyMediaPlayer.this.mEventLogger);
                if (IjkExoMyMediaPlayer.this.mSpeedPlaybackParameters != null) {
                    IjkExoMyMediaPlayer.this.mInternalPlayer.setPlaybackParameters(IjkExoMyMediaPlayer.this.mSpeedPlaybackParameters);
                }
                if (IjkExoMyMediaPlayer.this.isLooping) {
                    IjkExoMyMediaPlayer.this.mInternalPlayer.setRepeatMode(2);
                }
                if (IjkExoMyMediaPlayer.this.mSurface != null) {
                    IjkExoMyMediaPlayer.this.mInternalPlayer.setVideoSurface(IjkExoMyMediaPlayer.this.mSurface);
                }
                IjkExoMyMediaPlayer.this.mInternalPlayer.setMediaSource(IjkExoMyMediaPlayer.this.mMediaSource);
                IjkExoMyMediaPlayer.this.mInternalPlayer.prepare();
                IjkExoMyMediaPlayer.this.mInternalPlayer.setPlayWhenReady(false);
            }
        });
    }

    public String getOverrideExtension() {
        return this.mOverrideExtension;
    }

    public void setOverrideExtension(String str) {
        this.mOverrideExtension = str;
    }

    public void stopPlayback() {
        this.mInternalPlayer.stop();
    }

    public void setPreview(boolean z) {
        this.isPreview = z;
    }

    public boolean isPreview() {
        return this.isPreview;
    }

    public boolean isCache() {
        return this.isCache;
    }

    public void setSeekParameter(SeekParameters seekParameters) {
        this.mInternalPlayer.setSeekParameters(seekParameters);
    }

    public void setCache(boolean z) {
        this.isCache = z;
    }

    public File getCacheDir() {
        return this.mCacheDir;
    }

    public void setCacheDir(File file) {
        this.mCacheDir = file;
    }

    public MediaSource getMediaSource() {
        return this.mMediaSource;
    }

    public void setMediaSource(MediaSource mediaSource) {
        this.mMediaSource = mediaSource;
    }

    public ExoMySourceManager getExoHelper() {
        return this.mExoHelper;
    }

    public void setSpeed(float f, float f2) {
        PlaybackParameters playbackParameters = new PlaybackParameters(f, f2);
        this.mSpeedPlaybackParameters = playbackParameters;
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.setPlaybackParameters(playbackParameters);
        }
    }

    public float getSpeed() {
        return this.mInternalPlayer.getPlaybackParameters().speed;
    }

    public int getBufferedPercentage() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return 0;
        }
        return exoPlayer.getBufferedPercentage();
    }

    public MappingTrackSelector getTrackSelector() {
        return this.mTrackSelector;
    }

    public void setTrackSelector(MappingTrackSelector mappingTrackSelector) {
        this.mTrackSelector = mappingTrackSelector;
    }

    public LoadControl getLoadControl() {
        return this.mLoadControl;
    }

    public void setLoadControl(LoadControl loadControl) {
        this.mLoadControl = loadControl;
    }

    public DefaultRenderersFactory getRendererFactory() {
        return this.mRendererFactory;
    }

    public void setRendererFactory(DefaultRenderersFactory defaultRenderersFactory) {
        this.mRendererFactory = defaultRenderersFactory;
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlaybackStateChanged(int i) {
        onPlayWhenReadyChanged(this.isLastReportedPlayWhenReady, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlayWhenReadyChanged(boolean z, int i) {
        if (this.isLastReportedPlayWhenReady != z || this.lastReportedPlaybackState != i) {
            ExoPlayer exoPlayer = this.mInternalPlayer;
            int bufferedPercentage = exoPlayer != null ? exoPlayer.getBufferedPercentage() : 0;
            if (this.isBuffering && (i == 3 || i == 4)) {
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_END, bufferedPercentage);
                this.isBuffering = false;
            }
            if (this.isPreparing && i == 3) {
                notifyOnPrepared();
                this.isPreparing = false;
            }
            if (i == 2) {
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_START, bufferedPercentage);
                this.isBuffering = true;
            } else if (i == 4) {
                notifyOnCompletion();
            }
        }
        this.isLastReportedPlayWhenReady = z;
        this.lastReportedPlaybackState = i;
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPlayerError(PlaybackException playbackException) {
        notifyOnError(1, 1);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        notifyOnInfo(ON_POSITION_DISCOUNTINUITY, i);
        if (i == 1) {
            notifyOnSeekComplete();
        }
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        this.audioSessionId = 0;
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        this.mVideoWidth = (int) (videoSize.width * videoSize.pixelWidthHeightRatio);
        this.mVideoHeight = videoSize.height;
        notifyOnVideoSizeChanged((int) (videoSize.width * videoSize.pixelWidthHeightRatio), videoSize.height, 1, 1);
        if (videoSize.unappliedRotationDegrees > 0) {
            notifyOnInfo(10001, videoSize.unappliedRotationDegrees);
        }
    }
}
