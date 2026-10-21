.class public final enum Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
.super Ljava/lang/Enum;
.source "UpnpHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/message/header/UpnpHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CONTENT_RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT_AV_CLIENT_INFO:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum PRAGMA:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SEQ:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 44
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/fourthline/cling/model/message/header/USNRootDeviceHeader;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lorg/fourthline/cling/model/message/header/DeviceUSNHeader;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lorg/fourthline/cling/model/message/header/ServiceUSNHeader;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Lorg/fourthline/cling/model/message/header/UDNHeader;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "USN"

    invoke-direct {v0, v3, v4, v3, v2}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 50
    new-instance v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v3, 0x7

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    aput-object v9, v8, v4

    const-class v9, Lorg/fourthline/cling/model/message/header/UDADeviceTypeHeader;

    aput-object v9, v8, v5

    const-class v9, Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;

    aput-object v9, v8, v6

    const-class v9, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    aput-object v9, v8, v7

    const-class v9, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    aput-object v9, v8, v1

    const-class v9, Lorg/fourthline/cling/model/message/header/UDNHeader;

    const/4 v10, 0x5

    aput-object v9, v8, v10

    const-class v9, Lorg/fourthline/cling/model/message/header/NTEventHeader;

    const/4 v11, 0x6

    aput-object v9, v8, v11

    const-string v9, "NT"

    invoke-direct {v2, v9, v5, v9, v8}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 59
    new-instance v8, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v9, v5, [Ljava/lang/Class;

    const-class v12, Lorg/fourthline/cling/model/message/header/NTSHeader;

    aput-object v12, v9, v4

    const-string v12, "NTS"

    invoke-direct {v8, v12, v6, v12, v9}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v8, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 60
    new-instance v9, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v12, v5, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/model/message/header/HostHeader;

    aput-object v13, v12, v4

    const-string v13, "HOST"

    invoke-direct {v9, v13, v7, v13, v12}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v9, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 61
    new-instance v12, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v13, v5, [Ljava/lang/Class;

    const-class v14, Lorg/fourthline/cling/model/message/header/ServerHeader;

    aput-object v14, v13, v4

    const-string v14, "SERVER"

    invoke-direct {v12, v14, v1, v14, v13}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v12, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 62
    new-instance v13, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v14, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/LocationHeader;

    aput-object v15, v14, v4

    const-string v15, "LOCATION"

    invoke-direct {v13, v15, v10, v15, v14}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v13, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 63
    new-instance v14, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v15, v5, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/model/message/header/MaxAgeHeader;

    aput-object v16, v15, v4

    const-string v10, "MAX_AGE"

    const-string v1, "CACHE-CONTROL"

    invoke-direct {v14, v10, v11, v1, v15}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v14, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 64
    new-instance v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v10, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/UserAgentHeader;

    aput-object v15, v10, v4

    const-string v15, "USER_AGENT"

    const-string v11, "USER-AGENT"

    invoke-direct {v1, v15, v3, v11, v10}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 65
    new-instance v10, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v11, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    aput-object v15, v11, v4

    const-string v15, "CONTENT_TYPE"

    const/16 v7, 0x8

    const-string v6, "CONTENT-TYPE"

    invoke-direct {v10, v15, v7, v6, v11}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v10, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 66
    new-instance v6, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v11, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/MANHeader;

    aput-object v15, v11, v4

    const-string v15, "MAN"

    const/16 v7, 0x9

    invoke-direct {v6, v15, v7, v15, v11}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v6, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 67
    new-instance v11, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v15, v5, [Ljava/lang/Class;

    const-class v21, Lorg/fourthline/cling/model/message/header/MXHeader;

    aput-object v21, v15, v4

    const-string v7, "MX"

    const/16 v5, 0xa

    invoke-direct {v11, v7, v5, v7, v15}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v11, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 68
    new-instance v7, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    new-array v15, v3, [Ljava/lang/Class;

    const-class v23, Lorg/fourthline/cling/model/message/header/STAllHeader;

    aput-object v23, v15, v4

    const-class v23, Lorg/fourthline/cling/model/message/header/RootDeviceHeader;

    const/16 v22, 0x1

    aput-object v23, v15, v22

    const-class v23, Lorg/fourthline/cling/model/message/header/UDADeviceTypeHeader;

    const/16 v20, 0x2

    aput-object v23, v15, v20

    const-class v23, Lorg/fourthline/cling/model/message/header/UDAServiceTypeHeader;

    const/16 v19, 0x3

    aput-object v23, v15, v19

    const-class v23, Lorg/fourthline/cling/model/message/header/DeviceTypeHeader;

    const/16 v17, 0x4

    aput-object v23, v15, v17

    const-class v23, Lorg/fourthline/cling/model/message/header/ServiceTypeHeader;

    const/16 v16, 0x5

    aput-object v23, v15, v16

    const-class v23, Lorg/fourthline/cling/model/message/header/UDNHeader;

    const/16 v18, 0x6

    aput-object v23, v15, v18

    const-string v5, "ST"

    const/16 v3, 0xb

    invoke-direct {v7, v5, v3, v5, v15}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v7, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 77
    new-instance v5, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Class;

    const-class v24, Lorg/fourthline/cling/model/message/header/EXTHeader;

    aput-object v24, v3, v4

    const-string v4, "EXT"

    const/16 v15, 0xc

    invoke-direct {v5, v4, v15, v4, v3}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v5, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 78
    new-instance v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/Class;

    const-class v25, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    const/16 v24, 0x0

    aput-object v25, v15, v24

    const-string v4, "SOAPACTION"

    move-object/from16 v26, v5

    const/16 v5, 0xd

    move-object/from16 v27, v7

    const-string v7, "SOAPACTION"

    invoke-direct {v3, v4, v5, v7, v15}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 79
    new-instance v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/TimeoutHeader;

    aput-object v15, v7, v24

    const-string v15, "TIMEOUT"

    const/16 v5, 0xe

    move-object/from16 v28, v3

    const-string v3, "TIMEOUT"

    invoke-direct {v4, v15, v5, v3, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 80
    new-instance v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/CallbackHeader;

    aput-object v15, v7, v24

    const-string v15, "CALLBACK"

    const/16 v5, 0xf

    move-object/from16 v29, v4

    const-string v4, "CALLBACK"

    invoke-direct {v3, v15, v5, v4, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 81
    new-instance v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/SubscriptionIdHeader;

    aput-object v15, v7, v24

    const-string v15, "SID"

    const/16 v5, 0x10

    move-object/from16 v30, v3

    const-string v3, "SID"

    invoke-direct {v4, v15, v5, v3, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 82
    new-instance v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/EventSequenceHeader;

    aput-object v15, v7, v24

    const-string v15, "SEQ"

    const/16 v5, 0x11

    move-object/from16 v31, v4

    const-string v4, "SEQ"

    invoke-direct {v3, v15, v5, v4, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 83
    new-instance v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/RangeHeader;

    aput-object v15, v7, v24

    const-string v15, "RANGE"

    const/16 v5, 0x12

    move-object/from16 v32, v3

    const-string v3, "RANGE"

    invoke-direct {v4, v15, v5, v3, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 84
    new-instance v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/ContentRangeHeader;

    aput-object v15, v7, v24

    const-string v15, "CONTENT_RANGE"

    const/16 v5, 0x13

    move-object/from16 v33, v4

    const-string v4, "CONTENT-RANGE"

    invoke-direct {v3, v15, v5, v4, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_RANGE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 85
    new-instance v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/PragmaHeader;

    aput-object v15, v7, v24

    const-string v15, "PRAGMA"

    const/16 v5, 0x14

    move-object/from16 v34, v3

    const-string v3, "PRAGMA"

    invoke-direct {v4, v15, v5, v3, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->PRAGMA:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 87
    new-instance v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;

    aput-object v15, v7, v24

    const-string v15, "EXT_IFACE_MAC"

    const/16 v5, 0x15

    move-object/from16 v35, v4

    const-string v4, "X-CLING-IFACE-MAC"

    invoke-direct {v3, v15, v5, v4, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 88
    new-instance v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/model/message/header/AVClientInfoHeader;

    aput-object v15, v7, v24

    const-string v15, "EXT_AV_CLIENT_INFO"

    const/16 v5, 0x16

    move-object/from16 v36, v3

    const-string v3, "X-AV-CLIENT-INFO"

    invoke-direct {v4, v15, v5, v3, v7}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->EXT_AV_CLIENT_INFO:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const/16 v3, 0x17

    new-array v3, v3, [Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    aput-object v0, v3, v24

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v8, v3, v0

    const/4 v0, 0x3

    aput-object v9, v3, v0

    const/4 v0, 0x4

    aput-object v12, v3, v0

    const/4 v0, 0x5

    aput-object v13, v3, v0

    const/4 v0, 0x6

    aput-object v14, v3, v0

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v6, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v27, v3, v0

    const/16 v0, 0xc

    aput-object v26, v3, v0

    const/16 v0, 0xd

    aput-object v28, v3, v0

    const/16 v0, 0xe

    aput-object v29, v3, v0

    const/16 v0, 0xf

    aput-object v30, v3, v0

    const/16 v0, 0x10

    aput-object v31, v3, v0

    const/16 v0, 0x11

    aput-object v32, v3, v0

    const/16 v0, 0x12

    aput-object v33, v3, v0

    const/16 v0, 0x13

    aput-object v34, v3, v0

    const/16 v0, 0x14

    aput-object v35, v3, v0

    const/16 v0, 0x15

    aput-object v36, v3, v0

    const/16 v0, 0x16

    aput-object v4, v3, v0

    .line 42
    sput-object v3, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->$VALUES:[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 90
    new-instance v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type$1;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    .line 42
    const-class v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    .line 42
    sget-object v0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->$VALUES:[Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    return-object v0
.end method


# virtual methods
.method public getHeaderTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getHttpName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidHeaderType(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;)Z"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 115
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
