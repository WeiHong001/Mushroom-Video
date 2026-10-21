.class final Lcom/kotlin/basiclib/base/BasePresenter$MvpViewNotAttachedException;
.super Ljava/lang/RuntimeException;
.source "BasePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/base/BasePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MvpViewNotAttachedException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/BasePresenter$MvpViewNotAttachedException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Please call IPresenter.attachView(IBaseView) before requesting data to the IPresenter"

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
