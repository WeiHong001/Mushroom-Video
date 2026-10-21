package com.mogu.tv.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.kotlin.basiclib.utils.ScreenUtils;
import com.mogu.tv.databinding.ItemVideolistBinding;
import com.mogu.tv.model.SearchResult;
import com.mogu.tv.utils.ImageUtilKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchResultAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/SearchResultAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/SearchResult$Item;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchResultAdapter extends BaseQuickAdapter<SearchResult.Item, BaseViewHolder> {
    public SearchResultAdapter() {
        super(R.layout.item_videolist);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.SearchResultAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: SearchResultAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemVideolistBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemVideolistBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemVideolistBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemVideolistBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemVideolistBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, SearchResult.Item item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemVideolistBinding itemVideolistBinding = (ItemVideolistBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        ViewGroup.LayoutParams layoutParams = itemVideolistBinding.ivVideolist.getLayoutParams();
        layoutParams.width = (ScreenUtils.INSTANCE.getScreenWidth() - ScreenUtils.INSTANCE.dip2px(20)) / 3;
        double d = layoutParams.width;
        Double.isNaN(d);
        layoutParams.height = (int) (d * 1.45d);
        itemVideolistBinding.ivVideolist.setLayoutParams(layoutParams);
        itemVideolistBinding.tvName.setText(item.getName());
        ImageView ivVideolist = itemVideolistBinding.ivVideolist;
        Intrinsics.checkNotNullExpressionValue(ivVideolist, "ivVideolist");
        ImageUtilKt.withDefaultPhoto(ivVideolist, item.getPic(), R.mipmap.icon_default_photo);
    }
}
