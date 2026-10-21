.class public final Lcom/azhon/appupdate/view/UpdateDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UpdateDialogActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azhon/appupdate/view/UpdateDialogActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0012\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0011H\u0014J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/azhon/appupdate/view/UpdateDialogActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "apk",
        "Ljava/io/File;",
        "btnUpdate",
        "Landroid/widget/Button;",
        "install",
        "",
        "listenerAdapter",
        "Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;",
        "manager",
        "Lcom/azhon/appupdate/manager/DownloadManager;",
        "progressBar",
        "Lcom/azhon/appupdate/view/NumberProgressBar;",
        "finish",
        "",
        "init",
        "initView",
        "onBackPressed",
        "onClick",
        "v",
        "Landroid/view/View;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "setWindowSize",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/azhon/appupdate/view/UpdateDialogActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "UpdateDialogActivity"


# instance fields
.field private apk:Ljava/io/File;

.field private btnUpdate:Landroid/widget/Button;

.field private final install:I

.field private final listenerAdapter:Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;

.field private manager:Lcom/azhon/appupdate/manager/DownloadManager;

.field private progressBar:Lcom/azhon/appupdate/view/NumberProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/azhon/appupdate/view/UpdateDialogActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/azhon/appupdate/view/UpdateDialogActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->Companion:Lcom/azhon/appupdate/view/UpdateDialogActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x45

    .line 38
    iput v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->install:I

    .line 161
    new-instance v0, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;

    invoke-direct {v0, p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity$listenerAdapter$1;-><init>(Lcom/azhon/appupdate/view/UpdateDialogActivity;)V

    check-cast v0, Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;

    iput-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->listenerAdapter:Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;

    return-void
.end method

.method public static final synthetic access$getBtnUpdate$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    return-object p0
.end method

.method public static final synthetic access$getInstall$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->install:I

    return p0
.end method

.method public static final synthetic access$getManager$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Lcom/azhon/appupdate/manager/DownloadManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    return-object p0
.end method

.method public static final synthetic access$getProgressBar$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;)Lcom/azhon/appupdate/view/NumberProgressBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->progressBar:Lcom/azhon/appupdate/view/NumberProgressBar;

    return-object p0
.end method

