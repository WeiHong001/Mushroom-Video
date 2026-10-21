.class Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;
.super Lorg/fourthline/cling/controlpoint/SubscriptionCallback;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanbo/lib_screen/service/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AVTransportSubscriptionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/service/SystemService;


# direct methods
.method protected constructor <init>(Lcom/yanbo/lib_screen/service/SystemService;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    .line 113
    invoke-direct {p0, p2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method protected ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 0

    .line 127
    invoke-static {}, Lcom/yanbo/lib_screen/service/SystemService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AVTransportSubscriptionCallback ended."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected established(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 0

    return-void
.end method

.method protected eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentValues()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "LastChange"

    .line 133
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {}, Lcom/yanbo/lib_screen/service/SystemService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/TransportState;

    .line 148
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_0

    .line 149
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.yanbo.lib_screen.action.playing"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    invoke-virtual {v2, p1}, Lcom/yanbo/lib_screen/service/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_0
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_1

    .line 152
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.yanbo.lib_screen.action.paused_playback"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    invoke-virtual {v2, p1}, Lcom/yanbo/lib_screen/service/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :cond_1
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_2

    .line 155
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.yanbo.lib_screen.action.stopped"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    invoke-virtual {v2, p1}, Lcom/yanbo/lib_screen/service/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    :cond_2
    :goto_0
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackMetaData;

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/lastchange/EventedValueString;

    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/EventedValueString;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 166
    :try_start_1
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/EventedValueString;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/item/Item;

    .line 168
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getCreator()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yanbo.lib_screen.action.update_last_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "creator"

    .line 172
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "title"

    .line 173
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    invoke-static {}, Lcom/yanbo/lib_screen/service/SystemService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Parse CurrentTrackMetaData error."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->this$0:Lcom/yanbo/lib_screen/service/SystemService;

    invoke-virtual {p1, v1}, Lcom/yanbo/lib_screen/service/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected eventsMissed(Lorg/fourthline/cling/model/gena/GENASubscription;I)V
    .locals 0

    return-void
.end method

.method protected failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-static {}, Lcom/yanbo/lib_screen/service/SystemService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AVTransportSubscriptionCallback failed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
