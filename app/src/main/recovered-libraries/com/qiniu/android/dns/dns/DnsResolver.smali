.class public abstract Lcom/qiniu/android/dns/dns/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# static fields
.field private static defaultExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static timeoutExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final recordType:I

.field private final servers:[Ljava/lang/String;

.field protected final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeoutExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/qiniu/android/dns/dns/DnsResolver;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0, p2}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 40
    :goto_0
    invoke-direct {p0, v1, p2, p3, v0}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Lcom/qiniu/android/dns/dns/DnsResolver;->defaultExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qiniu/android/dns/dns/DnsResolver;-><init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;IILjava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->recordType:I

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    .line 49
    :goto_0
    iput p3, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->timeout:I

    .line 50
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/dns/dns/DnsResolver;)[Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    return-object p0
.end method

.method private lookupHost(Ljava/lang/String;)Lcom/qiniu/android/dns/dns/DnsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver;->recordType:I

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object p1

    return-object p1
.end method

.method private request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 80
    iget-object v1, v10, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    if-eqz v1, :cond_7

    array-length v1, v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 84
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    iget-object v1, v10, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eq v2, v4, :cond_3

    iget-object v2, v10, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-array v12, v4, [Lcom/qiniu/android/dns/dns/DnsResponse;

    aput-object v3, v12, v11

    new-array v13, v4, [Ljava/io/IOException;

    aput-object v3, v13, v11

    new-array v14, v4, [I

    aput v11, v14, v11

    .line 101
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v1, Lcom/qiniu/android/dns/dns/DnsResolver;->timeoutExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/qiniu/android/dns/dns/DnsResolver$1;

    invoke-direct {v2, v10, v15, v13, v0}, Lcom/qiniu/android/dns/dns/DnsResolver$1;-><init>(Lcom/qiniu/android/dns/dns/DnsResolver;Ljava/lang/Object;[Ljava/io/IOException;Ljava/lang/String;)V

    iget v3, v10, Lcom/qiniu/android/dns/dns/DnsResolver;->timeout:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 116
    iget-object v9, v10, Lcom/qiniu/android/dns/dns/DnsResolver;->servers:[Ljava/lang/String;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v5, v9, v7

    .line 118
    iget-object v6, v10, Lcom/qiniu/android/dns/dns/DnsResolver;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/qiniu/android/dns/dns/DnsResolver$2;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v11, v4

    move-object v4, v12

    move-object v0, v6

    move-object/from16 v6, p1

    move/from16 v16, v7

    move/from16 v7, p2

    move/from16 v17, v8

    move-object v8, v13

    move-object/from16 v18, v9

    move-object v9, v14

    invoke-direct/range {v1 .. v9}, Lcom/qiniu/android/dns/dns/DnsResolver$2;-><init>(Lcom/qiniu/android/dns/dns/DnsResolver;Ljava/lang/Object;[Lcom/qiniu/android/dns/dns/DnsResponse;Ljava/lang/String;Ljava/lang/String;I[Ljava/io/IOException;[I)V

    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v11, 0x0

    goto :goto_0

    .line 138
    :cond_1
    monitor-enter v15

    .line 140
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 142
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 144
    :goto_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    aget-object v0, v13, v2

    if-nez v0, :cond_2

    aget-object v0, v12, v2

    return-object v0

    :cond_2
    aget-object v0, v13, v2

    .line 147
    throw v0

    .line 144
    :goto_2
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_3
    const/4 v2, 0x0

    .line 90
    array-length v0, v1

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v0, :cond_5

    aget-object v2, v1, v11

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 91
    invoke-virtual {v10, v2, v4, v5}, Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-object v3

    .line 85
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "host can not empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "server can not empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method abstract request(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/dns/DnsResolver;->lookupHost(Ljava/lang/String;)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/qiniu/android/dns/dns/DnsResponse;->getAnswerArray()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/dns/Record;

    .line 68
    invoke-virtual {v0}, Lcom/qiniu/android/dns/Record;->isTXT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/qiniu/android/dns/Record;

    .line 72
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/qiniu/android/dns/Record;

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
