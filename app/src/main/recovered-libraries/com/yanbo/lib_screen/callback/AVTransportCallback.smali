.class public abstract Lcom/yanbo/lib_screen/callback/AVTransportCallback;
.super Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;
.source "AVTransportCallback.java"


# instance fields
.field private final AVT_ABSOLUTE_TIME:Ljava/lang/String;

.field private final AVT_DURATION:Ljava/lang/String;

.field private final AVT_RELATIVE_TIME:Ljava/lang/String;

.field private final AVT_STATE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanbo/lib_screen/callback/AVTransportCallback;->TAG:Ljava/lang/String;

    const-string p1, "TransportState"

    .line 21
    iput-object p1, p0, Lcom/yanbo/lib_screen/callback/AVTransportCallback;->AVT_STATE:Ljava/lang/String;

    const-string p1, "CurrentMediaDuration"

    .line 22
    iput-object p1, p0, Lcom/yanbo/lib_screen/callback/AVTransportCallback;->AVT_DURATION:Ljava/lang/String;

    const-string p1, "RelativeTimePosition"

    .line 23
    iput-object p1, p0, Lcom/yanbo/lib_screen/callback/AVTransportCallback;->AVT_RELATIVE_TIME:Ljava/lang/String;

    const-string p1, "AbsoluteTimePosition"

    .line 24
    iput-object p1, p0, Lcom/yanbo/lib_screen/callback/AVTransportCallback;->AVT_ABSOLUTE_TIME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;
    .locals 1

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    return-object v0
.end method

.method protected onReceived(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;)V"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;-><init>()V

    const/4 v1, 0x0

    .line 39
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 40
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   obj==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   values size==  "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AVTransportCallback onReceived:"

    invoke-static {v3, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TransportState"

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "CurrentMediaDuration"

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setMediaDuration(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "RelativeTimePosition"

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "AbsoluteTimePosition"

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setTimePosition(Ljava/lang/String;)V

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/callback/AVTransportCallback;->received(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V

    return-void
.end method

.method protected abstract received(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V
.end method
