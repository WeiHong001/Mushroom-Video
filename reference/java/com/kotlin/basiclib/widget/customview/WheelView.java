package com.kotlin.basiclib.widget.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Shader;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.OverScroller;
import com.kotlin.basiclib.R;
import com.kotlin.basiclib.utils.ScreenUtils;

/* JADX INFO: loaded from: classes2.dex */
public class WheelView extends View {
    public static final int DEFAULT_HEIGHT = 200;
    public static final int DEFAULT_WIDTH = 100;
    private boolean isConfigChange;
    private boolean isLoop;
    private boolean isPressStatus;
    private boolean isSlideBlurEnable;
    private boolean isSlideTabUp;
    private boolean isTouch;
    private int mCenterIndex;
    private int mCenterTxtColor;
    private float mCenterTxtScale;
    private int mCenterX;
    private int mDataSize;
    private DataSource mDataSource;
    private int mDefaultHeight;
    private int mDefaultWidth;
    private GestureDetector mDetector;
    private float mDistanceY;
    private GestureDetector.OnGestureListener mGestureListener;
    private Point mHalfSize;
    private int mHalfSpaceHeight;
    private TextPaint mHightLightTxtPaint;
    private ItemChangeListener mItemChangeListener;
    private float mItemOffsetY;
    private TextPaint mNormalTxtPaint;
    private int mPosition;
    private int mPressSlide;
    private Paint mPressStatus;
    private int mPreviewColor;
    private int mPreviewCount;
    private float mScrollY;
    private OverScroller mScroller;
    private Point mSize;
    private Paint mSlideBlur;
    private int mSlideBlurColor;
    private int mSlidePressColor;
    private Space[] mSpace;
    private int mSpaceCount;
    private int mSpaceHeight;
    private String mSuffix;
    private int mTxtSize;
    private String mUnit;
    private float mUnitBaseLine;
    private int mUnitColor;
    private int mUnitOffset;
    private TextPaint mUnitPaint;
    private int mUnitTextSize;
    private float mXScale;

    public interface DataSource {
        int getCount();

        String getItem(int i);
    }

    public interface ItemChangeListener {
        void onItemChange(int i, String str);
    }

