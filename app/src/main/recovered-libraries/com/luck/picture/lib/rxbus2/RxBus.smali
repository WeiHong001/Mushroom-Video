.class public Lcom/luck/picture/lib/rxbus2/RxBus;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/rxbus2/RxBus$Message;
    }
.end annotation


# static fields
.field public static final LOG_BUS:Ljava/lang/String; = "RXBUS_LOG"

.field private static volatile defaultInstance:Lcom/luck/picture/lib/rxbus2/RxBus;


# instance fields
.field private final bus:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private eventTypesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private subscriberMethodByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/rxbus2/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->eventTypesBySubscriber:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriberMethodByEventType:Ljava/util/Map;

    .line 42
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->bus:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/rxbus2/RxBus;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/rxbus2/RxBus;->callEvent(Lcom/luck/picture/lib/rxbus2/SubscriberMethod;Ljava/lang/Object;)V

    return-void
.end method

.method private addEventTypeToMap(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->eventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->eventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addSubscriber(Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V
    .locals 2

    .line 198
    iget v0, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/rxbus2/RxBus;->toObservable(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_0
    iget v0, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->code:I

    iget-object v1, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->eventType:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/rxbus2/RxBus;->toObservable(ILjava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 203
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/luck/picture/lib/rxbus2/RxBus;->postToObservable(Lio/reactivex/Flowable;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/rxbus2/RxBus$3;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/rxbus2/RxBus$3;-><init>(Lcom/luck/picture/lib/rxbus2/RxBus;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V

    .line 204
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 211
    iget-object p1, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->subscriber:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/rxbus2/RxBus;->addSubscriptionToMap(Ljava/lang/Class;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private addSubscriberToMap(Ljava/lang/Class;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addSubscriptionToMap(Ljava/lang/Class;Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private callEvent(Lcom/luck/picture/lib/rxbus2/SubscriberMethod;Ljava/lang/Object;)V
    .locals 4

    .line 248
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;

    .line 252
    iget-object v2, v1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    const-class v3, Lcom/luck/picture/lib/rxbus2/Subscribe;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/rxbus2/Subscribe;

    .line 253
    invoke-interface {v2}, Lcom/luck/picture/lib/rxbus2/Subscribe;->code()I

    move-result v2

    .line 254
    iget v3, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->code:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->subscriber:Ljava/lang/Object;

    iget-object v3, v1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->subscriber:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v3, v1, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v1, p2}, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;
    .locals 3

    .line 46
    sget-object v0, Lcom/luck/picture/lib/rxbus2/RxBus;->defaultInstance:Lcom/luck/picture/lib/rxbus2/RxBus;

    .line 47
    sget-object v1, Lcom/luck/picture/lib/rxbus2/RxBus;->defaultInstance:Lcom/luck/picture/lib/rxbus2/RxBus;

    if-nez v1, :cond_1

    .line 48
    const-class v1, Lcom/luck/picture/lib/rxbus2/RxBus;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/luck/picture/lib/rxbus2/RxBus;->defaultInstance:Lcom/luck/picture/lib/rxbus2/RxBus;

    .line 50
    sget-object v2, Lcom/luck/picture/lib/rxbus2/RxBus;->defaultInstance:Lcom/luck/picture/lib/rxbus2/RxBus;

    if-nez v2, :cond_0

    .line 51
    new-instance v0, Lcom/luck/picture/lib/rxbus2/RxBus;

    invoke-direct {v0}, Lcom/luck/picture/lib/rxbus2/RxBus;-><init>()V

    .line 52
    sput-object v0, Lcom/luck/picture/lib/rxbus2/RxBus;->defaultInstance:Lcom/luck/picture/lib/rxbus2/RxBus;

    .line 54
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private postToObservable(Lio/reactivex/Flowable;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)Lio/reactivex/Flowable;
    .locals 2

    .line 223
    sget-object v0, Lcom/luck/picture/lib/rxbus2/RxBus$4;->$SwitchMap$com$luck$picture$lib$rxbus2$ThreadMode:[I

    iget-object v1, p2, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->threadMode:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-virtual {v1}, Lcom/luck/picture/lib/rxbus2/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->trampoline()Lio/reactivex/Scheduler;

    move-result-object p2

    goto :goto_0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown thread mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->threadMode:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_1
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    goto :goto_0

    .line 225
    :cond_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    .line 238
    :goto_0
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private toObservable(ILjava/lang/Class;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->bus:Lio/reactivex/subjects/Subject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    const-class v1, Lcom/luck/picture/lib/rxbus2/RxBus$Message;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->ofType(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/rxbus2/RxBus$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/luck/picture/lib/rxbus2/RxBus$2;-><init>(Lcom/luck/picture/lib/rxbus2/RxBus;ILjava/lang/Class;)V

    .line 77
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/rxbus2/RxBus$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus$1;-><init>(Lcom/luck/picture/lib/rxbus2/RxBus;)V

    .line 82
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->cast(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private unSubscribeByEventType(Ljava/lang/Class;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 298
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 302
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unSubscribeMethodByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->subscriberMethodByEventType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 317
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 318
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;

    .line 320
    iget-object v0, v0, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;->subscriber:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->eventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->bus:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 12

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 99
    const-class v4, Lcom/luck/picture/lib/rxbus2/Subscribe;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 103
    array-length v5, v4

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 105
    aget-object v10, v4, v2

    .line 107
    invoke-direct {p0, p1, v10}, Lcom/luck/picture/lib/rxbus2/RxBus;->addEventTypeToMap(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 108
    const-class v4, Lcom/luck/picture/lib/rxbus2/Subscribe;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/rxbus2/Subscribe;

    .line 109
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/Subscribe;->code()I

    move-result v8

    .line 110
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/Subscribe;->threadMode()Lcom/luck/picture/lib/rxbus2/ThreadMode;

    move-result-object v9

    .line 112
    new-instance v11, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;

    move-object v4, v11

    move-object v5, p1

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/luck/picture/lib/rxbus2/ThreadMode;)V

    .line 113
    invoke-direct {p0, v10, v11}, Lcom/luck/picture/lib/rxbus2/RxBus;->addSubscriberToMap(Ljava/lang/Class;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V

    .line 115
    invoke-direct {p0, v11}, Lcom/luck/picture/lib/rxbus2/RxBus;->addSubscriber(Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 116
    array-length v4, v4

    if-nez v4, :cond_2

    .line 118
    :cond_1
    const-class v10, Lcom/luck/picture/lib/rxbus2/BusData;

    .line 120
    invoke-direct {p0, p1, v10}, Lcom/luck/picture/lib/rxbus2/RxBus;->addEventTypeToMap(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 121
    const-class v4, Lcom/luck/picture/lib/rxbus2/Subscribe;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/rxbus2/Subscribe;

    .line 122
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/Subscribe;->code()I

    move-result v8

    .line 123
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/Subscribe;->threadMode()Lcom/luck/picture/lib/rxbus2/ThreadMode;

    move-result-object v9

    .line 125
    new-instance v11, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;

    move-object v4, v11

    move-object v5, p1

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/luck/picture/lib/rxbus2/SubscriberMethod;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/luck/picture/lib/rxbus2/ThreadMode;)V

    .line 126
    invoke-direct {p0, v10, v11}, Lcom/luck/picture/lib/rxbus2/RxBus;->addSubscriberToMap(Ljava/lang/Class;Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V

    .line 128
    invoke-direct {p0, v11}, Lcom/luck/picture/lib/rxbus2/RxBus;->addSubscriber(Lcom/luck/picture/lib/rxbus2/SubscriberMethod;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public send(I)V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->bus:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/luck/picture/lib/rxbus2/RxBus$Message;

    new-instance v2, Lcom/luck/picture/lib/rxbus2/BusData;

    invoke-direct {v2}, Lcom/luck/picture/lib/rxbus2/BusData;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/luck/picture/lib/rxbus2/RxBus$Message;-><init>(Lcom/luck/picture/lib/rxbus2/RxBus;ILjava/lang/Object;Lcom/luck/picture/lib/rxbus2/RxBus$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public send(ILjava/lang/Object;)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->bus:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/luck/picture/lib/rxbus2/RxBus$Message;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/luck/picture/lib/rxbus2/RxBus$Message;-><init>(Lcom/luck/picture/lib/rxbus2/RxBus;ILjava/lang/Object;Lcom/luck/picture/lib/rxbus2/RxBus$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public toObservable(Ljava/lang/Class;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->bus:Lio/reactivex/subjects/Subject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->ofType(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->eventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/luck/picture/lib/rxbus2/RxBus;->unSubscribeByEventType(Ljava/lang/Class;)V

    .line 283
    invoke-direct {p0, p1, v1}, Lcom/luck/picture/lib/rxbus2/RxBus;->unSubscribeMethodByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus;->eventTypesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
