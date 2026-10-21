package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogCommentBinding implements ViewBinding {
    public final EditText editContent;
    public final RelativeLayout rlBottomComment;
    public final RelativeLayout rlContent;
    private final RelativeLayout rootView;
    public final TextView tvSend;
    public final View vExit;

    private DialogCommentBinding(RelativeLayout relativeLayout, EditText editText, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView, View view) {
        this.rootView = relativeLayout;
        this.editContent = editText;
        this.rlBottomComment = relativeLayout2;
        this.rlContent = relativeLayout3;
        this.tvSend = textView;
        this.vExit = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static DialogCommentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCommentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_comment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogCommentBinding bind(View view) {
        int i = R.id.edit_content;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.edit_content);
        if (editText != null) {
            i = R.id.rl_bottom_comment;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_bottom_comment);
            if (relativeLayout != null) {
                RelativeLayout relativeLayout2 = (RelativeLayout) view;
                i = R.id.tv_send;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send);
                if (textView != null) {
                    i = R.id.v_exit;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.v_exit);
                    if (viewFindChildViewById != null) {
                        return new DialogCommentBinding(relativeLayout2, editText, relativeLayout, relativeLayout2, textView, viewFindChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
