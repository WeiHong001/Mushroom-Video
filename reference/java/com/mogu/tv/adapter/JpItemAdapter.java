package com.mogu.tv.adapter;

import android.view.View;
import android.widget.ImageView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.mogu.tv.databinding.ItemViplistBinding;
import com.mogu.tv.model.VipVideoList;
import com.mogu.tv.utils.ImageUtilKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JpItemAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/JpItemAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/VipVideoList$Data;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class JpItemAdapter extends BaseQuickAdapter<VipVideoList.Data, BaseViewHolder> {
    public JpItemAdapter() {
        super(R.layout.item_viplist);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.JpItemAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: JpItemAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemViplistBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemViplistBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemViplistBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemViplistBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemViplistBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, VipVideoList.Data item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemViplistBinding itemViplistBinding = (ItemViplistBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        holder.addOnClickListener(R.id.ivUnlock);
        holder.addOnClickListener(R.id.ivShare);
        holder.addOnClickListener(R.id.ivLock);
        holder.addOnClickListener(R.id.tvTitle);
        holder.addOnClickListener(R.id.ivItem);
        ImageView ivLock = itemViplistBinding.ivLock;
        Intrinsics.checkNotNullExpressionValue(ivLock, "ivLock");
        AndroidutilsKt.setVisible(ivLock, !item.getUnlock());
        ImageView ivUnlock = itemViplistBinding.ivUnlock;
        Intrinsics.checkNotNullExpressionValue(ivUnlock, "ivUnlock");
        AndroidutilsKt.setVisible(ivUnlock, item.getUnlock());
        ImageView ivItem = itemViplistBinding.ivItem;
        Intrinsics.checkNotNullExpressionValue(ivItem, "ivItem");
        ImageUtilKt.with(ivItem, item.getCover());
        itemViplistBinding.tvTitle.setText(item.getTitle());
        if (item.getTj_index() <= 5) {
            int childCount = itemViplistBinding.llRecommend.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = itemViplistBinding.llRecommend.getChildAt(i);
                Intrinsics.checkNotNullExpressionValue(childAt, "llRecommend.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt, false);
            }
            int tj_index = item.getTj_index();
            for (int i2 = 0; i2 < tj_index; i2++) {
                View childAt2 = itemViplistBinding.llRecommend.getChildAt(i2);
                Intrinsics.checkNotNullExpressionValue(childAt2, "llRecommend.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt2, true);
            }
        }
        if (item.getDz_index() <= 5) {
            int childCount2 = itemViplistBinding.llDzlayout.getChildCount();
            for (int i3 = 0; i3 < childCount2; i3++) {
                View childAt3 = itemViplistBinding.llDzlayout.getChildAt(i3);
                Intrinsics.checkNotNullExpressionValue(childAt3, "llDzlayout.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt3, false);
            }
            int dz_index = item.getDz_index();
            for (int i4 = 0; i4 < dz_index; i4++) {
                View childAt4 = itemViplistBinding.llDzlayout.getChildAt(i4);
                Intrinsics.checkNotNullExpressionValue(childAt4, "llDzlayout.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt4, true);
            }
        }
        if (item.getYz_index() <= 5) {
            int childCount3 = itemViplistBinding.llYzLayout.getChildCount();
            for (int i5 = 0; i5 < childCount3; i5++) {
                View childAt5 = itemViplistBinding.llYzLayout.getChildAt(i5);
                Intrinsics.checkNotNullExpressionValue(childAt5, "llYzLayout.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt5, false);
            }
            int yz_index = item.getYz_index();
            for (int i6 = 0; i6 < yz_index; i6++) {
                View childAt6 = itemViplistBinding.llYzLayout.getChildAt(i6);
                Intrinsics.checkNotNullExpressionValue(childAt6, "llYzLayout.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt6, true);
            }
        }
        if (item.getJq_index() <= 5) {
            int childCount4 = itemViplistBinding.llJuqing.getChildCount();
            for (int i7 = 0; i7 < childCount4; i7++) {
                View childAt7 = itemViplistBinding.llJuqing.getChildAt(i7);
                Intrinsics.checkNotNullExpressionValue(childAt7, "llJuqing.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt7, false);
            }
            int jq_index = item.getJq_index();
            for (int i8 = 0; i8 < jq_index; i8++) {
                View childAt8 = itemViplistBinding.llJuqing.getChildAt(i8);
                Intrinsics.checkNotNullExpressionValue(childAt8, "llJuqing.getChildAt(i)");
                AndroidutilsKt.setVisible(childAt8, true);
            }
        }
        if (holder.getLayoutPosition() <= 3) {
            itemViplistBinding.tvIndex.setText("最新推荐");
        } else {
            itemViplistBinding.tvIndex.setText("小编推荐");
        }
    }
}
