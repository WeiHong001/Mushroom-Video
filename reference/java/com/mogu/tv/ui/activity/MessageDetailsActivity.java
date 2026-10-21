package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.gson.Gson;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.DateUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.ActivityMsgDetailsBinding;
import com.mogu.tv.model.MessageModel;
import com.mogu.tv.model.MoguConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessageDetailsActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016¨\u0006\b"}, d2 = {"Lcom/mogu/tv/ui/activity/MessageDetailsActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;", "()V", "getServerData", "", "initData", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MessageDetailsActivity extends CommonBaseActivity<ActivityMsgDetailsBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.MessageDetailsActivity.initView.1
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
                MessageDetailsActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("消息详情");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        getServerData();
    }

    private final void getServerData() {
        ApiManager.INSTANCE.getMoguConfig("messagecenter", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.ui.activity.MessageDetailsActivity.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, MoguConfig moguConfig) {
                invoke(num.intValue(), str, moguConfig);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, MoguConfig moguConfig) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (MessageDetailsActivity.this.isDestroyed() || MessageDetailsActivity.this.getBinding() == null || i != 200 || moguConfig == null) {
                    return;
                }
                MessageModel messageModel = (MessageModel) new Gson().fromJson(moguConfig.getValue(), MessageModel.class);
                MessageDetailsActivity.this.getBinding().tvContent.setText("\u3000\u3000" + messageModel.getContent());
                MessageDetailsActivity.this.getBinding().tvTitle.setText("\u3000\u3000" + messageModel.getTitle());
                MessageDetailsActivity.this.getBinding().tvTime.setText(DateUtil.getCarStrTime(messageModel.getCreate_at()));
            }
        });
    }
}
