.class public abstract Lcom/yanbo/lib_screen/callback/RenderingControlCallback;
.super Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;
.source "RenderingControlCallback.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/yanbo/lib_screen/callback/BaseSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yanbo/lib_screen/callback/RenderingControlCallback;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;
    .locals 1

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;-><init>()V

    return-object v0
.end method

.method protected onReceived(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;)V"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 37
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mute"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 39
    instance-of v3, v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    if-eqz v3, :cond_1

    .line 40
    check-cast v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    .line 41
    sget-object v3, Lorg/fourthline/cling/support/model/Channel;->Master:Lorg/fourthline/cling/support/model/Channel;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/support/model/Channel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->getMute()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->setMute(Z)V

    .line 46
    :cond_1
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Volume"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 48
    instance-of v3, v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    if-eqz v3, :cond_2

    .line 49
    check-cast v2, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    .line 50
    sget-object v3, Lorg/fourthline/cling/support/model/Channel;->Master:Lorg/fourthline/cling/support/model/Channel;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/support/model/Channel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-virtual {v2}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->getVolume()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->setVolume(I)V

    .line 55
    :cond_2
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresetNameList"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->setPresetNameList(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  info.isMute===  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->isMute()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  info.getVolume===  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->getVolume()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RenderingControlCallback onReceived:"

    invoke-static {v1, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/callback/RenderingControlCallback;->received(Lcom/yanbo/lib_screen/entity/RenderingControlInfo;)V

    return-void
.end method

.method protected abstract received(Lcom/yanbo/lib_screen/entity/RenderingControlInfo;)V
.end method
