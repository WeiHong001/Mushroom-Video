.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;->this$2:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;->this$2:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;->this$2:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->val$path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$500(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;->this$2:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;->this$2:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
