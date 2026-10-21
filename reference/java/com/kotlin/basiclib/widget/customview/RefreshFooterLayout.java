package com.kotlin.basiclib.widget.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kotlin.basiclib.R;

/* JADX INFO: loaded from: classes2.dex */
public class RefreshFooterLayout extends SpecifyHeightLayout implements Runnable, View.OnClickListener {
    private static final String TXT_CLICK_RETRY = "加载失败，请点我重试";
    private static final String TXT_LOADING = "正在加载中...";
    private boolean hasMore;
    private boolean isError;
    private boolean isLoading;
    private View mChild;
    private RefreshListener mListener;
    private ProgressBar mProgress;
    private TextView mState;

    public interface RefreshListener {
        void onRefresh();
    }

    public RefreshFooterLayout(Context context) {
        super(context);
        init();
    }

    public RefreshFooterLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public RefreshFooterLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_refresh_footer, (ViewGroup) this, false);
        this.mChild = viewInflate;
        viewInflate.setOnClickListener(this);
        this.mProgress = (ProgressBar) this.mChild.findViewById(R.id.progress);
        this.mState = (TextView) this.mChild.findViewById(R.id.refresh_status);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mChild.measure(View.MeasureSpec.makeMeasureSpec(getResources().getDisplayMetrics().widthPixels, 1073741824), iMakeMeasureSpec);
        int measuredHeight = this.mChild.getMeasuredHeight();
        addView(this.mChild);
        setHeight(measuredHeight);
        setOriginHeight(measuredHeight);
    }

    public void setRefreshListener(RefreshListener refreshListener) {
        this.mListener = refreshListener;
    }

    public void setHasMore(boolean z) {
        this.hasMore = z;
        if (z) {
            resetOrightHeight();
        } else {
            setHeight(0);
        }
    }

    public void setError() {
        this.hasMore = false;
        this.isLoading = false;
        this.isError = true;
        this.mProgress.setVisibility(8);
        this.mState.setText(TXT_CLICK_RETRY);
    }

    public void onLoadComplete() {
        postDelayed(this, 200L);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        load();
    }

    public void load() {
        if (this.isLoading || !this.hasMore || this.isError) {
            return;
        }
        this.isLoading = true;
        resetOrightHeight();
        this.mState.setText(TXT_LOADING);
        this.mListener.onRefresh();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.isLoading = false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.isError) {
            this.isLoading = true;
            this.hasMore = true;
            this.isError = false;
            this.mState.setText(TXT_LOADING);
            this.mListener.onRefresh();
            this.mProgress.setVisibility(0);
        }
    }
}
