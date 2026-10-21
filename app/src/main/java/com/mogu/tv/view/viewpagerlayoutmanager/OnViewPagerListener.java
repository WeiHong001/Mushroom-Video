package com.mogu.tv.view.viewpagerlayoutmanager;

import com.luck.picture.lib.config.PictureConfig;
import kotlin.Metadata;

/* JADX INFO: compiled from: OnViewPagerListener.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface OnViewPagerListener {
    void onInitComplete();

    void onPageRelease(boolean isNext, int position);

    void onPageSelected(int position, boolean isBottom);
}
