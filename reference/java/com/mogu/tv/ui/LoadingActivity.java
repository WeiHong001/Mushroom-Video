package com.mogu.tv.ui;

import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.amogu6.tv.R;
import com.github.ihsg.patternlocker.OnPatternChangeListener;
import com.github.ihsg.patternlocker.PatternLockerView;
import com.kotlin.basiclib.AndroidutilsKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.SpUtil;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.MainActivity;
import com.mogu.tv.api.ApiClient;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.ActLoadpageBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.AllAdsModelKt;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.utils.DialogUtils;
import com.mogu.tv.utils.ImageUtilKt;
import com.qiniu.android.dns.DnsManager;
import com.qiniu.android.dns.IResolver;
import com.qiniu.android.dns.NetworkInfo;
import com.qiniu.android.dns.dns.DnsUdpResolver;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.jetbrains.anko.internals.AnkoInternals;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.SimpleResolver;
import pub.devrel.easypermissions.EasyPermissions;
import site.gemus.openingstartanimation.OpeningStartAnimation;

/* JADX INFO: compiled from: LoadingActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J?\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u00162!\u0010\u0017\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00130\u0018J\b\u0010\u001c\u001a\u00020\u0013H\u0002J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0002J\b\u0010\u001f\u001a\u00020\u0013H\u0002J\b\u0010 \u001a\u00020\u0013H\u0016J\b\u0010!\u001a\u00020\u0013H\u0016J\u0012\u0010\"\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010$H\u0014J\u001e\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00052\f\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(H\u0016J\b\u0010*\u001a\u00020\u0013H\u0014J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020\u0005H\u0002J\b\u0010-\u001a\u00020\u0013H\u0002J\b\u0010.\u001a\u00020\u0013H\u0002J\b\u0010/\u001a\u00020\u0013H\u0002J\b\u00100\u001a\u00020\u0013H\u0002J\b\u00101\u001a\u00020\u0013H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u00062"}, d2 = {"Lcom/mogu/tv/ui/LoadingActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActLoadpageBinding;", "()V", "errorTime", "", "getErrorTime", "()I", "setErrorTime", "(I)V", "isJump", "", "()Z", "setJump", "(Z)V", "toJump", "getToJump", "setToJump", "coundDown", "", "count", "block", "Lkotlin/Function0;", "returntime", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "time", "getShareLink", "initData", "initLock", "initServerData", "initView", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPermissionsGranted", "requestCode", "perms", "", "", "onResume", "showMain", "int", "skipMainActivityImp", "startGetData", "startGetDns", "startGetDns26", "toMain", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LoadingActivity extends CommonBaseActivity<ActLoadpageBinding> {
    private int errorTime;
    private boolean isJump;
    private boolean toJump;

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!isTaskRoot()) {
            Intent intent = getIntent();
            String action = intent.getAction();
            if (intent.hasCategory("android.intent.category.LAUNCHER") && Intrinsics.areEqual(action, "android.intent.action.MAIN")) {
                finish();
                return;
            }
        }
        fullScreen();
        new OpeningStartAnimation.Builder(this).setAppIcon(getResources().getDrawable(R.mipmap.icon_loading)).setAppStatement("").setAnimationInterval(2600L).setAnimationFinishTime(100L).setColorOfAppStatement(Color.parseColor("#FF9E39")).setAppName("").create().show(this);
        ApiManager.INSTANCE.getHostTxt(new Function3<Integer, String, String, Unit>() { // from class: com.mogu.tv.ui.LoadingActivity.onCreate.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, String str2) {
                invoke(num.intValue(), str, str2);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, String str) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                String str2 = str;
                if (!(str2 == null || str2.length() == 0) && str.length() > 10 && StringsKt.contains$default((CharSequence) str2, (CharSequence) "api", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) str2, (CharSequence) "http", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) str2, (CharSequence) "com", false, 2, (Object) null)) {
                    String strSubstring = str.substring(StringsKt.indexOf$default((CharSequence) str2, "http", 0, false, 6, (Object) null), str.length());
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    String strSubstring2 = strSubstring.substring(0, StringsKt.indexOf$default((CharSequence) strSubstring, "com", 0, false, 6, (Object) null) + 3);
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    ApiClient.INSTANCE.setRetrofit(strSubstring2);
                    LoadingActivity.this.startGetData();
                    return;
                }
                if (Build.VERSION.SDK_INT > 26) {
                    LoadingActivity.this.startGetDns();
                } else {
                    LoadingActivity.this.startGetDns26();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startGetDns26() {
        new Thread(new Runnable() { // from class: com.mogu.tv.ui.LoadingActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LoadingActivity.m172startGetDns26$lambda0(this.f$0);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startGetDns26$lambda-0, reason: not valid java name */
    public static final void m172startGetDns26$lambda0(LoadingActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            String url = new DnsManager(NetworkInfo.normal, new IResolver[]{new DnsUdpResolver("223.6.6.6", 16, 10)}).queryRecords(ApiClient.INSTANCE.getTxtFromHost())[0].value;
            Intrinsics.checkNotNullExpressionValue(url, "url");
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) url, "http", 0, false, 6, (Object) null);
            Intrinsics.checkNotNullExpressionValue(url, "url");
            String url2 = url.substring(iIndexOf$default, url.length());
            Intrinsics.checkNotNullExpressionValue(url2, "this as java.lang.String…ing(startIndex, endIndex)");
            ApiClient apiClient = ApiClient.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(url2, "url");
            apiClient.setRetrofit(url2);
            this$0.startGetData();
        } catch (Exception e) {
            e.printStackTrace();
            this$0.startGetData();
        }
    }

    /* JADX INFO: renamed from: com.mogu.tv.ui.LoadingActivity$startGetData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoadingActivity.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "code", "", NotificationCompat.CATEGORY_MESSAGE, "", "response", "Lcom/mogu/tv/model/AllAdsModel;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    static final class C01241 extends Lambda implements Function3<Integer, String, AllAdsModel, Unit> {
        C01241() {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, AllAdsModel allAdsModel) {
            invoke(num.intValue(), str, allAdsModel);
            return Unit.INSTANCE;
        }

        public final void invoke(int i, String msg, AllAdsModel allAdsModel) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            if (i != 200) {
                ApiClient.INSTANCE.setRetrofit(ApiClient.INSTANCE.getDefaltApi());
            }
            final LoadingActivity loadingActivity = LoadingActivity.this;
            loadingActivity.runOnUiThread(new Runnable() { // from class: com.mogu.tv.ui.LoadingActivity$startGetData$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LoadingActivity.C01241.m174invoke$lambda0(loadingActivity);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m174invoke$lambda0(LoadingActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (TextUtils.isEmpty(SpUtil.getString$default(SpUtil.INSTANCE, CacheKey.INSTANCE.getLOCK(), null, 2, null))) {
                RelativeLayout relativeLayout = this$0.getBinding().rlPhoto;
                Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.rlPhoto");
                AndroidutilsKt.setVisible(relativeLayout, true);
                this$0.initServerData();
            } else {
                LinearLayout linearLayout = this$0.getBinding().llLock;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llLock");
                AndroidutilsKt.setVisible(linearLayout, true);
                this$0.initLock();
            }
            GlobeAppData.INSTANCE.getTypes();
            UserManager.INSTANCE.initFirst();
            this$0.getShareLink();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startGetData() {
        ApiManager.INSTANCE.getAllAd(new C01241());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startGetDns() {
        new Thread(new Runnable() { // from class: com.mogu.tv.ui.LoadingActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LoadingActivity.m171startGetDns$lambda1(this.f$0);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startGetDns$lambda-1, reason: not valid java name */
    public static final void m171startGetDns$lambda1(LoadingActivity this$0) {
        Lookup lookup;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z = true;
        try {
            lookup = new Lookup(ApiClient.INSTANCE.getTxtFromHost(), 16, 1);
        } catch (Exception e) {
            e.printStackTrace();
            lookup = null;
        }
        if (lookup != null) {
            try {
                lookup.setResolver(new SimpleResolver("223.6.6.6"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (lookup != null) {
            lookup.run();
        }
        if (lookup != null && lookup.getResult() == 0) {
            String text = lookup.getAnswers()[0].rdataToString();
            String str = text;
            if (str != null && str.length() != 0) {
                z = false;
            }
            if (!z) {
                Intrinsics.checkNotNullExpressionValue(text, "text");
                String text2 = StringsKt.replace$default(text, "\"", "", false, 4, (Object) null);
                ApiClient apiClient = ApiClient.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(text2, "text");
                apiClient.setRetrofit(text2);
            }
        }
        this$0.startGetData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getShareLink() {
        ApiManager.INSTANCE.getMoguConfig("shareurl", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.ui.LoadingActivity.getShareLink.1
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, MoguConfig moguConfig) {
                invoke(num.intValue(), str, moguConfig);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, MoguConfig moguConfig) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || moguConfig == null) {
                    return;
                }
                GlobeAppData.INSTANCE.setShareLink(moguConfig.getValue());
            }
        });
    }

    public final int getErrorTime() {
        return this.errorTime;
    }

    public final void setErrorTime(int i) {
        this.errorTime = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initLock() {
        getBinding().patternLockerView.setOnPatternChangedListener(new OnPatternChangeListener() { // from class: com.mogu.tv.ui.LoadingActivity.initLock.1
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

            @Override // com.github.ihsg.patternlocker.OnPatternChangeListener
            public void onComplete(PatternLockerView view, List<Integer> hitIndexList) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(hitIndexList, "hitIndexList");
                Iterator<T> it = hitIndexList.iterator();
                String str = "";
                while (it.hasNext()) {
                    str = str + ((Number) it.next()).intValue();
                }
                if (Intrinsics.areEqual(SpUtil.getString$default(SpUtil.INSTANCE, CacheKey.INSTANCE.getLOCK(), null, 2, null), str)) {
                    RelativeLayout relativeLayout = LoadingActivity.this.getBinding().rlPhoto;
                    Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.rlPhoto");
                    AndroidutilsKt.setVisible(relativeLayout, true);
                    LinearLayout linearLayout = LoadingActivity.this.getBinding().llLock;
                    Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llLock");
                    AndroidutilsKt.setVisible(linearLayout, false);
                    LoadingActivity.this.initServerData();
                    return;
                }
                LoadingActivity loadingActivity = LoadingActivity.this;
                loadingActivity.setErrorTime(loadingActivity.getErrorTime() + 1);
                LoadingActivity.this.getBinding().patternLockerView.updateStatus(true);
                if (LoadingActivity.this.getErrorTime() > 5) {
                    ToastUtil.INSTANCE.toast("密码错误达到5次，请再次尝试或者卸载应用重新下载。");
                } else {
                    ToastUtil.INSTANCE.toast("密码错误");
                }
            }
        });
    }

    public final boolean getToJump() {
        return this.toJump;
    }

    public final void setToJump(boolean z) {
        this.toJump = z;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.toJump) {
            toMain();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initServerData() {
        ApiManager.INSTANCE.getAllAd(new Function3<Integer, String, AllAdsModel, Unit>() { // from class: com.mogu.tv.ui.LoadingActivity.initServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, AllAdsModel allAdsModel) {
                invoke(num.intValue(), str, allAdsModel);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, AllAdsModel allAdsModel) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (i != 200 || allAdsModel == null) {
                    LoadingActivity.this.showMain(1);
                    return;
                }
                GlobeAppData.INSTANCE.setAdConfigData(allAdsModel);
                List<AllAdsModel.Item> start = allAdsModel.getStart();
                if (start == null || start.isEmpty()) {
                    LoadingActivity.this.showMain(1);
                    return;
                }
                List<AllAdsModel.Item> start2 = allAdsModel.getStart();
                final LoadingActivity loadingActivity = LoadingActivity.this;
                final AllAdsModel.Item randomAd = AllAdsModelKt.getRandomAd(start2);
                ImageView imageView = loadingActivity.getBinding().adImg;
                Intrinsics.checkNotNullExpressionValue(imageView, "binding.adImg");
                ImageUtilKt.with(imageView, randomAd != null ? randomAd.getFile() : null);
                ImageView imageView2 = loadingActivity.getBinding().ivLoading;
                Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivLoading");
                AndroidutilsKt.setVisible(imageView2, false);
                LinearLayout linearLayout = loadingActivity.getBinding().rlLoading;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.rlLoading");
                AndroidutilsKt.setVisible(linearLayout, false);
                ImageView imageView3 = loadingActivity.getBinding().adImg;
                Intrinsics.checkNotNullExpressionValue(imageView3, "binding.adImg");
                AndroidutilsKt.click(imageView3, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.LoadingActivity$initServerData$1$1$1
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
                        String action;
                        Intrinsics.checkNotNullParameter(it, "it");
                        ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                        FragmentActivity mActivity = loadingActivity.getMActivity();
                        AllAdsModel.Item item = randomAd;
                        if (item == null || (action = item.getAction()) == null) {
                            action = "";
                        }
                        arouterUtils.toUrlPraseJump(mActivity, action);
                        ArouterUtils arouterUtils2 = ArouterUtils.INSTANCE;
                        AllAdsModel.Item item2 = randomAd;
                        arouterUtils2.clickAd(String.valueOf(item2 != null ? Integer.valueOf(item2.getId()) : null));
                        loadingActivity.setToJump(true);
                    }
                });
                loadingActivity.showMain(6);
                List<AllAdsModel.Item> start3 = allAdsModel.getStart();
                if (start3 == null || start3.isEmpty()) {
                    loadingActivity.showMain(1);
                }
            }
        });
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        fullScreen();
    }

    /* JADX INFO: renamed from: isJump, reason: from getter */
    public final boolean getIsJump() {
        return this.isJump;
    }

    public final void setJump(boolean z) {
        this.isJump = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showMain(int i) {
        TextView textView = getBinding().tvCountdown;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvCountdown");
        AndroidutilsKt.click(textView, new Function1<View, Unit>() { // from class: com.mogu.tv.ui.LoadingActivity.showMain.1
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
                LoadingActivity.this.setJump(true);
                LoadingActivity.this.skipMainActivityImp();
            }
        });
        if (i > 0) {
            if (i != 1) {
                getBinding().tvCountdown.setVisibility(0);
            }
            coundDown(i, new Function0<Unit>() { // from class: com.mogu.tv.ui.LoadingActivity.showMain.2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    if (LoadingActivity.this.getIsJump() || LoadingActivity.this.getToJump()) {
                        return;
                    }
                    LoadingActivity.this.skipMainActivityImp();
                }
            }, new Function1<Integer, Unit>() { // from class: com.mogu.tv.ui.LoadingActivity.showMain.3
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i2) {
                    LoadingActivity.this.getBinding().tvCountdown.setText("跳过 " + i2);
                }
            });
        }
    }

    public final void coundDown(int count, final Function0<Unit> block, final Function1<? super Integer, Unit> returntime) {
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(returntime, "returntime");
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = count;
        new Runnable() { // from class: com.mogu.tv.ui.LoadingActivity$coundDown$run$1
            @Override // java.lang.Runnable
            public void run() {
                intRef.element--;
                if (intRef.element <= 0) {
                    block.invoke();
                } else {
                    returntime.invoke(Integer.valueOf(intRef.element));
                    this.getBinding().tvCountdown.postDelayed(this, 1000L);
                }
            }
        }.run();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int requestCode, List<String> perms) {
        Intrinsics.checkNotNullParameter(perms, "perms");
        if (requestCode == 0 && (!perms.isEmpty()) && perms.contains("android.permission.WRITE_EXTERNAL_STORAGE")) {
            try {
                AnkoInternals.internalStartActivity(this, MainActivity.class, new Pair[0]);
                finish();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toMain() {
        EasyPermissions.requestPermissions(this, "为了你使用速度体验,需要缓存图片视频相关权限，请同意。", 0, (String[]) Arrays.copyOf(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipMainActivityImp() {
        if (isFinishing()) {
            return;
        }
        if (SpUtil.INSTANCE.getBoolean(CacheKey.INSTANCE.getFIRSTLOADVERSION_1(), true)) {
            SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getFIRSTLOADVERSION_1(), false);
            runOnUiThread(new Runnable() { // from class: com.mogu.tv.ui.LoadingActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    LoadingActivity.m170skipMainActivityImp$lambda2(this.f$0);
                }
            });
        } else {
            AnkoInternals.internalStartActivity(this, MainActivity.class, new Pair[0]);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: skipMainActivityImp$lambda-2, reason: not valid java name */
    public static final void m170skipMainActivityImp$lambda2(final LoadingActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogUtils.INSTANCE.showDialogPermission(this$0, new Function0<Unit>() { // from class: com.mogu.tv.ui.LoadingActivity$skipMainActivityImp$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.this$0.toMain();
            }
        });
    }
}
