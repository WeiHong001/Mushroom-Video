.class public abstract Lcom/kotlin/basiclib/base/CommonBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CommonBaseActivity.kt"

# interfaces
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
.implements Lcom/kotlin/basiclib/ActivityBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;",
        "Lcom/kotlin/basiclib/ActivityBinding<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0015J\u0006\u0010\u0019\u001a\u00020\u0013J\u0008\u0010\u001a\u001a\u00020\u0013H&J\u0008\u0010\u001b\u001a\u00020\u0013H\u0002J\u0008\u0010\u001c\u001a\u00020\u0013H&J\u0008\u0010\u001d\u001a\u00020\u0013H\u0016J\u0012\u0010\u001e\u001a\u00020\u00132\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0008\u0010!\u001a\u00020\u0013H\u0014J\u0008\u0010\"\u001a\u00020\u0013H\u0014J\u001e\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u001e\u0010)\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J/\u0010*\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u000e\u0008\u0001\u0010+\u001a\u0008\u0012\u0004\u0012\u00020(0,2\u0008\u0008\u0001\u0010-\u001a\u00020.H\u0016\u00a2\u0006\u0002\u0010/J\u0008\u00100\u001a\u00020\u0013H\u0014J\u000e\u00101\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u000202J\u0006\u00103\u001a\u00020\u0013J\u001c\u00104\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020(J\u000e\u00108\u001a\u00020\u00132\u0006\u00109\u001a\u00020\u0015J\r\u0010:\u001a\u00020\u0015*\u00020;H\u0096\u0001R\u0012\u0010\u0007\u001a\u00028\u0000X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006<"
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;",
        "Lcom/kotlin/basiclib/ActivityBinding;",
        "()V",
        "binding",
        "getBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "loadingDialog",
        "Landroid/app/Dialog;",
        "mActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "getMActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "setMActivity",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "closeKeyBord",
        "",
        "mEditText",
        "Landroid/view/View;",
        "dissmissLoading",
        "fitStatubar",
        "rootView",
        "fullScreen",
        "initData",
        "initListener",
        "initView",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
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
        "onResume",
        "openKeyBord",
        "Landroid/widget/EditText;",
        "setOrientationPro",
        "showLoadingDialog",
        "cancelable",
        "",
        "text",
        "whiteStatuBar",
        "parenrGroupView",
        "setContentViewWithBinding",
        "Landroid/app/Activity;",
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
.field private final synthetic $$delegate_0:Lcom/kotlin/basiclib/ActivityBindingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kotlin/basiclib/ActivityBindingDelegate<",
            "TVB;>;"
        }
    .end annotation
.end field

.field private loadingDialog:Landroid/app/Dialog;

.field public mActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/kotlin/basiclib/ActivityBindingDelegate;

    invoke-direct {v0}, Lcom/kotlin/basiclib/ActivityBindingDelegate;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->$$delegate_0:Lcom/kotlin/basiclib/ActivityBindingDelegate;

    return-void
.end method

.method private final initListener()V
    .locals 0

    return-void
.end method

.method public static synthetic showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string/jumbo p2, "\u7a0d\u7b49"

    .line 125
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog(ZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showLoadingDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final closeKeyBord(Landroid/view/View;)V
    .locals 2

    const-string v0, "mEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input_method"

    .line 191
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final dissmissLoading()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final fitStatubar(Landroid/view/View;)V
    .locals 2

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kotlin/basiclib/StatusBarUtil;->setPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    .line 86
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/kotlin/basiclib/R$color;->mian_bg_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 84
    invoke-static {p1, v0}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final fullScreen()V
    .locals 5

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-gt v3, v0, :cond_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v3, 0x4000000

    .line 110
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    .line 109
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    return-void
.end method

.method public getBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->$$delegate_0:Lcom/kotlin/basiclib/ActivityBindingDelegate;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/ActivityBindingDelegate;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getMActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initData()V
.end method

.method public abstract initView()V
.end method

.method public onBackPressed()V
    .locals 2

    .line 169
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/base/AcManage;->getActivitySize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.wgq.wangeqiu.ui.main.activity.MainActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/module/mainpage"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 175
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->setMActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 46
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->setContentViewWithBinding(Landroid/app/Activity;)Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->initView()V

    .line 48
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->initData()V

    .line 49
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->initListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 155
    move-object v0, p0

    check-cast v0, Landroid/content/Context;


    return-void
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

    .line 227
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p2}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 235
    move-object p2, p0

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

    .line 236
    new-instance p2, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    invoke-direct {p2, v0}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 237
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

    .line 238
    invoke-virtual {p1, p2}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setPositiveButton(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    const-string/jumbo p2, "\u4e0d\u884c"

    .line 239
    invoke-virtual {p1, p2}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->setNegativeButton(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->build()Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object p1

    .line 241
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

    .line 216
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

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 206
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 160
    move-object v0, p0

    check-cast v0, Landroid/content/Context;


    return-void
.end method

.method public final openKeyBord(Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "mEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input_method"

    .line 182
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    check-cast p1, Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 p1, 0x1

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method public setContentViewWithBinding(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->$$delegate_0:Lcom/kotlin/basiclib/ActivityBindingDelegate;

    invoke-virtual {v0, p1}, Lcom/kotlin/basiclib/ActivityBindingDelegate;->setContentViewWithBinding(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final setMActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final setOrientationPro()V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public final showLoadingDialog(ZLjava/lang/String;)Landroid/app/Dialog;
    .locals 3

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, v0, Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;->txt:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance p2, Landroid/app/Dialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kotlin/basiclib/R$style;->dialog_full_screen:I

    invoke-direct {p2, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 130
    invoke-virtual {v0}, Lcom/kotlin/basiclib/databinding/LayoutLoadingViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 132
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 133
    iput-object p2, p0, Lcom/kotlin/basiclib/base/CommonBaseActivity;->loadingDialog:Landroid/app/Dialog;

    return-object p2
.end method

.method public final whiteStatuBar(Landroid/view/View;)V
    .locals 2

    const-string v0, "parenrGroupView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kotlin/basiclib/StatusBarUtil;->setPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 70
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/kotlin/basiclib/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 72
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/kotlin/basiclib/R$color;->transparent_white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 71
    invoke-static {p1, v0}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
