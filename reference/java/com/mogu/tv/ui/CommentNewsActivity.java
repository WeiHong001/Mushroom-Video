package com.mogu.tv.ui;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.DialogCommentBinding;
import com.mogu.tv.model.CommentSuccess;
import com.mogu.tv.model.JustReturnMsg;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CommentNewsActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u0019\u001a\u00020\u0017H\u0014J\u0006\u0010\u001a\u001a\u00020\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Lcom/mogu/tv/ui/CommentNewsActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/DialogCommentBinding;", "()V", "isSend", "", "()Z", "setSend", "(Z)V", "newsId", "", "getNewsId", "()Ljava/lang/String;", "setNewsId", "(Ljava/lang/String;)V", "type", "", "getType", "()Ljava/lang/Integer;", "setType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "initData", "", "initView", "onDestroy", "toComment", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CommentNewsActivity extends CommonBaseActivity<DialogCommentBinding> {
    private boolean isSend;
    private String newsId = "";
    private Integer type = 1;

    public final String getNewsId() {
        return this.newsId;
    }

    public final void setNewsId(String str) {
        this.newsId = str;
    }

    public final Integer getType() {
        return this.type;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    /* JADX INFO: renamed from: isSend, reason: from getter */
    public final boolean getIsSend() {
        return this.isSend;
    }

    public final void setSend(boolean z) {
        this.isSend = z;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        fullScreen();
        setOrientationPro();
        DialogCommentBinding binding = getBinding();
        View vExit = binding.vExit;
        Intrinsics.checkNotNullExpressionValue(vExit, "vExit");
        AndroidutilsKt.click(vExit, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.CommentNewsActivity$initView$1$1
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
                this.this$0.onBackPressed();
            }
        });
        TextView tvSend = binding.tvSend;
        Intrinsics.checkNotNullExpressionValue(tvSend, "tvSend");
        AndroidutilsKt.click(tvSend, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.CommentNewsActivity$initView$1$2
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
                this.this$0.toComment();
            }
        });
        binding.editContent.setText(SpUtil.getString$default(SpUtil.INSTANCE, CacheKey.INSTANCE.getCACHECOMMENTKEY(), null, 2, null));
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (!this.isSend) {
            EditText editText = getBinding().editContent;
            Intrinsics.checkNotNullExpressionValue(editText, "binding.editContent");
            if (StringsKt.trim((CharSequence) AndroidutilsKt.content(editText)).toString().length() == 0) {
                SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getCACHECOMMENTKEY(), "");
            } else {
                SpUtil spUtil = SpUtil.INSTANCE;
                String cachecommentkey = CacheKey.INSTANCE.getCACHECOMMENTKEY();
                EditText editText2 = getBinding().editContent;
                Intrinsics.checkNotNullExpressionValue(editText2, "binding.editContent");
                spUtil.saveValue(cachecommentkey, AndroidutilsKt.content(editText2));
            }
        }
        super.onDestroy();
    }

    public final void toComment() {
        EditText editText = getBinding().editContent;
        Intrinsics.checkNotNullExpressionValue(editText, "binding.editContent");
        if (!(AndroidutilsKt.content(editText).length() == 0)) {
            CommonBaseActivity.showLoadingDialog$default(this, true, null, 2, null);
            ApiManager apiManager = ApiManager.INSTANCE;
            String str = this.newsId;
            if (str == null) {
                str = "";
            }
            EditText editText2 = getBinding().editContent;
            Intrinsics.checkNotNullExpressionValue(editText2, "binding.editContent");
            String strContent = AndroidutilsKt.content(editText2);
            Integer num = this.type;
            apiManager.saveComment(str, strContent, num != null ? num.intValue() : 1, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.CommentNewsActivity.toComment.2
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num2, String str2, JustReturnMsg justReturnMsg) {
                    invoke(num2.intValue(), str2, justReturnMsg);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    CommentNewsActivity.this.dissmissLoading();
                    if (i == 200) {
                        CommentNewsActivity.this.setSend(true);
                        Toast toastMakeText = Toast.makeText(CommentNewsActivity.this, "评论成功", 0);
                        toastMakeText.show();
                        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
                        SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getCACHECOMMENTKEY(), "");
                        EventBusUtil.INSTANCE.post(new CommentSuccess());
                        CommentNewsActivity.this.finish();
                        return;
                    }
                    Toast toastMakeText2 = Toast.makeText(CommentNewsActivity.this, msg, 0);
                    toastMakeText2.show();
                    Intrinsics.checkExpressionValueIsNotNull(toastMakeText2, "Toast\n        .makeText(…         show()\n        }");
                }
            });
            return;
        }
        Toast toastMakeText = Toast.makeText(BaseApplicaitonKt.getApplication(), "内容不能为空", 0);
        toastMakeText.show();
        Intrinsics.checkExpressionValueIsNotNull(toastMakeText, "Toast\n        .makeText(…         show()\n        }");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.newsId = stringExtra;
        this.type = Integer.valueOf(getIntent().getIntExtra("type", 1));
    }
}
