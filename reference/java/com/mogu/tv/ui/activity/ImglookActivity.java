package com.mogu.tv.ui.activity;

import android.os.Bundle;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.luck.picture.lib.config.PictureConfig;
import com.mogu.tv.databinding.ActImglookBinding;
import com.mogu.tv.ui.frag.ImageDetailFragment;
import com.mogu.tv.view.PhotoViewPager;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.UIUtil;
import net.lucode.hackware.magicindicator.buildins.circlenavigator.CircleNavigator;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ImglookActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0018\u001a\u00020\u0016H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001bH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/mogu/tv/ui/activity/ImglookActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActImglookBinding;", "()V", "circleNavigator", "Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;", "getCircleNavigator", "()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;", "circleNavigator$delegate", "Lkotlin/Lazy;", "mPager", "Lcom/mogu/tv/view/PhotoViewPager;", "pagerPosition", "", "getPagerPosition$app_mogushareRelease", "()I", "setPagerPosition$app_mogushareRelease", "(I)V", "urls", "Ljava/util/ArrayList;", "", "initData", "", "initTab", "initView", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onSaveInstanceState", "outState", "ImagePagerAdapter", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImglookActivity extends CommonBaseActivity<ActImglookBinding> {

    /* JADX INFO: renamed from: circleNavigator$delegate, reason: from kotlin metadata */
    private final Lazy circleNavigator = LazyKt.lazy(new Function0<CircleNavigator>() { // from class: com.mogu.tv.ui.activity.ImglookActivity$circleNavigator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CircleNavigator invoke() {
            return new CircleNavigator(this.this$0);
        }
    });
    private PhotoViewPager mPager;
    private int pagerPosition;
    private ArrayList<String> urls;

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
    }

    /* JADX INFO: renamed from: getPagerPosition$app_mogushareRelease, reason: from getter */
    public final int getPagerPosition() {
        return this.pagerPosition;
    }

    public final void setPagerPosition$app_mogushareRelease(int i) {
        this.pagerPosition = i;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        PhotoViewPager photoViewPager = this.mPager;
        Intrinsics.checkNotNull(photoViewPager);
        outState.putInt("STATE_POSITION", photoViewPager.getCurrentItem());
    }

    private final CircleNavigator getCircleNavigator() {
        return (CircleNavigator) this.circleNavigator.getValue();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        super.onCreate(savedInstanceState);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL);
        if (stringArrayListExtra == null) {
            stringArrayListExtra = new ArrayList<>();
        }
        this.urls = stringArrayListExtra;
        this.pagerPosition = getIntent().getIntExtra(PictureConfig.EXTRA_POSITION, 0);
        this.mPager = (PhotoViewPager) findViewById(R.id.photoviewpager_imglook);
        ArrayList<String> arrayList = this.urls;
        ArrayList<String> arrayList2 = null;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("urls");
            arrayList = null;
        }
        if (!arrayList.isEmpty()) {
            ArrayList<String> arrayList3 = this.urls;
            if (arrayList3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("urls");
                arrayList3 = null;
            }
            if (arrayList3.size() > 1) {
                initTab();
            }
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        ArrayList<String> arrayList4 = this.urls;
        if (arrayList4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("urls");
        } else {
            arrayList2 = arrayList4;
        }
        ImagePagerAdapter imagePagerAdapter = new ImagePagerAdapter(this, supportFragmentManager, arrayList2);
        PhotoViewPager photoViewPager = this.mPager;
        Intrinsics.checkNotNull(photoViewPager);
        photoViewPager.setAdapter(imagePagerAdapter);
        PhotoViewPager photoViewPager2 = this.mPager;
        Intrinsics.checkNotNull(photoViewPager2);
        photoViewPager2.setCurrentItem(this.pagerPosition);
        PhotoViewPager photoViewPager3 = this.mPager;
        Intrinsics.checkNotNull(photoViewPager3);
        photoViewPager3.invalidate();
    }

    private final void initTab() {
        MagicIndicator magicIndicator = getBinding().magicIndicator;
        Intrinsics.checkNotNullExpressionValue(magicIndicator, "binding.magicIndicator");
        AndroidutilsKt.setVisible(magicIndicator, true);
        CircleNavigator circleNavigator = getCircleNavigator();
        ArrayList<String> arrayList = this.urls;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("urls");
            arrayList = null;
        }
        circleNavigator.setCircleCount(arrayList.size());
        ImglookActivity imglookActivity = this;
        getCircleNavigator().setCircleColor(ContextCompat.getColor(imglookActivity, R.color.theme_tab_menu_sellect));
        getCircleNavigator().setRadius(UIUtil.dip2px(imglookActivity, 5.0d));
        getBinding().magicIndicator.setNavigator(getCircleNavigator());
        PhotoViewPager photoViewPager = this.mPager;
        Intrinsics.checkNotNull(photoViewPager);
        photoViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.mogu.tv.ui.activity.ImglookActivity.initTab.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                ImglookActivity.this.getBinding().magicIndicator.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                ImglookActivity.this.getBinding().magicIndicator.onPageSelected(position);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
                ImglookActivity.this.getBinding().magicIndicator.onPageScrollStateChanged(state);
            }
        });
        getCircleNavigator().notifyDataSetChanged();
    }

    /* JADX INFO: compiled from: ImglookActivity.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;", "Landroidx/fragment/app/FragmentStatePagerAdapter;", "fm", "Landroidx/fragment/app/FragmentManager;", "fileList", "Ljava/util/ArrayList;", "", "(Lcom/mogu/tv/ui/activity/ImglookActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V", "getFileList", "()Ljava/util/ArrayList;", "setFileList", "(Ljava/util/ArrayList;)V", "getCount", "", "getItem", "Landroidx/fragment/app/Fragment;", PictureConfig.EXTRA_POSITION, "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private final class ImagePagerAdapter extends FragmentStatePagerAdapter {
        private ArrayList<String> fileList;
        final /* synthetic */ ImglookActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ImagePagerAdapter(ImglookActivity imglookActivity, FragmentManager fm, ArrayList<String> arrayList) {
            super(fm);
            Intrinsics.checkNotNullParameter(fm, "fm");
            this.this$0 = imglookActivity;
            this.fileList = arrayList;
        }

        public final ArrayList<String> getFileList() {
            return this.fileList;
        }

        public final void setFileList(ArrayList<String> arrayList) {
            this.fileList = arrayList;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            ArrayList<String> arrayList = this.fileList;
            if (arrayList == null) {
                return 0;
            }
            Intrinsics.checkNotNull(arrayList);
            return arrayList.size();
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int position) {
            ArrayList<String> arrayList = this.fileList;
            Intrinsics.checkNotNull(arrayList);
            String str = arrayList.get(position);
            Intrinsics.checkNotNullExpressionValue(str, "fileList!![position]");
            return ImageDetailFragment.INSTANCE.newInstance(str);
        }
    }
}
