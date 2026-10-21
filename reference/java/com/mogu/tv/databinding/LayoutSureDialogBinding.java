package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutSureDialogBinding implements ViewBinding {
    public final TextView content;
    public final TextView ok;
    private final CardView rootView;

    private LayoutSureDialogBinding(CardView cardView, TextView textView, TextView textView2) {
        this.rootView = cardView;
        this.content = textView;
        this.ok = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static LayoutSureDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutSureDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_sure_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutSureDialogBinding bind(View view) {
        int i = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i = R.id.ok;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
            if (textView2 != null) {
                return new LayoutSureDialogBinding((CardView) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
