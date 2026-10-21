package com.mogu.tv;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.azhon.appupdate.config.Constant;
import com.azhon.appupdate.manager.DownloadManager;
import com.google.gson.Gson;
import com.kotlin.basiclib.StatusBarUtil;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.base.CommonBaseActivity;
import com.kotlin.basiclib.utils.DateUtil;
import com.kotlin.basiclib.utils.MD5EncryptNf;
import com.kotlin.basiclib.utils.SpUtil;
import com.kotlin.basiclib.utils.ToastUtil;
import com.kotlin.basiclib.widget.commontab.CommonTabLayout;
import com.kotlin.basiclib.widget.commontab.TabEnty;
import com.kotlin.basiclib.widget.commontab.listener.CustomTabEntity;
import com.luck.picture.lib.config.PictureConfig;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.ActivityMainBinding;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.GlobeAppData;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.model.UpdateModol;
import com.mogu.tv.ui.EmptyFragment;
import com.mogu.tv.ui.HomeFragment;
import com.mogu.tv.ui.frag.JpHomeFragment;
import com.mogu.tv.ui.frag.MineFragment;
import com.mogu.tv.ui.frag.ShequFragment;
import com.mogu.tv.ui.frag.ShortIndexFragment;
import com.mogu.tv.utils.DialogUtils;
import com.mogu.tv.view.HomeAdDIalog;
import com.umeng.analytics.pro.d;
import com.uuzuche.lib_zxing.activity.CodeUtils;
import com.wgq.wangeqiu.common.RequestCode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import pub.devrel.easypermissions.EasyPermissions;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t*\u0001\u001a\b\u0007\u0018\u0000 ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001?B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\u000e\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0014J\b\u0010 \u001a\u00020\u001dH\u0016J\b\u0010!\u001a\u00020\u001dH\u0016J\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\"\u0010&\u001a\u00020\u001d2\u0006\u0010'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\u00142\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\b\u0010+\u001a\u00020\u001dH\u0016J\u0012\u0010,\u001a\u00020\u001d2\b\u0010-\u001a\u0004\u0018\u00010.H\u0014J\b\u0010/\u001a\u00020\u001dH\u0014J\u0018\u00100\u001a\u00020#2\u0006\u00101\u001a\u00020\u00142\u0006\u00102\u001a\u000203H\u0016J\u001e\u00104\u001a\u00020\u001d2\u0006\u0010'\u001a\u00020\u00142\f\u00105\u001a\b\u0012\u0004\u0012\u00020706H\u0016J\b\u00108\u001a\u00020\u001dH\u0014J\u0010\u00109\u001a\u00020\u001d2\u0006\u0010:\u001a\u00020.H\u0017J\b\u0010;\u001a\u00020\u001dH\u0014J\u000e\u0010<\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0014J\b\u0010=\u001a\u00020\u001dH\u0002J\b\u0010>\u001a\u00020\u001dH\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u000bj\b\u0012\u0004\u0012\u00020\u0005`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001b¨\u0006@"}, d2 = {"Lcom/mogu/tv/MainActivity;", "Lcom/kotlin/basiclib/base/CommonBaseActivity;", "Lcom/mogu/tv/databinding/ActivityMainBinding;", "()V", "currentFragment", "Landroidx/fragment/app/Fragment;", "getCurrentFragment", "()Landroidx/fragment/app/Fragment;", "setCurrentFragment", "(Landroidx/fragment/app/Fragment;)V", "dialogAd", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/AllAdsModel$Item;", "Lkotlin/collections/ArrayList;", "getDialogAd", "()Ljava/util/ArrayList;", "setDialogAd", "(Ljava/util/ArrayList;)V", "fgms", "mTabIndex", "", "getMTabIndex", "()I", "setMTabIndex", "(I)V", "tabSelect", "com/mogu/tv/MainActivity$tabSelect$1", "Lcom/mogu/tv/MainActivity$tabSelect$1;", "checkUpdate", "", "getTabFragment", PictureConfig.EXTRA_POSITION, "initData", "initView", "isBackground", "", d.R, "Landroid/content/Context;", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onKeyDown", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onPermissionsGranted", "perms", "", "", "onResume", "onSaveInstanceState", "outState", "onStart", "setCurrentTab", "showDialogAd", "showNotice", "Companion", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MainActivity extends CommonBaseActivity<ActivityMainBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static int curMainPage;
    private Fragment currentFragment;
    private int mTabIndex;
    private final ArrayList<Fragment> fgms = CollectionsKt.arrayListOf(new HomeFragment(), new ShortIndexFragment(), new JpHomeFragment(), new ShequFragment(), new MineFragment());
    private final MainActivity$tabSelect$1 tabSelect = new MainActivity$tabSelect$1(this);
    private ArrayList<AllAdsModel.Item> dialogAd = new ArrayList<>();

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mogu/tv/MainActivity$Companion;", "", "()V", "curMainPage", "", "getCurMainPage", "()I", "setCurMainPage", "(I)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getCurMainPage() {
            return MainActivity.curMainPage;
        }

        public final void setCurMainPage(int i) {
            MainActivity.curMainPage = i;
        }
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initView() {
        try {
            StatusBarUtil.setPadding(this, getBinding().rlHead);
            StatusBarUtil.immersive(this, ContextCompat.getColor(getMActivity(), com.amogu6.tv.R.color.mian_bg_color));
        } catch (Exception unused) {
        }
        ArrayList<CustomTabEntity> arrayList = new ArrayList<>();
        arrayList.add(new TabEnty("首頁", com.amogu6.tv.R.mipmap.tab1_press, com.amogu6.tv.R.mipmap.tab1));
        arrayList.add(new TabEnty("短視頻", com.amogu6.tv.R.mipmap.tab2_press, com.amogu6.tv.R.mipmap.tab2));
        arrayList.add(new TabEnty("精品推荐", com.amogu6.tv.R.mipmap.icon_jppress, com.amogu6.tv.R.mipmap.icon_jpnormal));
        arrayList.add(new TabEnty("社區", com.amogu6.tv.R.mipmap.tab3_press, com.amogu6.tv.R.mipmap.tab3));
        arrayList.add(new TabEnty("我的", com.amogu6.tv.R.mipmap.tab4_press, com.amogu6.tv.R.mipmap.tab4));
        getBinding().tabLayout.setTabData(arrayList);
        getBinding().tabLayout.setTabSelectListener(this.tabSelect);
        setCurrentTab(0);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (SpUtil.INSTANCE.getInt(CacheKey.INSTANCE.getLOADSHARE(), 0) == 0) {
            ApiManager.INSTANCE.getCacheShareCode(new Function3<Integer, String, String, Unit>() { // from class: com.mogu.tv.MainActivity.onStart.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, String str2) {
                    invoke(num.intValue(), str, str2);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, String str) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (i != 200 || str == null) {
                        return;
                    }
                    String str2 = str;
                    if (TextUtils.isEmpty(str2) || !StringsKt.contains$default((CharSequence) str2, (CharSequence) "mogushare", false, 2, (Object) null)) {
                        return;
                    }
                    List listSplit$default = StringsKt.split$default((CharSequence) str2, new String[]{"_"}, false, 0, 6, (Object) null);
                    if ((!listSplit$default.isEmpty()) && listSplit$default.size() == 2) {
                        String str3 = (String) listSplit$default.get(1);
                        String uuid = ApiManager.INSTANCE.getUuid();
                        ApiManager.INSTANCE.postShare(Integer.parseInt(str3), uuid, MD5EncryptNf.encode(str3 + '-' + DateUtil.getCurrentDay() + "-mogu-" + uuid).subSequence(1, 7).toString(), new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.MainActivity.onStart.1.1
                            public final void invoke(int i2, String msg2, JustReturnMsg justReturnMsg) {
                                Intrinsics.checkNotNullParameter(msg2, "msg");
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str4, JustReturnMsg justReturnMsg) {
                                invoke(num.intValue(), str4, justReturnMsg);
                                return Unit.INSTANCE;
                            }
                        });
                        SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getLOADSHARE(), 1);
                    }
                }
            });
        }
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    public final Fragment getCurrentFragment() {
        return this.currentFragment;
    }

    public final void setCurrentFragment(Fragment fragment) {
        this.currentFragment = fragment;
    }

    public final Fragment getTabFragment(int position) {
        if (position == 0) {
            return new HomeFragment();
        }
        if (position == 1) {
            return new ShortIndexFragment();
        }
        if (position == 2) {
            return new JpHomeFragment();
        }
        if (position == 3) {
            return new ShequFragment();
        }
        if (position == 4) {
            return new MineFragment();
        }
        return new EmptyFragment();
    }

    public final int getMTabIndex() {
        return this.mTabIndex;
    }

    public final void setMTabIndex(int i) {
        this.mTabIndex = i;
    }

    public final void setCurrentTab(int position) {
        getBinding().tabLayout.setCurrentTab(position);
        this.tabSelect.onTabSelect(position);
    }

    public final boolean isBackground(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) systemService).getRunningAppProcesses()) {
            if (Intrinsics.areEqual(runningAppProcessInfo.processName, context.getPackageName())) {
                return runningAppProcessInfo.importance != 100;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (keyCode == 4) {
            moveTaskToBack(true);
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        moveTaskToBack(true);
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity, pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int requestCode, List<String> perms) {
        Intrinsics.checkNotNullParameter(perms, "perms");
        if (requestCode == 0 && (!perms.isEmpty())) {
            perms.contains("android.permission.WRITE_EXTERNAL_STORAGE");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == RequestCode.INSTANCE.getQR_REQUEST_CODE() && data != null) {
            Bundle extras = data.getExtras();
            if (extras == null) {
                return;
            }
            if (extras.getInt(CodeUtils.RESULT_TYPE) == 1) {
                String string = extras.getString(CodeUtils.RESULT_STRING);
                ArouterUtils arouterUtils = ArouterUtils.INSTANCE;
                MainActivity mainActivity = this;
                if (string == null) {
                    string = "";
                }
                arouterUtils.toUrlPraseJump(mainActivity, string);
            } else {
                if (extras.getInt(CodeUtils.RESULT_TYPE) == 2) {
                    ToastUtil.INSTANCE.toast("解析二维码失败");
                }
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    /* JADX INFO: renamed from: com.mogu.tv.MainActivity$checkUpdate$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "code", "", NotificationCompat.CATEGORY_MESSAGE, "", "response", "Lcom/mogu/tv/model/MoguConfig;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    static final class AnonymousClass1 extends Lambda implements Function3<Integer, String, MoguConfig, Unit> {
        AnonymousClass1() {
            super(3);
        }

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
            final UpdateModol updateModol = (UpdateModol) new Gson().fromJson(moguConfig.getValue(), UpdateModol.class);
            CommonTabLayout commonTabLayout = MainActivity.this.getBinding().tabLayout;
            final MainActivity mainActivity = MainActivity.this;
            commonTabLayout.postDelayed(new Runnable() { // from class: com.mogu.tv.MainActivity$checkUpdate$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AnonymousClass1.m150invoke$lambda1(mainActivity, updateModol);
                }
            }, 1500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
        public static final void m150invoke$lambda1(MainActivity this$0, UpdateModol updateModol) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (this$0.isDestroyed()) {
                return;
            }
            if (!DialogUtils.INSTANCE.parseVersionCode(updateModol.getVersion())) {
                this$0.showNotice();
                return;
            }
            DownloadManager.Builder builder = new DownloadManager.Builder(this$0);
            builder.apkUrl(updateModol.getUrl());
            builder.apkName(BaseApplicaitonKt.getApplication().getResources().getString(com.amogu6.tv.R.string.app_name) + '_' + System.currentTimeMillis() + Constant.APK_SUFFIX);
            builder.smallIcon(com.amogu6.tv.R.mipmap.app_logo);
            builder.apkVersionCode(Integer.MAX_VALUE);
            builder.forcedUpgrade(updateModol.getForce() == 1);
            builder.apkVersionName(updateModol.getVersion());
            builder.apkSize(updateModol.getApksize());
            builder.apkDescription(updateModol.getText());
            builder.build().download();
        }
    }

    private final void checkUpdate() {
        ApiManager.INSTANCE.getMoguConfig("updateandroid", new AnonymousClass1());
    }

    public final ArrayList<AllAdsModel.Item> getDialogAd() {
        return this.dialogAd;
    }

    public final void setDialogAd(ArrayList<AllAdsModel.Item> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.dialogAd = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showNotice() {
        List<AllAdsModel.Item> homedialog;
        AllAdsModel adData = GlobeAppData.INSTANCE.getAdData();
        List listSortedWith = (adData == null || (homedialog = adData.getHomedialog()) == null) ? null : CollectionsKt.sortedWith(homedialog, new Comparator() { // from class: com.mogu.tv.MainActivity$showNotice$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((AllAdsModel.Item) t2).getWeight()), Integer.valueOf(((AllAdsModel.Item) t).getWeight()));
            }
        });
        boolean z = false;
        if (listSortedWith != null && (!listSortedWith.isEmpty())) {
            z = true;
        }
        if (z) {
            this.dialogAd.addAll(listSortedWith);
            showDialogAd();
        } else {
            ApiManager.INSTANCE.getMoguConfig("dialognotice", new Function3<Integer, String, MoguConfig, Unit>() { // from class: com.mogu.tv.MainActivity.showNotice.1
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
                    if (i != 200 || moguConfig == null) {
                        return;
                    }
                    DialogUtils.INSTANCE.showNoticeDialog(MainActivity.this.getMActivity(), moguConfig.getValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDialogAd() {
        if (!this.dialogAd.isEmpty()) {
            AllAdsModel.Item item = (AllAdsModel.Item) CollectionsKt.removeFirst(this.dialogAd);
            HomeAdDIalog homeAdDIalog = new HomeAdDIalog(getMActivity());
            homeAdDIalog.showAdData(getMActivity(), item, new Function0<Unit>() { // from class: com.mogu.tv.MainActivity.showDialogAd.1
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
                    MainActivity.this.showDialogAd();
                }
            });
            homeAdDIalog.show();
        }
    }

    @Override // com.kotlin.basiclib.base.CommonBaseActivity
    public void initData() {
        checkUpdate();
        UserManager.saveUserInfo$default(UserManager.INSTANCE, null, 1, null);
        EasyPermissions.requestPermissions(this, "为了你使用速度体验,需要缓存相关权限，请同意。", 0, (String[]) Arrays.copyOf(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 2));
    }
}
