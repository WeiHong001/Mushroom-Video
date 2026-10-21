package com.mogu.tv.adapter;

import android.view.View;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.mogu.tv.databinding.ItemSearchHotBinding;
import com.mogu.tv.model.SearchHot;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchHotAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/SearchHotAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/SearchHot;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "helper", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchHotAdapter extends BaseQuickAdapter<SearchHot, BaseViewHolder> {
    public SearchHotAdapter() {
        super(R.layout.item_search_hot);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.SearchHotAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: SearchHotAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemSearchHotBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemSearchHotBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemSearchHotBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemSearchHotBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemSearchHotBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder helper, SearchHot item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemSearchHotBinding itemSearchHotBinding = (ItemSearchHotBinding) ViewBindingHelperKt.getBinding(helper, AnonymousClass1.INSTANCE);
        itemSearchHotBinding.tvItemHistory.setText(item.getItem());
        itemSearchHotBinding.tvRank.setText(String.valueOf(item.getRank()));
        int rank = item.getRank();
        if (rank == 1) {
            itemSearchHotBinding.tvRank.setBackgroundResource(R.drawable.background_solid_red);
            return;
        }
        if (rank == 2) {
            itemSearchHotBinding.tvRank.setBackgroundResource(R.drawable.background_solid_fc881d);
        } else if (rank == 3) {
            itemSearchHotBinding.tvRank.setBackgroundResource(R.drawable.background_solid_yellow);
        } else {
            itemSearchHotBinding.tvRank.setBackgroundResource(R.drawable.background_solid_c1c6d0);
        }
    }
}
