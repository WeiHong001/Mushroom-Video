.class public final Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;
.super Ljava/lang/Object;
.source "AppLockActivity.kt"

# interfaces
.implements Lcom/github/ihsg/patternlocker/OnPatternChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/AppLockActivity;->initLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppLockActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLockActivity.kt\ncom/mogu/tv/ui/activity/AppLockActivity$initLock$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1851#2,2:113\n*S KotlinDebug\n*F\n+ 1 AppLockActivity.kt\ncom/mogu/tv/ui/activity/AppLockActivity$initLock$1\n*L\n82#1:113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/mogu/tv/ui/activity/AppLockActivity$initLock$1",
        "Lcom/github/ihsg/patternlocker/OnPatternChangeListener;",
        "onChange",
        "",
        "view",
        "Lcom/github/ihsg/patternlocker/PatternLockerView;",
        "hitIndexList",
        "",
        "",
        "onClear",
        "onComplete",
        "onStart",
        "app_mogushareRelease"
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;


# direct methods
.method public static synthetic $r8$lambda$EWixDXZc37QoNsYzSEZJnG8sIMA(Lcom/mogu/tv/ui/activity/AppLockActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->onComplete$lambda-1(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/ui/activity/AppLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onComplete$lambda-1(Lcom/mogu/tv/ui/activity/AppLockActivity;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object p0, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    invoke-virtual {p0}, Lcom/github/ihsg/patternlocker/PatternLockerView;->clearHitState()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/github/ihsg/patternlocker/PatternLockerView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ihsg/patternlocker/PatternLockerView;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hitIndexList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClear(Lcom/github/ihsg/patternlocker/PatternLockerView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Lcom/github/ihsg/patternlocker/PatternLockerView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ihsg/patternlocker/PatternLockerView;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hitIndexList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    check-cast p2, Ljava/lang/Iterable;

    .line 113
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    move-object v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getSubmitTime()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->setLastPassword(Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u518d\u6b21\u786e\u8ba4"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getSubmitTime()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/activity/AppLockActivity;->setSubmitTime(I)V

    .line 89
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    invoke-virtual {p1}, Lcom/github/ihsg/patternlocker/PatternLockerView;->clearHitState()V

    goto :goto_1

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getLastPassword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object p2, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {p2}, Lcom/mogu/tv/common/cache/CacheKey;->getLOCK()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->access$refreshPassWord(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    invoke-virtual {p1, v1}, Lcom/github/ihsg/patternlocker/PatternLockerView;->updateStatus(Z)V

    .line 97
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v0, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4,\u8bf7\u4ece\u65b0\u8bbe\u7f6e"

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    new-instance v1, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Lcom/github/ihsg/patternlocker/PatternLockerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->setSubmitTime(I)V

    .line 102
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/activity/AppLockActivity;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/activity/AppLockActivity;->setLastPassword(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onStart(Lcom/github/ihsg/patternlocker/PatternLockerView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
