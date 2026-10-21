package com.mogu.tv.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.kotlin.basiclib.utils.DateUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ItemFriendlistlayoutBinding;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.ShequListLoveModel;
import com.mogu.tv.model.ShequListModel;
import com.mogu.tv.utils.ImageUtil;
import com.mogu.tv.utils.ImageUtilKt;
import com.mogu.tv.view.NineGridLayout;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ShequLoveListAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/ShequLoveListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/ShequListLoveModel$Item;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "holder", "data", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequLoveListAdapter extends BaseQuickAdapter<ShequListLoveModel.Item, BaseViewHolder> {
    public ShequLoveListAdapter() {
        super(R.layout.item_friendlistlayout);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.ShequLoveListAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: ShequLoveListAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemFriendlistlayoutBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemFriendlistlayoutBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemFriendlistlayoutBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemFriendlistlayoutBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [T, com.mogu.tv.model.ShequListModel$Data] */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, ShequListLoveModel.Item data) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = data.getBlog();
        final ItemFriendlistlayoutBinding itemFriendlistlayoutBinding = (ItemFriendlistlayoutBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        RoundedImageView ivPhoto = itemFriendlistlayoutBinding.ivPhoto;
        Intrinsics.checkNotNullExpressionValue(ivPhoto, "ivPhoto");
        RoundedImageView roundedImageView = ivPhoto;
        ShequListModel.Data.User user = ((ShequListModel.Data) objectRef.element).getUser();
        ImageUtilKt.withDefaltUserPhoto(roundedImageView, user != null ? user.getAvatar() : null);
        RoundedImageView ivPhoto2 = itemFriendlistlayoutBinding.ivPhoto;
        Intrinsics.checkNotNullExpressionValue(ivPhoto2, "ivPhoto");
        AndroidutilsKt.click(ivPhoto2, new Function1<View, Unit>() { // from class: com.mogu.tv.adapter.ShequLoveListAdapter$convert$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                ShequListModel.Data.User user2 = objectRef.element.getUser();
                arouterUtils.toUserDetails(String.valueOf(user2 != null ? Integer.valueOf(user2.getId()) : null));
            }
        });
        LinearLayout llContent = itemFriendlistlayoutBinding.llContent;
        Intrinsics.checkNotNullExpressionValue(llContent, "llContent");
        AndroidutilsKt.click(llContent, new Function1<View, Unit>() { // from class: com.mogu.tv.adapter.ShequLoveListAdapter$convert$2$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                ArouterUtils.INSTANCE.toShequ(objectRef.element.getId());
            }
        });
        TextView textView = itemFriendlistlayoutBinding.tvName;
        ShequListModel.Data.User user2 = ((ShequListModel.Data) objectRef.element).getUser();
        textView.setText(user2 != null ? user2.getName() : null);
        String created_at = ((ShequListModel.Data) objectRef.element).getCreated_at();
        if (!(created_at == null || created_at.length() == 0)) {
            itemFriendlistlayoutBinding.tvTime.setText(DateUtil.getCarStrTime(((ShequListModel.Data) objectRef.element).getCreated_at()));
        }
        String detail = ((ShequListModel.Data) objectRef.element).getDetail();
        if (detail == null || detail.length() == 0) {
            TextView tvFriendTitle = itemFriendlistlayoutBinding.tvFriendTitle;
            Intrinsics.checkNotNullExpressionValue(tvFriendTitle, "tvFriendTitle");
            AndroidutilsKt.setVisible(tvFriendTitle, false);
        } else {
            TextView tvFriendTitle2 = itemFriendlistlayoutBinding.tvFriendTitle;
            Intrinsics.checkNotNullExpressionValue(tvFriendTitle2, "tvFriendTitle");
            AndroidutilsKt.setVisible(tvFriendTitle2, true);
            itemFriendlistlayoutBinding.tvFriendTitle.setText(((ShequListModel.Data) objectRef.element).getDetail());
        }
        LinearLayout llPraise = itemFriendlistlayoutBinding.llPraise;
        Intrinsics.checkNotNullExpressionValue(llPraise, "llPraise");
        UserManagerKt.LoginClick(llPraise, new Function0<Unit>() { // from class: com.mogu.tv.adapter.ShequLoveListAdapter$convert$2$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (objectRef.element.getIsZan() == 1) {
                    return;
                }
                ApiManager apiManager = ApiManager.INSTANCE;
                String id = objectRef.element.getId();
                final Ref.ObjectRef<ShequListModel.Data> objectRef2 = objectRef;
                final ItemFriendlistlayoutBinding itemFriendlistlayoutBinding2 = itemFriendlistlayoutBinding;
                apiManager.blogStar(id, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.adapter.ShequLoveListAdapter$convert$2$3.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, JustReturnMsg justReturnMsg) {
                        invoke(num.intValue(), str, justReturnMsg);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                        Intrinsics.checkNotNullParameter(msg, "msg");
                        if (i == 200) {
                            objectRef2.element.setZan(1);
                            itemFriendlistlayoutBinding2.ivPraise.setSelected(objectRef2.element.getIsZan() == 1);
                            itemFriendlistlayoutBinding2.tvPraise.setText(String.valueOf(objectRef2.element.getFavorites() + 1));
                        }
                    }
                });
            }
        });
        holder.addOnClickListener(R.id.ll_share);
        itemFriendlistlayoutBinding.tvPraise.setText(String.valueOf(((ShequListModel.Data) objectRef.element).getFavorites()));
        itemFriendlistlayoutBinding.tvComment.setText(String.valueOf(((ShequListModel.Data) objectRef.element).getComments()));
        String video = ((ShequListModel.Data) objectRef.element).getVideo();
        if (video == null || video.length() == 0) {
            ImageView ivVideoPhoto = itemFriendlistlayoutBinding.ivVideoPhoto;
            Intrinsics.checkNotNullExpressionValue(ivVideoPhoto, "ivVideoPhoto");
            AndroidutilsKt.setVisible(ivVideoPhoto, false);
            ImageView ivPlay = itemFriendlistlayoutBinding.ivPlay;
            Intrinsics.checkNotNullExpressionValue(ivPlay, "ivPlay");
            AndroidutilsKt.setVisible(ivPlay, false);
            ArrayList<ShequListModel.Data.Image> images = ((ShequListModel.Data) objectRef.element).getImages();
            if (images == null || images.isEmpty()) {
                ImageView ivSingle = itemFriendlistlayoutBinding.ivSingle;
                Intrinsics.checkNotNullExpressionValue(ivSingle, "ivSingle");
                AndroidutilsKt.setVisible(ivSingle, false);
                NineGridLayout ngridLayout = itemFriendlistlayoutBinding.ngridLayout;
                Intrinsics.checkNotNullExpressionValue(ngridLayout, "ngridLayout");
                AndroidutilsKt.setVisible(ngridLayout, false);
                return;
            }
            if (((ShequListModel.Data) objectRef.element).getImages().size() == 1) {
                ImageView ivSingle2 = itemFriendlistlayoutBinding.ivSingle;
                Intrinsics.checkNotNullExpressionValue(ivSingle2, "ivSingle");
                AndroidutilsKt.setVisible(ivSingle2, true);
                ImageView ivSingle3 = itemFriendlistlayoutBinding.ivSingle;
                Intrinsics.checkNotNullExpressionValue(ivSingle3, "ivSingle");
                AndroidutilsKt.click(ivSingle3, new Function1<View, Unit>() { // from class: com.mogu.tv.adapter.ShequLoveListAdapter$convert$2$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view) {
                        invoke2(view);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        ArouterUtils.INSTANCE.showPhoto(objectRef.element.getImages().get(0).getPath());
                    }
                });
                NineGridLayout ngridLayout2 = itemFriendlistlayoutBinding.ngridLayout;
                Intrinsics.checkNotNullExpressionValue(ngridLayout2, "ngridLayout");
                AndroidutilsKt.setVisible(ngridLayout2, false);
                if (StringsKt.contains$default((CharSequence) ((ShequListModel.Data) objectRef.element).getImages().get(0).getPath(), (CharSequence) "gif", false, 2, (Object) null)) {
                    ImageView ivSingle4 = itemFriendlistlayoutBinding.ivSingle;
                    Intrinsics.checkNotNullExpressionValue(ivSingle4, "ivSingle");
                    ImageUtilKt.with(ivSingle4, ((ShequListModel.Data) objectRef.element).getImages().get(0).getPath());
                    return;
                } else {
                    ImageUtil imageUtil = ImageUtil.INSTANCE;
                    String path = ((ShequListModel.Data) objectRef.element).getImages().get(0).getPath();
                    Context context = this.mContext;
                    ImageView ivSingle5 = itemFriendlistlayoutBinding.ivSingle;
                    Intrinsics.checkNotNullExpressionValue(ivSingle5, "ivSingle");
                    imageUtil.loadImageSingleList(path, context, ivSingle5);
                    return;
                }
            }
            NineGridLayout ngridLayout3 = itemFriendlistlayoutBinding.ngridLayout;
            Intrinsics.checkNotNullExpressionValue(ngridLayout3, "ngridLayout");
            AndroidutilsKt.setVisible(ngridLayout3, true);
            ImageView ivSingle6 = itemFriendlistlayoutBinding.ivSingle;
            Intrinsics.checkNotNullExpressionValue(ivSingle6, "ivSingle");
            AndroidutilsKt.setVisible(ivSingle6, false);
            itemFriendlistlayoutBinding.ngridLayout.setAdapter(new NineGridLayout.NineGridAdapter(this.mContext, ((ShequListModel.Data) objectRef.element).getImages()));
            itemFriendlistlayoutBinding.ngridLayout.setOnItemClickListerner(new NineGridLayout.OnItemClickListerner() { // from class: com.mogu.tv.adapter.ShequLoveListAdapter$$ExternalSyntheticLambda0
                @Override // com.mogu.tv.view.NineGridLayout.OnItemClickListerner
                public final void onItemClick(View view, int i) {
                    ShequLoveListAdapter.m153convert$lambda2$lambda1(objectRef, view, i);
                }
            });
            return;
        }
        ImageView ivVideoPhoto2 = itemFriendlistlayoutBinding.ivVideoPhoto;
        Intrinsics.checkNotNullExpressionValue(ivVideoPhoto2, "ivVideoPhoto");
        AndroidutilsKt.setVisible(ivVideoPhoto2, true);
        ImageView ivPlay2 = itemFriendlistlayoutBinding.ivPlay;
        Intrinsics.checkNotNullExpressionValue(ivPlay2, "ivPlay");
        AndroidutilsKt.setVisible(ivPlay2, true);
        ImageView ivSingle7 = itemFriendlistlayoutBinding.ivSingle;
        Intrinsics.checkNotNullExpressionValue(ivSingle7, "ivSingle");
        AndroidutilsKt.setVisible(ivSingle7, false);
        NineGridLayout ngridLayout4 = itemFriendlistlayoutBinding.ngridLayout;
        Intrinsics.checkNotNullExpressionValue(ngridLayout4, "ngridLayout");
        AndroidutilsKt.setVisible(ngridLayout4, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: convert$lambda-2$lambda-1, reason: not valid java name */
    public static final void m153convert$lambda2$lambda1(Ref.ObjectRef item, View view, int i) {
        Intrinsics.checkNotNullParameter(item, "$item");
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<T> it = ((ShequListModel.Data) item.element).getImages().iterator();
        while (it.hasNext()) {
            arrayList.add(((ShequListModel.Data.Image) it.next()).getPath());
        }
        ArouterUtils.INSTANCE.showPhoto(i, arrayList);
    }
}
