.class Lcom/qiniu/android/dns/dns/DnsResolver$1;
.super Ljava/lang/Object;
.source "DnsResolver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/dns/DnsResolver;->request(Ljava/lang/String;I)Lcom/qiniu/android/dns/dns/DnsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

.field final synthetic val$exceptions:[Ljava/io/IOException;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$waiter:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/qiniu/android/dns/dns/DnsResolver;Ljava/lang/Object;[Ljava/io/IOException;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    iput-object p2, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$waiter:Ljava/lang/Object;

    iput-object p3, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$exceptions:[Ljava/io/IOException;

    iput-object p4, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$waiter:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$waiter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 109
    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$exceptions:[Ljava/io/IOException;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolver timeout for server:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->this$0:Lcom/qiniu/android/dns/dns/DnsResolver;

    invoke-static {v5}, Lcom/qiniu/android/dns/dns/DnsResolver;->access$000(Lcom/qiniu/android/dns/dns/DnsResolver;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " host:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qiniu/android/dns/dns/DnsResolver$1;->val$host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 110
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
