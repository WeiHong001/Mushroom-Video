package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogBottomsheetBinding implements ViewBinding {
    public final ImageView dialogBottomsheetIvClose;
    public final RelativeLayout dialogBottomsheetRlTitle;
    public final RecyclerView dialogBottomsheetRvLists;
    public final LinearLayout llTop;
    public final RelativeLayout rlComment;
    private final RelativeLayout rootView;
    public final TextView tvConfirm;

    private DialogBottomsheetBinding(RelativeLayout relativeLayout, ImageView imageView, RelativeLayout relativeLayout2, RecyclerView recyclerView, LinearLayout linearLayout, RelativeLayout relativeLayout3, TextView textView) {
        this.rootView = relativeLayout;
        this.dialogBottomsheetIvClose = imageView;
        this.dialogBottomsheetRlTitle = relativeLayout2;
        this.dialogBottomsheetRvLists = recyclerView;
        this.llTop = linearLayout;
        this.rlComment = relativeLayout3;
        this.tvConfirm = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogBottomsheetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogBottomsheetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_bottomsheet, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogBottomsheetBinding bind(View view) {
        int i = R.id.dialog_bottomsheet_iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_bottomsheet_iv_close);
        if (imageView != null) {
            i = R.id.dialog_bottomsheet_rl_title;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.dialog_bottomsheet_rl_title);
            if (relativeLayout != null) {
                i = R.id.dialog_bottomsheet_rv_lists;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.dialog_bottomsheet_rv_lists);
                if (recyclerView != null) {
                    i = R.id.llTop;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llTop);
                    if (linearLayout != null) {
                        i = R.id.rl_comment;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_comment);
                        if (relativeLayout2 != null) {
                            i = R.id.tv_confirm;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_confirm);
                            if (textView != null) {
                                return new DialogBottomsheetBinding((RelativeLayout) view, imageView, relativeLayout, recyclerView, linearLayout, relativeLayout2, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
