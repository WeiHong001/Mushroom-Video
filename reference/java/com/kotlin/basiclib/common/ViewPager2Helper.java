package com.kotlin.basiclib.common;

import androidx.viewpager2.widget.ViewPager2;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: compiled from: ViewPagerHelper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/kotlin/basiclib/common/ViewPager2Helper;", "", "()V", "bind", "", "magicIndicator", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "viewPager", "Landroidx/viewpager2/widget/ViewPager2;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewPager2Helper {
    public static final ViewPager2Helper INSTANCE = new ViewPager2Helper();

    private ViewPager2Helper() {
    }

    public final void bind(final MagicIndicator magicIndicator, ViewPager2 viewPager) {
        Intrinsics.checkNotNullParameter(magicIndicator, "magicIndicator");
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.kotlin.basiclib.common.ViewPager2Helper.bind.1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                super.onPageScrolled(position, positionOffset, positionOffsetPixels);
                magicIndicator.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                magicIndicator.onPageSelected(position);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int state) {
                super.onPageScrollStateChanged(state);
                magicIndicator.onPageScrollStateChanged(state);
            }
        });
    }
}
