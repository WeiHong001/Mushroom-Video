package com.mogu.tv;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.widget.commontab.listener.TabSelectListener;
import com.luck.picture.lib.config.PictureConfig;
import com.mogu.tv.model.EventSwitchPage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/mogu/tv/MainActivity$tabSelect$1", "Lcom/kotlin/basiclib/widget/commontab/listener/TabSelectListener;", "onTabSelect", "", PictureConfig.EXTRA_POSITION, "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MainActivity$tabSelect$1 implements TabSelectListener {
    final /* synthetic */ MainActivity this$0;

    MainActivity$tabSelect$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @Override // com.kotlin.basiclib.widget.commontab.listener.TabSelectListener
    public boolean onTabSelect(int position) {
        EventBusUtil.INSTANCE.post(new EventSwitchPage(position));
        this.this$0.setMTabIndex(position);
        MainActivity.INSTANCE.setCurMainPage(position);
        this.this$0.getBinding().tabLayout.hideMsg(position);
        if (this.this$0.fgms.get(position) == null) {
            this.this$0.fgms.set(position, this.this$0.getTabFragment(position));
        }
        Object obj = this.this$0.fgms.get(position);
        Intrinsics.checkNotNullExpressionValue(obj, "fgms[position]");
        Fragment fragment = (Fragment) obj;
        FragmentManager supportFragmentManager = this.this$0.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "fm.beginTransaction()");
        if (this.this$0.getCurrentFragment() != null) {
            Fragment currentFragment = this.this$0.getCurrentFragment();
            Intrinsics.checkNotNull(currentFragment);
            fragmentTransactionBeginTransaction.hide(currentFragment);
        }
        if (supportFragmentManager.findFragmentByTag(String.valueOf(position)) == null) {
            fragmentTransactionBeginTransaction.add(com.amogu6.tv.R.id.container, fragment, String.valueOf(position));
        } else {
            fragmentTransactionBeginTransaction.show(fragment);
        }
        this.this$0.setCurrentFragment(fragment);
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        return true;
    }
}
