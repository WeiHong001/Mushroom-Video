package com.kotlin.basiclib.base;

import com.kotlin.basiclib.base.IBaseView;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BasePresenter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0010J\b\u0010\u0016\u001a\u00020\u0010H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00018\u00002\b\u0010\n\u001a\u0004\u0018\u00018\u0000@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/kotlin/basiclib/base/BasePresenter;", "T", "Lcom/kotlin/basiclib/base/IBaseView;", "Lcom/kotlin/basiclib/base/IPresenter;", "()V", "compositeDisposable", "Lio/reactivex/disposables/CompositeDisposable;", "isViewAttached", "", "()Z", "<set-?>", "mRootView", "getMRootView", "()Lcom/kotlin/basiclib/base/IBaseView;", "Lcom/kotlin/basiclib/base/IBaseView;", "addSubscription", "", "disposable", "Lio/reactivex/disposables/Disposable;", "attachView", "(Lcom/kotlin/basiclib/base/IBaseView;)V", "checkViewAttached", "detachView", "MvpViewNotAttachedException", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public class BasePresenter<T extends IBaseView> implements IPresenter<T> {
    private CompositeDisposable compositeDisposable = new CompositeDisposable();
    private T mRootView;

    public final T getMRootView() {
        return this.mRootView;
    }

    @Override // com.kotlin.basiclib.base.IPresenter
    public void attachView(T mRootView) {
        Intrinsics.checkNotNullParameter(mRootView, "mRootView");
        this.mRootView = mRootView;
    }

    @Override // com.kotlin.basiclib.base.IPresenter
    public void detachView() {
        this.mRootView = null;
        if (this.compositeDisposable.isDisposed()) {
            return;
        }
        this.compositeDisposable.clear();
    }

    private final boolean isViewAttached() {
        return this.mRootView != null;
    }

    public final void checkViewAttached() {
        if (!isViewAttached()) {
            throw new MvpViewNotAttachedException();
        }
    }

    public final void addSubscription(Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        this.compositeDisposable.add(disposable);
    }

    /* JADX INFO: compiled from: BasePresenter.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\b\u0000¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/kotlin/basiclib/base/BasePresenter$MvpViewNotAttachedException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "()V", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    private static final class MvpViewNotAttachedException extends RuntimeException {
        public MvpViewNotAttachedException() {
            super("Please call IPresenter.attachView(IBaseView) before requesting data to the IPresenter");
        }
    }
}
