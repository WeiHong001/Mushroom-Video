.class public final Lcom/mogu/tv/ui/LoadingActivity$initLock$1;
.super Ljava/lang/Object;
.source "LoadingActivity.kt"

# interfaces
.implements Lcom/github/ihsg/patternlocker/OnPatternChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/LoadingActivity;->initLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadingActivity.kt\ncom/mogu/tv/ui/LoadingActivity$initLock$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,345:1\n1851#2,2:346\n*S KotlinDebug\n*F\n+ 1 LoadingActivity.kt\ncom/mogu/tv/ui/LoadingActivity$initLock$1\n*L\n187#1:346,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001e\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/mogu/tv/ui/LoadingActivity$initLock$1",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 3
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

    .line 187
    check-cast p2, Ljava/lang/Iterable;

    .line 346
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 190
    :cond_0
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v0}, Lcom/mogu/tv/common/cache/CacheKey;->getLOCK()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString$default(Lcom/kotlin/basiclib/utils/SpUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rlPhoto:Landroid/widget/RelativeLayout;

    const-string v0, "binding.rlPhoto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 192
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActLoadpageBinding;->llLock:Landroid/widget/LinearLayout;

    const-string p2, "binding.llLock"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 193
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/LoadingActivity;->access$initServerData(Lcom/mogu/tv/ui/LoadingActivity;)V

    goto :goto_1

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/LoadingActivity;->getErrorTime()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/LoadingActivity;->setErrorTime(I)V

    .line 196
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActLoadpageBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    invoke-virtual {p1, p2}, Lcom/github/ihsg/patternlocker/PatternLockerView;->updateStatus(Z)V

    .line 197
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initLock$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/LoadingActivity;->getErrorTime()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_2

    .line 198
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u5bc6\u7801\u9519\u8bef\u8fbe\u52305\u6b21\uff0c\u8bf7\u518d\u6b21\u5c1d\u8bd5\u6216\u8005\u5378\u8f7d\u5e94\u7528\u91cd\u65b0\u4e0b\u8f7d\u3002"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_2
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onStart(Lcom/github/ihsg/patternlocker/PatternLockerView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
