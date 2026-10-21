.class public Lcom/yanbo/lib_screen/utils/ClingUtil;
.super Ljava/lang/Object;
.source "ClingUtil.java"


# static fields
.field public static DIDL_LITE_FOOTER:Ljava/lang/String; = "</DIDL-Lite>"

.field public static DIDL_LITE_HEADER:Ljava/lang/String; = "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:sec=\"http://www.sec.co.kr/\">"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemMetadata(Lcom/yanbo/lib_screen/entity/RemoteItem;)Ljava/lang/String;
    .locals 9

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/Res;

    new-instance v1, Lorg/seamless/util/MimeType;

    const-string v2, "*"

    invoke-direct {v1, v2, v2}, Lorg/seamless/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getSize()J

    move-result-wide v2

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/seamless/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setDuration(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setResolution(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lorg/fourthline/cling/support/model/item/VideoItem;

    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getCreator()Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x1

    new-array v7, p0, [Lorg/fourthline/cling/support/model/Res;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const-string v4, "-1"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    sget-object v2, Lcom/yanbo/lib_screen/utils/ClingUtil;->DIDL_LITE_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 38
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->getParentID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p0

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "<item id=\"%s\" parentID=\"%s\" restricted=\"%s\">"

    .line 37
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, p0, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "<dc:title>%s</dc:title>"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->getCreator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "<"

    const-string v6, "_"

    .line 43
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    .line 44
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-array v4, p0, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v6

    invoke-virtual {v6}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const-string v6, "<upnp:class>%s</upnp:class>"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, p0, [Ljava/lang/Object;

    aput-object v3, v4, v8

    const-string v3, "<upnp:artist>%s</upnp:artist>"

    .line 47
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 51
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-array v4, p0, [Ljava/lang/Object;

    aput-object v3, v4, v8

    const-string v3, "<dc:date>%s</dc:date>"

    .line 52
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/item/VideoItem;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getProtocol()Lorg/fourthline/cling/support/model/Protocol;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getNetwork()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p0

    .line 67
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "protocolInfo=\"%s:%s:%s:%s\""

    .line 66
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    const-string v3, "protocolInfo: "

    .line 69
    invoke-static {v3, v2}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-array v2, p0, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "resolution=\"%s\""

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    :cond_3
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-array v2, p0, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "duration=\"%s\""

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    new-array p0, p0, [Ljava/lang/Object;

    const-string v2, "protocolInfo=\"http-get:*:video/*:DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000\" sec:URIType=\"public\""

    aput-object v2, p0, v8

    const-string v2, "<res %s>"

    .line 85
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</res>"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, "</item>"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object p0, Lcom/yanbo/lib_screen/utils/ClingUtil;->DIDL_LITE_FOOTER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
