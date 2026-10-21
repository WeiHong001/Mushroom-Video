package com.mogu.tv.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.mogu.tv.model.NvyouList;
import com.mogu.tv.utils.ImageUtilKt;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import me.yokeyword.indexablerv.IndexableAdapter;

/* JADX INFO: compiled from: NvYouAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u000f\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\u0018"}, d2 = {"Lcom/mogu/tv/adapter/NvYouAdapter;", "Lme/yokeyword/indexablerv/IndexableAdapter;", "Lcom/mogu/tv/model/NvyouList$Item;", d.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "mContext", "getMContext", "()Landroid/content/Context;", "setMContext", "onBindContentViewHolder", "", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "item", "onBindTitleViewHolder", "indexTitle", "", "onCreateContentViewHolder", "parent", "Landroid/view/ViewGroup;", "onCreateTitleViewHolder", "ContentVH", "IndexVH", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NvYouAdapter extends IndexableAdapter<NvyouList.Item> {
    private Context mContext;

    public NvYouAdapter(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.mContext = context;
    }

    public final Context getMContext() {
        return this.mContext;
    }

    public final void setMContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.mContext = context;
    }

    @Override // me.yokeyword.indexablerv.IndexableAdapter
    public RecyclerView.ViewHolder onCreateTitleViewHolder(ViewGroup parent) {
        View view = LayoutInflater.from(this.mContext).inflate(R.layout.item_nvyoutilte, parent, false);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        return new IndexVH(view);
    }

    @Override // me.yokeyword.indexablerv.IndexableAdapter
    public RecyclerView.ViewHolder onCreateContentViewHolder(ViewGroup parent) {
        View view = LayoutInflater.from(this.mContext).inflate(R.layout.item_nvyouuser, parent, false);
        Intrinsics.checkNotNullExpressionValue(view, "view");
        return new ContentVH(view);
    }

    @Override // me.yokeyword.indexablerv.IndexableAdapter
    public void onBindTitleViewHolder(RecyclerView.ViewHolder holder, String indexTitle) {
        Intrinsics.checkNotNull(holder, "null cannot be cast to non-null type com.mogu.tv.adapter.NvYouAdapter.IndexVH");
        ((IndexVH) holder).getTv().setText(indexTitle);
    }

    @Override // me.yokeyword.indexablerv.IndexableAdapter
    public void onBindContentViewHolder(RecyclerView.ViewHolder holder, NvyouList.Item item) {
        NvyouList.User user;
        NvyouList.User user2;
        Intrinsics.checkNotNull(holder, "null cannot be cast to non-null type com.mogu.tv.adapter.NvYouAdapter.ContentVH");
        ContentVH contentVH = (ContentVH) holder;
        String avatar = null;
        contentVH.getTv().setText((item == null || (user2 = item.getUser()) == null) ? null : user2.getName());
        ImageView iv = contentVH.getIv();
        if (item != null && (user = item.getUser()) != null) {
            avatar = user.getAvatar();
        }
        ImageUtilKt.withDefaltUserPhoto(iv, avatar);
    }

    /* JADX INFO: compiled from: NvYouAdapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/adapter/NvYouAdapter$IndexVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "tv", "Landroid/widget/TextView;", "getTv", "()Landroid/widget/TextView;", "setTv", "(Landroid/widget/TextView;)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class IndexVH extends RecyclerView.ViewHolder {
        private TextView tv;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IndexVH(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R.id.tv_index);
            Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
            this.tv = (TextView) viewFindViewById;
        }

        public final TextView getTv() {
            return this.tv;
        }

        public final void setTv(TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.tv = textView;
        }
    }

    /* JADX INFO: compiled from: NvYouAdapter.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "iv", "Landroid/widget/ImageView;", "getIv", "()Landroid/widget/ImageView;", "setIv", "(Landroid/widget/ImageView;)V", "tv", "Landroid/widget/TextView;", "getTv", "()Landroid/widget/TextView;", "setTv", "(Landroid/widget/TextView;)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class ContentVH extends RecyclerView.ViewHolder {
        private ImageView iv;
        private TextView tv;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContentVH(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R.id.tv_name);
            Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
            this.tv = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.iv_details);
            Intrinsics.checkNotNull(viewFindViewById2, "null cannot be cast to non-null type android.widget.ImageView");
            this.iv = (ImageView) viewFindViewById2;
        }

        public final TextView getTv() {
            return this.tv;
        }

        public final void setTv(TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.tv = textView;
        }

        public final ImageView getIv() {
            return this.iv;
        }

        public final void setIv(ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.iv = imageView;
        }
    }
}
