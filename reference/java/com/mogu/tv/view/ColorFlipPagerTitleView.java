package com.mogu.tv.view;

import android.content.Context;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView;

/* JADX INFO: loaded from: classes2.dex */
public class ColorFlipPagerTitleView extends SimplePagerTitleView {
    private float mChangePercent;

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onDeselected(int i, int i2) {
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onSelected(int i, int i2) {
    }

    public ColorFlipPagerTitleView(Context context) {
        super(context);
        this.mChangePercent = 0.5f;
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onLeave(int i, int i2, float f, boolean z) {
        if (f >= this.mChangePercent) {
            setTextColor(this.mNormalColor);
        } else {
            setTextColor(this.mSelectedColor);
        }
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onEnter(int i, int i2, float f, boolean z) {
        if (f >= this.mChangePercent) {
            setTextColor(this.mSelectedColor);
        } else {
            setTextColor(this.mNormalColor);
        }
    }
}