    public int evaluateColor(float f, int i, int i2) {
        int i3 = i >> 24;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) (((i2 >> 24) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((i5 + ((int) ((((i2 >> 8) & 255) - i5) * f))) << 8) | (i6 + ((int) (f * ((i2 & 255) - i6))));
    }

    static /* synthetic */ float access$116(WheelView wheelView, float f) {
        float f2 = wheelView.mDistanceY + f;
        wheelView.mDistanceY = f2;
        return f2;
    }

    public WheelView(Context context) {
        super(context);
        this.mSize = new Point();
        this.mHalfSize = new Point();
        this.isSlideBlurEnable = true;
        this.isLoop = true;
        this.mPosition = 0;
        this.mUnitPaint = new TextPaint(1);
        this.mHightLightTxtPaint = new TextPaint(1);
        this.mNormalTxtPaint = new TextPaint(1);
        this.mSlideBlur = new Paint();
        this.mPressStatus = new Paint();
        this.mGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.kotlin.basiclib.widget.customview.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.access$116(WheelView.this, f2);
                WheelView.this.invalidate();
                WheelView.this.isPressStatus = false;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                int i;
                int i2;
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.this.isPressStatus = false;
                if (!WheelView.this.isOverScroll()) {
                    if (WheelView.this.isLoop) {
                        i = Integer.MIN_VALUE;
                    } else {
                        if (f2 > 0.0f) {
                            i = 0;
                        } else {
                            i2 = WheelView.this.mSpaceHeight * (WheelView.this.mDataSize - 1);
                            i = Integer.MIN_VALUE;
                        }
                        WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i, i2, 0, WheelView.this.mSpaceHeight);
                        WheelView.this.invalidate();
                    }
                    i2 = Integer.MAX_VALUE;
                    WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i, i2, 0, WheelView.this.mSpaceHeight);
                    WheelView.this.invalidate();
                } else {
                    WheelView.this.centerSpace();
                }
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                if (WheelView.this.mScroller.isFinished()) {
                    return;
                }
                WheelView.this.mScroller.abortAnimation();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                float y = motionEvent.getY();
                Space space = WheelView.this.mSpace[WheelView.this.mCenterIndex];
                if (y < space.f20top) {
                    WheelView.this.onUpSingleTabUp();
                    return true;
                }
                if (y <= space.bottom) {
                    return true;
                }
                WheelView.this.onDownSigleTabUp();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                WheelView.this.isTouch = true;
                return true;
            }
        };
        init(context, null, 0, 0);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSize = new Point();
        this.mHalfSize = new Point();
        this.isSlideBlurEnable = true;
        this.isLoop = true;
        this.mPosition = 0;
        this.mUnitPaint = new TextPaint(1);
        this.mHightLightTxtPaint = new TextPaint(1);
        this.mNormalTxtPaint = new TextPaint(1);
        this.mSlideBlur = new Paint();
        this.mPressStatus = new Paint();
        this.mGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.kotlin.basiclib.widget.customview.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.access$116(WheelView.this, f2);
                WheelView.this.invalidate();
                WheelView.this.isPressStatus = false;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                int i;
                int i2;
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.this.isPressStatus = false;
                if (!WheelView.this.isOverScroll()) {
                    if (WheelView.this.isLoop) {
                        i = Integer.MIN_VALUE;
                    } else {
                        if (f2 > 0.0f) {
                            i = 0;
                        } else {
                            i2 = WheelView.this.mSpaceHeight * (WheelView.this.mDataSize - 1);
                            i = Integer.MIN_VALUE;
                        }
                        WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i, i2, 0, WheelView.this.mSpaceHeight);
                        WheelView.this.invalidate();
                    }
                    i2 = Integer.MAX_VALUE;
                    WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i, i2, 0, WheelView.this.mSpaceHeight);
                    WheelView.this.invalidate();
                } else {
                    WheelView.this.centerSpace();
                }
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                if (WheelView.this.mScroller.isFinished()) {
                    return;
                }
                WheelView.this.mScroller.abortAnimation();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                float y = motionEvent.getY();
                Space space = WheelView.this.mSpace[WheelView.this.mCenterIndex];
                if (y < space.f20top) {
                    WheelView.this.onUpSingleTabUp();
                    return true;
                }
                if (y <= space.bottom) {
                    return true;
                }
                WheelView.this.onDownSigleTabUp();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                WheelView.this.isTouch = true;
                return true;
            }
        };
        init(context, attributeSet, 0, 0);
    }

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSize = new Point();
        this.mHalfSize = new Point();
        this.isSlideBlurEnable = true;
        this.isLoop = true;
        this.mPosition = 0;
        this.mUnitPaint = new TextPaint(1);
        this.mHightLightTxtPaint = new TextPaint(1);
        this.mNormalTxtPaint = new TextPaint(1);
        this.mSlideBlur = new Paint();
        this.mPressStatus = new Paint();
        this.mGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.kotlin.basiclib.widget.customview.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.access$116(WheelView.this, f2);
                WheelView.this.invalidate();
                WheelView.this.isPressStatus = false;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                int i2;
                int i3;
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.this.isPressStatus = false;
                if (!WheelView.this.isOverScroll()) {
                    if (WheelView.this.isLoop) {
                        i2 = Integer.MIN_VALUE;
                    } else {
                        if (f2 > 0.0f) {
                            i2 = 0;
                        } else {
                            i3 = WheelView.this.mSpaceHeight * (WheelView.this.mDataSize - 1);
                            i2 = Integer.MIN_VALUE;
                        }
                        WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i2, i3, 0, WheelView.this.mSpaceHeight);
                        WheelView.this.invalidate();
                    }
                    i3 = Integer.MAX_VALUE;
                    WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i2, i3, 0, WheelView.this.mSpaceHeight);
                    WheelView.this.invalidate();
                } else {
                    WheelView.this.centerSpace();
                }
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                if (WheelView.this.mScroller.isFinished()) {
                    return;
                }
                WheelView.this.mScroller.abortAnimation();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                float y = motionEvent.getY();
                Space space = WheelView.this.mSpace[WheelView.this.mCenterIndex];
                if (y < space.f20top) {
                    WheelView.this.onUpSingleTabUp();
                    return true;
                }
                if (y <= space.bottom) {
                    return true;
                }
                WheelView.this.onDownSigleTabUp();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                WheelView.this.isTouch = true;
                return true;
            }
        };
        init(context, attributeSet, i, 0);
    }

    public WheelView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mSize = new Point();
        this.mHalfSize = new Point();
        this.isSlideBlurEnable = true;
        this.isLoop = true;
        this.mPosition = 0;
        this.mUnitPaint = new TextPaint(1);
        this.mHightLightTxtPaint = new TextPaint(1);
        this.mNormalTxtPaint = new TextPaint(1);
        this.mSlideBlur = new Paint();
        this.mPressStatus = new Paint();
        this.mGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.kotlin.basiclib.widget.customview.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.access$116(WheelView.this, f2);
                WheelView.this.invalidate();
                WheelView.this.isPressStatus = false;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                int i3;
                int i4;
                if (!WheelView.this.mScroller.isFinished()) {
                    WheelView.this.mScroller.abortAnimation();
                }
                WheelView.this.isPressStatus = false;
                if (!WheelView.this.isOverScroll()) {
                    if (WheelView.this.isLoop) {
                        i3 = Integer.MIN_VALUE;
                    } else {
                        if (f2 > 0.0f) {
                            i3 = 0;
                        } else {
                            i4 = WheelView.this.mSpaceHeight * (WheelView.this.mDataSize - 1);
                            i3 = Integer.MIN_VALUE;
                        }
                        WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i3, i4, 0, WheelView.this.mSpaceHeight);
                        WheelView.this.invalidate();
                    }
                    i4 = Integer.MAX_VALUE;
                    WheelView.this.mScroller.fling(0, (int) WheelView.this.mScrollY, 0, (int) (-f2), 0, 0, i3, i4, 0, WheelView.this.mSpaceHeight);
                    WheelView.this.invalidate();
                } else {
                    WheelView.this.centerSpace();
                }
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                if (WheelView.this.mScroller.isFinished()) {
                    return;
                }
                WheelView.this.mScroller.abortAnimation();
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                float y = motionEvent.getY();
                Space space = WheelView.this.mSpace[WheelView.this.mCenterIndex];
                if (y < space.f20top) {
                    WheelView.this.onUpSingleTabUp();
                    return true;
                }
                if (y <= space.bottom) {
                    return true;
                }
                WheelView.this.onDownSigleTabUp();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                WheelView.this.isTouch = true;
                return true;
            }
        };
        init(context, attributeSet, i, i2);
    }

    private void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mDefaultWidth = ScreenUtils.INSTANCE.dip2px(context, 100.0f);
        this.mDefaultHeight = ScreenUtils.INSTANCE.dip2px(context, 200.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelView, i, i2);
        this.mSuffix = typedArrayObtainStyledAttributes.getString(R.styleable.WheelView_item_suffix);
        this.mUnitOffset = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.WheelView_unit_offset, ScreenUtils.INSTANCE.dip2px(context, 25.0f));
        this.mUnitColor = typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_unit_txt_color, -15031929);
        this.mUnitTextSize = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.WheelView_unit_txt_size, ScreenUtils.INSTANCE.dip2px(context, 12.0f));
        this.mUnit = typedArrayObtainStyledAttributes.getString(R.styleable.WheelView_unit);
        this.mTxtSize = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.WheelView_txt_size, ScreenUtils.INSTANCE.dip2px(context, 15.0f));
        this.mCenterTxtColor = typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_select_txt_color, -15031929);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.WheelView_select_txt_scale, 1.4f);
        this.mCenterTxtScale = f;
        this.mXScale = f - 1.0f;
        this.mPreviewColor = typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_preview_txt_color, -10066330);
        this.mPreviewCount = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelView_preview_count, 2);
        this.mSlideBlurColor = typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_preview_blur_color, -1);
        this.mSlidePressColor = typedArrayObtainStyledAttributes.getColor(R.styleable.WheelView_preview_press_color, 1149798536);
        this.isLoop = typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelView_loop, true);
        typedArrayObtainStyledAttributes.recycle();
        this.mNormalTxtPaint.setTextAlign(Paint.Align.CENTER);
        this.mNormalTxtPaint.setTextSize(this.mTxtSize);
        this.mNormalTxtPaint.setColor(this.mPreviewColor);
        this.mHightLightTxtPaint.set(this.mNormalTxtPaint);
        this.mPressStatus.setColor(this.mSlidePressColor);
        this.mUnitPaint.setTextAlign(Paint.Align.CENTER);
        this.mUnitPaint.setTextSize(this.mUnitTextSize);
        this.mUnitPaint.setColor(this.mUnitColor);
        this.mScroller = new OverScroller(getContext());
        this.isConfigChange = true;
        GestureDetector gestureDetector = new GestureDetector(getContext(), this.mGestureListener);
        this.mDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            this.mDistanceY = this.mScroller.getCurrY() - this.mScrollY;
            invalidate();
        } else {
            if (this.isTouch || this.mItemOffsetY == 0.0f) {
                return;
            }
            centerSpace();
        }
    }

    private void reCompute() {
        int i = this.mPreviewCount;
        int i2 = (i * 2) + 1;
        this.mSpaceCount = i2;
        this.mCenterIndex = i;
        this.mSpace = new Space[i2];
        Paint.FontMetrics fontMetrics = this.mUnitPaint.getFontMetrics();
        this.mUnitBaseLine = ((getHeight() - fontMetrics.bottom) - fontMetrics.top) / 2.0f;
        Paint.FontMetrics fontMetrics2 = this.mNormalTxtPaint.getFontMetrics();
        int height = getHeight() / this.mSpaceCount;
        int width = getWidth();
        float f = ((height - fontMetrics2.bottom) - fontMetrics2.top) / 2.0f;
        int i3 = width / 2;
        int i4 = height / 2;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.mSpaceCount) {
            Space space = new Space();
            int i7 = i5 + height;
            space.set(0, i5, width, i7, width, height, i3, i5 + i4);
            space.baseline = i5 + f;
            this.mSpace[i6] = space;
            i6++;
            i5 = i7;
            i3 = i3;
        }
        this.mSpaceHeight = height;
        this.mHalfSpaceHeight = i4;
        int i8 = this.mPosition;
        this.mScrollY = i8 == 0 ? 0.0f : i8 * height;
        this.mSlideBlur.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, this.mSize.y / 5, this.mSlideBlurColor, 16777215, Shader.TileMode.CLAMP));
        noticeItemChange();
    }

    public void noticeItemChange() {
        ItemChangeListener itemChangeListener;
        DataSource dataSource = this.mDataSource;
        if (dataSource == null || dataSource.getCount() <= 0 || (itemChangeListener = this.mItemChangeListener) == null) {
            return;
        }
        itemChangeListener.onItemChange(processPosition(this.mPosition), getItemText(this.mPosition));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5 = i / 2;
        this.mCenterX = i5;
        this.mSize.set(i, i2);
        this.mHalfSize.set(i5, i2 / 2);
        this.isConfigChange = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        int size2;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -2);
        }
        if (layoutParams.width == -2) {
            size = this.mDefaultWidth;
        } else if (layoutParams.width == -1 || View.MeasureSpec.getMode(i) == 1073741824) {
            size = View.MeasureSpec.getSize(i);
        } else {
            size = layoutParams.width;
        }
        if (layoutParams.height == -2) {
            size2 = this.mDefaultHeight;
        } else if (layoutParams.width == -1 || View.MeasureSpec.getMode(i2) == 1073741824) {
            size2 = View.MeasureSpec.getSize(i2);
        } else {
            size2 = layoutParams.height;
        }
        setMeasuredDimension(size, size2);
    }

    public int processPosition(int i) {
        int i2 = this.mDataSize;
        if (i2 <= 0) {
            return i;
        }
        if (i < 0) {
            return (i - (((i / i2) - 1) * i2)) % i2;
        }
        return i % i2;
    }

    private String getItemText(int i) {
        return this.mDataSource.getItem(processPosition(i));
    }

    private String getItem(int i) {
        if (this.mSuffix == null) {
            return getItemText(i);
        }
        return getItemText(i) + this.mSuffix;
    }

    private void calculatePosition() {
        int i = this.mPosition;
        if (this.isLoop) {
            float f = this.mScrollY + this.mDistanceY;
            this.mScrollY = f;
            int i2 = this.mSpaceHeight;
            this.mItemOffsetY = f % i2;
            this.mPosition = (int) (f / i2);
        } else {
            float f2 = this.mScrollY;
            float f3 = this.mDistanceY;
            float f4 = f2 + f3;
            int i3 = this.mSpaceHeight;
            int i4 = (int) (f4 / i3);
            if (i4 < 0) {
                this.mPosition = 0;
                float fAbs = f3 * ((this.mSize.y - Math.abs(this.mScrollY)) / this.mSize.y) * 0.2f;
                this.mScrollY += fAbs;
                this.mItemOffsetY += fAbs;
            } else {
                int i5 = this.mDataSize;
                if (i4 >= i5) {
                    this.mPosition = i5 - 1;
                    float fAbs2 = f3 * ((this.mSize.y - Math.abs(this.mScrollY)) / this.mSize.y) * 0.2f;
                    this.mScrollY += fAbs2;
                    this.mItemOffsetY += fAbs2;
                } else {
                    this.mPosition = i4;
                    this.mScrollY = f4;
                    this.mItemOffsetY = f4 % i3;
                }
            }
        }
        if (i != this.mPosition && this.mItemChangeListener != null) {
            noticeItemChange();
        }
        this.mDistanceY = 0.0f;
    }

    private void drawText(Canvas canvas) {
        if (this.mDataSize <= 0) {
            return;
        }
        calculatePosition();
        canvas.save();
        canvas.translate(0.0f, -this.mItemOffsetY);
        Space space = this.mSpace[this.mCenterIndex];
        float fAbs = Math.abs(this.mItemOffsetY) / this.mSpaceHeight;
        drawSpace(canvas, space, getItem(this.mPosition), ((1.0f - fAbs) * this.mXScale) + 1.0f, fAbs);
        int i = 1;
        while (true) {
            int i2 = this.mCenterIndex;
            if (i <= i2) {
                int i3 = this.mPosition - i;
                if (this.isLoop || i3 >= 0) {
                    Space space2 = this.mSpace[i2 - i];
                    float f = space.f20top - (space2.f20top - this.mItemOffsetY);
                    int i4 = this.mSpaceHeight;
                    float f2 = f / i4;
                    drawSpace(canvas, space2, getItem(i3), f > ((float) i4) ? 0.0f : ((1.0f - f2) * this.mXScale) + 1.0f, f2);
                }
                int i5 = this.mPosition + i;
                if (this.isLoop || i5 < this.mDataSize) {
                    Space space3 = this.mSpace[this.mCenterIndex + i];
                    float f3 = (space3.f20top - this.mItemOffsetY) - space.f20top;
                    int i6 = this.mSpaceHeight;
                    float f4 = f3 / i6;
                    drawSpace(canvas, space3, getItem(i5), f3 > ((float) i6) ? 0.0f : ((1.0f - f4) * this.mXScale) + 1.0f, f4);
                }
                i++;
            } else {
                canvas.restore();
                return;
            }
        }
    }

    private void drawSpace(Canvas canvas, Space space, String str, float f, float f2) {
        if (f >= 1.0f) {
            this.mHightLightTxtPaint.setColor(evaluateColor(1.0f - f2, this.mPreviewColor, this.mCenterTxtColor));
            canvas.save();
            if (f > 1.0d) {
                canvas.scale(f, f, space.centerX, space.centerY);
            }
            canvas.drawText(str, space.centerX, space.baseline, this.mHightLightTxtPaint);
            canvas.restore();
            return;
        }
        canvas.drawText(str, space.centerX, space.baseline, this.mNormalTxtPaint);
    }

    private void drawSlideBlur(Canvas canvas) {
        if (this.isSlideBlurEnable) {
            canvas.drawRect(0.0f, 0.0f, this.mSize.x, this.mSize.y, this.mSlideBlur);
            canvas.save();
            canvas.rotate(180.0f, this.mHalfSize.x, this.mHalfSize.y);
            canvas.drawRect(0.0f, 0.0f, this.mSize.x, this.mSize.y, this.mSlideBlur);
            canvas.restore();
        }
    }

    private void drawItemPressStatis(Canvas canvas) {
        if (this.isPressStatus || this.isSlideTabUp) {
            canvas.save();
            if (this.mPressSlide == 1) {
                canvas.rotate(180.0f, this.mHalfSize.x, this.mHalfSize.y);
            }
            canvas.drawRect(0.0f, 0.0f, this.mSize.x, this.mSpace[this.mCenterIndex].f20top, this.mPressStatus);
            canvas.restore();
            this.isSlideTabUp = false;
        }
    }

    private void drawUnit(Canvas canvas) {
        String str = this.mUnit;
        if (str != null) {
            canvas.drawText(str, this.mCenterX + this.mUnitOffset, this.mUnitBaseLine, this.mUnitPaint);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.isConfigChange) {
            reCompute();
            this.isConfigChange = false;
        }
        drawText(canvas);
        drawItemPressStatis(canvas);
        drawSlideBlur(canvas);
        drawUnit(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOverScroll() {
        if (this.isLoop) {
            return false;
        }
        int i = this.mPosition;
        return (i <= 0 && this.mScrollY < 0.0f) || (i >= this.mDataSize - 1 && this.mScrollY > 0.0f);
    }

    public void centerSpace() {
        float fAbs = Math.abs(this.mItemOffsetY);
        if (fAbs > this.mSpaceHeight) {
            this.mScroller.startScroll(0, (int) this.mScrollY, 0, (int) (-this.mItemOffsetY));
            invalidate();
        } else {
            if (fAbs > this.mHalfSpaceHeight && !isOverScroll()) {
                float f = this.mSpaceHeight - fAbs;
                float f2 = this.mScrollY;
                this.mScroller.startScroll(0, (int) f2, 0, (int) (f * (f2 > 0.0f ? 1 : -1)));
                invalidate();
                return;
            }
            this.mScroller.startScroll(0, (int) this.mScrollY, 0, (int) (-this.mItemOffsetY));
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDownSigleTabUp() {
        smoothScrollToPosition(this.mPosition + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpSingleTabUp() {
        smoothScrollToPosition(this.mPosition - 1);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = this.mDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            if (!zOnTouchEvent) {
                centerSpace();
            }
            this.isTouch = false;
            this.isPressStatus = false;
        }
        return true;
    }

    public void setUnit(String str) {
        this.mUnit = str;
        invalidate();
    }

    public void setUnitOffset(int i) {
        this.mUnitOffset = i;
        invalidate();
    }

    public void setUnitColor(int i) {
        this.mUnitColor = i;
        this.mUnitPaint.setColor(i);
    }

    public void setUnitTextSize(int i) {
        int iDip2px = ScreenUtils.INSTANCE.dip2px(getContext(), i);
        this.mUnitTextSize = iDip2px;
        this.mUnitPaint.setTextSize(iDip2px);
    }

    public void setSlidePressColor(int i) {
        this.mPressStatus.setColor(i);
        invalidate();
    }

    public void setEnableSlideBlur(boolean z) {
        this.isSlideBlurEnable = z;
        invalidate();
    }

    public void setSlideBlurColor(int i) {
        this.mSlideBlurColor = i;
        this.isConfigChange = true;
        invalidate();
    }

    public void setPreviewCount(int i) {
        this.mPreviewCount = i;
        this.isConfigChange = true;
        invalidate();
    }

    public void setTextSize(int i) {
        int iDip2px = ScreenUtils.INSTANCE.dip2px(getContext(), i);
        this.mTxtSize = iDip2px;
        this.mNormalTxtPaint.setTextSize(iDip2px);
        this.mHightLightTxtPaint.setTextSize(this.mTxtSize);
        this.isConfigChange = true;
        invalidate();
    }

    public void setCenterTextColor(int i) {
        this.mCenterTxtColor = i;
        invalidate();
    }

    public void setPreviewTextColor(int i) {
        this.mPreviewColor = i;
        this.mNormalTxtPaint.setColor(i);
        invalidate();
    }

    public void setCenterTxtScale(float f) {
        this.mCenterTxtScale = f;
        this.mXScale = f - 1.0f;
        invalidate();
    }

    public void setSupportLoop(boolean z) {
        this.isLoop = z;
        invalidate();
    }

    public void setDataSet(String[] strArr) {
        if (strArr == null) {
            strArr = new String[0];
        }
        setDataSource(new DefaultDataSource(strArr));
    }

    public void setDataSource(DataSource dataSource) {
        setPosition(getRealPosition());
        this.mDataSource = dataSource;
        this.mDataSize = dataSource.getCount();
        invalidate();
    }

    public void setSuffix(String str) {
        this.mSuffix = str;
        invalidate();
    }

    public int getPosition() {
        return this.mPosition;
    }

    public int getRealPosition() {
        return processPosition(this.mPosition);
    }

    public String getSelectData() {
        return this.mDataSize <= 0 ? "" : getItemText(this.mPosition);
    }

    public void setPosition(String str) {
        for (int i = 0; i < this.mDataSource.getCount(); i++) {
            if (this.mDataSource.getItem(i).equals(str)) {
                setPosition(i);
                return;
            }
        }
    }

    public void setPosition(int i) {
        if (i != this.mPosition) {
            this.mPosition = i;
            this.mScrollY = this.mSpaceHeight * i;
            this.mItemOffsetY = 0.0f;
            invalidate();
        }
        noticeItemChange();
    }

    public void smoothScrollToPosition(int i) {
        if (i != this.mPosition) {
            if (this.isLoop || (i >= 0 && i < this.mDataSize)) {
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                }
                this.mScroller.startScroll(0, (int) this.mScrollY, 0, (int) (((i - this.mPosition) * this.mSpaceHeight) + this.mItemOffsetY));
                invalidate();
            }
        }
    }

    public void setItemChangListener(ItemChangeListener itemChangeListener) {
        this.mItemChangeListener = itemChangeListener;
        noticeItemChange();
    }

    public class Space {
        public float baseline;
        public int bottom;
        public int centerX;
        public int centerY;
        public int height;
        public int left;
        public int right;

        /* JADX INFO: renamed from: top, reason: collision with root package name */
        public int f20top;
        public int width;

        public Space() {
        }

        public void set(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.left = i;
            this.f20top = i2;
            this.right = i3;
            this.bottom = i4;
            this.width = i5;
            this.height = i6;
            this.centerX = i7;
            this.centerY = i8;
        }
    }

    private class DefaultDataSource implements DataSource {
        String[] mData;

        public DefaultDataSource(String[] strArr) {
            this.mData = strArr;
        }

        @Override // com.kotlin.basiclib.widget.customview.WheelView.DataSource
        public String getItem(int i) {
            return this.mData[i];
        }

        @Override // com.kotlin.basiclib.widget.customview.WheelView.DataSource
        public int getCount() {
            return this.mData.length;
        }
    }
}
