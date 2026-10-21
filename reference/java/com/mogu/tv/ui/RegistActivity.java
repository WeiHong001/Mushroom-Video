package com.mogu.tv.ui;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.StatusBarUtil;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.common.ViewPage2FragmentAdapter;
import com.kotlin.basiclib.common.ViewPager2Helper;
import com.mogu.tv.databinding.FragmentRegistBinding;
import com.mogu.tv.ui.frag.LoginFragment;
import com.mogu.tv.ui.frag.RegistFragment;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.umeng.analytics.pro.d;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: compiled from: RegistActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0016J\b\u0010\u001f\u001a\u00020\u001cH\u0002J\b\u0010 \u001a\u00020\u001cH\u0014R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R!\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\b\u0012\u0004\u0012\u00020\u0019`\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015¨\u0006!"}, d2 = {"Lcom/mogu/tv/ui/RegistActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/FragmentRegistBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "mFragAdapter", "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mTitles", "", "getMTitles", "initData", "", "initTab", "initView", "notifyTab", "onDestroy", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RegistActivity extends CommonBaseActivity<FragmentRegistBinding> {
    public ViewPage2FragmentAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;
    private final ArrayList<String> mTitles = new ArrayList<>();

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.RegistActivity$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.getMActivity());
        }
    });

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

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        try {
            StatusBarUtil.setPadding(this, getBinding().llHead);
            StatusBarUtil.immersive(this, ContextCompat.getColor(getMActivity(), R.color.mian_bg_color));
        } catch (Exception unused) {
        }
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.RegistActivity.initView.1
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
                RegistActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("账号登录");
        setMFragments(new ArrayList<>());
        setMFragAdapter(new ViewPage2FragmentAdapter(getMActivity(), getMFragments()));
        getBinding().viewPager.setOffscreenPageLimit(2);
        initTab();
    }

    private final void initTab() {
        getBinding().viewPager.setAdapter(getMFragAdapter());
        getCommonNavigator().setAdjustMode(true);
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setReselectWhenLayout(false);
        getCommonNavigator().setAdapter(new AnonymousClass1());
        getBinding().magicIndicator.setNavigator(getCommonNavigator());
        ViewPager2Helper viewPager2Helper = ViewPager2Helper.INSTANCE;
        MagicIndicator magicIndicator = getBinding().magicIndicator;
        Intrinsics.checkNotNullExpressionValue(magicIndicator, "binding.magicIndicator");
        ViewPager2 viewPager2 = getBinding().viewPager;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        viewPager2Helper.bind(magicIndicator, viewPager2);
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.RegistActivity$initTab$1, reason: invalid class name */
    /* JADX INFO: compiled from: RegistActivity.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/RegistActivity$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class AnonymousClass1 extends CommonNavigatorAdapter {
        AnonymousClass1() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(RegistActivity.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 16.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final RegistActivity registActivity = RegistActivity.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.RegistActivity$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RegistActivity.AnonymousClass1.m175getTitleView$lambda0(registActivity, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m175getTitleView$lambda0(RegistActivity this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            ViewPager2 viewPager2 = this$0.getBinding().viewPager;
            if (viewPager2 == null) {
                return;
            }
            viewPager2.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return RegistActivity.this.getMTitles().size();
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

    private final void notifyTab() {
        this.mTitles.clear();
        getMFragments().clear();
        this.mTitles.add("登錄");
        this.mTitles.add("註冊");
        getMFragments().add(new LoginFragment());
        getMFragments().add(new RegistFragment());
        getCommonNavigator().notifyDataSetChanged();
        getMFragAdapter().notifyDataSetChanged();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        notifyTab();
    }
}
