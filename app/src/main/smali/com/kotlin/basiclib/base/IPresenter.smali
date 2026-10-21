.class public interface abstract Lcom/kotlin/basiclib/base/IPresenter;
.super Ljava/lang/Object;
.source "IPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/kotlin/basiclib/base/IBaseView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u00022\u00020\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/IPresenter;",
        "V",
        "Lcom/kotlin/basiclib/base/IBaseView;",
        "",
        "attachView",
        "",
        "mRootView",
        "(Lcom/kotlin/basiclib/base/IBaseView;)V",
        "detachView",
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


# virtual methods
.method public abstract attachView(Lcom/kotlin/basiclib/base/IBaseView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract detachView()V
.end method
