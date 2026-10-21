package com.mogu.tv.ui.frag;

import android.content.Context;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.amogu6.tv.R;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.common.FragmentPageAdapter;
import com.mogu.tv.databinding.FragShortindexvideoBinding;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.umeng.analytics.pro.d;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.ViewPagerHelper;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: compiled from: ShortIndexFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0002J\b\u0010\u001f\u001a\u00020\u001dH\u0016J\b\u0010 \u001a\u00020\u001dH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R*\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\b\u0012\u0004\u0012\u00020\u0019`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017¨\u0006!"}, d2 = {"Lcom/mogu/tv/ui/frag/ShortIndexFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragShortindexvideoBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "mFragAdapter", "Lcom/kotlin/basiclib/common/FragmentPageAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/FragmentPageAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mTitles", "", "getMTitles", "setMTitles", "initData", "", "initTab", "initView", "notifyTab", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortIndexFragment extends CommonBaseFragment<FragShortindexvideoBinding> {
    public FragmentPageAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;
    private ArrayList<String> mTitles = CollectionsKt.arrayListOf("推荐", "喜欢");

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.frag.ShortIndexFragment$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.requireContext());
        }
    });

    public final ArrayList<String> getMTitles() {
        return this.mTitles;
    }

    public final void setMTitles(ArrayList<String> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mTitles = arrayList;
    }

    public final ArrayList<Fragment> getMFragments() {
        ArrayList<Fragment> arrayList = this.mFragments;
        if (arrayList != null) {
            return arrayList;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mFragments");
        return null;
    }

    public final void setMFragments(ArrayList<Fragment> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mFragments = arrayList;
    }

    public final FragmentPageAdapter getMFragAdapter() {
        FragmentPageAdapter fragmentPageAdapter = this.mFragAdapter;
        if (fragmentPageAdapter != null) {
            return fragmentPageAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mFragAdapter");
        return null;
    }

    public final void setMFragAdapter(FragmentPageAdapter fragmentPageAdapter) {
        Intrinsics.checkNotNullParameter(fragmentPageAdapter, "<set-?>");
        this.mFragAdapter = fragmentPageAdapter;
    }

    public final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        initTab();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        notifyTab();
    }

    private final void initTab() {
        setMFragments(new ArrayList<>());
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        setMFragAdapter(new FragmentPageAdapter(childFragmentManager, getMFragments()));
        FragShortindexvideoBinding binding = getBinding();
        ViewPager viewPager = binding != null ? binding.viewPager : null;
        if (viewPager != null) {
            viewPager.setAdapter(getMFragAdapter());
        }
        FragShortindexvideoBinding binding2 = getBinding();
        ViewPager viewPager2 = binding2 != null ? binding2.viewPager : null;
        if (viewPager2 != null) {
            viewPager2.setOffscreenPageLimit(2);
        }
        getCommonNavigator().setAdjustMode(true);
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setReselectWhenLayout(false);
        getCommonNavigator().setAdapter(new AnonymousClass1());
        FragShortindexvideoBinding binding3 = getBinding();
        MagicIndicator magicIndicator = binding3 != null ? binding3.magicIndicator : null;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(getCommonNavigator());
        }
        FragShortindexvideoBinding binding4 = getBinding();
        MagicIndicator magicIndicator2 = binding4 != null ? binding4.magicIndicator : null;
        FragShortindexvideoBinding binding5 = getBinding();
        ViewPagerHelper.bind(magicIndicator2, binding5 != null ? binding5.viewPager : null);
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.frag.ShortIndexFragment$initTab$1, reason: invalid class name */
    /* JADX INFO: compiled from: ShortIndexFragment.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/frag/ShortIndexFragment$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class AnonymousClass1 extends CommonNavigatorAdapter {
        AnonymousClass1() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(ShortIndexFragment.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 16.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.white));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final ShortIndexFragment shortIndexFragment = ShortIndexFragment.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.frag.ShortIndexFragment$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortIndexFragment.AnonymousClass1.m289getTitleView$lambda0(shortIndexFragment, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m289getTitleView$lambda0(ShortIndexFragment this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            FragShortindexvideoBinding binding = this$0.getBinding();
            ViewPager viewPager = binding != null ? binding.viewPager : null;
            if (viewPager == null) {
                return;
            }
            viewPager.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return ShortIndexFragment.this.getMTitles().size();
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerIndicator getIndicator(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(1);
            linePagerIndicator.setLineHeight(UIUtil.dip2px(context, 2.0d));
            linePagerIndicator.setColors(Integer.valueOf(ContextCompat.getColor(context, R.color.white)));
            return linePagerIndicator;
        }
    }

    private final void notifyTab() {
        getMFragments().add(new ShortVideoMainFragment());
        getMFragments().add(new FocusShortVideoFragment());
        getCommonNavigator().notifyDataSetChanged();
        getMFragAdapter().notifyDataSetChanged();
    }
}
