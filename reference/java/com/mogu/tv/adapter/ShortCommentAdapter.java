package com.mogu.tv.adapter;

import android.view.View;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.kotlin.basiclib.utils.DateUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.databinding.ItemShortcommentLayoutBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.CommentLists;
import com.mogu.tv.utils.CommentFilter;
import com.mogu.tv.utils.ImageUtilKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShortCommentAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/ShortCommentAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/CommentLists$CommentItem;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortCommentAdapter extends BaseQuickAdapter<CommentLists.CommentItem, BaseViewHolder> {
    public ShortCommentAdapter() {
        super(R.layout.item_shortcomment_layout);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.ShortCommentAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: ShortCommentAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemShortcommentLayoutBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemShortcommentLayoutBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemShortcommentLayoutBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemShortcommentLayoutBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemShortcommentLayoutBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, CommentLists.CommentItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemShortcommentLayoutBinding itemShortcommentLayoutBinding = (ItemShortcommentLayoutBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        if (item.getUser() != null) {
            TextView tvAuther = itemShortcommentLayoutBinding.tvAuther;
            Intrinsics.checkNotNullExpressionValue(tvAuther, "tvAuther");
            AndroidutilsKt.setVisible(tvAuther, true);
            itemShortcommentLayoutBinding.tvAuther.setText(item.getUser().getName());
        } else {
            itemShortcommentLayoutBinding.tvAuther.setText("蘑菇用户");
        }
        TextView tvReply = itemShortcommentLayoutBinding.tvReply;
        Intrinsics.checkNotNullExpressionValue(tvReply, "tvReply");
        AndroidutilsKt.setVisible(tvReply, false);
        RoundedImageView ivUserphoto = itemShortcommentLayoutBinding.ivUserphoto;
        Intrinsics.checkNotNullExpressionValue(ivUserphoto, "ivUserphoto");
        RoundedImageView roundedImageView = ivUserphoto;
        CommentLists.User user = item.getUser();
        ImageUtilKt.withDefaltUserPhoto(roundedImageView, user != null ? user.getAvatar() : null);
        if (item.getCreated_at().length() > 0) {
            TextView tvTime = itemShortcommentLayoutBinding.tvTime;
            Intrinsics.checkNotNullExpressionValue(tvTime, "tvTime");
            AndroidutilsKt.setVisible(tvTime, true);
            itemShortcommentLayoutBinding.tvTime.setText(DateUtil.getCarStrTime(item.getCreated_at()));
        } else {
            TextView tvTime2 = itemShortcommentLayoutBinding.tvTime;
            Intrinsics.checkNotNullExpressionValue(tvTime2, "tvTime");
            AndroidutilsKt.setVisible(tvTime2, false);
        }
        if (item.getComment().length() > 0) {
            TextView tvCommentContent = itemShortcommentLayoutBinding.tvCommentContent;
            Intrinsics.checkNotNullExpressionValue(tvCommentContent, "tvCommentContent");
            AndroidutilsKt.setVisible(tvCommentContent, true);
            CommentLists.User user2 = item.getUser();
            if (Intrinsics.areEqual(String.valueOf(user2 != null ? Integer.valueOf(user2.getId()) : null), UserManager.INSTANCE.getUserId())) {
                itemShortcommentLayoutBinding.tvCommentContent.setText(item.getComment());
                return;
            } else {
                itemShortcommentLayoutBinding.tvCommentContent.setText(CommentFilter.INSTANCE.getegularTxt(item.getComment()));
                return;
            }
        }
        TextView tvCommentContent2 = itemShortcommentLayoutBinding.tvCommentContent;
        Intrinsics.checkNotNullExpressionValue(tvCommentContent2, "tvCommentContent");
        AndroidutilsKt.setVisible(tvCommentContent2, false);
    }
}
