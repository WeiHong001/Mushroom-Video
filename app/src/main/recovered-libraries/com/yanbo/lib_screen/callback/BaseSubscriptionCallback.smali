.class public abstract Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;
.super Lorg/fourthline/cling/controlpoint/SubscriptionCallback;
.source "BaseSubscriptionCallback.java"


# static fields
.field private static final SUB_DURATION:I = 0x2a30


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    const/16 v0, 0x2a30

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;I)V

    return-void
.end method


# virtual methods
.method protected ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 0

    const-string p1, ""

    const-string p2, "SubscriptionCallback ended"

    .line 44
    invoke-static {p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected established(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 0

    return-void
.end method

.method protected eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentValues()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "LastChange"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;->getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    move-result-object v1

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Last change value: %s"

    .line 59
    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object p1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 65
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;->onReceived(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method protected eventsMissed(Lorg/fourthline/cling/model/gena/GENASubscription;I)V
    .locals 0

    return-void
.end method

.method protected failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    const-string p1, ""

    const-string p2, "SubscriptionCallback failed"

    .line 39
    invoke-static {p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.end method

.method protected abstract onReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;)V"
        }
    .end annotation
.end method
