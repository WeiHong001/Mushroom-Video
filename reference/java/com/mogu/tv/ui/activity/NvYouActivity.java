package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.mogu.tv.adapter.NvYouAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.ActNvyouBinding;
import com.mogu.tv.model.NvyouList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import me.yokeyword.indexablerv.IndexableAdapter;

/* JADX INFO: compiled from: NvYouActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/ui/activity/NvYouActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActNvyouBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/NvYouAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/NvYouAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/NvYouAdapter;)V", "getServerData", "", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NvYouActivity extends CommonBaseActivity<ActNvyouBinding> {
    private NvYouAdapter mAdapter = new NvYouAdapter(this);

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.NvYouActivity.initView.1
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
                NvYouActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("海选女优");
    }

    public final NvYouAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(NvYouAdapter nvYouAdapter) {
        Intrinsics.checkNotNullParameter(nvYouAdapter, "<set-?>");
        this.mAdapter = nvYouAdapter;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getBinding().indexbar.setLayoutManager(new GridLayoutManager(this, 4));
        getBinding().indexbar.setAdapter(this.mAdapter);
        getServerData();
        this.mAdapter.setOnItemContentClickListener(new IndexableAdapter.OnItemContentClickListener() { // from class: com.mogu.tv.ui.activity.NvYouActivity$$ExternalSyntheticLambda0
            @Override // me.yokeyword.indexablerv.IndexableAdapter.OnItemContentClickListener
            public final void onItemClick(View view, int i, int i2, Object obj) {
                NvYouActivity.m207initData$lambda0(view, i, i2, (NvyouList.Item) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-0, reason: not valid java name */
    public static final void m207initData$lambda0(View view, int i, int i2, NvyouList.Item item) {
        NvyouList.User user;
        ArouterUtils.INSTANCE.toUserDetails(String.valueOf((item == null || (user = item.getUser()) == null) ? null : Integer.valueOf(user.getId())));
    }

    private final void getServerData() {
        CommonBaseActivity.showLoadingDialog$default(this, false, null, 3, null);
        ApiManager.INSTANCE.getNvyou(new Function3<Integer, String, NvyouList, Unit>() { // from class: com.mogu.tv.ui.activity.NvYouActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, NvyouList nvyouList) {
                invoke(num.intValue(), str, nvyouList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, NvyouList nvyouList) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                NvYouActivity.this.dissmissLoading();
                if (i != 200 || nvyouList == null) {
                    return;
                }
                NvYouActivity.this.getMAdapter().setDatas(nvyouList.getList());
            }
        });
    }
}
