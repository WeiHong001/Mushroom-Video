package com.kotlin.basiclib.common;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.luck.picture.lib.config.PictureConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewPage2FragmentAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "fm", "Landroidx/fragment/app/FragmentActivity;", "mFragments", "", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V", "createFragment", PictureConfig.EXTRA_POSITION, "", "getItemCount", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ViewPage2FragmentAdapter extends FragmentStateAdapter {
    private List<? extends Fragment> mFragments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPage2FragmentAdapter(FragmentActivity fm, List<? extends Fragment> mFragments) {
        super(fm);
        Intrinsics.checkNotNullParameter(fm, "fm");
        Intrinsics.checkNotNullParameter(mFragments, "mFragments");
        this.mFragments = mFragments;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends Fragment> list = this.mFragments;
        Intrinsics.checkNotNull(list);
        return list.size();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int position) {
        List<? extends Fragment> list = this.mFragments;
        Intrinsics.checkNotNull(list);
        return list.get(position);
    }
}
