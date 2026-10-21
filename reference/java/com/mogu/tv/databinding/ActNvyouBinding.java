package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import me.yokeyword.indexablerv.IndexableLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class ActNvyouBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final IndexableLayout indexbar;
    public final LinearLayout llHead;
    private final LinearLayout rootView;

    private ActNvyouBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, IndexableLayout indexableLayout, LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.indexbar = indexableLayout;
        this.llHead = linearLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActNvyouBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActNvyouBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_nvyou, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActNvyouBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            IndexableLayout indexableLayout = (IndexableLayout) ViewBindings.findChildViewById(view, R.id.indexbar);
            if (indexableLayout != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new ActNvyouBinding(linearLayout, headerLayoutBindingBind, indexableLayout, linearLayout);
            }
            i = R.id.indexbar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
