package com.kotlin.basiclib.widget.commontab;

import com.kotlin.basiclib.widget.commontab.listener.CustomTabEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TabEnty.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\u0003H\u0016J\b\u0010\u001a\u001a\u00020\u0005H\u0016J\r\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/kotlin/basiclib/widget/commontab/TabEnty;", "Lcom/kotlin/basiclib/widget/commontab/listener/CustomTabEntity;", "title", "", "selected", "", "unSelect", "(Ljava/lang/String;II)V", "getSelected", "()I", "setSelected", "(I)V", "singleImg", "", "getSingleImg", "()Z", "setSingleImg", "(Z)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getUnSelect", "setUnSelect", "getTabSelectedIcon", "getTabTitle", "getTabUnselectedIcon", "singleIcon", "()Ljava/lang/Boolean;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class TabEnty implements CustomTabEntity {
    private int selected;
    private boolean singleImg;
    private String title;
    private int unSelect;

    public TabEnty(String title, int i, int i2) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.selected = i;
        this.unSelect = i2;
    }

    public final int getSelected() {
        return this.selected;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getUnSelect() {
        return this.unSelect;
    }

    public final void setSelected(int i) {
        this.selected = i;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setUnSelect(int i) {
        this.unSelect = i;
    }

    @Override // com.kotlin.basiclib.widget.commontab.listener.CustomTabEntity
    public Boolean singleIcon() {
        return Boolean.valueOf(this.singleImg);
    }

    public final boolean getSingleImg() {
        return this.singleImg;
    }

    public final void setSingleImg(boolean z) {
        this.singleImg = z;
    }

    @Override // com.kotlin.basiclib.widget.commontab.listener.CustomTabEntity
    public int getTabSelectedIcon() {
        return this.selected;
    }

    @Override // com.kotlin.basiclib.widget.commontab.listener.CustomTabEntity
    /* JADX INFO: renamed from: getTabTitle, reason: from getter */
    public String getTitle() {
        return this.title;
    }

    @Override // com.kotlin.basiclib.widget.commontab.listener.CustomTabEntity
    /* JADX INFO: renamed from: getTabUnselectedIcon, reason: from getter */
    public int getUnSelect() {
        return this.unSelect;
    }
}
