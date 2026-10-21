package com.kotlin.basiclib.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.footer.ClassicsFooter;
import com.scwang.smartrefresh.layout.header.ClassicsHeader;

/* JADX INFO: loaded from: classes2.dex */
public class RefreshLayout extends SmartRefreshLayout {
    public RefreshLayout(Context context) {
        this(context, null);
    }

    public RefreshLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RefreshLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setRefreshHeader(new ClassicsHeader(context));
        setRefreshFooter(new ClassicsFooter(context).setSpinnerStyle(SpinnerStyle.Scale));
    }

    @Override // com.scwang.smartrefresh.layout.SmartRefreshLayout, com.scwang.smartrefresh.layout.api.RefreshLayout
    public RefreshLayout finishRefresh() {
        try {
            return (RefreshLayout) super.finishRefresh();
        } catch (Exception unused) {
            return null;
        }
    }
}
