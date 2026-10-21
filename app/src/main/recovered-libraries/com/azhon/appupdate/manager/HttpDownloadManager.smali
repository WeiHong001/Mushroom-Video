.class public final Lcom/azhon/appupdate/manager/HttpDownloadManager;
.super Lcom/azhon/appupdate/base/BaseHttpDownloadManager;
.source "HttpDownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azhon/appupdate/manager/HttpDownloadManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDownloadManager.kt\ncom/azhon/appupdate/manager/HttpDownloadManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J/\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/azhon/appupdate/manager/HttpDownloadManager;",
        "Lcom/azhon/appupdate/base/BaseHttpDownloadManager;",
        "path",
        "",
        "(Ljava/lang/String;)V",
        "shutdown",
        "",
        "cancel",
        "",
        "connectToDownload",
        "apkUrl",
        "apkName",
        "flow",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/azhon/appupdate/base/bean/DownloadStatus;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "download",
        "Lkotlinx/coroutines/flow/Flow;",
        "release",
        "trustAllHosts",
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
.field public static final Companion:Lcom/azhon/appupdate/manager/HttpDownloadManager$Companion;

.field private static final TAG:Ljava/lang/String; = "HttpDownloadManager"


# instance fields
.field private final path:Ljava/lang/String;

.field private shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/azhon/appupdate/manager/HttpDownloadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/azhon/appupdate/manager/HttpDownloadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/azhon/appupdate/manager/HttpDownloadManager;->Companion:Lcom/azhon/appupdate/manager/HttpDownloadManager$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/azhon/appupdate/base/BaseHttpDownloadManager;-><init>()V

    iput-object p1, p0, Lcom/azhon/appupdate/manager/HttpDownloadManager;->path:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$connectToDownload(Lcom/azhon/appupdate/manager/HttpDownloadManager;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/azhon/appupdate/manager/HttpDownloadManager;->connectToDownload(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final connectToDownload(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/azhon/appupdate/base/bean/DownloadStatus;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;

    iget v5, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;

    invoke-direct {v4, v1, v3}, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;-><init>(Lcom/azhon/appupdate/manager/HttpDownloadManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 54
    iget v6, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_2

    if-eq v6, v9, :cond_2

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    :goto_1
    iget-object v0, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget v0, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->I$0:I

    iget-object v2, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/io/FileOutputStream;

    iget-object v6, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$8:Ljava/lang/Object;

    check-cast v6, Ljava/io/Closeable;

    iget-object v7, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    iget-object v8, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$6:Ljava/lang/Object;

    check-cast v8, [B

    iget-object v12, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/io/InputStream;

    iget-object v15, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/net/HttpURLConnection;

    iget-object v9, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v10, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/azhon/appupdate/manager/HttpDownloadManager;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    move-object v2, v9

    move-object v9, v12

    move-object v12, v7

    move v7, v0

    move-object v0, v15

    const/4 v15, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_4

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    new-instance v3, Ljava/net/URL;

    move-object/from16 v6, p1

    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const-string v6, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v6, "GET"

    .line 59
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v6, 0x7530

    .line 60
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 61
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v6, "Accept-Encoding"

    const-string v9, "identity"

    .line 62
    invoke-virtual {v3, v6, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v9, 0xc8

    if-ne v6, v9, :cond_8

    .line 65
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 66
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 67
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 68
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v10, 0x800

    new-array v10, v10, [B

    .line 70
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/azhon/appupdate/manager/HttpDownloadManager;->path:Ljava/lang/String;

    invoke-direct {v12, v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    check-cast v13, Ljava/io/Closeable;

    :try_start_1
    move-object v0, v13

    check-cast v0, Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v6

    move-object v6, v13

    move-object v13, v8

    move-object v8, v10

    move-object v10, v1

    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    .line 72
    :goto_2
    :try_start_2
    invoke-virtual {v14, v8}, Ljava/io/InputStream;->read([B)I

    move-result v15

    iput v15, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v11, -0x1

    if-eq v15, v11, :cond_6

    iget-boolean v11, v10, Lcom/azhon/appupdate/manager/HttpDownloadManager;->shutdown:Z

    if-nez v11, :cond_6

    const/4 v11, 0x0

    .line 73
    iget v15, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v3, v8, v11, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 74
    iget v11, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v15, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v11, v15

    iput v11, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 75
    new-instance v11, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    iget v15, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v11, v7, v15}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;-><init>(II)V

    iput-object v10, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$2:Ljava/lang/Object;

    iput-object v14, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$3:Ljava/lang/Object;

    iput-object v13, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$4:Ljava/lang/Object;

    iput-object v9, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$5:Ljava/lang/Object;

    iput-object v8, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$6:Ljava/lang/Object;

    iput-object v12, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$7:Ljava/lang/Object;

    iput-object v6, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$8:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$9:Ljava/lang/Object;

    iput v7, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->I$0:I

    const/4 v15, 0x1

    iput v15, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    invoke-interface {v2, v11, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_5

    return-object v5

    :cond_5
    :goto_3
    const/4 v11, 0x1

    goto :goto_2

    .line 77
    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 78
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    .line 71
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 80
    iget-boolean v6, v10, Lcom/azhon/appupdate/manager/HttpDownloadManager;->shutdown:Z

    if-eqz v6, :cond_7

    .line 81
    sget-object v6, Lcom/azhon/appupdate/base/bean/DownloadStatus$Cancel;->INSTANCE:Lcom/azhon/appupdate/base/bean/DownloadStatus$Cancel;

    iput-object v0, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$1:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$4:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$5:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$6:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$7:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$8:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$9:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    invoke-interface {v2, v6, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_c

    return-object v5

    .line 83
    :cond_7
    new-instance v6, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;

    invoke-direct {v6, v12}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;-><init>(Ljava/io/File;)V

    iput-object v0, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$1:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$4:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$5:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$6:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$7:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$8:Ljava/lang/Object;

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$9:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    invoke-interface {v2, v6, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_c

    return-object v5

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v6, v13

    .line 71
    :goto_4
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 85
    :cond_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v9, 0x12d

    if-eq v6, v9, :cond_b

    .line 86
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v9, 0x12e

    if-ne v6, v9, :cond_9

    goto :goto_5

    .line 96
    :cond_9
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "Error: Http response code = "

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v6, Lcom/azhon/appupdate/base/bean/DownloadStatus$Error;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v6, v0}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Error;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    iput v7, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    invoke-interface {v2, v6, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    return-object v5

    :cond_a
    move-object v0, v3

    goto :goto_6

    .line 88
    :cond_b
    :goto_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v6, "Location"

    .line 89
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    sget-object v7, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v9, "The current url is the redirect Url, the redirected url is "

    .line 92
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "HttpDownloadManager"

    .line 90
    invoke-virtual {v7, v10, v9}, Lcom/azhon/appupdate/util/LogUtil$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "locationUrl"

    .line 94
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->L$0:Ljava/lang/Object;

    iput v8, v4, Lcom/azhon/appupdate/manager/HttpDownloadManager$connectToDownload$1;->label:I

    invoke-direct {v1, v6, v0, v2, v4}, Lcom/azhon/appupdate/manager/HttpDownloadManager;->connectToDownload(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    return-object v5

    .line 99
    :cond_c
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final trustAllHosts()V
    .locals 5

    .line 106
    new-instance v0, Lcom/azhon/appupdate/manager/HttpDownloadManager$trustAllHosts$manager$1;

    invoke-direct {v0}, Lcom/azhon/appupdate/manager/HttpDownloadManager$trustAllHosts$manager$1;-><init>()V

    check-cast v0, Ljavax/net/ssl/TrustManager;

    :try_start_0
    const-string v1, "TLS"

    .line 120
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 121
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 122
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    sget-object v1, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v2, "trustAllHosts error: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HttpDownloadManager"

    invoke-virtual {v1, v2, v0}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/HttpDownloadManager;->shutdown:Z

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/azhon/appupdate/base/bean/DownloadStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "apkUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apkName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/azhon/appupdate/manager/HttpDownloadManager;->trustAllHosts()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/azhon/appupdate/manager/HttpDownloadManager;->shutdown:Z

    .line 43
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/azhon/appupdate/manager/HttpDownloadManager;->path:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 46
    :cond_0
    new-instance v0, Lcom/azhon/appupdate/manager/HttpDownloadManager$download$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/azhon/appupdate/manager/HttpDownloadManager$download$2;-><init>(Lcom/azhon/appupdate/manager/HttpDownloadManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/azhon/appupdate/manager/HttpDownloadManager$download$3;

    invoke-direct {p2, v1}, Lcom/azhon/appupdate/manager/HttpDownloadManager$download$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 51
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
