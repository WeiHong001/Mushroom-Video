package com.mogu.tv.adapter;

import android.view.View;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.databinding.ItemRecomanduserBinding;
import com.mogu.tv.model.UserList;
import com.mogu.tv.utils.ImageUtilKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecommandUserAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/RecommandUserAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/UserList$User;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RecommandUserAdapter extends BaseQuickAdapter<UserList.User, BaseViewHolder> {
    public RecommandUserAdapter() {
        super(R.layout.item_recomanduser);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.RecommandUserAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: RecommandUserAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemRecomanduserBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemRecomanduserBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemRecomanduserBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemRecomanduserBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemRecomanduserBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, UserList.User item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemRecomanduserBinding itemRecomanduserBinding = (ItemRecomanduserBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        itemRecomanduserBinding.tvName.setText(item.getName());
        RoundedImageView ivDetails = itemRecomanduserBinding.ivDetails;
        Intrinsics.checkNotNullExpressionValue(ivDetails, "ivDetails");
        ImageUtilKt.withDefaltUserPhoto(ivDetails, item.getAvatar());
    }
}
