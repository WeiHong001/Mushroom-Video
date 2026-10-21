.class public final Lcom/azhon/appupdate/manager/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azhon/appupdate/manager/DownloadManager$Companion;,
        Lcom/azhon/appupdate/manager/DownloadManager$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 u2\u00020\u0001:\u0002tuB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010l\u001a\u00020mJ\u0008\u0010n\u001a\u000209H\u0002J\u0008\u0010o\u001a\u000209H\u0002J\u0008\u0010p\u001a\u00020mH\u0002J\u0006\u0010q\u001a\u00020mJ\r\u0010r\u001a\u00020mH\u0000\u00a2\u0006\u0002\u0008sR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\nR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0008\"\u0004\u0008(\u0010\nR\u001a\u0010)\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001a\"\u0004\u0008+\u0010\u001cR\u001a\u0010,\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001a\"\u0004\u0008.\u0010\u001cR\u001a\u0010/\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001a\"\u0004\u00081\u0010\u001cR\u001a\u00102\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u001a\"\u0004\u00084\u0010\u001cR\u001a\u00105\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0008\"\u0004\u00087\u0010\nR\u001a\u00108\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001a\u0010>\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010;\"\u0004\u0008@\u0010=R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010;\"\u0004\u0008I\u0010=R\u001c\u0010J\u001a\u0004\u0018\u00010KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001a\u0010P\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u001a\"\u0004\u0008R\u0010\u001cR\u001c\u0010S\u001a\u0004\u0018\u00010TX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR \u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0ZX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\u001a\u0010`\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010;\"\u0004\u0008b\u0010=R\u001a\u0010c\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010;\"\u0004\u0008e\u0010=R\u001a\u0010f\u001a\u000209X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010;\"\u0004\u0008h\u0010=R\u001a\u0010i\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010\u001a\"\u0004\u0008k\u0010\u001c\u00a8\u0006v"
    }
    d2 = {
        "Lcom/azhon/appupdate/manager/DownloadManager;",
        "Ljava/io/Serializable;",
        "builder",
        "Lcom/azhon/appupdate/manager/DownloadManager$Builder;",
        "(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)V",
        "apkDescription",
        "",
        "getApkDescription",
        "()Ljava/lang/String;",
        "setApkDescription",
        "(Ljava/lang/String;)V",
        "apkMD5",
        "getApkMD5",
        "setApkMD5",
        "apkName",
        "getApkName",
        "setApkName",
        "apkSize",
        "getApkSize",
        "setApkSize",
        "apkUrl",
        "getApkUrl",
        "setApkUrl",
        "apkVersionCode",
        "",
        "getApkVersionCode",
        "()I",
        "setApkVersionCode",
        "(I)V",
        "apkVersionName",
        "getApkVersionName",
        "setApkVersionName",
        "application",
        "Landroid/app/Application;",
        "getApplication",
        "()Landroid/app/Application;",
        "setApplication",
        "(Landroid/app/Application;)V",
        "contextClsName",
        "getContextClsName",
        "setContextClsName",
        "dialogButtonColor",
        "getDialogButtonColor",
        "setDialogButtonColor",
        "dialogButtonTextColor",
        "getDialogButtonTextColor",
        "setDialogButtonTextColor",
        "dialogImage",
        "getDialogImage",
        "setDialogImage",
        "dialogProgressBarColor",
        "getDialogProgressBarColor",
        "setDialogProgressBarColor",
        "downloadPath",
        "getDownloadPath",
        "setDownloadPath",
        "downloadState",
        "",
        "getDownloadState",
        "()Z",
        "setDownloadState",
        "(Z)V",
        "forcedUpgrade",
        "getForcedUpgrade",
        "setForcedUpgrade",
        "httpManager",
        "Lcom/azhon/appupdate/base/BaseHttpDownloadManager;",
        "getHttpManager",
        "()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;",
        "setHttpManager",
        "(Lcom/azhon/appupdate/base/BaseHttpDownloadManager;)V",
        "jumpInstallPage",
        "getJumpInstallPage",
        "setJumpInstallPage",
        "notificationChannel",
        "Landroid/app/NotificationChannel;",
        "getNotificationChannel",
        "()Landroid/app/NotificationChannel;",
        "setNotificationChannel",
        "(Landroid/app/NotificationChannel;)V",
        "notifyId",
        "getNotifyId",
        "setNotifyId",
        "onButtonClickListener",
        "Lcom/azhon/appupdate/listener/OnButtonClickListener;",
        "getOnButtonClickListener",
        "()Lcom/azhon/appupdate/listener/OnButtonClickListener;",
        "setOnButtonClickListener",
        "(Lcom/azhon/appupdate/listener/OnButtonClickListener;)V",
        "onDownloadListeners",
        "",
        "Lcom/azhon/appupdate/listener/OnDownloadListener;",
        "getOnDownloadListeners",
        "()Ljava/util/List;",
        "setOnDownloadListeners",
        "(Ljava/util/List;)V",
        "showBgdToast",
        "getShowBgdToast",
        "setShowBgdToast",
        "showNewerToast",
        "getShowNewerToast",
        "setShowNewerToast",
        "showNotification",
        "getShowNotification",
        "setShowNotification",
        "smallIcon",
        "getSmallIcon",
        "setSmallIcon",
        "cancel",
        "",
        "checkParams",
        "checkVersionCode",
        "clearListener",
        "download",
        "release",
        "release$appupdate_release",
        "Builder",
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
.field public static final Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static instance:Lcom/azhon/appupdate/manager/DownloadManager;


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

.field private downloadState:Z

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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)V
    .locals 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApplication$appupdate_release()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    .line 45
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getContextClsName$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->contextClsName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkUrl$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkUrl:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkName$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkVersionCode$appupdate_release()I

    move-result v0

    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionCode:I

    .line 76
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkVersionName$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getDownloadPath$appupdate_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/azhon/appupdate/config/Constant;->INSTANCE:Lcom/azhon/appupdate/config/Constant;

    invoke-virtual {v0}, Lcom/azhon/appupdate/config/Constant;->getAPK_PATH()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_0
    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->downloadPath:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getShowNewerToast$appupdate_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNewerToast:Z

    .line 80
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getSmallIcon$appupdate_release()I

    move-result v0

    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->smallIcon:I

    .line 81
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkDescription$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkDescription:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkSize$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkSize:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getApkMD5$appupdate_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkMD5:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getHttpManager$appupdate_release()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    .line 85
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getNotificationChannel$appupdate_release()Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->notificationChannel:Landroid/app/NotificationChannel;

    .line 86
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getOnDownloadListeners$appupdate_release()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onDownloadListeners:Ljava/util/List;

    .line 87
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getOnButtonClickListener$appupdate_release()Lcom/azhon/appupdate/listener/OnButtonClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    .line 88
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getShowNotification$appupdate_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNotification:Z

    .line 89
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getJumpInstallPage$appupdate_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->jumpInstallPage:Z

    .line 90
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getShowBgdToast$appupdate_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showBgdToast:Z

    .line 91
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getForcedUpgrade$appupdate_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->forcedUpgrade:Z

    .line 92
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getNotifyId$appupdate_release()I

    move-result v0

    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->notifyId:I

    .line 93
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getDialogImage$appupdate_release()I

    move-result v0

    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogImage:I

    .line 94
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getDialogButtonColor$appupdate_release()I

    move-result v0

    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogButtonColor:I

    .line 95
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getDialogButtonTextColor$appupdate_release()I

    move-result v0

    iput v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogButtonTextColor:I

    .line 96
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->getDialogProgressBarColor$appupdate_release()I

    move-result p1

    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogProgressBarColor:I

    .line 98
    iget-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    new-instance v0, Lcom/azhon/appupdate/manager/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$1;-><init>(Lcom/azhon/appupdate/manager/DownloadManager;)V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/azhon/appupdate/manager/DownloadManager$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/azhon/appupdate/manager/DownloadManager;-><init>(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)V

    return-void
