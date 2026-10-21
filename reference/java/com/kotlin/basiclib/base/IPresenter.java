package com.kotlin.basiclib.base;

import com.kotlin.basiclib.base.IBaseView;
import kotlin.Metadata;

/* JADX INFO: compiled from: IPresenter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u0000*\n\b\u0000\u0010\u0001 \u0000*\u00020\u00022\u00020\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0005H&¨\u0006\t"}, d2 = {"Lcom/kotlin/basiclib/base/IPresenter;", "V", "Lcom/kotlin/basiclib/base/IBaseView;", "", "attachView", "", "mRootView", "(Lcom/kotlin/basiclib/base/IBaseView;)V", "detachView", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface IPresenter<V extends IBaseView> {
    void attachView(V mRootView);

    void detachView();
}
