package com.mogu.tv.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.amogu6.tv.R;
import com.mogu.tv.common.PublicConstants;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TipsEditText extends LinearLayout {
    public static final String TOPIC_SEPARATE = "#";
    private TopScrollEditText et_content;
    private String mTopicName;
    private int maxLength;
    private TextView tv_tips;

    public interface OnPhoneGetListener {
        void onPhonesGet(List<String> list);
    }

    public String getTopicName() {
        return this.mTopicName;
    }

    public TipsEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTopicName = "";
        setOrientation(1);
        LayoutInflater.from(context).inflate(R.layout.tips_et, this);
        init();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.mogu.tv.R.styleable.TipsEditText);
        this.maxLength = typedArrayObtainStyledAttributes.getInt(2, 100);
        String string = typedArrayObtainStyledAttributes.getString(3);
        this.et_content.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.maxLength)});
        this.et_content.setHint(string);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.et_content.getLayoutParams();
            this.et_content.setMinHeight(dimensionPixelSize);
            layoutParams.height = -2;
        }
        this.tv_tips.setText(typedArrayObtainStyledAttributes.getString(4));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void init() {
        this.tv_tips = (TextView) findViewById(R.id.tv_tips);
        TopScrollEditText topScrollEditText = (TopScrollEditText) findViewById(R.id.tv_content);
        this.et_content = topScrollEditText;
        topScrollEditText.addTextChangedListener(new TextWatcher() { // from class: com.mogu.tv.view.TipsEditText.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (TipsEditText.this.mTopicName.isEmpty()) {
                    return;
                }
                int length = TipsEditText.this.mTopicName.length();
                if (i != length + 1 || i2 <= 0) {
                    return;
                }
                TipsEditText.this.mTopicName = "";
                TipsEditText.this.et_content.setTopicTile(TipsEditText.this.mTopicName);
                TipsEditText.this.et_content.setText(charSequence.subSequence(length + 2, charSequence.length()));
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TipsEditText.this.tv_tips.setText("最多还可输入" + (TipsEditText.this.maxLength - TipsEditText.this.et_content.getText().length()));
            }
        });
    }

    public void setMaxLength(int i) {
        this.maxLength = i;
        TextView textView = this.tv_tips;
        if (textView != null) {
            textView.setText("最多可以输入" + i + "个字");
            this.et_content.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
        }
    }

    public String getContent() {
        return this.et_content.getText().toString();
    }

    public String getEditInputText() {
        return this.et_content.getEditInputText();
    }

    public int getLength() {
        return this.et_content.getText().toString().length();
    }

    public void setText(String str) {
        try {
            if (str.length() <= this.maxLength) {
                this.et_content.setText(str);
                this.et_content.setSelection(str.length());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setText(Spanned spanned) {
        this.et_content.setText(spanned);
    }

    public void setSelection(int i) {
        this.et_content.setSelection(i);
    }

    public void setHint(String str) {
        this.et_content.setHint(str);
    }

    public void setTextSize(float f) {
        this.et_content.setTextSize(f);
    }

    public void setTopic(String str) {
        this.mTopicName = str;
        StringBuilder sb = new StringBuilder();
        if (!getContent().contains(TOPIC_SEPARATE) || getContent().lastIndexOf(TOPIC_SEPARATE) == 0) {
            sb.append(TOPIC_SEPARATE);
            sb.append(str);
            sb.append(TOPIC_SEPARATE);
            sb.append(getContent());
        } else {
            int iIndexOf = getContent().substring(1, getContent().length()).indexOf(TOPIC_SEPARATE) + 1;
            sb.append(TOPIC_SEPARATE);
            sb.append(str);
            sb.append(TOPIC_SEPARATE);
            sb.append(getContent().substring(iIndexOf + 1, getContent().length()));
        }
        this.et_content.setTopicTile(this.mTopicName);
        setHeightLight(sb.toString(), PublicConstants.CONTENT_TOPIC_COLOR);
        this.et_content.setSelection(sb.toString().length());
    }

    private void setHeightLight(String str, String str2) {
        int iIndexOf = str.indexOf(TOPIC_SEPARATE);
        if (iIndexOf == -1) {
            this.et_content.setText(str);
            return;
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.substring(i, str.length()).indexOf(TOPIC_SEPARATE) + i;
        if (iIndexOf == iIndexOf2) {
            this.et_content.setText(str);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(str2)), iIndexOf, iIndexOf2 + 1, 33);
        this.et_content.setText(spannableStringBuilder);
    }
}
