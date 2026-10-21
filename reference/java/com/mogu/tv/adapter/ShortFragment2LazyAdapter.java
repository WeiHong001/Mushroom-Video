package com.mogu.tv.adapter;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.luck.picture.lib.config.PictureConfig;
import com.mogu.tv.model.ShortVideoList;
import com.mogu.tv.ui.frag.ShortVideoItemFragment;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShortFragment2LazyAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH\u0016J\b\u0010\u0012\u001a\u00020\nH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00030\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0003`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/mogu/tv/adapter/ShortFragment2LazyAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "fragment", "Landroidx/fragment/app/Fragment;", "list", "", "Lcom/mogu/tv/model/ShortVideoList$Data;", "(Landroidx/fragment/app/Fragment;Ljava/util/List;)V", "mFragmentList", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getMFragmentList", "()Ljava/util/HashMap;", "setMFragmentList", "(Ljava/util/HashMap;)V", "createFragment", PictureConfig.EXTRA_POSITION, "getItemCount", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortFragment2LazyAdapter extends FragmentStateAdapter {
    private final List<ShortVideoList.Data> list;
    private HashMap<Integer, Fragment> mFragmentList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortFragment2LazyAdapter(Fragment fragment, List<ShortVideoList.Data> list) {
        super(fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.mFragmentList = new HashMap<>();
    }

    public final HashMap<Integer, Fragment> getMFragmentList() {
        return this.mFragmentList;
    }

    public final void setMFragmentList(HashMap<Integer, Fragment> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.mFragmentList = map;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public Fragment createFragment(int position) {
        if (this.mFragmentList.get(Integer.valueOf(position)) == null) {
            this.mFragmentList.put(Integer.valueOf(position), ShortVideoItemFragment.INSTANCE.getNewInstance(position, this.list.get(position)));
        }
        Fragment fragment = this.mFragmentList.get(Integer.valueOf(position));
        Intrinsics.checkNotNull(fragment);
        return fragment;
    }
}
