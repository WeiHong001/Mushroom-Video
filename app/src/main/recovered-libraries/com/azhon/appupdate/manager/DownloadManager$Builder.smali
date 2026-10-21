.class public final Lcom/azhon/appupdate/manager/DownloadManager$Builder;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azhon/appupdate/manager/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0006J\u0006\u0010i\u001a\u00020jJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0018J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0018J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0018J\u000e\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0018J\u000e\u0010k\u001a\u00020\u00002\u0006\u0010l\u001a\u000209J\u000e\u00108\u001a\u00020\u00002\u0006\u00108\u001a\u000209J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020?J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010D\u001a\u000209J\u000e\u0010G\u001a\u00020\u00002\u0006\u0010G\u001a\u00020HJ\u000e\u0010M\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0018J\u000e\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020QJ\u000e\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020XJ\u000e\u0010]\u001a\u00020\u00002\u0006\u0010]\u001a\u000209J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010`\u001a\u000209J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u000209J\u000e\u0010f\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u0018R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\nR\u001a\u0010 \u001a\u00020!X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0008\"\u0004\u0008(\u0010\nR\u001a\u0010)\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001a\"\u0004\u0008+\u0010\u001cR\u001a\u0010,\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001a\"\u0004\u0008.\u0010\u001cR\u001a\u0010/\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001a\"\u0004\u00081\u0010\u001cR\u001a\u00102\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u001a\"\u0004\u00084\u0010\u001cR\u001c\u00105\u001a\u0004\u0018\u00010\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0008\"\u0004\u00087\u0010\nR\u001a\u00108\u001a\u000209X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001c\u0010>\u001a\u0004\u0018\u00010?X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001a\u0010D\u001a\u000209X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010;\"\u0004\u0008F\u0010=R\u001c\u0010G\u001a\u0004\u0018\u00010HX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001a\u0010M\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u001a\"\u0004\u0008O\u0010\u001cR\u001c\u0010P\u001a\u0004\u0018\u00010QX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR \u0010V\u001a\u0008\u0012\u0004\u0012\u00020X0WX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u001a\u0010]\u001a\u000209X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010;\"\u0004\u0008_\u0010=R\u001a\u0010`\u001a\u000209X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010;\"\u0004\u0008b\u0010=R\u001a\u0010c\u001a\u000209X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010;\"\u0004\u0008e\u0010=R\u001a\u0010f\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010\u001a\"\u0004\u0008h\u0010\u001c\u00a8\u0006n"
    }
    d2 = {
        "Lcom/azhon/appupdate/manager/DownloadManager$Builder;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "apkDescription",
        "",
        "getApkDescription$appupdate_release",
        "()Ljava/lang/String;",
        "setApkDescription$appupdate_release",
        "(Ljava/lang/String;)V",
        "apkMD5",
        "getApkMD5$appupdate_release",
        "setApkMD5$appupdate_release",
        "apkName",
        "getApkName$appupdate_release",
        "setApkName$appupdate_release",
        "apkSize",
        "getApkSize$appupdate_release",
        "setApkSize$appupdate_release",
        "apkUrl",
        "getApkUrl$appupdate_release",
        "setApkUrl$appupdate_release",
        "apkVersionCode",
        "",
        "getApkVersionCode$appupdate_release",
        "()I",
        "setApkVersionCode$appupdate_release",
        "(I)V",
        "apkVersionName",
        "getApkVersionName$appupdate_release",
        "setApkVersionName$appupdate_release",
        "application",
        "Landroid/app/Application;",
        "getApplication$appupdate_release",
        "()Landroid/app/Application;",
        "setApplication$appupdate_release",
        "(Landroid/app/Application;)V",
        "contextClsName",
        "getContextClsName$appupdate_release",
        "setContextClsName$appupdate_release",
        "dialogButtonColor",
        "getDialogButtonColor$appupdate_release",
        "setDialogButtonColor$appupdate_release",
        "dialogButtonTextColor",
        "getDialogButtonTextColor$appupdate_release",
        "setDialogButtonTextColor$appupdate_release",
        "dialogImage",
        "getDialogImage$appupdate_release",
        "setDialogImage$appupdate_release",
        "dialogProgressBarColor",
        "getDialogProgressBarColor$appupdate_release",
        "setDialogProgressBarColor$appupdate_release",
        "downloadPath",
        "getDownloadPath$appupdate_release",
        "setDownloadPath$appupdate_release",
        "forcedUpgrade",
        "",
        "getForcedUpgrade$appupdate_release",
        "()Z",
        "setForcedUpgrade$appupdate_release",
        "(Z)V",
        "httpManager",
        "Lcom/azhon/appupdate/base/BaseHttpDownloadManager;",
        "getHttpManager$appupdate_release",
        "()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;",
        "setHttpManager$appupdate_release",
        "(Lcom/azhon/appupdate/base/BaseHttpDownloadManager;)V",
        "jumpInstallPage",
        "getJumpInstallPage$appupdate_release",
        "setJumpInstallPage$appupdate_release",
        "notificationChannel",
        "Landroid/app/NotificationChannel;",
        "getNotificationChannel$appupdate_release",
        "()Landroid/app/NotificationChannel;",
        "setNotificationChannel$appupdate_release",
        "(Landroid/app/NotificationChannel;)V",
        "notifyId",
        "getNotifyId$appupdate_release",
        "setNotifyId$appupdate_release",
        "onButtonClickListener",
        "Lcom/azhon/appupdate/listener/OnButtonClickListener;",
        "getOnButtonClickListener$appupdate_release",
        "()Lcom/azhon/appupdate/listener/OnButtonClickListener;",
        "setOnButtonClickListener$appupdate_release",
        "(Lcom/azhon/appupdate/listener/OnButtonClickListener;)V",
        "onDownloadListeners",
        "",
        "Lcom/azhon/appupdate/listener/OnDownloadListener;",
        "getOnDownloadListeners$appupdate_release",
        "()Ljava/util/List;",
        "setOnDownloadListeners$appupdate_release",
        "(Ljava/util/List;)V",
        "showBgdToast",
        "getShowBgdToast$appupdate_release",
        "setShowBgdToast$appupdate_release",
        "showNewerToast",
        "getShowNewerToast$appupdate_release",
        "setShowNewerToast$appupdate_release",
        "showNotification",
        "getShowNotification$appupdate_release",
        "setShowNotification$appupdate_release",
        "smallIcon",
        "getSmallIcon$appupdate_release",
        "setSmallIcon$appupdate_release",
        "build",
        "Lcom/azhon/appupdate/manager/DownloadManager;",
        "enableLog",
        "enable",
        "onDownloadListener",
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
.field private apkDescription:Ljava/lang/String;

.field private apkMD5:Ljava/lang/String;

.field private apkName:Ljava/lang/String;

.field private apkSize:Ljava/lang/String;

.field private apkUrl:Ljava/lang/String;

.field private apkVersionCode:I

.field private apkVersionName:Ljava/lang/String;

.field private application:Landroid/app/Application;

.field private contextClsName:Ljava/lang/String;

.field private dialogButtonColor:I

.field private dialogButtonTextColor:I

.field private dialogImage:I

.field private dialogProgressBarColor:I

.field private downloadPath:Ljava/lang/String;

.field private forcedUpgrade:Z

.field private httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

.field private jumpInstallPage:Z

.field private notificationChannel:Landroid/app/NotificationChannel;

.field private notifyId:I

.field private onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

.field private onDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/azhon/appupdate/listener/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private showBgdToast:Z

.field private showNewerToast:Z

.field private showNotification:Z

.field private smallIcon:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity.application"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->application:Landroid/app/Application;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activity.javaClass.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->contextClsName:Ljava/lang/String;

    const-string p1, ""

    .line 200
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkUrl:Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkName:Ljava/lang/String;

    const/high16 v0, -0x80000000

    .line 210
    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionCode:I

    .line 215
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionName:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->downloadPath:Ljava/lang/String;

    const/4 v0, -0x1

    .line 231
    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->smallIcon:I

    .line 236
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkDescription:Ljava/lang/String;

    .line 241
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkSize:Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkMD5:Ljava/lang/String;

    .line 265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onDownloadListeners:Ljava/util/List;

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNotification:Z

    .line 280
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->jumpInstallPage:Z

    .line 285
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showBgdToast:Z

    const/16 p1, 0x3f3

    .line 295
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notifyId:I

    .line 300
    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogImage:I

    .line 305
    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonColor:I

    .line 310
    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonTextColor:I

    .line 315
    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogProgressBarColor:I

    return-void
.end method


# virtual methods
.method public final apkDescription(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "apkDescription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final apkMD5(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "apkMD5"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkMD5:Ljava/lang/String;

    return-object p0
.end method

.method public final apkName(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "apkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkName:Ljava/lang/String;

    return-object p0
.end method

.method public final apkSize(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "apkSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkSize:Ljava/lang/String;

    return-object p0
.end method

.method public final apkUrl(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "apkUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final apkVersionCode(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 329
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionCode:I

    return-object p0
.end method

.method public final apkVersionName(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "apkVersionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/azhon/appupdate/manager/DownloadManager;
    .locals 1

    .line 434
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final dialogButtonColor(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 414
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonColor:I

    return-object p0
.end method

.method public final dialogButtonTextColor(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 419
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonTextColor:I

    return-object p0
.end method

.method public final dialogImage(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 409
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogImage:I

    return-object p0
.end method

.method public final dialogProgressBarColor(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 424
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogProgressBarColor:I

    return-object p0
.end method

.method public final enableLog(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    .line 429
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    invoke-virtual {v0, p1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->enable(Z)V

    return-object p0
.end method

.method public final forcedUpgrade(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 399
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->forcedUpgrade:Z

    return-object p0
.end method

.method public final getApkDescription$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkMD5$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkMD5:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkName$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkSize$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkUrl$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkVersionCode$appupdate_release()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionCode:I

    return v0
.end method

.method public final getApkVersionName$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplication$appupdate_release()Landroid/app/Application;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->application:Landroid/app/Application;

    return-object v0
.end method

.method public final getContextClsName$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->contextClsName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialogButtonColor$appupdate_release()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonColor:I

    return v0
.end method

.method public final getDialogButtonTextColor$appupdate_release()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonTextColor:I

    return v0
.end method

.method public final getDialogImage$appupdate_release()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogImage:I

    return v0
.end method

.method public final getDialogProgressBarColor$appupdate_release()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogProgressBarColor:I

    return v0
.end method

.method public final getDownloadPath$appupdate_release()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getForcedUpgrade$appupdate_release()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->forcedUpgrade:Z

    return v0
.end method

.method public final getHttpManager$appupdate_release()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    return-object v0
.end method

.method public final getJumpInstallPage$appupdate_release()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->jumpInstallPage:Z

    return v0
.end method

.method public final getNotificationChannel$appupdate_release()Landroid/app/NotificationChannel;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public final getNotifyId$appupdate_release()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notifyId:I

    return v0
.end method

.method public final getOnButtonClickListener$appupdate_release()Lcom/azhon/appupdate/listener/OnButtonClickListener;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    return-object v0
.end method

.method public final getOnDownloadListeners$appupdate_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/azhon/appupdate/listener/OnDownloadListener;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onDownloadListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getShowBgdToast$appupdate_release()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showBgdToast:Z

    return v0
.end method

.method public final getShowNewerToast$appupdate_release()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNewerToast:Z

    return v0
.end method

.method public final getShowNotification$appupdate_release()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNotification:Z

    return v0
.end method

.method public final getSmallIcon$appupdate_release()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->smallIcon:I

    return v0
.end method

.method public final httpManager(Lcom/azhon/appupdate/base/BaseHttpDownloadManager;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "httpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    return-object p0
.end method

.method public final jumpInstallPage(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->jumpInstallPage:Z

    return-object p0
.end method

.method public final notificationChannel(Landroid/app/NotificationChannel;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "notificationChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notificationChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public final notifyId(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 404
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notifyId:I

    return-object p0
.end method

.method public final onButtonClickListener(Lcom/azhon/appupdate/listener/OnButtonClickListener;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "onButtonClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    return-object p0
.end method

.method public final onDownloadListener(Lcom/azhon/appupdate/listener/OnDownloadListener;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 1

    const-string v0, "onDownloadListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setApkDescription$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkDescription:Ljava/lang/String;

    return-void
.end method

.method public final setApkMD5$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkMD5:Ljava/lang/String;

    return-void
.end method

.method public final setApkName$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkName:Ljava/lang/String;

    return-void
.end method

.method public final setApkSize$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkSize:Ljava/lang/String;

    return-void
.end method

.method public final setApkUrl$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkUrl:Ljava/lang/String;

    return-void
.end method

.method public final setApkVersionCode$appupdate_release(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionCode:I

    return-void
.end method

.method public final setApkVersionName$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionName:Ljava/lang/String;

    return-void
.end method

.method public final setApplication$appupdate_release(Landroid/app/Application;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->application:Landroid/app/Application;

    return-void
.end method

.method public final setContextClsName$appupdate_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->contextClsName:Ljava/lang/String;

    return-void
.end method

.method public final setDialogButtonColor$appupdate_release(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonColor:I

    return-void
.end method

.method public final setDialogButtonTextColor$appupdate_release(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogButtonTextColor:I

    return-void
.end method

.method public final setDialogImage$appupdate_release(I)V
    .locals 0

    .line 300
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogImage:I

    return-void
.end method

.method public final setDialogProgressBarColor$appupdate_release(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->dialogProgressBarColor:I

    return-void
.end method

.method public final setDownloadPath$appupdate_release(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public final setForcedUpgrade$appupdate_release(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->forcedUpgrade:Z

    return-void
.end method

.method public final setHttpManager$appupdate_release(Lcom/azhon/appupdate/base/BaseHttpDownloadManager;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    return-void
.end method

.method public final setJumpInstallPage$appupdate_release(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->jumpInstallPage:Z

    return-void
.end method

.method public final setNotificationChannel$appupdate_release(Landroid/app/NotificationChannel;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public final setNotifyId$appupdate_release(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->notifyId:I

    return-void
.end method

.method public final setOnButtonClickListener$appupdate_release(Lcom/azhon/appupdate/listener/OnButtonClickListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    return-void
.end method

.method public final setOnDownloadListeners$appupdate_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/azhon/appupdate/listener/OnDownloadListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->onDownloadListeners:Ljava/util/List;

    return-void
.end method

.method public final setShowBgdToast$appupdate_release(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showBgdToast:Z

    return-void
.end method

.method public final setShowNewerToast$appupdate_release(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNewerToast:Z

    return-void
.end method

.method public final setShowNotification$appupdate_release(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNotification:Z

    return-void
.end method

.method public final setSmallIcon$appupdate_release(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->smallIcon:I

    return-void
.end method

.method public final showBgdToast(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 394
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showBgdToast:Z

    return-object p0
.end method

.method public final showNewerToast(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 339
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNewerToast:Z

    return-object p0
.end method

.method public final showNotification(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->showNotification:Z

    return-object p0
.end method

.method public final smallIcon(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    .locals 0

    .line 344
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->smallIcon:I

    return-object p0
.end method
