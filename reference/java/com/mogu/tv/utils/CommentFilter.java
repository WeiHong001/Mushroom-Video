package com.mogu.tv.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: CommentFilter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/utils/CommentFilter;", "", "()V", "regular", "Lkotlin/text/Regex;", "getRegular", "()Lkotlin/text/Regex;", "setRegular", "(Lkotlin/text/Regex;)V", "replce1", "getReplce1", "setReplce1", "getegularTxt", "", "str", "isRegularText", "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CommentFilter {
    public static final CommentFilter INSTANCE = new CommentFilter();
    private static Regex regular = new Regex("^.*\\d{5}.*$");
    private static Regex replce1 = new Regex("\\s*");

    public final String getegularTxt(String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        return str;
    }

    private CommentFilter() {
    }

    public final Regex getRegular() {
        return regular;
    }

    public final void setRegular(Regex regex) {
        Intrinsics.checkNotNullParameter(regex, "<set-?>");
        regular = regex;
    }

    public final Regex getReplce1() {
        return replce1;
    }

    public final void setReplce1(Regex regex) {
        Intrinsics.checkNotNullParameter(regex, "<set-?>");
        replce1 = regex;
    }

    public final boolean isRegularText(String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        String str2 = str;
        return (regular.matches(str2) || replce1.matches(str2)) ? false : true;
    }
}
