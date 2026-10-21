package com.mogu.tv.ui.activity;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActLabelsBinding;
import com.mogu.tv.model.LabelsModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LabelsSelectActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0016\u0010\b\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¨\u0006\f"}, d2 = {"Lcom/mogu/tv/ui/activity/LabelsSelectActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActLabelsBinding;", "()V", "getLables", "", "initData", "initView", "refreshLables", "datas", "", "Lcom/mogu/tv/model/LabelsModel$Item;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LabelsSelectActivity extends CommonBaseActivity<ActLabelsBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.LabelsSelectActivity.initView.1
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
                LabelsSelectActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("精选");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getLables();
    }

    private final void getLables() {
        ApiManager.INSTANCE.getLables(new Function3<Integer, String, LabelsModel, Unit>() { // from class: com.mogu.tv.ui.activity.LabelsSelectActivity.getLables.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, LabelsModel labelsModel) {
                invoke(num.intValue(), str, labelsModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, LabelsModel labelsModel) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || labelsModel == null) {
                    return;
                }
                LabelsSelectActivity.this.refreshLables(CollectionsKt.shuffled(labelsModel.getList()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshLables(List<LabelsModel.Item> datas) {
        getBinding().flexLables.removeAllViews();
        for (final LabelsModel.Item item : datas) {
            View viewInflate$default = AndroidutilsKt.inflate$default((Activity) this, R.layout.item_labels, (ViewGroup) null, false, 4, (Object) null);
            TextView tv_item_history = (TextView) viewInflate$default.findViewById(R.id.tv_item_history);
            tv_item_history.setText(item.getName());
            getBinding().flexLables.addView(viewInflate$default);
            Intrinsics.checkNotNullExpressionValue(tv_item_history, "tv_item_history");
            AndroidutilsKt.click(tv_item_history, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.LabelsSelectActivity$refreshLables$1$1
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
                    Intrinsics.checkNotNullParameter(it2, "it2");
                    ArouterUtils.INSTANCE.toBiaoQianVideoList(String.valueOf(item.getId()), item.getName());
                }
            });
        }
    }
}
