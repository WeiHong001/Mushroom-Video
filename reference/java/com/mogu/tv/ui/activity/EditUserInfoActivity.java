package com.mogu.tv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.ToastUtil;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.databinding.ActNewUserinfoBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.UserModel;
import com.mogu.tv.utils.CommentFilter;
import com.mogu.tv.utils.DialogUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EditUserInfoActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"Lcom/mogu/tv/ui/activity/EditUserInfoActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActNewUserinfoBinding;", "()V", "initData", "", "initView", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class EditUserInfoActivity extends CommonBaseActivity<ActNewUserinfoBinding> {
    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.EditUserInfoActivity.initView.1
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
                EditUserInfoActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("设置");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        RoundedImageView roundedImageView = getBinding().ivUserIcon;
        Intrinsics.checkNotNullExpressionValue(roundedImageView, "binding.ivUserIcon");
        AndroidutilsKt.click(roundedImageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.EditUserInfoActivity.initData.1
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
                DialogUtils.INSTANCE.showSureDialog(EditUserInfoActivity.this.getMActivity(), "马上开放", new Function0<Unit>() { // from class: com.mogu.tv.ui.activity.EditUserInfoActivity.initData.1.1
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }
                });
            }
        });
        getBinding().tvName.setText(UserManager.INSTANCE.getName());
        RelativeLayout relativeLayout = getBinding().rlName;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.rlName");
        AndroidutilsKt.click(relativeLayout, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.EditUserInfoActivity.initData.3
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
                DialogUtils dialogUtils = DialogUtils.INSTANCE;
                EditUserInfoActivity editUserInfoActivity = EditUserInfoActivity.this;
                final EditUserInfoActivity editUserInfoActivity2 = EditUserInfoActivity.this;
                DialogUtils.EditContentGetListner editContentGetListner = new DialogUtils.EditContentGetListner() { // from class: com.mogu.tv.ui.activity.EditUserInfoActivity.initData.3.1
                    @Override // com.mogu.tv.utils.DialogUtils.EditContentGetListner
                    public void getContent(final String str) {
                        Intrinsics.checkNotNullParameter(str, "str");
                        if (Intrinsics.areEqual(str, UserManager.INSTANCE.getName())) {
                            return;
                        }
                        if (!CommentFilter.INSTANCE.isRegularText(str)) {
                            ToastUtil.INSTANCE.toast("姓名修改失败");
                            return;
                        }
                        CommonBaseActivity.showLoadingDialog$default(editUserInfoActivity2, false, null, 2, null);
                        ApiManager apiManager = ApiManager.INSTANCE;
                        final EditUserInfoActivity editUserInfoActivity3 = editUserInfoActivity2;
                        apiManager.updateUserName(str, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.activity.EditUserInfoActivity$initData$3$1$getContent$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str2, JustReturnMsg justReturnMsg) {
                                invoke(num.intValue(), str2, justReturnMsg);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(int i, String msg, JustReturnMsg justReturnMsg) {
                                Intrinsics.checkNotNullParameter(msg, "msg");
                                editUserInfoActivity3.dissmissLoading();
                                if (i == 200) {
                                    ToastUtil.INSTANCE.toast("修改成功!");
                                    UserModel globalUser = UserManager.INSTANCE.getGlobalUser();
                                    if (globalUser != null) {
                                        globalUser.setName(str);
                                    }
                                    UserManager.saveUserInfo$default(UserManager.INSTANCE, null, 1, null);
                                    editUserInfoActivity3.getBinding().tvName.setText(UserManager.INSTANCE.getName());
                                    return;
                                }
                                ToastUtil.INSTANCE.toast(msg);
                            }
                        });
                    }
                };
                String name = UserManager.INSTANCE.getName();
                if (name == null) {
                    name = "";
                }
                dialogUtils.showEditDialog(editUserInfoActivity, "请输入您的昵称", 10, editContentGetListner, name);
            }
        });
    }
}
