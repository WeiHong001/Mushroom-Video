package com.mogu.tv.adapter;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.ViewBindingHelperKt;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.utils.DateUtil;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ItemVideolistBinding;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.utils.ImageUtilKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: VideoListsAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/mogu/tv/adapter/VideoListsAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/mogu/tv/model/VideoListModel$Video;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "()V", "convert", "", "holder", "item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoListsAdapter extends BaseQuickAdapter<VideoListModel.Video, BaseViewHolder> {
    public VideoListsAdapter() {
        super(R.layout.item_videolist);
    }

    /* JADX INFO: renamed from: com.mogu.tv.adapter.VideoListsAdapter$convert$1, reason: invalid class name */
    /* JADX INFO: compiled from: VideoListsAdapter.kt */
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
    public void convert(BaseViewHolder holder, VideoListModel.Video item) {
        List<AllAdsModel.Item> listcover;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        ItemVideolistBinding itemVideolistBinding = (ItemVideolistBinding) ViewBindingHelperKt.getBinding(holder, AnonymousClass1.INSTANCE);
        if (!item.getShowAd()) {
            LinearLayout llBottom = itemVideolistBinding.llBottom;
            Intrinsics.checkNotNullExpressionValue(llBottom, "llBottom");
            AndroidutilsKt.setVisible(llBottom, true);
            RelativeLayout rlBottom = itemVideolistBinding.rlBottom;
            Intrinsics.checkNotNullExpressionValue(rlBottom, "rlBottom");
            AndroidutilsKt.setVisible(rlBottom, true);
            itemVideolistBinding.tvName.setText(item.getTitle());
            if (!(!item.getUsers().isEmpty())) {
                itemVideolistBinding.tvActor.setText("素人");
            } else {
                Iterator<T> it = item.getUsers().iterator();
                String strSubstring = "";
                while (it.hasNext()) {
                    strSubstring = strSubstring + ((VideoListModel.User) it.next()).getName() + ',';
                }
                if (strSubstring.length() > 0) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                itemVideolistBinding.tvActor.setText(strSubstring);
            }
            itemVideolistBinding.tvCreateTime.setText(DateUtil.formatTime(Long.valueOf(item.getDuration() * ((long) 1000))));
            itemVideolistBinding.tvViews.setText(AndroidutilsKt.toChineseNumber(String.valueOf(item.getViews())));
            ImageView ivVideolist = itemVideolistBinding.ivVideolist;
            Intrinsics.checkNotNullExpressionValue(ivVideolist, "ivVideolist");
            ImageUtilKt.withDefaultPhoto(ivVideolist, item.getCover(), R.mipmap.load);
            if (StringsKt.startsWith$default(item.getId(), "http", false, 2, (Object) null)) {
                itemVideolistBinding.tvActor.setText("点击查看");
                return;
            }
            return;
        }
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        final AllAdsModel.Item randomAd = (adData == null || (listcover = adData.getListcover()) == null) ? null : AllAdsModelKt.getRandomAd(listcover);
        itemVideolistBinding.tvName.setText(randomAd != null ? randomAd.getComment() : null);
        ImageView ivVideolist2 = itemVideolistBinding.ivVideolist;
        Intrinsics.checkNotNullExpressionValue(ivVideolist2, "ivVideolist");
        ImageUtilKt.withDefaultPhoto(ivVideolist2, randomAd != null ? randomAd.getFile() : null, R.mipmap.load);
        ImageView ivVideolist3 = itemVideolistBinding.ivVideolist;
        Intrinsics.checkNotNullExpressionValue(ivVideolist3, "ivVideolist");
        AndroidutilsKt.click(ivVideolist3, new Function1<View, Unit>() { // from class: com.mogu.tv.adapter.VideoListsAdapter$convert$2$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it2) {
                String action;
                Intrinsics.checkNotNullParameter(it2, "it");
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
        LinearLayout llBottom2 = itemVideolistBinding.llBottom;
        Intrinsics.checkNotNullExpressionValue(llBottom2, "llBottom");
        AndroidutilsKt.setVisible(llBottom2, false);
        RelativeLayout rlBottom2 = itemVideolistBinding.rlBottom;
        Intrinsics.checkNotNullExpressionValue(rlBottom2, "rlBottom");
        AndroidutilsKt.setVisible(rlBottom2, false);
    }
}
