package com.mogu.tv.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.fastjson.JSON;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.common.ViewPage2FragmentAdapter;
import com.kotlin.basiclib.common.ViewPager2Helper;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.SpUtil;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.adapter.RecommandUserAdapter;
import com.mogu.tv.adapter.SearchHotAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.ActSearchBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.EvnetSearchPhoto;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.LabelsModel;
import com.mogu.tv.model.SearchHistoryBean;
import com.mogu.tv.model.SearchHot;
import com.mogu.tv.model.UserList;
import com.mogu.tv.ui.frag.SearchListVIdeoFrgment;
import com.mogu.tv.ui.frag.SearchUserListFragment;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.SizeFlipPagerTitleView;
import com.umeng.analytics.pro.d;
import com.yanbo.lib_screen.entity.VItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: compiled from: SearchActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 I2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001IB\u0005¢\u0006\u0002\u0010\u0003J\b\u00107\u001a\u000208H\u0002J\b\u00109\u001a\u000208H\u0002J\b\u0010:\u001a\u000208H\u0016J\b\u0010;\u001a\u000208H\u0002J\b\u0010<\u001a\u000208H\u0002J\b\u0010=\u001a\u000208H\u0002J\b\u0010>\u001a\u000208H\u0016J\b\u0010?\u001a\u000208H\u0002J\b\u0010@\u001a\u000208H\u0016J\b\u0010A\u001a\u000208H\u0002J\u0016\u0010B\u001a\u0002082\f\u0010C\u001a\b\u0012\u0004\u0012\u00020E0DH\u0002J\b\u0010F\u001a\u000208H\u0002J\b\u0010G\u001a\u000208H\u0002J\u0006\u0010H\u001a\u000208R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R*\u0010*\u001a\u0012\u0012\u0004\u0012\u00020+0\u0017j\b\u0012\u0004\u0012\u00020+`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001b\"\u0004\b-\u0010\u001dR\u001a\u0010.\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\r\"\u0004\b0\u0010\u000fR\u001a\u00101\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106¨\u0006J"}, d2 = {"Lcom/mogu/tv/ui/activity/SearchActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActSearchBinding;", "()V", "commonNavigator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "getCommonNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator$delegate", "Lkotlin/Lazy;", "firstStart", "", "getFirstStart", "()Z", "setFirstStart", "(Z)V", "mFragAdapter", "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "getMFragAdapter", "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "setMFragAdapter", "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V", "mFragments", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "getMFragments", "()Ljava/util/ArrayList;", "setMFragments", "(Ljava/util/ArrayList;)V", "mHotAdapter", "Lcom/mogu/tv/adapter/SearchHotAdapter;", "getMHotAdapter", "()Lcom/mogu/tv/adapter/SearchHotAdapter;", "setMHotAdapter", "(Lcom/mogu/tv/adapter/SearchHotAdapter;)V", "mSearchHistoryBean", "Lcom/mogu/tv/model/SearchHistoryBean;", "getMSearchHistoryBean", "()Lcom/mogu/tv/model/SearchHistoryBean;", "setMSearchHistoryBean", "(Lcom/mogu/tv/model/SearchHistoryBean;)V", "mTitles", "", "getMTitles", "setMTitles", "searchResultShow", "getSearchResultShow", "setSearchResultShow", "userAdapter", "Lcom/mogu/tv/adapter/RecommandUserAdapter;", "getUserAdapter", "()Lcom/mogu/tv/adapter/RecommandUserAdapter;", "setUserAdapter", "(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V", "getLables", "", "getUserList", "initData", "initLabels", "initTab", "initUserList", "initView", "notifyTab", "onBackPressed", "refreshHistory", "refreshLables", "datas", "", "Lcom/mogu/tv/model/LabelsModel$Item;", "showBanner", "startSearch", "switchPage", "Companion", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchActivity extends CommonBaseActivity<ActSearchBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static String searchKey = "";
    public ViewPage2FragmentAdapter mFragAdapter;
    public ArrayList<Fragment> mFragments;
    private SearchHistoryBean mSearchHistoryBean;
    private boolean searchResultShow;
    private SearchHotAdapter mHotAdapter = new SearchHotAdapter();
    private boolean firstStart = true;

    /* JADX INFO: renamed from: commonNavigator$delegate, reason: from kotlin metadata */
    private final Lazy commonNavigator = LazyKt.lazy(new Function0<CommonNavigator>() { // from class: com.mogu.tv.ui.activity.SearchActivity$commonNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CommonNavigator invoke() {
            return new CommonNavigator(this.this$0);
        }
    });
    private ArrayList<String> mTitles = CollectionsKt.arrayListOf("影片", "用户");
    private RecommandUserAdapter userAdapter = new RecommandUserAdapter();

    /* JADX INFO: compiled from: SearchActivity.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mogu/tv/ui/activity/SearchActivity$Companion;", "", "()V", "searchKey", "", "getSearchKey", "()Ljava/lang/String;", "setSearchKey", "(Ljava/lang/String;)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getSearchKey() {
            return SearchActivity.searchKey;
        }

        public final void setSearchKey(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            SearchActivity.searchKey = str;
        }
    }

    public final boolean getSearchResultShow() {
        return this.searchResultShow;
    }

    public final void setSearchResultShow(boolean z) {
        this.searchResultShow = z;
    }

    public final SearchHistoryBean getMSearchHistoryBean() {
        return this.mSearchHistoryBean;
    }

    public final void setMSearchHistoryBean(SearchHistoryBean searchHistoryBean) {
        this.mSearchHistoryBean = searchHistoryBean;
    }

    public final SearchHotAdapter getMHotAdapter() {
        return this.mHotAdapter;
    }

    public final void setMHotAdapter(SearchHotAdapter searchHotAdapter) {
        Intrinsics.checkNotNullParameter(searchHotAdapter, "<set-?>");
        this.mHotAdapter = searchHotAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        RelativeLayout relativeLayout = getBinding().rlHead;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.rlHead");
        fitStatubar(relativeLayout);
        ImageView imageView = getBinding().ivClear;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivClear");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity.initView.1
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
                ArrayList<String> result;
                Intrinsics.checkNotNullParameter(it, "it");
                SearchHistoryBean mSearchHistoryBean = SearchActivity.this.getMSearchHistoryBean();
                if (mSearchHistoryBean != null && (result = mSearchHistoryBean.getResult()) != null) {
                    result.clear();
                }
                SearchActivity.this.refreshHistory();
                SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getSEARCH_LIST_KEY(), "");
            }
        });
        ImageView imageView2 = getBinding().ivClearContent;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivClearContent");
        AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity.initView.2
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
                SearchActivity.this.getBinding().etSearch.setText("");
            }
        });
        getBinding().etSearch.addTextChangedListener(new TextWatcher() { // from class: com.mogu.tv.ui.activity.SearchActivity.initView.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                Intrinsics.checkNotNullParameter(s, "s");
                EditText editText = SearchActivity.this.getBinding().etSearch;
                Intrinsics.checkNotNullExpressionValue(editText, "binding.etSearch");
                if (AndroidutilsKt.isNotEmpty(AndroidutilsKt.content(editText))) {
                    ImageView imageView3 = SearchActivity.this.getBinding().ivClearContent;
                    Intrinsics.checkNotNullExpressionValue(imageView3, "binding.ivClearContent");
                    AndroidutilsKt.setVisible(imageView3, true);
                    SearchActivity.this.getBinding().tvTosearch.setText("搜索");
                    return;
                }
                ImageView imageView4 = SearchActivity.this.getBinding().ivClearContent;
                Intrinsics.checkNotNullExpressionValue(imageView4, "binding.ivClearContent");
                AndroidutilsKt.setVisible(imageView4, false);
                SearchActivity.this.getBinding().tvTosearch.setText("取消");
            }
        });
        TextView textView = getBinding().tvTosearch;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvTosearch");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity.initView.4
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
                Boolean boolValueOf;
                SearchHistoryBean mSearchHistoryBean;
                ArrayList<String> result;
                ArrayList<String> result2;
                SearchHistoryBean mSearchHistoryBean2;
                ArrayList<String> result3;
                ArrayList<String> result4;
                Intrinsics.checkNotNullParameter(it, "it");
                EditText editText = SearchActivity.this.getBinding().etSearch;
                Intrinsics.checkNotNullExpressionValue(editText, "binding.etSearch");
                int size = 0;
                if (AndroidutilsKt.isEmpty(AndroidutilsKt.content(editText))) {
                    if (SearchActivity.this.getSearchResultShow()) {
                        SearchActivity.this.setSearchResultShow(false);
                        SearchActivity.this.switchPage();
                        return;
                    } else {
                        SearchActivity.this.onBackPressed();
                        return;
                    }
                }
                SearchActivity.this.setSearchResultShow(true);
                SearchActivity.this.switchPage();
                if (SearchActivity.this.getMSearchHistoryBean() == null) {
                    SearchActivity.this.setMSearchHistoryBean(new SearchHistoryBean(new ArrayList()));
                }
                SearchHistoryBean mSearchHistoryBean3 = SearchActivity.this.getMSearchHistoryBean();
                if (mSearchHistoryBean3 == null || (result4 = mSearchHistoryBean3.getResult()) == null) {
                    boolValueOf = null;
                } else {
                    EditText editText2 = SearchActivity.this.getBinding().etSearch;
                    Intrinsics.checkNotNullExpressionValue(editText2, "binding.etSearch");
                    boolValueOf = Boolean.valueOf(result4.contains(AndroidutilsKt.content(editText2)));
                }
                Intrinsics.checkNotNull(boolValueOf);
                if (!boolValueOf.booleanValue() && (mSearchHistoryBean2 = SearchActivity.this.getMSearchHistoryBean()) != null && (result3 = mSearchHistoryBean2.getResult()) != null) {
                    EditText editText3 = SearchActivity.this.getBinding().etSearch;
                    Intrinsics.checkNotNullExpressionValue(editText3, "binding.etSearch");
                    result3.add(0, AndroidutilsKt.content(editText3));
                }
                SearchHistoryBean mSearchHistoryBean4 = SearchActivity.this.getMSearchHistoryBean();
                if (mSearchHistoryBean4 != null && (result2 = mSearchHistoryBean4.getResult()) != null) {
                    size = result2.size();
                }
                if (size >= 10 && (mSearchHistoryBean = SearchActivity.this.getMSearchHistoryBean()) != null && (result = mSearchHistoryBean.getResult()) != null) {
                    result.remove(9);
                }
                SpUtil spUtil = SpUtil.INSTANCE;
                String search_list_key = CacheKey.INSTANCE.getSEARCH_LIST_KEY();
                String jSONString = JSON.toJSONString(SearchActivity.this.getMSearchHistoryBean());
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(mSearchHistoryBean)");
                spUtil.saveValue(search_list_key, jSONString);
                Companion companion = SearchActivity.INSTANCE;
                EditText editText4 = SearchActivity.this.getBinding().etSearch;
                Intrinsics.checkNotNullExpressionValue(editText4, "binding.etSearch");
                companion.setSearchKey(AndroidutilsKt.content(editText4));
                SearchActivity.this.startSearch();
                SearchActivity searchActivity = SearchActivity.this;
                TextView textView2 = searchActivity.getBinding().tvTosearch;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvTosearch");
                searchActivity.closeKeyBord(textView2);
                SearchActivity.this.refreshHistory();
            }
        });
        getBinding().rvHotSearch.setLayoutManager(new GridLayoutManager(this, 2));
        getBinding().rvHotSearch.setAdapter(this.mHotAdapter);
        this.mHotAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.SearchActivity$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchActivity.m223initView$lambda0(this.f$0, baseQuickAdapter, view, i);
            }
        });
        initLabels();
        initUserList();
        initTab();
        showBanner();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initView$lambda-0, reason: not valid java name */
    public static final void m223initView$lambda0(SearchActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.searchResultShow = true;
        searchKey = this$0.mHotAdapter.getData().get(i).getItem();
        this$0.startSearch();
        this$0.switchPage();
    }

    private final void showBanner() {
        List<AllAdsModel.Item> search;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (search = adData.getSearch()) == null) ? null : AllAdsModelKt.getRandomAd(search);
        String file = randomAd != null ? randomAd.getFile() : null;
        if (file == null || file.length() == 0) {
            ImageView imageView = getBinding().ivMainAd;
            Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivMainAd");
            AndroidutilsKt.setVisible(imageView, false);
        }
        ImageView imageView2 = getBinding().ivMainAd;
        Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivMainAd");
        AndroidutilsKt.click(imageView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity.showBanner.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                String action;
                Intrinsics.checkNotNullParameter(it, "it");
                ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                FragmentActivity mActivity = SearchActivity.this.getMActivity();
                AllAdsModel.Item item = randomAd;
                if (item == null || (action = item.getAction()) == null) {
                    action = "";
                }
                arouterUtils.toUrlPraseJump(mActivity, action);
                ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                AllAdsModel.Item item2 = randomAd;
                arouterUtils2.clickAd(String.valueOf(item2 != null ? Integer.valueOf(item2.getId()) : null));
            }
        });
        ImageView imageView3 = getBinding().ivMainAd;
        Intrinsics.checkNotNullExpressionValue(imageView3, "binding.ivMainAd");
        ImageUtilKt.with(imageView3, randomAd != null ? randomAd.getFile() : null);
    }

    public final boolean getFirstStart() {
        return this.firstStart;
    }

    public final void setFirstStart(boolean z) {
        this.firstStart = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startSearch() {
        if (this.firstStart) {
            notifyTab();
            this.firstStart = false;
        }
        EventBusUtil.INSTANCE.post(new EvnetSearchPhoto(searchKey));
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

    private final void initTab() {
        setMFragments(new ArrayList<>());
        setMFragAdapter(new ViewPage2FragmentAdapter(this, getMFragments()));
        getBinding().viewPager.setAdapter(getMFragAdapter());
        getBinding().viewPager.setOffscreenPageLimit(2);
        getCommonNavigator().setAdjustMode(true);
        getCommonNavigator().setScrollPivotX(0.65f);
        getCommonNavigator().setReselectWhenLayout(false);
        getCommonNavigator().setAdapter(new C01511());
        getBinding().magicIndicator.setNavigator(getCommonNavigator());
        ViewPager2Helper viewPager2Helper = ViewPager2Helper.INSTANCE;
        MagicIndicator magicIndicator = getBinding().magicIndicator;
        Intrinsics.checkNotNullExpressionValue(magicIndicator, "binding.magicIndicator");
        ViewPager2 viewPager2 = getBinding().viewPager;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        viewPager2Helper.bind(magicIndicator, viewPager2);
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.activity.SearchActivity$initTab$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SearchActivity.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016¨\u0006\u000b"}, d2 = {"com/mogu/tv/ui/activity/SearchActivity$initTab$1", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;", "getCount", "", "getIndicator", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;", d.R, "Landroid/content/Context;", "getTitleView", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;", "index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01511 extends CommonNavigatorAdapter {
        C01511() {
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public IPagerTitleView getTitleView(Context context, final int index) {
            Intrinsics.checkNotNullParameter(context, "context");
            SizeFlipPagerTitleView sizeFlipPagerTitleView = new SizeFlipPagerTitleView(context);
            sizeFlipPagerTitleView.setText(SearchActivity.this.getMTitles().get(index));
            sizeFlipPagerTitleView.mNormalTextSize = 16.0f;
            sizeFlipPagerTitleView.mSelectTextSize = 20.0f;
            sizeFlipPagerTitleView.setSelectedColor(ContextCompat.getColor(context, R.color.theme_tab_menu_sellect));
            sizeFlipPagerTitleView.setNormalColor(ContextCompat.getColor(context, R.color.theme_text_disable_tab));
            final SearchActivity searchActivity = SearchActivity.this;
            sizeFlipPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.activity.SearchActivity$initTab$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchActivity.C01511.m224getTitleView$lambda0(searchActivity, index, view);
                }
            });
            return sizeFlipPagerTitleView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: getTitleView$lambda-0, reason: not valid java name */
        public static final void m224getTitleView$lambda0(SearchActivity this$0, int i, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            ViewPager2 viewPager2 = this$0.getBinding().viewPager;
            if (viewPager2 == null) {
                return;
            }
            viewPager2.setCurrentItem(i);
        }

        @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter
        public int getCount() {
            return SearchActivity.this.getMTitles().size();
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
        getMFragments().add(new SearchListVIdeoFrgment());
        getMFragments().add(new SearchUserListFragment());
        getCommonNavigator().notifyDataSetChanged();
        getMFragAdapter().notifyDataSetChanged();
    }

    public final RecommandUserAdapter getUserAdapter() {
        return this.userAdapter;
    }

    public final void setUserAdapter(RecommandUserAdapter recommandUserAdapter) {
        Intrinsics.checkNotNullParameter(recommandUserAdapter, "<set-?>");
        this.userAdapter = recommandUserAdapter;
    }

    private final void getUserList() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("page", Integer.valueOf(new Random().nextInt(25)));
        ApiManager.INSTANCE.getUserList(map, new Function3<Integer, String, UserList, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity.getUserList.1
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
                SearchActivity.this.getUserAdapter().setNewData(CollectionsKt.take(CollectionsKt.shuffled(userList.getList()), 12));
            }
        });
    }

    private final void initUserList() {
        ActSearchBinding binding = getBinding();
        binding.rvUser.setLayoutManager(new GridLayoutManager(getMActivity(), 4));
        binding.rvUser.addItemDecoration(new GridItemDecorationColumns(10, 2));
        binding.rvUser.setAdapter(this.userAdapter);
        this.userAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.ui.activity.SearchActivity$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchActivity.m222initUserList$lambda2$lambda1(this.f$0, baseQuickAdapter, view, i);
            }
        });
        getUserList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initUserList$lambda-2$lambda-1, reason: not valid java name */
    public static final void m222initUserList$lambda2$lambda1(SearchActivity this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArouterUtils.INSTANCE.toUserDetails(String.valueOf(this$0.userAdapter.getData().get(i).getId()));
    }

    private final void initLabels() {
        ActSearchBinding binding = getBinding();
        binding.tvMoreIc.setTypeface(GlobeAppData.INSTANCE.getGlobeIconFont(getMActivity()));
        binding.tvMoreIc.setText(getText(R.string.icon_xiangyou));
        LinearLayout llMore = binding.llMore;
        Intrinsics.checkNotNullExpressionValue(llMore, "llMore");
        AndroidutilsKt.click(llMore, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity$initLabels$1$1
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
                this.this$0.startActivity(new Intent(this.this$0.getMActivity(), (Class<?>) LabelsSelectActivity.class));
            }
        });
        getLables();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.searchResultShow) {
            this.searchResultShow = false;
            switchPage();
        } else {
            super.onBackPressed();
        }
    }

    public final void switchPage() {
        LinearLayout linearLayout = getBinding().llSearchfirst;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llSearchfirst");
        AndroidutilsKt.setVisible(linearLayout, !this.searchResultShow);
        LinearLayout linearLayout2 = getBinding().llSearchresult;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.llSearchresult");
        AndroidutilsKt.setVisible(linearLayout2, this.searchResultShow);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        this.mSearchHistoryBean = new SearchHistoryBean(new ArrayList());
        String string = SpUtil.INSTANCE.getString(CacheKey.INSTANCE.getSEARCH_LIST_KEY(), "");
        String str = string;
        if (!(str == null || str.length() == 0)) {
            this.mSearchHistoryBean = (SearchHistoryBean) new Gson().fromJson(string, SearchHistoryBean.class);
        }
        refreshHistory();
        ArrayList arrayList = new ArrayList();
        Iterator it = StringsKt.split$default((CharSequence) GlobeAppData.INSTANCE.getSearchHot(), new String[]{","}, false, 0, 6, (Object) null).iterator();
        int i = 1;
        while (it.hasNext()) {
            arrayList.add(new SearchHot((String) it.next(), i));
            i++;
        }
        this.mHotAdapter.setNewData(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshHistory() {
        ArrayList<String> result;
        getBinding().flexLayout.removeAllViews();
        SearchHistoryBean searchHistoryBean = this.mSearchHistoryBean;
        if (searchHistoryBean == null || (result = searchHistoryBean.getResult()) == null) {
            return;
        }
        for (final String str : result) {
            View viewInflate$default = AndroidutilsKt.inflate$default((Activity) this, R.layout.item_search_history, (ViewGroup) null, false, 4, (Object) null);
            TextView tv_item_history = (TextView) viewInflate$default.findViewById(R.id.tv_item_history);
            tv_item_history.setText(str);
            getBinding().flexLayout.addView(viewInflate$default);
            Intrinsics.checkNotNullExpressionValue(tv_item_history, "tv_item_history");
            AndroidutilsKt.click(tv_item_history, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity$refreshHistory$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it2) {
                    Intrinsics.checkNotNullParameter(it2, "it2");
                    this.this$0.setSearchResultShow(true);
                    SearchActivity.INSTANCE.setSearchKey(str);
                    this.this$0.switchPage();
                }
            });
        }
    }

    private final void getLables() {
        ApiManager.INSTANCE.getLables(new Function3<Integer, String, LabelsModel, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity.getLables.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, LabelsModel labelsModel) {
                invoke(num.intValue(), str, labelsModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, LabelsModel labelsModel) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || labelsModel == null) {
                    return;
                }
                SearchActivity.this.refreshLables(CollectionsKt.take(CollectionsKt.shuffled(labelsModel.getList()), 12));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshLables(List<LabelsModel.Item> datas) {
        getBinding().flexLables.removeAllViews();
        for (final LabelsModel.Item item : datas) {
            View viewInflate$default = AndroidutilsKt.inflate$default((Activity) this, R.layout.item_labels, (ViewGroup) null, false, 4, (Object) null);
            TextView tv_item_history = (TextView) viewInflate$default.findViewById(R.id.tv_item_history);
            tv_item_history.setText(item.getName());
            getBinding().flexLables.addView(viewInflate$default);
            Intrinsics.checkNotNullExpressionValue(tv_item_history, "tv_item_history");
            AndroidutilsKt.click(tv_item_history, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.SearchActivity$refreshLables$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it2) {
                    Intrinsics.checkNotNullParameter(it2, "it2");
                    ArouterUtils.INSTANCE.toBiaoQianVideoList(String.valueOf(item.getId()), item.getName());
                }
            });
        }
    }
}
