package com.mogu.tv.ui.frag;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.common.ViewPage2FragmentAdapter;
import com.kotlin.basiclib.common.ViewPager2Helper;
import com.mogu.tv.adapter.RecommandUserAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragShequBinding;
import com.mogu.tv.model.UserList;
import com.mogu.tv.ui.activity.SheQuUserActivity;
import com.mogu.tv.ui.activity.SqNoticeActivity;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.umeng.analytics.pro.d;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: compiled from: ShequFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010$\u001a\u00020\"H\u0002J\b\u0010%\u001a\u00020\"H\u0016J\b\u0010&\u001a\u00020\"H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R!\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\b\u0012\u0004\u0012\u00020\u0019`\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006'"}, d2 = {"Lcom/mogu/tv/ui/frag/ShequFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragShequBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "mFragAdapter", "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mTitles", "", "getMTitles", "userAdapter", "Lcom/mogu/tv/adapter/RecommandUserAdapter;", "getUserAdapter", "()Lcom/mogu/tv/adapter/RecommandUserAdapter;", "setUserAdapter", "(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V", "getUserList", "", "initData", "initTab", "initView", "notifyTab", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequFragment extends CommonBaseFragment<FragShequBinding> {
    public ViewPage2FragmentAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;
    private RecommandUserAdapter userAdapter = new RecommandUserAdapter();

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.frag.ShequFragment$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0.requireActivity());
        }
    });
    private final ArrayList<String> mTitles = new ArrayList<>();

    public final RecommandUserAdapter getUserAdapter() {
        return this.userAdapter;
    }

    public final void setUserAdapter(RecommandUserAdapter recommandUserAdapter) {
        Intrinsics.checkNotNullParameter(recommandUserAdapter, "<set-?>");
        this.userAdapter = recommandUserAdapter;
    }

    private final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
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

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        ImageView imageView;
        ImageView imageView2;
        setMFragments(new ArrayList<>());
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity()");
        setMFragAdapter(new ViewPage2FragmentAdapter(fragmentActivityRequireActivity, getMFragments()));
        FragShequBinding binding = getBinding();
        ViewPager2 viewPager2 = binding != null ? binding.viewPager : null;
        if (viewPager2 != null) {
            viewPager2.setAdapter(getMFragAdapter());
        }
        FragShequBinding binding2 = getBinding();
        ViewPager2 viewPager3 = binding2 != null ? binding2.viewPager : null;
        if (viewPager3 != null) {
            viewPager3.setOffscreenPageLimit(1);
        }
        FragShequBinding binding3 = getBinding();
        if (binding3 != null) {
            binding3.rvUser.setLayoutManager(new LinearLayoutManager(requireActivity(), 0, false));
            binding3.rvUser.setAdapter(this.userAdapter);
        }
        initTab();
        FragShequBinding binding4 = getBinding();
        if (binding4 != null && (imageView2 = binding4.IvSq1) != null) {
            AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShequFragment.initView.2
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
                    Intent intent = new Intent(ShequFragment.this.getContext(), (Class<?>) SheQuUserActivity.class);
                    intent.putExtra("id", "7310");
                    ShequFragment.this.startActivity(intent);
                }
            });
        }
        FragShequBinding binding5 = getBinding();
        if (binding5 == null || (imageView = binding5.IvSq2) == null) {
            return;
        }
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.frag.ShequFragment.initView.3
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
                ShequFragment.this.startActivity(new Intent(ShequFragment.this.getContext(), (Class<?>) SqNoticeActivity.class));
            }
        });
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        getUserList();
        notifyTab();
    }

    private final void getUserList() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", Integer.valueOf(new Random().nextInt(20)));
        ApiManager.INSTANCE.getUserList(map, new Function3<Integer, String, UserList, Unit>() { // from class: com.mogu.tv.ui.frag.ShequFragment.getUserList.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserList userList) {
                invoke(num.intValue(), str, userList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, UserList userList) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || userList == null) {
                    return;
                }
                ShequFragment.this.getUserAdapter().setNewData(CollectionsKt.take(CollectionsKt.shuffled(userList.getList()), 12));
            }
        });
        this.userAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.frag.ShequFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ShequFragment.m279getUserList$lambda1(this.f$0, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getUserList$lambda-1, reason: not valid java name */
    public static final void m279getUserList$lambda1(ShequFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toUserDetails(String.valueOf(this$0.userAdapter.getData().get(i).getId()));
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.frag.ShequFragment$initTab$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ShequFragment.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/frag/ShequFragment$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01861 extends CommonNavigatorAdapter {
        C01861() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(ShequFragment.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 15.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final ShequFragment shequFragment = ShequFragment.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.frag.ShequFragment$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShequFragment.C01861.m281getTitleView$lambda0(shequFragment, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m281getTitleView$lambda0(ShequFragment this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            FragShequBinding binding = this$0.getBinding();
            ViewPager2 viewPager2 = binding != null ? binding.viewPager : null;
            if (viewPager2 == null) {
                return;
            }
            viewPager2.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return ShequFragment.this.getMTitles().size();
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

    private final void initTab() {
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setAdapter(new C01861());
        FragShequBinding binding = getBinding();
        MagicIndicator magicIndicator = binding != null ? binding.magicIndicator : null;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(getCommonNavigator());
        }
        FragShequBinding binding2 = getBinding();
        ViewPager2 viewPager2 = binding2 != null ? binding2.viewPager : null;
        if (viewPager2 != null) {
            viewPager2.setOffscreenPageLimit(-1);
        }
        ViewPager2Helper viewPager2Helper = ViewPager2Helper.INSTANCE;
        FragShequBinding binding3 = getBinding();
        MagicIndicator magicIndicator2 = binding3 != null ? binding3.magicIndicator : null;
        Intrinsics.checkNotNull(magicIndicator2);
        FragShequBinding binding4 = getBinding();
        ViewPager2 viewPager3 = binding4 != null ? binding4.viewPager : null;
        Intrinsics.checkNotNull(viewPager3);
        viewPager2Helper.bind(magicIndicator2, viewPager3);
    }

    private final void notifyTab() {
        ViewPager2 viewPager2;
        this.mTitles.clear();
        getMFragments().clear();
        this.mTitles.add("推荐");
        Bundle bundle = new Bundle();
        ShequListFragment shequListFragment = new ShequListFragment();
        shequListFragment.setArguments(bundle);
        getMFragments().add(shequListFragment);
        getCommonNavigator().notifyDataSetChanged();
        FragShequBinding binding = getBinding();
        if (binding != null && (viewPager2 = binding.viewPager) != null) {
            viewPager2.post(new Runnable() { // from class: com.mogu.tv.ui.frag.ShequFragment$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ShequFragment.m280notifyTab$lambda2(this.f$0);
                }
            });
        }
        getMFragAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: notifyTab$lambda-2, reason: not valid java name */
    public static final void m280notifyTab$lambda2(ShequFragment this$0) {
        ViewPager2 viewPager2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragShequBinding binding = this$0.getBinding();
        if (binding == null || (viewPager2 = binding.viewPager) == null) {
            return;
        }
        viewPager2.setCurrentItem(0, true);
    }
}