.end method

.method public static final synthetic access$clearListener(Lcom/azhon/appupdate/manager/DownloadManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/azhon/appupdate/manager/DownloadManager;->clearListener()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/azhon/appupdate/manager/DownloadManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->instance:Lcom/azhon/appupdate/manager/DownloadManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/azhon/appupdate/manager/DownloadManager;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/azhon/appupdate/manager/DownloadManager;->instance:Lcom/azhon/appupdate/manager/DownloadManager;

    return-void
.end method

.method private final checkParams()Z
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkUrl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "DownloadManager"

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "apkUrl can not be empty!"

    invoke-virtual {v0, v3, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 139
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "apkName can not be empty!"

    invoke-virtual {v0, v3, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkName:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, ".apk"

    invoke-static {v0, v6, v2, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 143
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "apkName must endsWith .apk!"

    invoke-virtual {v0, v3, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 146
    :cond_4
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->smallIcon:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    .line 147
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "smallIcon can not be empty!"

    invoke-virtual {v0, v3, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 150
    :cond_5
    sget-object v0, Lcom/azhon/appupdate/config/Constant;->INSTANCE:Lcom/azhon/appupdate/config/Constant;

    iget-object v2, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".fileProvider"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/azhon/appupdate/config/Constant;->setAUTHORITIES(Ljava/lang/String;)V

    return v1
.end method

.method private final checkVersionCode()Z
    .locals 4

    .line 159
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionCode:I

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkDescription:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 163
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "DownloadManager"

    const-string v3, "apkDescription can not be empty!"

    invoke-virtual {v0, v1, v3}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method private final clearListener()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    .line 182
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/base/BaseHttpDownloadManager;->cancel()V

    :goto_0
    return-void
.end method

.method public final download()V
    .locals 5

    .line 112
    invoke-direct {p0}, Lcom/azhon/appupdate/manager/DownloadManager;->checkParams()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/azhon/appupdate/manager/DownloadManager;->checkVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/azhon/appupdate/service/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 118
    :cond_1
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionCode:I

    int-to-long v0, v0

    sget-object v2, Lcom/azhon/appupdate/util/ApkUtil;->Companion:Lcom/azhon/appupdate/util/ApkUtil$Companion;

    iget-object v3, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/azhon/appupdate/util/ApkUtil$Companion;->getVersionCode(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 119
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/azhon/appupdate/view/UpdateDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNewerToast:Z

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/azhon/appupdate/R$string;->latest_version:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    :cond_3
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    iget-object v1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/azhon/appupdate/R$string;->latest_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application.resources.ge\u2026(R.string.latest_version)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "DownloadManager"

    invoke-virtual {v0, v2, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getApkDescription()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkMD5()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkMD5:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkSize()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getApkVersionCode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionCode:I

    return v0
.end method

.method public final getApkVersionName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    return-object v0
.end method

.method public final getContextClsName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->contextClsName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialogButtonColor()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogButtonColor:I

    return v0
.end method

.method public final getDialogButtonTextColor()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogButtonTextColor:I

    return v0
.end method

.method public final getDialogImage()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogImage:I

    return v0
.end method

.method public final getDialogProgressBarColor()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogProgressBarColor:I

    return v0
.end method

.method public final getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadState()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->downloadState:Z

    return v0
.end method

.method public final getForcedUpgrade()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->forcedUpgrade:Z

    return v0
.end method

.method public final getHttpManager()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    return-object v0
.end method

.method public final getJumpInstallPage()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->jumpInstallPage:Z

    return v0
.end method

.method public final getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->notificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public final getNotifyId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->notifyId:I

    return v0
.end method

.method public final getOnButtonClickListener()Lcom/azhon/appupdate/listener/OnButtonClickListener;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    return-object v0
.end method

.method public final getOnDownloadListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/azhon/appupdate/listener/OnDownloadListener;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onDownloadListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getShowBgdToast()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showBgdToast:Z

    return v0
.end method

.method public final getShowNewerToast()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNewerToast:Z

    return v0
.end method

.method public final getShowNotification()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNotification:Z

    return v0
.end method

.method public final getSmallIcon()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/azhon/appupdate/manager/DownloadManager;->smallIcon:I

    return v0
.end method

.method public final release$appupdate_release()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->instance:Lcom/azhon/appupdate/manager/DownloadManager;

    .line 177
    invoke-direct {p0}, Lcom/azhon/appupdate/manager/DownloadManager;->clearListener()V

    return-void
.end method

.method public final setApkDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkDescription:Ljava/lang/String;

    return-void
.end method

.method public final setApkMD5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkMD5:Ljava/lang/String;

    return-void
.end method

.method public final setApkName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkName:Ljava/lang/String;

    return-void
.end method

.method public final setApkSize(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkSize:Ljava/lang/String;

    return-void
.end method

.method public final setApkUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkUrl:Ljava/lang/String;

    return-void
.end method

.method public final setApkVersionCode(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionCode:I

    return-void
.end method

.method public final setApkVersionName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->apkVersionName:Ljava/lang/String;

    return-void
.end method

.method public final setApplication(Landroid/app/Application;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->application:Landroid/app/Application;

    return-void
.end method

.method public final setContextClsName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->contextClsName:Ljava/lang/String;

    return-void
.end method

.method public final setDialogButtonColor(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogButtonColor:I

    return-void
.end method

.method public final setDialogButtonTextColor(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogButtonTextColor:I

    return-void
.end method

.method public final setDialogImage(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogImage:I

    return-void
.end method

.method public final setDialogProgressBarColor(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->dialogProgressBarColor:I

    return-void
.end method

.method public final setDownloadPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadState(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->downloadState:Z

    return-void
.end method

.method public final setForcedUpgrade(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->forcedUpgrade:Z

    return-void
.end method

.method public final setHttpManager(Lcom/azhon/appupdate/base/BaseHttpDownloadManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->httpManager:Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    return-void
.end method

.method public final setJumpInstallPage(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->jumpInstallPage:Z

    return-void
.end method

.method public final setNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->notificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method

.method public final setNotifyId(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->notifyId:I

    return-void
.end method

.method public final setOnButtonClickListener(Lcom/azhon/appupdate/listener/OnButtonClickListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onButtonClickListener:Lcom/azhon/appupdate/listener/OnButtonClickListener;

    return-void
.end method

.method public final setOnDownloadListeners(Ljava/util/List;)V
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

    .line 59
    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->onDownloadListeners:Ljava/util/List;

    return-void
.end method

.method public final setShowBgdToast(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showBgdToast:Z

    return-void
.end method

.method public final setShowNewerToast(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNewerToast:Z

    return-void
.end method

.method public final setShowNotification(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->showNotification:Z

    return-void
.end method

.method public final setSmallIcon(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/azhon/appupdate/manager/DownloadManager;->smallIcon:I

    return-void
.end method
