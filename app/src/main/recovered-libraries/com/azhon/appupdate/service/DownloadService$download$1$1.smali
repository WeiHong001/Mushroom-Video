.class final Lcom/azhon/appupdate/service/DownloadService$download$1$1;
.super Ljava/lang/Object;
.source "DownloadService.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azhon/appupdate/service/DownloadService$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/azhon/appupdate/base/bean/DownloadStatus;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/azhon/appupdate/service/DownloadService;


# direct methods
.method constructor <init>(Lcom/azhon/appupdate/service/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/azhon/appupdate/base/bean/DownloadStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/azhon/appupdate/base/bean/DownloadStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    instance-of p2, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Start;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-virtual {p1}, Lcom/azhon/appupdate/service/DownloadService;->start()V

    goto :goto_0

    .line 98
    :cond_0
    instance-of p2, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    check-cast p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    invoke-virtual {p1}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->getMax()I

    move-result v0

    invoke-virtual {p1}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->getProgress()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/azhon/appupdate/service/DownloadService;->downloading(II)V

    goto :goto_0

    .line 99
    :cond_1
    instance-of p2, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    check-cast p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;

    invoke-virtual {p1}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;->getApk()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/azhon/appupdate/service/DownloadService;->done(Ljava/io/File;)V

    goto :goto_0

    .line 100
    :cond_2
    instance-of p2, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Cancel;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    invoke-virtual {p1}, Lcom/azhon/appupdate/service/DownloadService;->cancel()V

    goto :goto_0

    .line 101
    :cond_3
    instance-of p2, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Error;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->this$0:Lcom/azhon/appupdate/service/DownloadService;

    check-cast p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Error;

    invoke-virtual {p1}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Error;->getE()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/azhon/appupdate/service/DownloadService;->error(Ljava/lang/Throwable;)V

    .line 103
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Lcom/azhon/appupdate/base/bean/DownloadStatus;

    invoke-virtual {p0, p1, p2}, Lcom/azhon/appupdate/service/DownloadService$download$1$1;->emit(Lcom/azhon/appupdate/base/bean/DownloadStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