.method public static final synthetic access$setApk$p(Lcom/azhon/appupdate/view/UpdateDialogActivity;Ljava/io/File;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->apk:Ljava/io/File;

    return-void
.end method

.method private final init()V
    .locals 3

    .line 57
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "UpdateDialogActivity"

    const-string v2, "An exception occurred by DownloadManager=null,please check your code!"

    invoke-virtual {v0, v1, v2}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    iput-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_1

    const-string v0, "manager"

    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->listenerAdapter:Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->setWindowSize()V

    .line 65
    invoke-direct {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->initView()V

    return-void
.end method

.method private final initView()V
    .locals 15

    .line 69
    sget v0, Lcom/azhon/appupdate/R$id;->ib_close:I

    invoke-virtual {p0, v0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    sget v1, Lcom/azhon/appupdate/R$id;->line:I

    invoke-virtual {p0, v1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    sget v2, Lcom/azhon/appupdate/R$id;->iv_bg:I

    invoke-virtual {p0, v2}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 72
    sget v3, Lcom/azhon/appupdate/R$id;->tv_title:I

    invoke-virtual {p0, v3}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    sget v4, Lcom/azhon/appupdate/R$id;->tv_size:I

    invoke-virtual {p0, v4}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 74
    sget v5, Lcom/azhon/appupdate/R$id;->tv_description:I

    invoke-virtual {p0, v5}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 75
    sget v6, Lcom/azhon/appupdate/R$id;->np_bar:I

    invoke-virtual {p0, v6}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "findViewById(R.id.np_bar)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/azhon/appupdate/view/NumberProgressBar;

    iput-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->progressBar:Lcom/azhon/appupdate/view/NumberProgressBar;

    .line 76
    sget v6, Lcom/azhon/appupdate/R$id;->btn_update:I

    invoke-virtual {p0, v6}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "findViewById(R.id.btn_update)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    .line 77
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->progressBar:Lcom/azhon/appupdate/view/NumberProgressBar;

    const-string v7, "progressBar"

    const/4 v8, 0x0

    if-nez v6, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_0
    iget-object v9, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const-string v10, "manager"

    if-nez v9, :cond_1

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v8

    :cond_1
    invoke-virtual {v9}, Lcom/azhon/appupdate/manager/DownloadManager;->getForcedUpgrade()Z

    move-result v9

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/16 v9, 0x8

    :goto_0
    invoke-virtual {v6, v9}, Lcom/azhon/appupdate/view/NumberProgressBar;->setVisibility(I)V

    .line 78
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    const-string v9, "btnUpdate"

    if-nez v6, :cond_3

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    if-nez v6, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_4
    move-object v13, p0

    check-cast v13, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v6, :cond_5

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_5
    invoke-virtual {v6}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogImage()I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_7

    .line 82
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v6, :cond_6

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_6
    invoke-virtual {v6}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogImage()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    :cond_7
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v2, :cond_8

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_8
    invoke-virtual {v2}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogButtonTextColor()I

    move-result v2

    if-eq v2, v13, :cond_b

    .line 85
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    if-nez v2, :cond_9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_9
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v6, :cond_a

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_a
    invoke-virtual {v6}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogButtonTextColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 87
    :cond_b
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v2, :cond_c

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_c
    invoke-virtual {v2}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogProgressBarColor()I

    move-result v2

    if-eq v2, v13, :cond_11

    .line 88
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->progressBar:Lcom/azhon/appupdate/view/NumberProgressBar;

    if-nez v2, :cond_d

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_d
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v6, :cond_e

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_e
    invoke-virtual {v6}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogProgressBarColor()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/azhon/appupdate/view/NumberProgressBar;->setReachedBarColor(I)V

    .line 89
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->progressBar:Lcom/azhon/appupdate/view/NumberProgressBar;

    if-nez v2, :cond_f

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_f
    iget-object v6, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v6, :cond_10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v8

    :cond_10
    invoke-virtual {v6}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogProgressBarColor()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/azhon/appupdate/view/NumberProgressBar;->setProgressTextColor(I)V

    .line 91
    :cond_11
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v2, :cond_12

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_12
    invoke-virtual {v2}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogButtonColor()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v13, :cond_15

    .line 92
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 93
    iget-object v7, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v7, :cond_13

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v8

    :cond_13
    invoke-virtual {v7}, Lcom/azhon/appupdate/manager/DownloadManager;->getDialogButtonColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    sget-object v7, Lcom/azhon/appupdate/util/DensityUtil;->Companion:Lcom/azhon/appupdate/util/DensityUtil$Companion;

    move-object v13, p0

    check-cast v13, Landroid/content/Context;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual {v7, v13, v14}, Lcom/azhon/appupdate/util/DensityUtil$Companion;->dip2px(Landroid/content/Context;F)F

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 96
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v13, v6, [I

    const v14, 0x10100a7

    aput v14, v13, v12

    .line 97
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v13, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v13, v12, [I

    .line 98
    invoke-virtual {v7, v13, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    if-nez v2, :cond_14

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_14
    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_15
    iget-object v2, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v2, :cond_16

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v8

    :cond_16
    invoke-virtual {v2}, Lcom/azhon/appupdate/manager/DownloadManager;->getForcedUpgrade()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 103
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_17
    iget-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_18

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_18
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkVersionName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1

    :cond_19
    const/4 v0, 0x0

    :goto_1
    const-string v1, "format(format, *args)"

    if-eqz v0, :cond_1b

    .line 108
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/azhon/appupdate/R$string;->dialog_new:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resources.getString(R.string.dialog_new)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v7, :cond_1a

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v8

    :cond_1a
    invoke-virtual {v7}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkVersionName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v12

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1b
    iget-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_1c

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_1c
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkSize()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_2

    :cond_1d
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1f

    .line 112
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/azhon/appupdate/R$string;->dialog_new_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resources.getString(R.string.dialog_new_size)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v3, :cond_1e

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v8

    :cond_1e
    invoke-virtual {v3}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkSize()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_1f
    iget-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_20

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_20
    move-object v8, v0

    :goto_3
    invoke-virtual {v8}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkDescription()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setWindowSize()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 121
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 123
    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, v0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_0

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getForcedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 153
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 128
    :goto_0
    sget v1, Lcom/azhon/appupdate/R$id;->ib_close:I

    const-string v2, "manager"

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 129
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager;->getForcedUpgrade()Z

    move-result p1

    if-nez p1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->finish()V

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnButtonClickListener()Lcom/azhon/appupdate/listener/OnButtonClickListener;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/azhon/appupdate/listener/OnButtonClickListener;->onButtonClick(I)V

    goto/16 :goto_7

    .line 134
    :cond_6
    :goto_2
    sget v1, Lcom/azhon/appupdate/R$id;->btn_update:I

    if-nez p1, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_11

    .line 135
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    const-string v1, "btnUpdate"

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget v3, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->install:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 136
    sget-object p1, Lcom/azhon/appupdate/util/ApkUtil;->Companion:Lcom/azhon/appupdate/util/ApkUtil$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/azhon/appupdate/config/Constant;->INSTANCE:Lcom/azhon/appupdate/config/Constant;

    invoke-virtual {v2}, Lcom/azhon/appupdate/config/Constant;->getAUTHORITIES()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->apk:Ljava/io/File;

    if-nez v3, :cond_9

    const-string v3, "apk"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v0, v3

    :goto_3
    invoke-virtual {p1, v1, v2, v0}, Lcom/azhon/appupdate/util/ApkUtil$Companion;->installApk(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    return-void

    .line 139
    :cond_a
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez p1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_b
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager;->getForcedUpgrade()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_e

    .line 140
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_c
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    if-nez p1, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_d
    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/azhon/appupdate/R$string;->background_downloading:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 143
    :cond_e
    invoke-virtual {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->finish()V

    .line 145
    :goto_4
    iget-object p1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez p1, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v0, p1

    :goto_5
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnButtonClickListener()Lcom/azhon/appupdate/listener/OnButtonClickListener;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_6

    :cond_10
    invoke-interface {p1, v3}, Lcom/azhon/appupdate/listener/OnButtonClickListener;->onButtonClick(I)V

    .line 146
    :goto_6
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/azhon/appupdate/service/DownloadService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_11
    :goto_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1, p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->overridePendingTransition(II)V

    const-string p1, ""

    .line 51
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    sget p1, Lcom/azhon/appupdate/R$layout;->dialog_update:I

    invoke-virtual {p0, p1}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/azhon/appupdate/view/UpdateDialogActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 183
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_0

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/azhon/appupdate/view/UpdateDialogActivity;->listenerAdapter:Lcom/azhon/appupdate/listener/OnDownloadListenerAdapter;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
