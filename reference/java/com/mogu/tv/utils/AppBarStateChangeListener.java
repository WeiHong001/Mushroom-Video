package com.mogu.tv.utils;

import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AppBarStateChangeListener implements AppBarLayout.OnOffsetChangedListener {
    private State mCurrentState = State.IDLE;

    public enum State {
        EXPANDED,
        COLLAPSED,
        IDLE
    }

    public abstract void onStateChanged(AppBarLayout appBarLayout, State state, int i);

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        if (i == 0 && this.mCurrentState != State.EXPANDED) {
            onStateChanged(appBarLayout, State.EXPANDED, i);
            this.mCurrentState = State.EXPANDED;
        } else if (Math.abs(i) >= appBarLayout.getTotalScrollRange() && this.mCurrentState != State.COLLAPSED) {
            onStateChanged(appBarLayout, State.COLLAPSED, i);
            this.mCurrentState = State.COLLAPSED;
        } else {
            onStateChanged(appBarLayout, State.IDLE, i);
            this.mCurrentState = State.IDLE;
        }
    }
}
