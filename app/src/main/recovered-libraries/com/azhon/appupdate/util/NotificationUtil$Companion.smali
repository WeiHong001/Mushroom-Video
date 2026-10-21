.class public final Lcom/azhon/appupdate/util/NotificationUtil$Companion;
.super Ljava/lang/Object;
.source "NotificationUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azhon/appupdate/util/NotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0003J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u0011\u001a\u00020\u000eH\u0003J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nJ6\u0010\u0014\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017J&\u0010\u0018\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ&\u0010\u0019\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ6\u0010\u001a\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/azhon/appupdate/util/NotificationUtil$Companion;",
        "",
        "()V",
        "afterO",
        "",
        "manager",
        "Landroid/app/NotificationManager;",
        "builderNotification",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "context",
        "Landroid/content/Context;",
        "icon",
        "",
        "title",
        "",
        "content",
        "cancelNotification",
        "getNotificationChannelId",
        "notificationEnable",
        "",
        "showDoneNotification",
        "authorities",
        "apk",
        "Ljava/io/File;",
        "showErrorNotification",
        "showNotification",
        "showProgressNotification",
        "max",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;-><init>()V

    return-void
.end method

.method private final afterO(Landroid/app/NotificationManager;)V
    .locals 5

    .line 150
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 152
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v0, "AppUpdate"

    .line 153
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const-string v4, "appUpdate"

    .line 152
    invoke-direct {v1, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 160
    :cond_1
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final builderNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 51
    :goto_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 53
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 55
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 57
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "Builder(context, channel\u2026        .setOngoing(true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getNotificationChannelId()Ljava/lang/String;
    .locals 3

    .line 36
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v0, "appUpdate"

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\n                channel.id\n            }"

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final cancelNotification(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/NotificationManager;

    .line 144
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x3f3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotifyId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final notificationEnable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    return p1
.end method

.method public final showDoneNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorities"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apk"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 100
    sget-object v1, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v1

    const/16 v4, 0x3f3

    if-nez v1, :cond_0

    const/16 v1, 0x3f3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotifyId()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 101
    sget-object v1, Lcom/azhon/appupdate/util/ApkUtil;->Companion:Lcom/azhon/appupdate/util/ApkUtil$Companion;

    invoke-virtual {v1, p1, p5, p6}, Lcom/azhon/appupdate/util/ApkUtil$Companion;->createInstallIntent(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p5

    const/4 p6, 0x0

    const/high16 v1, 0x4000000

    .line 102
    invoke-static {p1, p6, p5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->builderNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "builderNotification(cont\u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 108
    sget-object p2, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    invoke-static {p2, v2, v3, v2}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotifyId()I

    move-result v4

    .line 107
    :goto_1
    invoke-virtual {v0, v4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showErrorNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 122
    invoke-direct {p0, v0}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->afterO(Landroid/app/NotificationManager;)V

    .line 124
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/azhon/appupdate/service/DownloadService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    .line 125
    invoke-static {p1, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->builderNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 127
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p3, "builderNotification(cont\u2026\n                .build()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object p3, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2, p4}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x3f3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotifyId()I

    move-result p2

    .line 132
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 64
    invoke-direct {p0, v0}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->afterO(Landroid/app/NotificationManager;)V

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->builderNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p3, "builderNotification(cont\u2026\n                .build()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object p3, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2, p4}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x3f3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotifyId()I

    move-result p2

    .line 69
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->builderNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, 0x1

    if-ne p5, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1, p5, p6, p2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "builderNotification(cont\u2026gress, max == -1).build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object p2, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 p4, 0x0

    invoke-static {p2, p4, p3, p4}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x3f3

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/azhon/appupdate/manager/DownloadManager;->getNotifyId()I

    move-result p2

    .line 85
    :goto_1
    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
