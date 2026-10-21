package com.mogu.tv.ui.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.common.FragmentPageAdapter;
import com.kotlin.basiclib.utils.ToastUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActivityTopicBinding;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.UserOtherInfo;
import com.mogu.tv.ui.frag.ShequListFragment;
import com.mogu.tv.ui.frag.UserInfoListVideoFragment;
import com.mogu.tv.ui.frag.UserInfoShortVideoFragment;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.umeng.analytics.pro.d;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.ViewPagerHelper;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: compiled from: UserInfoActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020(H\u0002J\b\u0010*\u001a\u00020(H\u0002J\b\u0010+\u001a\u00020(H\u0016J\b\u0010,\u001a\u00020(H\u0002J\b\u0010-\u001a\u00020(H\u0016J\b\u0010.\u001a\u00020(H\u0002J\b\u0010/\u001a\u00020(H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR*\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\b\u0012\u0004\u0012\u00020\u0019`\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0015\"\u0004\b \u0010\u0017R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u00060"}, d2 = {"Lcom/mogu/tv/ui/activity/UserInfoActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityTopicBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "mFragAdapter", "Lcom/kotlin/basiclib/common/FragmentPageAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/FragmentPageAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mIds", "", "getMIds", "()Ljava/lang/String;", "setMIds", "(Ljava/lang/String;)V", "mTitles", "getMTitles", "setMTitles", "mUserData", "Lcom/mogu/tv/model/UserOtherInfo;", "getMUserData", "()Lcom/mogu/tv/model/UserOtherInfo;", "setMUserData", "(Lcom/mogu/tv/model/UserOtherInfo;)V", "doFocus", "", "fitData", "getServerData", "initData", "initTab", "initView", "notifyTab", "switchFocus", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UserInfoActivity extends CommonBaseActivity<ActivityTopicBinding> {
    public FragmentPageAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;
    private UserOtherInfo mUserData;
    private String mIds = "";

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0);
        }
    });
    private ArrayList<String> mTitles = CollectionsKt.arrayListOf("长视频", "短视频", "动态");

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        fullScreen();
        ImageView imageView = getBinding().ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity.initView.1
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
                UserInfoActivity.this.onBackPressed();
            }
        });
        initTab();
    }

    public final String getMIds() {
        return this.mIds;
    }

    public final void setMIds(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mIds = str;
    }

    public final UserOtherInfo getMUserData() {
        return this.mUserData;
    }

    public final void setMUserData(UserOtherInfo userOtherInfo) {
        this.mUserData = userOtherInfo;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.mIds = stringExtra;
        getBinding().tvHeaderTitle.setText("详情");
        getServerData();
        notifyTab();
    }

    public final CommonNavigator getCommonNavigator() {
        return (CommonNavigator) this.commonNavigator.getValue();
    }

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

    private final void initTab() {
        setMFragments(new ArrayList<>());
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        setMFragAdapter(new FragmentPageAdapter(supportFragmentManager, getMFragments()));
        getBinding().viewPager.setAdapter(getMFragAdapter());
        getBinding().viewPager.setOffscreenPageLimit(2);
        getCommonNavigator().setAdjustMode(true);
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setReselectWhenLayout(false);
        getCommonNavigator().setAdapter(new C01671());
        getBinding().magicIndicator.setNavigator(getCommonNavigator());
        ViewPagerHelper.bind(getBinding().magicIndicator, getBinding().viewPager);
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.activity.UserInfoActivity$initTab$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UserInfoActivity.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/activity/UserInfoActivity$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01671 extends CommonNavigatorAdapter {
        C01671() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(UserInfoActivity.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 16.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final UserInfoActivity userInfoActivity = UserInfoActivity.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.activity.UserInfoActivity$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UserInfoActivity.C01671.m238getTitleView$lambda0(userInfoActivity, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m238getTitleView$lambda0(UserInfoActivity this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            ViewPager viewPager = this$0.getBinding().viewPager;
            if (viewPager == null) {
                return;
            }
            viewPager.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return UserInfoActivity.this.getMTitles().size();
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
        Bundle bundle = new Bundle();
        bundle.putString("id", this.mIds);
        UserInfoListVideoFragment userInfoListVideoFragment = new UserInfoListVideoFragment();
        UserInfoShortVideoFragment userInfoShortVideoFragment = new UserInfoShortVideoFragment();
        userInfoListVideoFragment.setArguments(bundle);
        userInfoShortVideoFragment.setArguments(bundle);
        ShequListFragment shequListFragment = new ShequListFragment();
        shequListFragment.setArguments(bundle);
        getMFragments().add(userInfoListVideoFragment);
        getMFragments().add(userInfoShortVideoFragment);
        getMFragments().add(shequListFragment);
        getCommonNavigator().notifyDataSetChanged();
        getMFragAdapter().notifyDataSetChanged();
    }

    private final void getServerData() {
        String str = this.mIds;
        if (str == null || str.length() == 0) {
            return;
        }
        ApiManager.INSTANCE.getUserOhterData(this.mIds, new Function3<Integer, String, UserOtherInfo, Unit>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str2, UserOtherInfo userOtherInfo) {
                invoke(num.intValue(), str2, userOtherInfo);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, UserOtherInfo userOtherInfo) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (UserInfoActivity.this.isDestroyed() || UserInfoActivity.this.getBinding() == null || i != 200) {
                    return;
                }
                UserInfoActivity.this.setMUserData(userOtherInfo);
                UserInfoActivity.this.fitData();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fitData() {
        final UserOtherInfo userOtherInfo = this.mUserData;
        if (userOtherInfo != null) {
            getBinding().tvHeaderTitle.setText(userOtherInfo.getName());
            getBinding().tvIntroduce.setText(userOtherInfo.getIntroduction());
            getBinding().tvName.setText(userOtherInfo.getName());
            RoundedImageView roundedImageView = getBinding().ivUser;
            Intrinsics.checkNotNullExpressionValue(roundedImageView, "binding.ivUser");
            ImageUtilKt.withDefaltUserPhoto(roundedImageView, userOtherInfo.getAvatar());
            RoundedImageView roundedImageView2 = getBinding().ivUser;
            Intrinsics.checkNotNullExpressionValue(roundedImageView2, "binding.ivUser");
            AndroidutilsKt.click(roundedImageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity$fitData$1$1
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
                    ArouterUtils.INSTANCE.showPhoto(userOtherInfo.getAvatar());
                }
            });
            switchFocus();
        }
        TextView textView = getBinding().tvFocus;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvFocus");
        UserManagerKt.LoginClick(textView, new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity.fitData.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                UserInfoActivity.this.doFocus();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void switchFocus() {
        UserOtherInfo userOtherInfo = this.mUserData;
        if (userOtherInfo != null && userOtherInfo.getIs_floowed()) {
            getBinding().tvFocus.setBackgroundResource(R.drawable.background_solid_labels_20cornor);
            getBinding().tvFocus.setText("已关注");
        } else {
            getBinding().tvFocus.setBackgroundResource(R.drawable.background_solid_red_15);
            getBinding().tvFocus.setText("关注");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doFocus() {
        boolean z = false;
        CommonBaseActivity.showLoadingDialog$default(this, false, null, 3, null);
        UserOtherInfo userOtherInfo = this.mUserData;
        if (userOtherInfo != null && userOtherInfo.getIs_floowed()) {
            z = true;
        }
        if (z) {
            ApiManager.INSTANCE.unfocusUser(this.mIds, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity.doFocus.1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                    invoke(num.intValue(), str, justReturnMsg);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    UserInfoActivity.this.dissmissLoading();
                    if (i == 200) {
                        UserOtherInfo mUserData = UserInfoActivity.this.getMUserData();
                        if (mUserData != null) {
                            mUserData.set_floowed(false);
                        }
                        UserInfoActivity.this.switchFocus();
                        return;
                    }
                    ToastUtil.INSTANCE.toast(msg);
                }
            });
        } else {
            ApiManager.INSTANCE.focusUser(this.mIds, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.UserInfoActivity.doFocus.2
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                    invoke(num.intValue(), str, justReturnMsg);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    UserInfoActivity.this.dissmissLoading();
                    if (i == 200) {
                        UserOtherInfo mUserData = UserInfoActivity.this.getMUserData();
                        if (mUserData != null) {
                            mUserData.set_floowed(true);
                        }
                        UserInfoActivity.this.switchFocus();
                        return;
                    }
                    ToastUtil.INSTANCE.toast(msg);
                }
            });
        }
    }
}
