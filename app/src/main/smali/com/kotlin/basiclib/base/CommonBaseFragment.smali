.class public abstract Lcom/kotlin/basiclib/base/CommonBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "CommonBaseFragment.kt"

# interfaces
.implements Lcom/kotlin/basiclib/FragmentBinding;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/kotlin/basiclib/FragmentBinding<",
        "TVB;>;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u000fJ\u0008\u0010\u0015\u001a\u00020\u000fH&J\u0008\u0010\u0016\u001a\u00020\u000fH&J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001e\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0016J\u001e\u0010%\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#H\u0016J/\u0010&\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u000e\u0008\u0001\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020$0(2\u0008\u0008\u0001\u0010)\u001a\u00020*H\u0016\u00a2\u0006\u0002\u0010+J\u001a\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001c\u0010.\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010/\u001a\u00020\u000b2\u0008\u0008\u0002\u00100\u001a\u00020$J\u001f\u00101\u001a\u00020\u0018*\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0001R\u0014\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/kotlin/basiclib/FragmentBinding;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;",
        "()V",
        "binding",
        "getBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "isViewPrepare",
        "",
        "loadingDialog",
        "Landroid/app/Dialog;",
        "closeKeyBord",
        "",
        "mEditText",
        "Landroid/widget/EditText;",
        "mContext",
        "Landroid/content/Context;",
        "dissmissLoading",
        "initData",
        "initView",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPermissionsDenied",
        "requestCode",
        "",
        "perms",
        "",
        "",
        "onPermissionsGranted",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onViewCreated",
        "view",
        "showLoadingDialog",
        "cancelable",
        "text",
        "createViewWithBinding",
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
.field private final synthetic $$delegate_0:Lcom/kotlin/basiclib/FragmentBindingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kotlin/basiclib/FragmentBindingDelegate<",
            "TVB;>;"
        }
    .end annotation
.end field

.field private isViewPrepare:Z

.field private loadingDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 28
    new-instance v0, Lcom/kotlin/basiclib/FragmentBindingDelegate;

    invoke-direct {v0}, Lcom/kotlin/basiclib/FragmentBindingDelegate;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseFragment;->$$delegate_0:Lcom/kotlin/basiclib/FragmentBindingDelegate;

    return-void
.end method

.method public static synthetic showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseFragment;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string/jumbo p2, "\u7a0d\u7b49"

    .line 71
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->showLoadingDialog(ZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showLoadingDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final closeKeyBord(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 1

    const-string v0, "mEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input_method"

    .line 140
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public createViewWithBinding(Landroidx/fragment/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseFragment;->$$delegate_0:Lcom/kotlin/basiclib/FragmentBindingDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kotlin/basiclib/FragmentBindingDelegate;->createViewWithBinding(Landroidx/fragment/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final dissmissLoading()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseFragment;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseFragment;->$$delegate_0:Lcom/kotlin/basiclib/FragmentBindingDelegate;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/FragmentBindingDelegate;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public abstract initData()V
.end method

.method public abstract initView()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object p3, p0

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p3, p1, p2}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->createViewWithBinding(Landroidx/fragment/app/Fragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "perms"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0, p2}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroidx/fragment/app/Fragment;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u62d2\u7edd\u6743\u9650"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5e76\u4e0d\u518d\u8be2\u95ee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 127
    new-instance p2, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    invoke-direct {p2, v0}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6b64\u529f\u80fd\u9700\u8981"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u6743\u9650\uff0c\u5426\u5219\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528\uff0c\u662f\u5426\u6253\u5f00\u8bbe\u7f6e"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    const-string/jumbo p2, "\u597d"

    .line 129
    invoke-virtual {p1, p2}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setPositiveButton(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    const-string/jumbo p2, "\u4e0d\u884c"

    .line 130
    invoke-virtual {p1, p2}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setNegativeButton(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->build()Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->show()V

    :cond_1
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "perms"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u83b7\u53d6\u6210\u529f\u7684\u6743\u9650"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EasyPermissions"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 97
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/kotlin/basiclib/base/CommonBaseFragment;->isViewPrepare:Z

    .line 44
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->initView()V

    .line 45
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->initData()V

    return-void
.end method

.method public final showLoadingDialog(ZLjava/lang/String;)Landroid/app/Dialog;
    .locals 3

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v1, v0, Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;->txt:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance p2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/kotlin/basiclib/R$style;->dialog_full_screen:I

    invoke-direct {p2, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {v0}, Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 79
    iput-object p2, p0, Lcom/kotlin/basiclib/base/CommonBaseFragment;->loadingDialog:Landroid/app/Dialog;

    return-object p2
.end method
