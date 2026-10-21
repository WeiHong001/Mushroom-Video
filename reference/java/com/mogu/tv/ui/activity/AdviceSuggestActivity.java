package com.mogu.tv.ui.activity;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.FragAdviceReportBinding;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.QuestionResultItem;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdviceSuggestActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u0018\u001a\u00020\u0016H\u0014J\b\u0010\u0019\u001a\u00020\u0016H\u0002J\b\u0010\u001a\u001a\u00020\u0016H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Lcom/mogu/tv/ui/activity/AdviceSuggestActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/FragAdviceReportBinding;", "()V", "mId", "", "getMId", "()Ljava/lang/String;", "setMId", "(Ljava/lang/String;)V", "mSuggestText", "getMSuggestText", "setMSuggestText", "questions", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/QuestionResultItem;", "Lkotlin/collections/ArrayList;", "getQuestions", "()Ljava/util/ArrayList;", "setQuestions", "(Ljava/util/ArrayList;)V", "initData", "", "initView", "onDestroy", "refreshTag", "submit", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AdviceSuggestActivity extends CommonBaseActivity<FragAdviceReportBinding> {
    private String mSuggestText = "";
    private String mId = "";
    private ArrayList<QuestionResultItem> questions = new ArrayList<>();

    public final String getMSuggestText() {
        return this.mSuggestText;
    }

    public final void setMSuggestText(String str) {
        this.mSuggestText = str;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AdviceSuggestActivity.initView.1
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
                AdviceSuggestActivity.this.onBackPressed();
            }
        });
        TextView textView = getBinding().tvSubmit;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvSubmit");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AdviceSuggestActivity.initView.2
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
                AdviceSuggestActivity.this.submit();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("意見反饋");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    public final String getMId() {
        return this.mId;
    }

    public final void setMId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mId = str;
    }

    public final ArrayList<QuestionResultItem> getQuestions() {
        return this.questions;
    }

    public final void setQuestions(ArrayList<QuestionResultItem> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.questions = arrayList;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.mId = stringExtra;
        this.questions.add(new QuestionResultItem("播放卡頓", false, 2, null));
        this.questions.add(new QuestionResultItem("影片錯誤", false, 2, null));
        this.questions.add(new QuestionResultItem("頁面異常", false, 2, null));
        this.questions.add(new QuestionResultItem("標簽錯誤", false, 2, null));
        this.questions.add(new QuestionResultItem("搜索不準", false, 2, null));
        this.questions.add(new QuestionResultItem("推薦不準", false, 2, null));
        this.questions.add(new QuestionResultItem("應用錯誤", false, 2, null));
        this.questions.add(new QuestionResultItem("其他建議", false, 2, null));
        refreshTag();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshTag() {
        getBinding().flexLayout.removeAllViews();
        for (final QuestionResultItem questionResultItem : this.questions) {
            View viewInflate$default = AndroidutilsKt.inflate$default((Activity) this, R.layout.item_sugguest_tag, (ViewGroup) null, false, 4, (Object) null);
            TextView tv_item = (TextView) viewInflate$default.findViewById(R.id.tv_item);
            tv_item.setText(questionResultItem.getTitle());
            tv_item.setSelected(questionResultItem.getIsselect());
            getBinding().flexLayout.addView(viewInflate$default);
            Intrinsics.checkNotNullExpressionValue(tv_item, "tv_item");
            AndroidutilsKt.click(tv_item, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AdviceSuggestActivity$refreshTag$1$1
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
                    ArrayList<QuestionResultItem> questions = this.this$0.getQuestions();
                    QuestionResultItem questionResultItem2 = questionResultItem;
                    for (QuestionResultItem questionResultItem3 : questions) {
                        if (!Intrinsics.areEqual(questionResultItem3, questionResultItem2)) {
                            questionResultItem3.setIsselect(false);
                        }
                    }
                    QuestionResultItem questionResultItem4 = questionResultItem;
                    questionResultItem4.setIsselect(!questionResultItem4.getIsselect());
                    if (questionResultItem.getIsselect()) {
                        this.this$0.setMSuggestText(questionResultItem.getTitle());
                    } else {
                        this.this$0.setMSuggestText("");
                    }
                    this.this$0.refreshTag();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void submit() {
        String content = getBinding().putEdit.getContent();
        boolean z = true;
        if (content == null || content.length() == 0) {
            ToastUtil.INSTANCE.toast("請輸入內容");
            return;
        }
        String str = this.mSuggestText;
        if (str != null && str.length() != 0) {
            z = false;
        }
        if (z) {
            ToastUtil.INSTANCE.toast("請選擇意見問題分類,以便工作人員快速找到問題");
            return;
        }
        String str2 = "";
        if (!TextUtils.isEmpty(this.mId)) {
            str2 = "影片id" + this.mId + '|';
        }
        String str3 = (str2 + this.mSuggestText) + '|' + getBinding().putEdit.getContent();
        CommonBaseActivity.showLoadingDialog$default(this, false, null, 3, null);
        ApiManager.INSTANCE.postSuggest(str3, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.AdviceSuggestActivity.submit.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str4, JustReturnMsg justReturnMsg) {
                invoke(num.intValue(), str4, justReturnMsg);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                AdviceSuggestActivity.this.dissmissLoading();
                if (i == 200) {
                    ToastUtil.INSTANCE.toast("感謝您的建議，我們會盡快處理");
                    AdviceSuggestActivity.this.finish();
                } else {
                    ToastUtil.INSTANCE.toast(msg);
                }
            }
        });
    }
}
