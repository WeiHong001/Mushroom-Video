package com.kotlin.basiclib.common;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.luck.picture.lib.config.PictureConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentPageAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\u0018\u00002\u00020\u0001B\u001d\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007B+\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000f\u001a\u00020\rH\u0016R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/kotlin/basiclib/common/FragmentPageAdapter;", "Landroidx/fragment/app/FragmentPagerAdapter;", "fm", "Landroidx/fragment/app/FragmentManager;", "fragments", "", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V", "mFragments", "mTitles", "", "(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V", "getCount", "", "getItem", PictureConfig.EXTRA_POSITION, "getPageTitle", "", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FragmentPageAdapter extends FragmentPagerAdapter {
    private List<? extends Fragment> mFragments;
    private List<String> mTitles;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPageAdapter(FragmentManager fm, List<? extends Fragment> fragments) {
        super(fm, 1);
        Intrinsics.checkNotNullParameter(fm, "fm");
        Intrinsics.checkNotNullParameter(fragments, "fragments");
        this.mTitles = CollectionsKt.emptyList();
        this.mFragments = fragments;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPageAdapter(FragmentManager fm, List<? extends Fragment> mFragments, List<String> mTitles) {
        super(fm, 1);
        Intrinsics.checkNotNullParameter(fm, "fm");
        Intrinsics.checkNotNullParameter(mFragments, "mFragments");
        Intrinsics.checkNotNullParameter(mTitles, "mTitles");
        CollectionsKt.emptyList();
        this.mFragments = mFragments;
        this.mTitles = mTitles;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int position) {
        List<String> list = this.mTitles;
        if (list != null && list.size() > 0) {
            return this.mTitles.get(position);
        }
        return super.getPageTitle(position);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int position) {
        List<? extends Fragment> list = this.mFragments;
        Intrinsics.checkNotNull(list);
        return list.get(position);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<? extends Fragment> list = this.mFragments;
        Intrinsics.checkNotNull(list);
        return list.size();
    }
}
