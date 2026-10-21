package com.kotlin.basiclib.widget.layoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class OverFlyingLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final int DETERMINE_BY_MAX_AND_MIN = -1;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private float angle;
    private int itemSpace;
    protected int mDecoratedMeasurement;
    protected int mDecoratedMeasurementInOther;
    private boolean mEnableBringCenterToFront;
    private boolean mInfinite;
    private boolean mIntegerDy;
    protected float mInterval;
    private int mLeftItems;
    private int mMaxVisibleItemCount;
    protected float mOffset;
    int mOrientation;
    protected OrientationHelper mOrientationHelper;
    private SavedState mPendingSavedState;
    private int mPendingScrollPosition;
    private boolean mRecycleChildrenOnDetach;
    private boolean mReverseLayout;
    private int mRightItems;
    private boolean mSmoothScrollbarEnabled;
    protected int mSpaceInOther;
    protected int mSpaceMain;
    private float minScale;
    OnPageChangeListener onPageChangeListener;

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageSelected(int i);
    }

    protected float getDistanceRatio() {
        return 1.0f;
    }

    protected void setUp() {
    }

    public float getMinScale() {
        return this.minScale;
    }

    public void setMinScale(float f) {
        this.minScale = f;
    }

    public float getAngle() {
        return this.angle;
    }

    public void setAngle(float f) {
        this.angle = f;
    }

    public int getItemSpace() {
        return this.itemSpace;
    }

    public void setItemSpace(int i) {
        this.itemSpace = i;
    }

    protected float setInterval() {
        return this.mDecoratedMeasurement - this.itemSpace;
    }

    protected void setItemViewProperty(View view, float f) {
        float fCalculateScale = calculateScale(this.mSpaceMain + f);
        view.setScaleX(fCalculateScale);
        view.setScaleY(fCalculateScale);
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(0.0f);
        }
        float fCalRotation = calRotation(f);
        if (getOrientation() == 0) {
            view.setRotationY(fCalRotation);
        } else {
            view.setRotationX(-fCalRotation);
        }
    }

    private float calRotation(float f) {
        return ((-this.angle) / this.mInterval) * f;
    }

    private float calculateScale(float f) {
        return (((this.minScale - 1.0f) * Math.abs(f - ((this.mOrientationHelper.getTotalSpace() - this.mDecoratedMeasurement) / 2.0f))) / (this.mOrientationHelper.getTotalSpace() / 2.0f)) + 1.0f;
    }

    protected float setViewElevation(View view, float f) {
        return view.getScaleX() * 5.0f;
    }

    public OverFlyingLayoutManager(Context context) {
        this(0, false);
    }

    public OverFlyingLayoutManager(int i, boolean z) {
        this.minScale = 0.75f;
        this.angle = 8.0f;
        this.itemSpace = 385;
        this.mInfinite = true;
        this.mReverseLayout = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingSavedState = null;
        this.mIntegerDy = false;
        this.mMaxVisibleItemCount = -1;
        setOrientation(i);
        setReverseLayout(z);
        setAutoMeasureEnabled(true);
        setEnableBringCenterToFront(true);
        setIntegerDy(true);
    }

    public OverFlyingLayoutManager(float f, int i, int i2) {
        this(i2, false);
        this.minScale = f;
        this.itemSpace = i;
        this.mOrientation = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        savedState.position = this.mPendingScrollPosition;
        savedState.offset = this.mOffset;
        savedState.isReverseLayout = this.mReverseLayout;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = new SavedState((SavedState) parcelable);
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i == this.mOrientation) {
            return;
        }
        this.mOrientation = i;
        this.mOrientationHelper = null;
        removeAllViews();
    }

    public int getMaxVisibleItemCount() {
        return this.mMaxVisibleItemCount;
    }

    public void setMaxVisibleItemCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (this.mMaxVisibleItemCount == i) {
            return;
        }
        this.mMaxVisibleItemCount = i;
        removeAllViews();
    }

    public boolean isIntegerDy() {
        return this.mIntegerDy;
    }

    public void setIntegerDy(boolean z) {
        this.mIntegerDy = z;
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 0 && getLayoutDirection() == 1) {
            this.mReverseLayout = !this.mReverseLayout;
        }
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        float distanceRatio = ((i < getPosition(getChildAt(0))) == (this.mReverseLayout ^ true) ? -1.0f : 1.0f) / getDistanceRatio();
        if (this.mOrientation == 0) {
            return new PointF(distanceRatio, 0.0f);
        }
        return new PointF(0.0f, distanceRatio);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        float f;
        float f2;
        if (state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            this.mOffset = 0.0f;
            return;
        }
        ensureLayoutState();
        resolveShouldLayoutReverse();
        View viewForPosition = recycler.getViewForPosition(0);
        measureChildWithMargins(viewForPosition, 0, 0);
        this.mDecoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(viewForPosition);
        this.mDecoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(viewForPosition);
        this.mSpaceMain = (this.mOrientationHelper.getTotalSpace() - this.mDecoratedMeasurement) / 2;
        this.mSpaceInOther = (getTotalSpaceInOther() - this.mDecoratedMeasurementInOther) / 2;
        this.mInterval = setInterval();
        setUp();
        this.mLeftItems = ((int) Math.abs(minRemoveOffset() / this.mInterval)) + 1;
        this.mRightItems = ((int) Math.abs(maxRemoveOffset() / this.mInterval)) + 1;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            this.mReverseLayout = savedState.isReverseLayout;
            this.mPendingScrollPosition = this.mPendingSavedState.position;
            this.mOffset = this.mPendingSavedState.offset;
        }
        int i = this.mPendingScrollPosition;
        if (i != -1) {
            if (this.mReverseLayout) {
                f = i;
                f2 = -this.mInterval;
            } else {
                f = i;
                f2 = this.mInterval;
            }
            this.mOffset = f * f2;
        }
        detachAndScrapAttachedViews(recycler);
        layoutItems(recycler);
    }

    public int getTotalSpaceInOther() {
        int width;
        int paddingRight;
        if (this.mOrientation == 0) {
            width = getHeight() - getPaddingTop();
            paddingRight = getPaddingBottom();
        } else {
            width = getWidth() - getPaddingLeft();
            paddingRight = getPaddingRight();
        }
        return width - paddingRight;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
    }

    void ensureLayoutState() {
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        }
    }

    private float getProperty(int i) {
        return i * (this.mReverseLayout ? -this.mInterval : this.mInterval);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
        this.mOffset = 0.0f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mOffset = i * (this.mReverseLayout ? -this.mInterval : this.mInterval);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange();
    }

    private int computeScrollOffset() {
        if (getChildCount() == 0) {
            return 0;
        }
        if (!this.mSmoothScrollbarEnabled) {
            return !this.mReverseLayout ? getCurrentPosition() : (getItemCount() - getCurrentPosition()) - 1;
        }
        float offsetOfRightAdapterPosition = getOffsetOfRightAdapterPosition();
        return !this.mReverseLayout ? (int) offsetOfRightAdapterPosition : (int) (((getItemCount() - 1) * this.mInterval) + offsetOfRightAdapterPosition);
    }

    private int computeScrollExtent() {
        if (getChildCount() == 0) {
            return 0;
        }
        if (this.mSmoothScrollbarEnabled) {
            return (int) this.mInterval;
        }
        return 1;
    }

    private int computeScrollRange() {
        if (getChildCount() == 0) {
            return 0;
        }
        if (!this.mSmoothScrollbarEnabled) {
            return getItemCount();
        }
        return (int) (getItemCount() * this.mInterval);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    private int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        float distanceRatio;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        float f = i;
        float distanceRatio2 = f / getDistanceRatio();
        if (Math.abs(distanceRatio2) < 1.0E-8f) {
            return 0;
        }
        float f2 = this.mOffset + distanceRatio2;
        if (!this.mInfinite && f2 < getMinOffset()) {
            i = (int) (f - ((f2 - getMinOffset()) * getDistanceRatio()));
        } else if (!this.mInfinite && f2 > getMaxOffset()) {
            i = (int) ((getMaxOffset() - this.mOffset) * getDistanceRatio());
        }
        if (this.mIntegerDy) {
            distanceRatio = (int) (i / getDistanceRatio());
        } else {
            distanceRatio = i / getDistanceRatio();
        }
        this.mOffset += distanceRatio;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            layoutScrap(childAt, propertyChangeWhenScroll(childAt) - distanceRatio);
        }
        layoutItems(recycler);
        return i;
    }

    private void layoutItems(RecyclerView.Recycler recycler) {
        int i;
        int i2;
        int i3;
        detachAndScrapAttachedViews(recycler);
        int currentPositionOffset = this.mReverseLayout ? -getCurrentPositionOffset() : getCurrentPositionOffset();
        int i4 = currentPositionOffset - this.mLeftItems;
        int i5 = this.mRightItems + currentPositionOffset;
        if (useMaxVisibleCount()) {
            int i6 = this.mMaxVisibleItemCount;
            if (i6 % 2 == 0) {
                i2 = i6 / 2;
                i3 = (currentPositionOffset - i2) + 1;
            } else {
                i2 = (i6 - 1) / 2;
                i3 = currentPositionOffset - i2;
            }
            int i7 = currentPositionOffset + i2 + 1;
            i4 = i3;
            i5 = i7;
        }
        int itemCount = getItemCount();
        if (!this.mInfinite) {
            if (i4 < 0) {
                if (useMaxVisibleCount()) {
                    i5 = this.mMaxVisibleItemCount;
                }
                i4 = 0;
            }
            if (i5 > itemCount) {
                i5 = itemCount;
            }
        }
        float f = Float.MIN_VALUE;
        while (i4 < i5) {
            if (useMaxVisibleCount() || !removeCondition(getProperty(i4) - this.mOffset)) {
                if (i4 >= itemCount) {
                    i = i4 % itemCount;
                } else if (i4 < 0) {
                    int i8 = (-i4) % itemCount;
                    if (i8 == 0) {
                        i8 = itemCount;
                    }
                    i = itemCount - i8;
                } else {
                    i = i4;
                }
                View viewForPosition = recycler.getViewForPosition(i);
                measureChildWithMargins(viewForPosition, 0, 0);
                resetViewProperty(viewForPosition);
                float property = getProperty(i4) - this.mOffset;
                layoutScrap(viewForPosition, property);
                float viewElevation = this.mEnableBringCenterToFront ? setViewElevation(viewForPosition, property) : i;
                if (viewElevation > f) {
                    addView(viewForPosition);
                } else {
                    addView(viewForPosition, 0);
                }
                f = viewElevation;
            }
            i4++;
        }
    }

    private boolean useMaxVisibleCount() {
        return this.mMaxVisibleItemCount != -1;
    }

    private boolean removeCondition(float f) {
        return f > maxRemoveOffset() || f < minRemoveOffset();
    }

    private void resetViewProperty(View view) {
        view.setRotation(0.0f);
        view.setRotationY(0.0f);
        view.setRotationX(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setAlpha(1.0f);
    }

    private float getMaxOffset() {
        if (this.mReverseLayout) {
            return 0.0f;
        }
        return (getItemCount() - 1) * this.mInterval;
    }

    private float getMinOffset() {
        if (this.mReverseLayout) {
            return (-(getItemCount() - 1)) * this.mInterval;
        }
        return 0.0f;
    }

    private void layoutScrap(View view, float f) {
        int iCalItemLeft = calItemLeft(view, f);
        int iCalItemTop = calItemTop(view, f);
        if (this.mOrientation == 1) {
            int i = this.mSpaceInOther;
            int i2 = this.mSpaceMain;
            layoutDecorated(view, i + iCalItemLeft, i2 + iCalItemTop, i + iCalItemLeft + this.mDecoratedMeasurementInOther, i2 + iCalItemTop + this.mDecoratedMeasurement);
        } else {
            int i3 = this.mSpaceMain;
            int i4 = this.mSpaceInOther;
            layoutDecorated(view, i3 + iCalItemLeft, i4 + iCalItemTop, i3 + iCalItemLeft + this.mDecoratedMeasurement, i4 + iCalItemTop + this.mDecoratedMeasurementInOther);
        }
        setItemViewProperty(view, f);
    }

    protected int calItemLeft(View view, float f) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return (int) f;
    }

    protected int calItemTop(View view, float f) {
        if (this.mOrientation == 1) {
            return (int) f;
        }
        return 0;
    }

    protected float maxRemoveOffset() {
        return this.mOrientationHelper.getTotalSpace() - this.mSpaceMain;
    }

    protected float minRemoveOffset() {
        return ((-this.mDecoratedMeasurement) - this.mOrientationHelper.getStartAfterPadding()) - this.mSpaceMain;
    }

    protected float propertyChangeWhenScroll(View view) {
        int left;
        int i;
        if (this.mOrientation == 1) {
            left = view.getTop();
            i = this.mSpaceMain;
        } else {
            left = view.getLeft();
            i = this.mSpaceMain;
        }
        return left - i;
    }

    public int getCurrentPosition() {
        int currentPositionOffset = getCurrentPositionOffset();
        if (!this.mInfinite) {
            return Math.abs(currentPositionOffset);
        }
        if (this.mReverseLayout) {
            if (currentPositionOffset > 0) {
                return getItemCount() - (currentPositionOffset % getItemCount());
            }
            return (-currentPositionOffset) % getItemCount();
        }
        if (currentPositionOffset >= 0) {
            return currentPositionOffset % getItemCount();
        }
        return (currentPositionOffset % getItemCount()) + getItemCount();
    }

    private int getCurrentPositionOffset() {
        return Math.round(this.mOffset / this.mInterval);
    }

    private float getOffsetOfRightAdapterPosition() {
        if (this.mReverseLayout) {
            if (this.mInfinite) {
                float f = this.mOffset;
                if (f <= 0.0f) {
                    return f % (this.mInterval * getItemCount());
                }
                float itemCount = getItemCount();
                float f2 = this.mInterval;
                return (itemCount * (-f2)) + (this.mOffset % (f2 * getItemCount()));
            }
            return this.mOffset;
        }
        if (this.mInfinite) {
            float f3 = this.mOffset;
            if (f3 >= 0.0f) {
                return f3 % (this.mInterval * getItemCount());
            }
            float itemCount2 = getItemCount();
            float f4 = this.mInterval;
            return (itemCount2 * f4) + (this.mOffset % (f4 * getItemCount()));
        }
        return this.mOffset;
    }

    public int getOffsetToCenter() {
        float currentPosition;
        float distanceRatio;
        if (this.mInfinite) {
            currentPosition = (getCurrentPositionOffset() * this.mInterval) - this.mOffset;
            distanceRatio = getDistanceRatio();
        } else {
            currentPosition = (getCurrentPosition() * (!this.mReverseLayout ? this.mInterval : -this.mInterval)) - this.mOffset;
            distanceRatio = getDistanceRatio();
        }
        return (int) (currentPosition * distanceRatio);
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.onPageChangeListener = onPageChangeListener;
    }

    public void setInfinite(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.mInfinite) {
            return;
        }
        this.mInfinite = z;
        requestLayout();
    }

    public boolean getInfinite() {
        return this.mInfinite;
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public void setEnableBringCenterToFront(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mEnableBringCenterToFront == z) {
            return;
        }
        this.mEnableBringCenterToFront = z;
        requestLayout();
    }

    public boolean getEnableBringCenterToFront() {
        return this.mEnableBringCenterToFront;
    }

    public boolean getSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.kotlin.basiclib.widget.layoutmanager.OverFlyingLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isReverseLayout;
        float offset;
        int position;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.position = parcel.readInt();
            this.offset = parcel.readFloat();
            this.isReverseLayout = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.position = savedState.position;
            this.offset = savedState.offset;
            this.isReverseLayout = savedState.isReverseLayout;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.position);
            parcel.writeFloat(this.offset);
            parcel.writeInt(this.isReverseLayout ? 1 : 0);
        }
    }
}
