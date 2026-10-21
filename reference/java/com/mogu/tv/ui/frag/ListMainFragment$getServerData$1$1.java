package com.mogu.tv.ui.frag;

import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.databinding.FragmentListmainBinding;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.model.VideoUiLists;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ListMainFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "code", "", NotificationCompat.CATEGORY_MESSAGE, "", "response", "Lcom/mogu/tv/model/VideoListModel;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
final class ListMainFragment$getServerData$1$1 extends Lambda implements Function3<Integer, String, VideoListModel, Unit> {
    final /* synthetic */ VideoUiLists $it;
    final /* synthetic */ ListMainFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListMainFragment$getServerData$1$1(ListMainFragment listMainFragment, VideoUiLists videoUiLists) {
        super(3);
        this.this$0 = listMainFragment;
        this.$it = videoUiLists;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, VideoListModel videoListModel) {
        invoke(num.intValue(), str, videoListModel);
        return Unit.INSTANCE;
    }

    public final void invoke(int i, String msg, VideoListModel videoListModel) {
        FrameLayout frameLayout;
        RefreshLayout refreshLayout;
        ArrayList<VideoListModel.Video> arrayList;
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (this.this$0.isDetached() || this.this$0.getBinding() == null) {
            return;
        }
        ListMainFragment listMainFragment = this.this$0;
        listMainFragment.setMServerCount(listMainFragment.getMServerCount() - 1);
        if (i == 200) {
            this.$it.getList().clear();
            ArrayList<VideoListModel.Video> list = this.$it.getList();
            if (videoListModel == null || (arrayList = videoListModel.getList()) == null) {
                arrayList = new ArrayList<>();
            }
            list.addAll(arrayList);
            int iRandom = RangesKt.random(new IntRange(0, 7), Random.INSTANCE);
            if (iRandom <= 3 && this.$it.getList().size() >= 3) {
                this.$it.getList().get(iRandom).setShowAd(true);
            }
        }
        if (this.this$0.getMServerCount() != 0 || this.this$0.getBinding() == null) {
            return;
        }
        FragmentListmainBinding binding = this.this$0.getBinding();
        if (binding != null && (refreshLayout = binding.refreshLayout) != null) {
            refreshLayout.finishRefresh();
        }
        FragmentListmainBinding binding2 = this.this$0.getBinding();
        if (binding2 != null && (frameLayout = binding2.flProgressView) != null) {
            final ListMainFragment listMainFragment2 = this.this$0;
            frameLayout.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.frag.ListMainFragment$getServerData$1$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ListMainFragment$getServerData$1$1.m268invoke$lambda0(listMainFragment2);
                }
            }, 400L);
        }
        this.this$0.getMAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final void m268invoke$lambda0(ListMainFragment this$0) {
        CircularProgressIndicator circularProgressIndicator;
        FrameLayout frameLayout;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentListmainBinding binding = this$0.getBinding();
        if (binding != null && (frameLayout = binding.flProgressView) != null) {
            AndroidutilsKt.setVisible(frameLayout, false);
        }
        FragmentListmainBinding binding2 = this$0.getBinding();
        if (binding2 == null || (circularProgressIndicator = binding2.ivLloading) == null) {
            return;
        }
        AndroidutilsKt.setVisible(circularProgressIndicator, false);
    }
}
