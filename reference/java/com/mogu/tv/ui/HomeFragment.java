package com.mogu.tv.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.gongwen.marqueen.SimpleMF;
import com.gongwen.marqueen.SimpleMarqueeView;
import com.gongwen.marqueen.util.OnItemClickListener;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.common.ViewPage2FragmentAdapter;
import com.kotlin.basiclib.common.ViewPager2Helper;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.MainActivity;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.FragmentHomeBinding;
import com.mogu.tv.model.EventChangeNightMode;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.model.VideoTypes;
import com.mogu.tv.ui.activity.SearchActivity;
import com.mogu.tv.ui.frag.FocusListVideoFragment;
import com.mogu.tv.ui.frag.ListIndexTabFragment;
import com.mogu.tv.ui.frag.ListMainFragment;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.umeng.analytics.pro.d;
import com.uuzuche.lib_zxing.activity.CaptureActivity;
import com.wgq.wangeqiu.common.RequestCode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: compiled from: HomeFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020 H\u0002J\b\u0010\"\u001a\u00020 H\u0002J\b\u0010#\u001a\u00020 H\u0016J\b\u0010$\u001a\u00020 H\u0002J\u001e\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0)H\u0016J\b\u0010*\u001a\u00020 H\u0016J\b\u0010+\u001a\u00020 H\u0016J\b\u0010,\u001a\u00020 H\u0002J\b\u0010-\u001a\u00020 H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R+\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\b\u0012\u0004\u0012\u00020\u0019`\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\t\u001a\u0004\b\u001a\u0010\u0015R!\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001d0\u0011j\b\u0012\u0004\u0012\u00020\u001d`\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015¨\u0006."}, d2 = {"Lcom/mogu/tv/ui/HomeFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragmentHomeBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "mFragAdapter", "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mTabLists", "Lcom/mogu/tv/model/VideoTypes$Types;", "getMTabLists", "mTabLists$delegate", "mTitles", "", "getMTitles", "initData", "", "initNightMode", "initTab", "initView", "notifyTab", "onPermissionsGranted", "requestCode", "", "perms", "", "onStart", "onStop", "showSearch", "turnUpNightMode", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HomeFragment extends CommonBaseFragment<FragmentHomeBinding> {
    public ViewPage2FragmentAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;

    /* JADX INFO: renamed from: mTabLists$delegate, reason: from kotlin metadata */
    private final Lazy mTabLists = LazyKt.lazy(new Function0<ArrayList<VideoTypes.Types>>() { // from class: com.mogu.tv.ui.HomeFragment$mTabLists$2
        @Override // kotlin.jvm.functions.Function0
        public final ArrayList<VideoTypes.Types> invoke() {
            return new ArrayList<>();
        }
    });
    private final ArrayList<String> mTitles = new ArrayList<>();

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.HomeFragment$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.getContext());
        }
    });

    public final ArrayList<VideoTypes.Types> getMTabLists() {
        return (ArrayList) this.mTabLists.getValue();
    }

    public final ArrayList<String> getMTitles() {
        return this.mTitles;
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

    public final ViewPage2FragmentAdapter getMFragAdapter() {
        ViewPage2FragmentAdapter viewPage2FragmentAdapter = this.mFragAdapter;
        if (viewPage2FragmentAdapter != null) {
            return viewPage2FragmentAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mFragAdapter");
        return null;
    }

    public final void setMFragAdapter(ViewPage2FragmentAdapter viewPage2FragmentAdapter) {
        Intrinsics.checkNotNullParameter(viewPage2FragmentAdapter, "<set-?>");
        this.mFragAdapter = viewPage2FragmentAdapter;
    }

    public final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
    }

    private final void showSearch() {
        ApiManager.INSTANCE.getMoguConfig("searchhot", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.ui.HomeFragment.showSearch.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, MoguConfig moguConfig) {
                invoke(num.intValue(), str, moguConfig);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, MoguConfig moguConfig) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || moguConfig == null) {
                    return;
                }
                GlobeAppData.INSTANCE.setSearchHot(moguConfig.getValue());
                List listSplit$default = StringsKt.split$default((CharSequence) moguConfig.getValue(), new String[]{","}, false, 0, 6, (Object) null);
                FragmentHomeBinding binding = HomeFragment.this.getBinding();
                if (binding != null) {
                    SimpleMF simpleMF = new SimpleMF(HomeFragment.this.getContext());
                    simpleMF.setData(listSplit$default);
                    binding.tvSmv.setMarqueeFactory(simpleMF);
                    binding.tvSmv.startFlipping();
                }
            }
        });
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        setMFragments(new ArrayList<>());
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
        setMFragAdapter(new ViewPage2FragmentAdapter(fragmentActivityRequireActivity, getMFragments()));
        FragmentHomeBinding binding = getBinding();
        ViewPager2 viewPager2 = binding != null ? binding.viewPager : null;
        if (viewPager2 != null) {
            viewPager2.setAdapter(getMFragAdapter());
        }
        FragmentHomeBinding binding2 = getBinding();
        ViewPager2 viewPager3 = binding2 != null ? binding2.viewPager : null;
        if (viewPager3 != null) {
            viewPager3.setOffscreenPageLimit(1);
        }
        initTab();
        showSearch();
        initNightMode();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        SimpleMarqueeView simpleMarqueeView;
        super.onStart();
        FragmentHomeBinding binding = getBinding();
        if (binding == null || (simpleMarqueeView = binding.tvSmv) == null) {
            return;
        }
        simpleMarqueeView.startFlipping();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        SimpleMarqueeView simpleMarqueeView;
        super.onStop();
        FragmentHomeBinding binding = getBinding();
        if (binding == null || (simpleMarqueeView = binding.tvSmv) == null) {
            return;
        }
        simpleMarqueeView.startFlipping();
    }

    private final void initNightMode() {
        RelativeLayout relativeLayout;
        TextView textView;
        FragmentHomeBinding binding = getBinding();
        if (binding != null && (textView = binding.tvNightMode) != null) {
            GlobeAppData globeAppData = GlobeAppData.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
            textView.setTypeface(globeAppData.getGlobeIconFont(fragmentActivityRequireActivity));
        }
        turnUpNightMode();
        FragmentHomeBinding binding2 = getBinding();
        if (binding2 == null || (relativeLayout = binding2.rlNight) == null) {
            return;
        }
        AndroidutilsKt.click(relativeLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.HomeFragment.initNightMode.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                int i = 0;
                int i2 = SpUtil.INSTANCE.getInt(CacheKey.INSTANCE.getNightMode(), 0);
                if (i2 == 0) {
                    i = 1;
                } else if (i2 != 1) {
                    i = i2;
                }
                SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getNightMode(), Integer.valueOf(i));
                EventBusUtil.INSTANCE.post(new EventChangeNightMode());
                HomeFragment.this.startActivity(new Intent(HomeFragment.this.requireContext(), (Class<?>) MainActivity.class));
                HomeFragment.this.requireActivity().overridePendingTransition(R.anim.activity_alph_in, R.anim.activity_alph_out);
                AcManage.getAppManager().finishActivity(HomeFragment.this.requireActivity());
            }
        });
    }

    private final void turnUpNightMode() {
        TextView textView;
        int i = SpUtil.INSTANCE.getInt(CacheKey.INSTANCE.getNightMode(), 0);
        if (i == 0) {
            FragmentHomeBinding binding = getBinding();
            textView = binding != null ? binding.tvNightMode : null;
            if (textView == null) {
                return;
            }
            textView.setText(getString(R.string.icon_taiyang));
            return;
        }
        if (i != 1) {
            return;
        }
        FragmentHomeBinding binding2 = getBinding();
        textView = binding2 != null ? binding2.tvNightMode : null;
        if (textView == null) {
            return;
        }
        textView.setText(getString(R.string.icon_yueliang));
    }

    private final void initTab() {
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setReselectWhenLayout(false);
        getCommonNavigator().setAdapter(new C01181());
        FragmentHomeBinding binding = getBinding();
        MagicIndicator magicIndicator = binding != null ? binding.magicIndicator : null;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(getCommonNavigator());
        }
        FragmentHomeBinding binding2 = getBinding();
        ViewPager2 viewPager2 = binding2 != null ? binding2.viewPager : null;
        if (viewPager2 != null) {
            viewPager2.setOffscreenPageLimit(-1);
        }
        ViewPager2Helper viewPager2Helper = ViewPager2Helper.INSTANCE;
        FragmentHomeBinding binding3 = getBinding();
        MagicIndicator magicIndicator2 = binding3 != null ? binding3.magicIndicator : null;
        Intrinsics.checkNotNull(magicIndicator2);
        FragmentHomeBinding binding4 = getBinding();
        ViewPager2 viewPager3 = binding4 != null ? binding4.viewPager : null;
        Intrinsics.checkNotNull(viewPager3);
        viewPager2Helper.bind(magicIndicator2, viewPager3);
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.HomeFragment$initTab$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HomeFragment.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/HomeFragment$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01181 extends CommonNavigatorAdapter {
        C01181() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(HomeFragment.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 16.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final HomeFragment homeFragment = HomeFragment.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.HomeFragment$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HomeFragment.C01181.m169getTitleView$lambda0(homeFragment, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m169getTitleView$lambda0(HomeFragment this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            FragmentHomeBinding binding = this$0.getBinding();
            ViewPager2 viewPager2 = binding != null ? binding.viewPager : null;
            if (viewPager2 == null) {
                return;
            }
            viewPager2.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return HomeFragment.this.getMTitles().size();
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerIndicator getIndicator(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(1);
            linePagerIndicator.setLineHeight(UIUtil.dip2px(context, 2.0d));
            linePagerIndicator.setColors(Integer.valueOf(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect)));
            return linePagerIndicator;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyTab() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        this.mTitles.clear();
        getMFragments().clear();
        this.mTitles.add("关注");
        this.mTitles.add("推荐");
        ListMainFragment listMainFragment = new ListMainFragment();
        getMFragments().add(new FocusListVideoFragment());
        getMFragments().add(listMainFragment);
        for (VideoTypes.Types types : getMTabLists()) {
            if (!this.mTitles.contains(types.getName())) {
                this.mTitles.add(types.getName());
                Bundle bundle = new Bundle();
                bundle.putString("parentId", types.getId().toString());
                ListIndexTabFragment listIndexTabFragment = new ListIndexTabFragment();
                listIndexTabFragment.setArguments(bundle);
                getMFragments().add(listIndexTabFragment);
            }
        }
        getCommonNavigator().notifyDataSetChanged();
        FragmentHomeBinding binding = getBinding();
        if (binding != null && (viewPager3 = binding.viewPager) != null) {
            viewPager3.post(new Runnable() { // from class: com.mogu.tv.ui.HomeFragment$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    HomeFragment.m167notifyTab$lambda1(this.f$0);
                }
            });
        }
        getCommonNavigator().onPageSelected(1);
        FragmentHomeBinding binding2 = getBinding();
        View childAt = (binding2 == null || (viewPager2 = binding2.viewPager) == null) ? null : viewPager2.getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        ((RecyclerView) childAt).setItemViewCacheSize(getMFragments().size() - 1);
        getMFragAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: notifyTab$lambda-1, reason: not valid java name */
    public static final void m167notifyTab$lambda1(HomeFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentHomeBinding binding = this$0.getBinding();
        ViewPager2 viewPager2 = binding != null ? binding.viewPager : null;
        if (viewPager2 == null) {
            return;
        }
        viewPager2.setCurrentItem(1);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        RelativeLayout relativeLayout;
        SimpleMarqueeView simpleMarqueeView;
        ApiManager.INSTANCE.getTypeAll(new Function3<Integer, String, VideoTypes, Unit>() { // from class: com.mogu.tv.ui.HomeFragment.initData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoTypes videoTypes) {
                invoke(num.intValue(), str, videoTypes);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, VideoTypes videoTypes) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || videoTypes == null) {
                    return;
                }
                HomeFragment.this.getMTabLists().clear();
                HomeFragment.this.getMTabLists().addAll(videoTypes.getList());
                HomeFragment.this.notifyTab();
            }
        });
        FragmentHomeBinding binding = getBinding();
        if (binding != null && (simpleMarqueeView = binding.tvSmv) != null) {
            simpleMarqueeView.setOnItemClickListener(new OnItemClickListener() { // from class: com.mogu.tv.ui.HomeFragment$$ExternalSyntheticLambda0
                @Override // com.gongwen.marqueen.util.OnItemClickListener
                public final void onItemClickListener(View view, Object obj, int i) {
                    HomeFragment.m166initData$lambda2(this.f$0, view, obj, i);
                }
            });
        }
        FragmentHomeBinding binding2 = getBinding();
        if (binding2 == null || (relativeLayout = binding2.llTosearch) == null) {
            return;
        }
        AndroidutilsKt.click(relativeLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.HomeFragment.initData.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                HomeFragment.this.startActivity(new Intent(HomeFragment.this.getContext(), (Class<?>) SearchActivity.class));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m166initData$lambda2(HomeFragment this$0, View view, Object obj, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0.getContext(), (Class<?>) SearchActivity.class));
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment, pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int requestCode, List<String> perms) {
        Intrinsics.checkNotNullParameter(perms, "perms");
        if (requestCode == 0 && (!perms.isEmpty()) && perms.contains("android.permission.CAMERA")) {
            Intent intent = new Intent(getActivity(), (Class<?>) CaptureActivity.class);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.startActivityForResult(intent, RequestCode.INSTANCE.getQR_REQUEST_CODE());
            }
        }
    }
}
