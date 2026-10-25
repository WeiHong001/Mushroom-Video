package com.mogu.tv.utils.exo;

import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import tv.danmaku.ijk.media.player.AbstractMediaPlayer;

/**
 * Lets D8 supply listener defaults for the recovered player at the selected build API level.
 * Smali subclasses must not call compiler-generated ExoPlayer $-CC classes directly.
 */
public abstract class ExoListenerMediaPlayer extends AbstractMediaPlayer
        implements Player.Listener, AnalyticsListener {
}
