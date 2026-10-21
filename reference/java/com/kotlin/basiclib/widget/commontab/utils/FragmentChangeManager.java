package com.kotlin.basiclib.widget.commontab.utils;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class FragmentChangeManager {
    private int mContainerViewId;
    private int mCurrentTab = -1;
    private FragmentManager mFragmentManager;
    private ArrayList<Fragment> mFragments;

    public FragmentChangeManager(FragmentManager fragmentManager, int i, ArrayList<Fragment> arrayList) {
        this.mFragmentManager = fragmentManager;
        this.mContainerViewId = i;
        this.mFragments = arrayList;
        initFragments();
    }

    private void initFragments() {
        setFragments(0);
    }

    public void setFragments(int i) {
        Fragment fragment = this.mFragments.get(i);
        FragmentTransaction fragmentTransactionBeginTransaction = this.mFragmentManager.beginTransaction();
        int i2 = this.mCurrentTab;
        if (i2 >= 0 && i2 < this.mFragments.size()) {
            fragmentTransactionBeginTransaction.hide(this.mFragments.get(this.mCurrentTab));
        }
        String str = "fgm_" + fragment.hashCode() + "_" + i;
        if (this.mFragmentManager.findFragmentByTag(str) == null) {
            fragmentTransactionBeginTransaction.add(this.mContainerViewId, fragment, str);
        } else {
            fragmentTransactionBeginTransaction.show(fragment);
        }
        fragmentTransactionBeginTransaction.commit();
        this.mCurrentTab = i;
    }

    public int getCurrentTab() {
        return this.mCurrentTab;
    }

    public Fragment getCurrentFragment() {
        return this.mFragments.get(this.mCurrentTab);
    }
}
