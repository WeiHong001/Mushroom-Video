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
import com.mogu.tv.databinding.ItemNewcommentLayoutBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.CommentLists;
import com.mogu.tv.utils.CommentFilter;
import com.mogu.tv.utils.ImageUtilKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NewCommentAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/mogu/tv/adapter/NewCommentAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/CommentLists$CommentItem;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "mDownCall", "Ljava/lang/Runnable;", "mZanCall", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NewCommentAdapter extends BaseQuickAdapter<CommentLists.CommentItem, BaseViewHolder> {
    private Runnable mDownCall;
    private Runnable mZanCall;

    public NewCommentAdapter() {
        super(R.layout.item_newcomment_layout);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.NewCommentAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: NewCommentAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemNewcommentLayoutBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemNewcommentLayoutBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemNewcommentLayoutBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemNewcommentLayoutBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, CommentLists.CommentItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemNewcommentLayoutBinding itemNewcommentLayoutBinding = (ItemNewcommentLayoutBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        if (item.getUser() != null) {
            TextView tvAuther = itemNewcommentLayoutBinding.tvAuther;
            Intrinsics.checkNotNullExpressionValue(tvAuther, "tvAuther");
            AndroidutilsKt.setVisible(tvAuther, true);
            itemNewcommentLayoutBinding.tvAuther.setText(item.getUser().getName());
        } else {
            itemNewcommentLayoutBinding.tvAuther.setText("蘑菇用户");
        }
        TextView tvReply = itemNewcommentLayoutBinding.tvReply;
        Intrinsics.checkNotNullExpressionValue(tvReply, "tvReply");
        AndroidutilsKt.setVisible(tvReply, false);
        RoundedImageView ivUserphoto = itemNewcommentLayoutBinding.ivUserphoto;
        Intrinsics.checkNotNullExpressionValue(ivUserphoto, "ivUserphoto");
        RoundedImageView roundedImageView = ivUserphoto;
        CommentLists.User user = item.getUser();
        ImageUtilKt.withDefaltUserPhoto(roundedImageView, user != null ? user.getAvatar() : null);
        if (item.getCreated_at().length() > 0) {
            TextView tvTime = itemNewcommentLayoutBinding.tvTime;
            Intrinsics.checkNotNullExpressionValue(tvTime, "tvTime");
            AndroidutilsKt.setVisible(tvTime, true);
            itemNewcommentLayoutBinding.tvTime.setText(DateUtil.getCarStrTime(item.getCreated_at()));
        } else {
            TextView tvTime2 = itemNewcommentLayoutBinding.tvTime;
            Intrinsics.checkNotNullExpressionValue(tvTime2, "tvTime");
            AndroidutilsKt.setVisible(tvTime2, false);
        }
        if (item.getComment().length() > 0) {
            TextView tvCommentContent = itemNewcommentLayoutBinding.tvCommentContent;
            Intrinsics.checkNotNullExpressionValue(tvCommentContent, "tvCommentContent");
            AndroidutilsKt.setVisible(tvCommentContent, true);
            CommentLists.User user2 = item.getUser();
            if (Intrinsics.areEqual(String.valueOf(user2 != null ? Integer.valueOf(user2.getId()) : null), UserManager.INSTANCE.getUserId())) {
                itemNewcommentLayoutBinding.tvCommentContent.setText(item.getComment());
                return;
            } else {
                itemNewcommentLayoutBinding.tvCommentContent.setText(CommentFilter.INSTANCE.getegularTxt(item.getComment()));
                return;
            }
        }
        TextView tvCommentContent2 = itemNewcommentLayoutBinding.tvCommentContent;
        Intrinsics.checkNotNullExpressionValue(tvCommentContent2, "tvCommentContent");
        AndroidutilsKt.setVisible(tvCommentContent2, false);
    }
}
