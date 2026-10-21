package com.mogu.tv.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.luck.picture.lib.config.PictureConfig;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.utils.ImageUtilKt;
import com.youth.banner.adapter.BannerAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ImageBannerAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\b\u0018\u00010\u0003R\u00020\u00000\u0001:\u0001\u0012B\u0017\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J0\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0018\u00010\u0003R\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\u001c\u0010\u000e\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0016¨\u0006\u0013"}, d2 = {"Lcom/mogu/tv/adapter/ImageBannerAdapter;", "Lcom/youth/banner/adapter/BannerAdapter;", "Lcom/mogu/tv/model/AllAdsModel$Item;", "Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;", "mDatas", "", "(Ljava/util/List;)V", "onBindView", "", "holder", "data", PictureConfig.EXTRA_POSITION, "", "size", "onCreateHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "BannerViewHolder", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ImageBannerAdapter extends BannerAdapter<AllAdsModel.Item, BannerViewHolder> {
    public ImageBannerAdapter(List<AllAdsModel.Item> list) {
        super(list);
    }

    @Override // com.youth.banner.holder.IViewHolder
    public BannerViewHolder onCreateHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_banneritem, (ViewGroup) null);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        Intrinsics.checkNotNullExpressionValue(view, "view");
        return new BannerViewHolder(this, view);
    }

    /* JADX INFO: compiled from: ImageBannerAdapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "view", "Landroid/view/View;", "(Lcom/mogu/tv/adapter/ImageBannerAdapter;Landroid/view/View;)V", "iv", "Landroid/widget/ImageView;", "getIv", "()Landroid/widget/ImageView;", "setIv", "(Landroid/widget/ImageView;)V", "getView", "()Landroid/view/View;", "setView", "(Landroid/view/View;)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class BannerViewHolder extends RecyclerView.ViewHolder {
        private ImageView iv;
        final /* synthetic */ ImageBannerAdapter this$0;
        private View view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BannerViewHolder(ImageBannerAdapter imageBannerAdapter, View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            this.this$0 = imageBannerAdapter;
            this.view = view;
            View viewFindViewById = view.findViewById(R.id.iv_photo);
            Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.ImageView");
            this.iv = (ImageView) viewFindViewById;
        }

        public final View getView() {
            return this.view;
        }

        public final void setView(View view) {
            Intrinsics.checkNotNullParameter(view, "<set-?>");
            this.view = view;
        }

        public final ImageView getIv() {
            return this.iv;
        }

        public final void setIv(ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.iv = imageView;
        }
    }

    @Override // com.youth.banner.holder.IViewHolder
    public void onBindView(BannerViewHolder holder, AllAdsModel.Item data, int position, int size) {
        ImageView iv;
        if (holder == null || (iv = holder.getIv()) == null) {
            return;
        }
        ImageUtilKt.withDefaultPhoto(iv, data != null ? data.getFile() : null, R.mipmap.load);
    }
}
