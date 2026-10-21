package com.mogu.tv.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.widget.ContentLoadingProgressBar;
import com.kotlin.basiclib.utils.NetworkUtil;
import com.mogu.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public class QsEmptyView extends RelativeLayout {
    public static final int EMPTY = 0;
    public static final int ERROR = 1;
    public static final int LIST = 2;
    public static final int LOADING = 3;
    public static final int NORMAL = -1;
    private ContentLoadingProgressBar content_loading;
    private int defaltState;
    private LinearLayout empty_layout;
    private TextView empty_text;
    private ImageView iv_empty;
    Context mContext;
    private String mEmprtyText;
    private int mResIcon;
    EmptyOnclickListner onclickListner;
    View rootView;

    public interface EmptyOnclickListner {
        void onEmptyClick();
    }

    public void setEmprtyText(String str) {
        this.mEmprtyText = str;
    }

    public QsEmptyView(Context context) {
        this(context, null);
    }

    public QsEmptyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QsEmptyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.defaltState = 0;
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R.styleable.qushare_empty, i, 0);
        this.mEmprtyText = typedArrayObtainStyledAttributes.getString(1);
        this.mResIcon = typedArrayObtainStyledAttributes.getResourceId(0, com.amogu6.tv.R.mipmap.ic_empty_data);
        typedArrayObtainStyledAttributes.recycle();
        init();
    }

    private void init() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        View viewInflate = View.inflate(this.mContext, com.amogu6.tv.R.layout.state_empty_layout, null);
        this.rootView = viewInflate;
        this.iv_empty = (ImageView) viewInflate.findViewById(com.amogu6.tv.R.id.iv_empty);
        this.content_loading = (ContentLoadingProgressBar) this.rootView.findViewById(com.amogu6.tv.R.id.content_loading);
        this.empty_layout = (LinearLayout) this.rootView.findViewById(com.amogu6.tv.R.id.empty_layout);
        this.empty_text = (TextView) this.rootView.findViewById(com.amogu6.tv.R.id.empty_text);
        this.rootView.setLayoutParams(layoutParams);
        addView(this.rootView);
    }

    public void showState(int i) {
        this.defaltState = i;
        if (i == -1) {
            this.empty_layout.setVisibility(8);
            this.content_loading.setVisibility(8);
            return;
        }
        if (i == 0) {
            this.empty_layout.setVisibility(0);
            this.content_loading.setVisibility(8);
            this.empty_text.setText(this.mEmprtyText);
            this.iv_empty.setImageResource(this.mResIcon);
            this.empty_layout.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.view.QsEmptyView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m314lambda$showState$0$commogutvviewQsEmptyView(view);
                }
            });
            return;
        }
        if (i != 1) {
            if (i != 3) {
                return;
            }
            this.empty_layout.setVisibility(8);
            this.content_loading.setVisibility(0);
            this.empty_text.setText(this.mEmprtyText);
            return;
        }
        this.empty_layout.setVisibility(0);
        this.content_loading.setVisibility(8);
        if (NetworkUtil.getNetworkType(getContext()) == 0) {
            this.empty_text.setText("连接失败，检查网络并重试~~~");
            this.iv_empty.setImageResource(com.amogu6.tv.R.mipmap.ic_empty_data);
        } else {
            this.empty_text.setText("加载失败了哦，请重试~~~");
            this.iv_empty.setImageResource(com.amogu6.tv.R.mipmap.ic_empty_data);
        }
    }

    /* JADX INFO: renamed from: lambda$showState$0$com-mogu-tv-view-QsEmptyView, reason: not valid java name */
    /* synthetic */ void m314lambda$showState$0$commogutvviewQsEmptyView(View view) {
        EmptyOnclickListner emptyOnclickListner = this.onclickListner;
        if (emptyOnclickListner != null) {
            emptyOnclickListner.onEmptyClick();
        }
    }

    public void setResIcon(int i) {
        this.mResIcon = i;
    }

    public void setEmptyOnclickListner(EmptyOnclickListner emptyOnclickListner) {
        this.onclickListner = emptyOnclickListner;
    }
}
