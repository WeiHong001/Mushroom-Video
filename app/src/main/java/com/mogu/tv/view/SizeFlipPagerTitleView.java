package com.mogu.tv.view;

import android.content.Context;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView;

/* JADX INFO: loaded from: classes2.dex */
public class SizeFlipPagerTitleView extends SimplePagerTitleView {
    private float mChangePercent;
    public float mNormalTextSize;
    public float mSelectTextSize;

    public SizeFlipPagerTitleView(Context context) {
        super(context);
        this.mChangePercent = 0.5f;
        this.mSelectTextSize = 15.0f;
        this.mNormalTextSize = 15.0f;
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onLeave(int i, int i2, float f, boolean z) {
        if (f >= this.mChangePercent) {
            setTextSize(this.mNormalTextSize);
            setTextColor(this.mNormalColor);
        } else {
            setTextSize(this.mSelectTextSize);
            setTextColor(this.mSelectedColor);
        }
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onEnter(int i, int i2, float f, boolean z) {
        if (f >= this.mChangePercent) {
            setTextSize(this.mSelectTextSize);
            setTextColor(this.mSelectedColor);
        } else {
            setTextSize(this.mNormalTextSize);
            setTextColor(this.mNormalColor);
        }
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onSelected(int i, int i2) {
        getPaint().setFakeBoldText(true);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView
    public void onDeselected(int i, int i2) {
        getPaint().setFakeBoldText(false);
    }
}
