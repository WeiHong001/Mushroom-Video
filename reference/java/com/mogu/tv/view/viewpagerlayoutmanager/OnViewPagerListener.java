package com.mogu.tv.view.viewpagerlayoutmanager;

import com.luck.picture.lib.config.PictureConfig;
import kotlin.Metadata;

/* JADX INFO: compiled from: OnViewPagerListener.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006H&¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/view/viewpagerlayoutmanager/OnViewPagerListener;", "", "onInitComplete", "", "onPageRelease", "isNext", "", PictureConfig.EXTRA_POSITION, "", "onPageSelected", "isBottom", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface OnViewPagerListener {
    void onInitComplete();

    void onPageRelease(boolean isNext, int position);

    void onPageSelected(int position, boolean isBottom);
}
