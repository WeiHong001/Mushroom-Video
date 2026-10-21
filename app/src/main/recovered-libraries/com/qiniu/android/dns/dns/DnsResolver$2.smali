.class Lcom/qiniu/android/dns/dns/DnsResolver$2;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

.field final synthetic val$completedCount:[I

.field final synthetic val$exceptions:[Ljava/io/IOException;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$recordType:I

.field final synthetic val$response:[Lcom/qiniu/android/dns/dns/DnsResponse;

.field final synthetic val$serverP:Ljava/lang/String;

.field final synthetic val$waiter:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/dns/DnsResolver;Ljava/lang/Object;[Lcom/qiniu/android/dns/dns/DnsResponse;Ljava/lang/String;Ljava/lang/String;I[Ljava/io/IOException;[I)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    iput-object p2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$waiter:Ljava/lang/Object;

    iput-object p3, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$response:[Lcom/qiniu/android/dns/dns/DnsResponse;

    iput-object p4, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$serverP:Ljava/lang/String;

    iput-object p5, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$host:Ljava/lang/String;

    iput p6, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$recordType:I

    iput-object p7, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$exceptions:[Ljava/io/IOException;

    iput-object p8, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$completedCount:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$waiter:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$response:[Lcom/qiniu/android/dns/dns/DnsResponse;

    iget-object v3, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    iget-object v4, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$serverP:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$host:Ljava/lang/String;

    iget v6, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$recordType:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 125
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    iget-object v3, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$exceptions:[Ljava/io/IOException;

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    aput-object v4, v3, v1

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$completedCount:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 130
    aget v2, v2, v1

    iget-object v3, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    invoke-static {v3}, Lcom/qiniu/android/dns/dns/DnsResolver;->access$000(Lcom/qiniu/android/dns/dns/DnsResolver;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$response:[Lcom/qiniu/android/dns/dns/DnsResponse;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$2;->val$waiter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 133
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
