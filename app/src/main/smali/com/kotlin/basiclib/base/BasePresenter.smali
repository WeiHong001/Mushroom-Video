.class public Lcom/kotlin/basiclib/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.kt"

# interfaces
.implements Lcom/kotlin/basiclib/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/base/BasePresenter$MvpViewNotAttachedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/kotlin/basiclib/base/IBaseView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kotlin/basiclib/base/IPresenter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0010J\u0008\u0010\u0016\u001a\u00020\u0010H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR$\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0008\u0010\n\u001a\u0004\u0018\u00018\u0000@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/BasePresenter;",
        "T",
        "Lcom/kotlin/basiclib/base/IBaseView;",
        "Lcom/kotlin/basiclib/base/IPresenter;",
        "()V",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "isViewAttached",
        "",
        "()Z",
        "<set-?>",
        "mRootView",
        "getMRootView",
        "()Lcom/kotlin/basiclib/base/IBaseView;",
        "Lcom/kotlin/basiclib/base/IBaseView;",
        "addSubscription",
        "",
        "disposable",
        "Lio/reactivex/disposables/Disposable;",
        "attachView",
        "(Lcom/kotlin/basiclib/base/IBaseView;)V",
        "checkViewAttached",
        "detachView",
        "MvpViewNotAttachedException",
        "basiclib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mRootView:Lcom/kotlin/basiclib/base/IBaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private final isViewAttached()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->mRootView:Lcom/kotlin/basiclib/base/IBaseView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final addSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public attachView(Lcom/kotlin/basiclib/base/IBaseView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "mRootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/kotlin/basiclib/base/BasePresenter;->mRootView:Lcom/kotlin/basiclib/base/IBaseView;

    return-void
.end method

.method public final checkViewAttached()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/BasePresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/kotlin/basiclib/base/BasePresenter$MvpViewNotAttachedException;

    invoke-direct {v0}, Lcom/kotlin/basiclib/base/BasePresenter$MvpViewNotAttachedException;-><init>()V

    throw v0
.end method

.method public detachView()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->mRootView:Lcom/kotlin/basiclib/base/IBaseView;

    .line 27
    iget-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method public final getMRootView()Lcom/kotlin/basiclib/base/IBaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/kotlin/basiclib/base/BasePresenter;->mRootView:Lcom/kotlin/basiclib/base/IBaseView;

    return-object v0
.end method
