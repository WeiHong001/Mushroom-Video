.class public Lcom/kotlin/basiclib/base/AcManage;
.super Ljava/lang/Object;
.source "AcManage.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/kotlin/basiclib/base/AcManage;


# instance fields
.field public isExit:Z

.field public mMainActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppManager()Lcom/kotlin/basiclib/base/AcManage;
    .locals 1

    .line 28
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->instance:Lcom/kotlin/basiclib/base/AcManage;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/kotlin/basiclib/base/AcManage;

    invoke-direct {v0}, Lcom/kotlin/basiclib/base/AcManage;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/base/AcManage;->instance:Lcom/kotlin/basiclib/base/AcManage;

    .line 31
    :cond_0
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->instance:Lcom/kotlin/basiclib/base/AcManage;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 175
    :try_start_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/base/AcManage;->isExit:Z

    .line 176
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->finishAllActivity()V

    .line 177
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x0

    .line 178
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SameActivitySize(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/kotlin/basiclib/base/AcManage;->isExit:Z

    .line 39
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    .line 42
    :cond_0
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mogu.tv.MainActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iput-object p1, p0, Lcom/kotlin/basiclib/base/AcManage;->mMainActivity:Landroid/app/Activity;

    :cond_1
    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 1

    .line 86
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishAllActivity()V
    .locals 3

    .line 138
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    sget-object v2, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    sget-object v2, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public finishSingleActivityByClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/base/AcManage;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public getActivity(Ljava/lang/Class;)Landroid/app/Activity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Activity;"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getActivitySize()I
    .locals 1

    .line 128
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideView(Landroid/view/View;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isActivityExist(Landroid/app/Activity;)Z
    .locals 2

    .line 162
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isActivityExist(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/kotlin/basiclib/base/AcManage;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public showView(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
