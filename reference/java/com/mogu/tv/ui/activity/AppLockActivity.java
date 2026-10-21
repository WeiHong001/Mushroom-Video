package com.mogu.tv.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.github.ihsg.patternlocker.OnPatternChangeListener;
import com.github.ihsg.patternlocker.PatternLockerView;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.SpUtil;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.ActApplockBinding;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLockActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\b\u0010\u0015\u001a\u00020\u0011H\u0002J\b\u0010\u0016\u001a\u00020\u0011H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0017"}, d2 = {"Lcom/mogu/tv/ui/activity/AppLockActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActApplockBinding;", "()V", "lastPassword", "", "getLastPassword", "()Ljava/lang/String;", "setLastPassword", "(Ljava/lang/String;)V", "submitTime", "", "getSubmitTime", "()I", "setSubmitTime", "(I)V", "hideAppLock", "", "initData", "initLock", "initView", "refreshPassWord", "showAppLock", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AppLockActivity extends CommonBaseActivity<ActApplockBinding> {
    private String lastPassword = "";
    private int submitTime;

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        LinearLayout linearLayout = getBinding().llHead;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llHead");
        fitStatubar(linearLayout);
        ImageView imageView = getBinding().headLayout.ivBack;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.headLayout.ivBack");
        AndroidutilsKt.click(imageView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AppLockActivity.initView.1
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
                AppLockActivity.this.onBackPressed();
            }
        });
        getBinding().headLayout.tvHeaderTitle.setText("应用锁设置");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        refreshPassWord();
        initLock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshPassWord() {
        if (TextUtils.isEmpty(SpUtil.getString$default(SpUtil.INSTANCE, CacheKey.INSTANCE.getLOCK(), null, 2, null))) {
            getBinding().tvLockTitle.setText("点击设置应用解锁密码");
            TextView textView = getBinding().tvLockTitle;
            Intrinsics.checkNotNullExpressionValue(textView, "binding.tvLockTitle");
            AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AppLockActivity.refreshPassWord.1
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
                    AndroidutilsKt.toast("请开始设置");
                    AppLockActivity.this.setLastPassword("");
                    AppLockActivity.this.setSubmitTime(0);
                    AppLockActivity.this.showAppLock();
                }
            });
            getBinding().tvClear.setVisibility(8);
            return;
        }
        TextView textView2 = getBinding().tvLockTitle;
        Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvLockTitle");
        AndroidutilsKt.click(textView2, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AppLockActivity.refreshPassWord.2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }
        });
        getBinding().tvLockTitle.setText("已设置应用锁");
        getBinding().patternLockerView.setVisibility(8);
        getBinding().tvClear.setVisibility(0);
        TextView textView3 = getBinding().tvClear;
        Intrinsics.checkNotNullExpressionValue(textView3, "binding.tvClear");
        AndroidutilsKt.click(textView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.activity.AppLockActivity.refreshPassWord.3
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
                ToastUtil.INSTANCE.toast("清除成功");
                SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getLOCK(), "");
                AppLockActivity.this.refreshPassWord();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showAppLock() {
        PatternLockerView patternLockerView = getBinding().patternLockerView;
        Intrinsics.checkNotNullExpressionValue(patternLockerView, "binding.patternLockerView");
        AndroidutilsKt.setVisible(patternLockerView, true);
    }

    private final void hideAppLock() {
        PatternLockerView patternLockerView = getBinding().patternLockerView;
        Intrinsics.checkNotNullExpressionValue(patternLockerView, "binding.patternLockerView");
        AndroidutilsKt.setVisible(patternLockerView, true);
    }

    public final int getSubmitTime() {
        return this.submitTime;
    }

    public final void setSubmitTime(int i) {
        this.submitTime = i;
    }

    public final String getLastPassword() {
        return this.lastPassword;
    }

    public final void setLastPassword(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lastPassword = str;
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.activity.AppLockActivity$initLock$1, reason: invalid class name */
    /* JADX INFO: compiled from: AppLockActivity.kt */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\f"}, d2 = {"com/mogu/tv/ui/activity/AppLockActivity$initLock$1", "Lcom/github/ihsg/patternlocker/OnPatternChangeListener;", "onChange", "", "view", "Lcom/github/ihsg/patternlocker/PatternLockerView;", "hitIndexList", "", "", "onClear", "onComplete", "onStart", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class AnonymousClass1 implements OnPatternChangeListener {
        @Override // com.github.ihsg.patternlocker.OnPatternChangeListener
        public void onChange(PatternLockerView view, List<Integer> hitIndexList) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(hitIndexList, "hitIndexList");
        }

        @Override // com.github.ihsg.patternlocker.OnPatternChangeListener
        public void onClear(PatternLockerView view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }

        @Override // com.github.ihsg.patternlocker.OnPatternChangeListener
        public void onStart(PatternLockerView view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }

        AnonymousClass1() {
        }

        @Override // com.github.ihsg.patternlocker.OnPatternChangeListener
        public void onComplete(PatternLockerView view, List<Integer> hitIndexList) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(hitIndexList, "hitIndexList");
            Iterator<T> it = hitIndexList.iterator();
            String str = "";
            while (it.hasNext()) {
                str = str + ((Number) it.next()).intValue();
            }
            if (AppLockActivity.this.getSubmitTime() == 0) {
                AppLockActivity.this.setLastPassword(str);
                ToastUtil.INSTANCE.toast("再次确认");
                AppLockActivity appLockActivity = AppLockActivity.this;
                appLockActivity.setSubmitTime(appLockActivity.getSubmitTime() + 1);
                AppLockActivity.this.getBinding().patternLockerView.clearHitState();
                return;
            }
            if (Intrinsics.areEqual(AppLockActivity.this.getLastPassword(), str)) {
                ToastUtil.INSTANCE.toast("设置成功");
                SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getLOCK(), str);
                AppLockActivity.this.refreshPassWord();
                return;
            }
            AppLockActivity.this.getBinding().patternLockerView.updateStatus(true);
            ToastUtil.INSTANCE.toast("两次密码不一致,请从新设置");
            PatternLockerView patternLockerView = AppLockActivity.this.getBinding().patternLockerView;
            final AppLockActivity appLockActivity2 = AppLockActivity.this;
            patternLockerView.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.activity.AppLockActivity$initLock$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppLockActivity.AnonymousClass1.m183onComplete$lambda1(appLockActivity2);
                }
            }, 1000L);
            AppLockActivity.this.setSubmitTime(0);
            AppLockActivity.this.setLastPassword("");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onComplete$lambda-1, reason: not valid java name */
        public static final void m183onComplete$lambda1(AppLockActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getBinding().patternLockerView.clearHitState();
        }
    }

    private final void initLock() {
        getBinding().patternLockerView.setOnPatternChangedListener(new AnonymousClass1());
    }
}
