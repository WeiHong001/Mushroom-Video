package com.mogu.tv.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.widget.GridItemDecorationColumns;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ItemTypevideoBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.VideoUiLists;
import com.mogu.tv.utils.ImageUtilKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoTypesListAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/adapter/VideoTypesListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/VideoUiLists;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "isTag", "", "()Z", "setTag", "(Z)V", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoTypesListAdapter extends BaseQuickAdapter<VideoUiLists, BaseViewHolder> {
    private boolean isTag;

    public VideoTypesListAdapter() {
        super(R.layout.item_typevideo);
    }

    /* JADX INFO: renamed from: isTag, reason: from getter */
    public final boolean getIsTag() {
        return this.isTag;
    }

    public final void setTag(boolean z) {
        this.isTag = z;
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.VideoTypesListAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: VideoTypesListAdapter.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<View, ItemTypevideoBinding> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, ItemTypevideoBinding.class, "bind", "bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemTypevideoBinding;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ItemTypevideoBinding invoke(View p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return ItemTypevideoBinding.bind(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, final VideoUiLists item) {
        List<AllAdsModel.Item> listchatu;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemTypevideoBinding itemTypevideoBinding = (ItemTypevideoBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        itemTypevideoBinding.tvTypename.setText(item.getTypeName());
        TextView textView = itemTypevideoBinding.tvMoreIc;
        GlobeAppData globeAppData = GlobeAppData.INSTANCE;
        Context mContext = this.mContext;
        Intrinsics.checkNotNullExpressionValue(mContext, "mContext");
        textView.setTypeface(globeAppData.getGlobeIconFont(mContext));
        itemTypevideoBinding.tvMoreIc.setText(this.mContext.getText(R.string.icon_xiangyou));
        TextView textView2 = itemTypevideoBinding.ivLiveChange;
        GlobeAppData globeAppData2 = GlobeAppData.INSTANCE;
        Context mContext2 = this.mContext;
        Intrinsics.checkNotNullExpressionValue(mContext2, "mContext");
        textView2.setTypeface(globeAppData2.getGlobeIconFont(mContext2));
        itemTypevideoBinding.ivLiveChange.setText(this.mContext.getText(R.string.icon_qiehuan));
        itemTypevideoBinding.rvList.setLayoutManager(new GridLayoutManager(this.mContext, 2));
        if (itemTypevideoBinding.rvList.getItemDecorationCount() > 0) {
            itemTypevideoBinding.rvList.removeItemDecorationAt(0);
        }
        itemTypevideoBinding.rvList.addItemDecoration(new GridItemDecorationColumns(14, 2));
        VideoListsAdapter videoListsAdapter = new VideoListsAdapter();
        itemTypevideoBinding.rvList.setAdapter(videoListsAdapter);
        videoListsAdapter.setNewData(item.getList());
        videoListsAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.mogu.tv.adapter.VideoTypesListAdapter$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                VideoTypesListAdapter.m155convert$lambda2$lambda0(item, baseQuickAdapter, view, i);
            }
        });
        itemTypevideoBinding.llMore.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.adapter.VideoTypesListAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoTypesListAdapter.m156convert$lambda2$lambda1(this.f$0, item, view);
            }
        });
        if (holder.getLayoutPosition() % 2 == 0 && holder.getLayoutPosition() != getData().size() - 1) {
            ImageView ivAd = itemTypevideoBinding.ivAd;
            Intrinsics.checkNotNullExpressionValue(ivAd, "ivAd");
            AndroidutilsKt.setVisible(ivAd, true);
            holder.addOnClickListener(R.id.ll_live_change);
            AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
            final AllAdsModel.Item randomAd = (adData == null || (listchatu = adData.getListchatu()) == null) ? null : AllAdsModelKt.getRandomAd(listchatu);
            ImageView ivAd2 = itemTypevideoBinding.ivAd;
            Intrinsics.checkNotNullExpressionValue(ivAd2, "ivAd");
            ImageUtilKt.with(ivAd2, randomAd != null ? randomAd.getFile() : null);
            ImageView ivAd3 = itemTypevideoBinding.ivAd;
            Intrinsics.checkNotNullExpressionValue(ivAd3, "ivAd");
            AndroidutilsKt.click(ivAd3, new Function1<View, Unit>() { // from class: com.mogu.tv.adapter.VideoTypesListAdapter$convert$2$3
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
                    String action;
                    Intrinsics.checkNotNullParameter(it, "it");
                    ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                    Activity activityCurrentActivity = AcManage.getAppManager().currentActivity();
                    Intrinsics.checkNotNullExpressionValue(activityCurrentActivity, "getAppManager().currentActivity()");
                    AllAdsModel.Item item2 = randomAd;
                    if (item2 == null || (action = item2.getAction()) == null) {
                        action = "";
                    }
                    arouterUtils.toUrlPraseJump(activityCurrentActivity, action);
                    ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                    AllAdsModel.Item item3 = randomAd;
                    arouterUtils2.clickAd(String.valueOf(item3 != null ? Integer.valueOf(item3.getId()) : null));
                }
            });
            return;
        }
        ImageView ivAd4 = itemTypevideoBinding.ivAd;
        Intrinsics.checkNotNullExpressionValue(ivAd4, "ivAd");
        AndroidutilsKt.setVisible(ivAd4, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: convert$lambda-2$lambda-0, reason: not valid java name */
    public static final void m155convert$lambda2$lambda0(VideoUiLists item, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(item, "$item");
        List data = baseQuickAdapter.getData();
        Intrinsics.checkNotNullExpressionValue(data, "adapter.data");
        if (!(!data.isEmpty()) || item.getList().size() < i + 1) {
            return;
        }
        ArouterUtils.INSTANCE.toVideoDetails(item.getList().get(i).getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: convert$lambda-2$lambda-1, reason: not valid java name */
    public static final void m156convert$lambda2$lambda1(VideoTypesListAdapter this$0, VideoUiLists item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (this$0.isTag) {
            ArouterUtils.INSTANCE.toBiaoQianVideoList(item.getLabelsId(), item.getLabelsName());
        } else {
            ArouterUtils.INSTANCE.toPianku(item.getTypeId());
        }
    }
}
