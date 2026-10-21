.class Lcom/luck/picture/lib/rxbus2/RxBus$3;
.super Ljava/lang/Object;
.source "RxBus.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/rxbus2/RxBus;->addSubscriber(Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/rxbus2/RxBus;

.field final synthetic val$subscriberMethod:Lcom/luck/picture/lib/rxbus2/SubscriberMethod;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/rxbus2/RxBus;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/RxBus$3;->this$0:Lcom/luck/picture/lib/rxbus2/RxBus;

    iput-object p2, p0, Lcom/luck/picture/lib/rxbus2/RxBus$3;->val$subscriberMethod:Lcom/luck/picture/lib/rxbus2/SubscriberMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus$3;->this$0:Lcom/luck/picture/lib/rxbus2/RxBus;

    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/RxBus$3;->val$subscriberMethod:Lcom/luck/picture/lib/rxbus2/SubscriberMethod;

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/rxbus2/RxBus;->access$200(Lcom/luck/picture/lib/rxbus2/RxBus;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;Ljava/lang/Object;)V

    return-void
.end method
