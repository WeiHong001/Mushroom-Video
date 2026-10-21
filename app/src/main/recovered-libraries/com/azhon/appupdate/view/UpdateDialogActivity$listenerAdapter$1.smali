.class public final Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;
.super Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;
.source "UpdateDialogActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azhon/appupdate/view/UpdateDialogActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1",
        "Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;",
        "done",
        "",
        "apk",
        "Ljava/io/File;",
        "downloading",
        "max",
        "",
        "progress",
        "appupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/azhon/appupdate/view/UpdateDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    .line 161
    invoke-direct {p0}, Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/io/File;)V
    .locals 3

    const-string v0, "apk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {v0, p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$setApk$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;Ljava/io/File;)V

    .line 174
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getManager$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "manager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager;->getForcedUpgrade()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 175
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getBtnUpdate$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string v1, "btnUpdate"

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {v2}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getInstall$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getBtnUpdate$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getBtnUpdate$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-virtual {p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/azhon/appupdate/R$string;->click_hint:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public downloading(II)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "progressBar"

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {v2}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getProgressBar$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Lcom/azhon/appupdate/view/NumberProgressBar;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_0
    invoke-virtual {v2}, Lcom/azhon/appupdate/view/NumberProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    int-to-double v2, p2

    int-to-double p1, p1

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double v2, v2, p1

    double-to-int p1, v2

    .line 166
    iget-object p2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {p2}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getProgressBar$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Lcom/azhon/appupdate/view/NumberProgressBar;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/azhon/appupdate/view/NumberProgressBar;->setProgress(I)V

    goto :goto_2

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;->this$0:Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-static {p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->access$getProgressBar$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Lcom/azhon/appupdate/view/NumberProgressBar;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/azhon/appupdate/view/NumberProgressBar;->setVisibility(I)V

    :goto_2
    return-void
.end method
