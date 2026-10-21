package com.mogu.tv.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.LayoutManager;
import com.kotlin.basiclib.R;
import com.mogu.tv.model.BannerImg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RecyclerViewBannerBase<L extends RecyclerView.LayoutManager, A extends RecyclerView.Adapter> extends FrameLayout {
    protected int WHAT_AUTO_PLAY;
    protected A adapter;
    protected int autoPlayDuration;
    protected int bannerSize;
    protected int currentIndex;
    protected boolean hasInit;
    protected RecyclerViewBannerBase<L, A>.IndicatorAdapter indicatorAdapter;
    protected RecyclerView indicatorContainer;
    protected int indicatorMargin;
    protected boolean isAutoPlaying;
    protected boolean isPlaying;
    protected Handler mHandler;
    protected L mLayoutManager;
    protected RecyclerView mRecyclerView;
    protected Drawable mSelectedDrawable;
    protected Drawable mUnselectedDrawable;
    protected boolean showIndicator;
    protected List<BannerImg.ResultItem> tempUrlList;

    public interface OnBannerItemClickListener {
        void onItemClick(int i);
    }

    protected abstract A getAdapter(Context context, List<BannerImg.ResultItem> list, OnBannerItemClickListener onBannerItemClickListener);

    protected abstract L getLayoutManager(Context context, int i);

    protected void onBannerScrollStateChanged(RecyclerView recyclerView, int i) {
    }

    protected void onBannerScrolled(RecyclerView recyclerView, int i, int i2) {
    }

    public RecyclerViewBannerBase(Context context) {
        this(context, null);
    }

    public RecyclerViewBannerBase(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerViewBannerBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.autoPlayDuration = 4000;
        this.WHAT_AUTO_PLAY = 1000;
        this.bannerSize = 1;
        this.tempUrlList = new ArrayList();
        this.mHandler = new Handler(new Handler.Callback() { // from class: com.mogu.tv.view.RecyclerViewBannerBase.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != RecyclerViewBannerBase.this.WHAT_AUTO_PLAY) {
                    return false;
                }
                RecyclerView recyclerView = RecyclerViewBannerBase.this.mRecyclerView;
                RecyclerViewBannerBase recyclerViewBannerBase = RecyclerViewBannerBase.this;
                int i2 = recyclerViewBannerBase.currentIndex + 1;
                recyclerViewBannerBase.currentIndex = i2;
                recyclerView.smoothScrollToPosition(i2);
                RecyclerViewBannerBase.this.refreshIndicator();
                RecyclerViewBannerBase.this.mHandler.sendEmptyMessageDelayed(RecyclerViewBannerBase.this.WHAT_AUTO_PLAY, RecyclerViewBannerBase.this.autoPlayDuration);
                return false;
            }
        });
        initView(context, attributeSet);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected void initView(Context context, AttributeSet attributeSet) {
        int i;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerViewBannerBase);
        this.showIndicator = typedArrayObtainStyledAttributes.getBoolean(10, true);
        this.autoPlayDuration = typedArrayObtainStyledAttributes.getInt(8, 4000);
        this.isAutoPlaying = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.mSelectedDrawable = typedArrayObtainStyledAttributes.getDrawable(5);
        this.mUnselectedDrawable = typedArrayObtainStyledAttributes.getDrawable(7);
        if (this.mSelectedDrawable == null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(SupportMenu.CATEGORY_MASK);
            gradientDrawable.setSize(dp2px(5), dp2px(5));
            gradientDrawable.setCornerRadius(dp2px(5) / 2);
            this.mSelectedDrawable = new LayerDrawable(new Drawable[]{gradientDrawable});
        }
        if (this.mUnselectedDrawable == null) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(1);
            gradientDrawable2.setColor(-7829368);
            gradientDrawable2.setSize(dp2px(5), dp2px(5));
            gradientDrawable2.setCornerRadius(dp2px(5) / 2);
            this.mUnselectedDrawable = new LayerDrawable(new Drawable[]{gradientDrawable2});
        }
        this.indicatorMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, dp2px(4));
        typedArrayObtainStyledAttributes.getDimensionPixelSize(3, dp2px(16));
        typedArrayObtainStyledAttributes.getDimensionPixelSize(4, dp2px(0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, dp2px(11));
        int i2 = typedArrayObtainStyledAttributes.getInt(1, 0);
        if (i2 == 0) {
            i = GravityCompat.START;
        } else {
            i = i2 == 2 ? GravityCompat.END : 17;
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(9, 0);
        int i4 = (i3 == 0 || i3 != 1) ? 0 : 1;
        typedArrayObtainStyledAttributes.recycle();
        this.mRecyclerView = new RecyclerView(context);
        new PagerSnapHelper().attachToRecyclerView(this.mRecyclerView);
        L l = (L) getLayoutManager(context, i4);
        this.mLayoutManager = l;
        this.mRecyclerView.setLayoutManager(l);
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.mogu.tv.view.RecyclerViewBannerBase.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                RecyclerViewBannerBase.this.onBannerScrolled(recyclerView, i5, i6);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i5) {
                RecyclerViewBannerBase.this.onBannerScrollStateChanged(recyclerView, i5);
            }
        });
        addView(this.mRecyclerView, new FrameLayout.LayoutParams(-1, -1));
        this.indicatorContainer = new RecyclerView(context);
        this.indicatorContainer.setLayoutManager(new LinearLayoutManager(context, 0, false));
        RecyclerViewBannerBase<L, A>.IndicatorAdapter indicatorAdapter = new IndicatorAdapter();
        this.indicatorAdapter = indicatorAdapter;
        this.indicatorContainer.setAdapter(indicatorAdapter);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = i | 80;
        layoutParams.setMargins(0, 0, 0, dimensionPixelSize);
        addView(this.indicatorContainer, layoutParams);
        if (this.showIndicator) {
            return;
        }
        this.indicatorContainer.setVisibility(8);
    }

    public void setIndicatorInterval(int i) {
        this.autoPlayDuration = i;
    }

    protected synchronized void setPlaying(boolean z) {
        if (this.isAutoPlaying && this.hasInit) {
            boolean z2 = this.isPlaying;
            if (!z2 && z) {
                this.mHandler.sendEmptyMessageDelayed(this.WHAT_AUTO_PLAY, this.autoPlayDuration);
                this.isPlaying = true;
            } else if (z2 && !z) {
                this.mHandler.removeMessages(this.WHAT_AUTO_PLAY);
                this.isPlaying = false;
            }
        }
    }

    public void setAutoPlaying(boolean z) {
        this.isAutoPlaying = z;
        setPlaying(z);
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public void setShowIndicator(boolean z) {
        this.showIndicator = z;
        this.indicatorContainer.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void initBannerImageView(List<BannerImg.ResultItem> list, OnBannerItemClickListener onBannerItemClickListener) {
        if (compareListDifferent(list, this.tempUrlList)) {
            this.hasInit = false;
            setVisibility(0);
            setPlaying(false);
            A a = (A) getAdapter(getContext(), list, onBannerItemClickListener);
            this.adapter = a;
            this.mRecyclerView.setAdapter(a);
            this.tempUrlList = list;
            int size = list.size();
            this.bannerSize = size;
            if (size > 1) {
                this.indicatorContainer.setVisibility(0);
                int i = this.bannerSize * 100;
                this.currentIndex = i;
                this.mRecyclerView.scrollToPosition(i);
                this.indicatorAdapter.notifyDataSetChanged();
                setPlaying(true);
            } else {
                this.indicatorContainer.setVisibility(8);
                this.currentIndex = 0;
            }
            this.hasInit = true;
        }
        if (this.showIndicator) {
            return;
        }
        this.indicatorContainer.setVisibility(8);
    }

    public void initBannerImageView(List<BannerImg.ResultItem> list) {
        initBannerImageView(list, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            setPlaying(false);
        } else if (action == 1 || action == 3) {
            setPlaying(true);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setPlaying(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setPlaying(false);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            setPlaying(true);
        } else {
            setPlaying(false);
        }
    }

    protected class IndicatorAdapter extends RecyclerView.Adapter {
        int currentPosition = 0;

        protected IndicatorAdapter() {
        }

        public void setPosition(int i) {
            this.currentPosition = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ImageView imageView = new ImageView(RecyclerViewBannerBase.this.getContext());
            RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(-2, -1);
            layoutParams.setMargins(RecyclerViewBannerBase.this.indicatorMargin, RecyclerViewBannerBase.this.indicatorMargin, RecyclerViewBannerBase.this.indicatorMargin, RecyclerViewBannerBase.this.indicatorMargin);
            imageView.setLayoutParams(layoutParams);
            return new RecyclerView.ViewHolder(imageView) { // from class: com.mogu.tv.view.RecyclerViewBannerBase.IndicatorAdapter.1
            };
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ((ImageView) viewHolder.itemView).setImageDrawable(this.currentPosition == i ? RecyclerViewBannerBase.this.mSelectedDrawable : RecyclerViewBannerBase.this.mUnselectedDrawable);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RecyclerViewBannerBase.this.bannerSize;
        }
    }

    protected synchronized void refreshIndicator() {
        int i;
        if (this.showIndicator && (i = this.bannerSize) > 1) {
            this.indicatorAdapter.setPosition(this.currentIndex % i);
            this.indicatorAdapter.notifyDataSetChanged();
        }
    }

    protected int dp2px(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    protected int getColor(int i) {
        return ContextCompat.getColor(getContext(), i);
    }

    protected boolean compareListDifferent(List<BannerImg.ResultItem> list, List<BannerImg.ResultItem> list2) {
        if (list2 == null || list2.isEmpty() || list.size() != list2.size()) {
            return true;
        }
        for (int i = 0; i < list.size(); i++) {
            if (TextUtils.isEmpty(list.get(i).getId() + "") || !list.get(i).equals(list2.get(i))) {
                return true;
            }
        }
        return false;
    }
}
