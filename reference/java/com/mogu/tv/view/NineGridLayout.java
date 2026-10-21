package com.mogu.tv.view;

import android.R;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.kotlin.basiclib.utils.ScreenUtils;
import com.mogu.tv.model.ShequListModel;
import com.mogu.tv.utils.ImageUtil;
import java.util.List;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public class NineGridLayout extends ViewGroup {
    private int DEFAULT_WIDTH;
    private final int ITEM_GAP;
    private NineGridAdapter adapter;
    private int columns;
    private int defaultHeight;
    private int defaultWidth;
    private int gap;
    private Context mContext;
    private int oldCount;
    private OnItemClickListerner onItemClickListerner;
    private int rows;
    int singleHeight;
    int singleWidth;
    private int totalWidth;

    public interface OnItemClickListerner {
        void onItemClick(View view, int i);
    }

    public NineGridLayout(Context context) {
        this(context, null);
    }

    public NineGridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ITEM_GAP = 3;
        this.DEFAULT_WIDTH = WKSRecord.Service.EMFIS_DATA;
        this.singleWidth = 0;
        this.singleHeight = 0;
        this.mContext = context;
        double screenWidth = ScreenUtils.INSTANCE.getScreenWidth();
        Double.isNaN(screenWidth);
        this.DEFAULT_WIDTH = (int) (screenWidth / 3.2d);
        this.gap = dip2px(context, 3.0f);
        int iDip2px = dip2px(context, this.DEFAULT_WIDTH);
        this.defaultHeight = iDip2px;
        this.defaultWidth = iDip2px;
    }

    public void setAdapter(NineGridAdapter nineGridAdapter) {
        this.adapter = nineGridAdapter;
        if (nineGridAdapter == null) {
            return;
        }
        generateChildrenLayout(nineGridAdapter.getCount());
        removeAllViews();
        for (int i = 0; i < nineGridAdapter.getCount(); i++) {
            addView(nineGridAdapter.getView(i, null), generateDefaultLayoutParams());
        }
        this.oldCount = nineGridAdapter.getCount();
    }

    public void setAdapter(NineGridAdapter nineGridAdapter, double d) {
        double screenWidth = ScreenUtils.INSTANCE.getScreenWidth();
        Double.isNaN(screenWidth);
        this.DEFAULT_WIDTH = (int) (screenWidth / d);
        this.gap = dip2px(this.mContext, 3.0f);
        int iDip2px = dip2px(this.mContext, this.DEFAULT_WIDTH);
        this.defaultHeight = iDip2px;
        this.defaultWidth = iDip2px;
        this.adapter = nineGridAdapter;
        if (nineGridAdapter == null) {
            return;
        }
        generateChildrenLayout(nineGridAdapter.getCount());
        removeAllViews();
        for (int i = 0; i < nineGridAdapter.getCount(); i++) {
            addView(nineGridAdapter.getView(i, null), generateDefaultLayoutParams());
        }
        this.oldCount = nineGridAdapter.getCount();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        View.MeasureSpec.getMode(i);
        View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        View.MeasureSpec.getSize(i2);
        this.totalWidth = ((size - getPaddingLeft()) - getPaddingRight()) - dip2px(this.mContext, 12.0f);
        NineGridAdapter nineGridAdapter = this.adapter;
        if (nineGridAdapter == null || nineGridAdapter.getCount() <= 0) {
            return;
        }
        int count = this.adapter.getCount();
        if (count == 1) {
            this.singleWidth = this.defaultWidth;
            this.singleHeight = this.defaultHeight;
        } else if (count == 2 || count == 4) {
            int i3 = (this.totalWidth - (this.gap * 2)) / 2;
            this.singleWidth = i3;
            this.singleHeight = i3;
        } else {
            int i4 = (this.totalWidth - (this.gap * 2)) / 3;
            this.singleWidth = i4;
            this.singleHeight = i4;
        }
        measureChildren(View.MeasureSpec.makeMeasureSpec(this.singleWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(this.singleHeight, 1073741824));
        int i5 = this.gap;
        int i6 = this.singleHeight;
        int i7 = this.rows;
        setMeasuredDimension(size, (i6 * i7) + (i5 * (i7 - 1)));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        layoutChildrenView();
    }

    private void layoutChildrenView() {
        NineGridAdapter nineGridAdapter = this.adapter;
        if (nineGridAdapter == null || nineGridAdapter.getCount() == 0) {
            return;
        }
        int count = this.adapter.getCount();
        for (final int i = 0; i < count; i++) {
            int[] iArrFindPosition = findPosition(i);
            int paddingLeft = ((this.singleWidth + this.gap) * iArrFindPosition[1]) + getPaddingLeft();
            int paddingTop = ((this.singleHeight + this.gap) * iArrFindPosition[0]) + getPaddingTop();
            int i2 = this.singleWidth + paddingLeft;
            int i3 = this.singleHeight + paddingTop;
            ImageView imageView = (ImageView) getChildAt(i);
            if (count == 1) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.view.NineGridLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (NineGridLayout.this.onItemClickListerner != null) {
                        NineGridLayout.this.onItemClickListerner.onItemClick(view, i);
                    }
                }
            });
            imageView.layout(paddingLeft, paddingTop, i2, i3);
        }
    }

    private int[] findPosition(int i) {
        int[] iArr = new int[2];
        for (int i2 = 0; i2 < this.rows; i2++) {
            int i3 = 0;
            while (true) {
                int i4 = this.columns;
                if (i3 >= i4) {
                    break;
                }
                if ((i4 * i2) + i3 == i) {
                    iArr[0] = i2;
                    iArr[1] = i3;
                    break;
                }
                i3++;
            }
        }
        return iArr;
    }

    private void generateChildrenLayout(int i) {
        if (i <= 3) {
            this.rows = 1;
            this.columns = i;
        } else {
            if (i <= 6) {
                this.rows = 2;
                this.columns = 3;
                if (i == 4) {
                    this.columns = 2;
                    return;
                }
                return;
            }
            this.rows = 3;
            this.columns = 3;
        }
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setOnItemClickListerner(OnItemClickListerner onItemClickListerner) {
        this.onItemClickListerner = onItemClickListerner;
    }

    public static class NineGridAdapter {
        protected Context context;
        protected List<ShequListModel.Data.Image> list;

        public NineGridAdapter(Context context, List<ShequListModel.Data.Image> list) {
            this.context = context;
            this.list = list;
        }

        public int getCount() {
            List<ShequListModel.Data.Image> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public String getUrl(int i) {
            return this.list.get(i).getPath();
        }

        public View getView(int i, View view) {
            ImageView imageView;
            if (view != null && (view instanceof ImageView)) {
                imageView = (ImageView) view;
            } else {
                imageView = new ImageView(this.context);
            }
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            imageView.setBackgroundColor(this.context.getResources().getColor(R.color.transparent));
            String url = getUrl(i);
            if (!TextUtils.isEmpty(url)) {
                ImageUtil.INSTANCE.loadImage(this.context, url, imageView);
            }
            return imageView;
        }
    }
}
