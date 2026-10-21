.class final Lcom/azhon/appupdate/service/DownloadService$download$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azhon/appupdate/service/DownloadService;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.azhon.appupdate.service.DownloadService$download$1"
    f = "DownloadService.kt"
    i = {}
    l = {
        0x5f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/azhon/appupdate/service/DownloadService;


# direct methods
.method constructor <init>(Lcom/azhon/appupdate/service/DownloadService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/azhon/appupdate/service/DownloadService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/azhon/appupdate/service/DownloadService$download$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/azhon/appupdate/service/DownloadService$download$1;

    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-direct {p1, v0, p2}, Lcom/azhon/appupdate/service/DownloadService$download$1;-><init>(Lcom/azhon/appupdate/service/DownloadService;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/azhon/appupdate/service/DownloadService$download$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/azhon/appupdate/service/DownloadService$download$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/azhon/appupdate/service/DownloadService$download$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/azhon/appupdate/service/DownloadService$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 93
    iget v1, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-static {p1}, Lcom/azhon/appupdate/service/DownloadService;->access$getManager$p(Lcom/azhon/appupdate/service/DownloadService;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p1

    const/4 v1, 0x0

    const-string v3, "manager"

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Lcom/azhon/appupdate/manager/DownloadManager;->getHttpManager()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-static {v4}, Lcom/azhon/appupdate/service/DownloadService;->access$getManager$p(Lcom/azhon/appupdate/service/DownloadService;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    invoke-virtual {v4}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-static {v5}, Lcom/azhon/appupdate/service/DownloadService;->access$getManager$p(Lcom/azhon/appupdate/service/DownloadService;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/azhon/appupdate/base/BaseHttpDownloadManager;->download(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 95
    new-instance v1, Lcom/azhon/appupdate/service/DownloadService$download$1$1;

    iget-object v3, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-direct {v1, v3}, Lcom/azhon/appupdate/service/DownloadService$download$1$1;-><init>(Lcom/azhon/appupdate/service/DownloadService;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/azhon/appupdate/service/DownloadService$download$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 104
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
