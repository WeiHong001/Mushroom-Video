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
public final class LayoutSimpleDialogBinding implements ViewBinding {
    public final TextView cancel;
    public final TextView content;
    public final TextView ok;
    private final CardView rootView;

    private LayoutSimpleDialogBinding(CardView cardView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = cardView;
        this.cancel = textView;
        this.content = textView2;
        this.ok = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static LayoutSimpleDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutSimpleDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_simple_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutSimpleDialogBinding bind(View view) {
        int i = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i = R.id.content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView2 != null) {
                i = R.id.ok;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                if (textView3 != null) {
                    return new LayoutSimpleDialogBinding((CardView) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
