.class public final enum Lorg/fourthline/cling/model/message/UpnpRequest$Method;
.super Ljava/lang/Enum;
.source "UpnpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/message/UpnpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/message/UpnpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field public static final enum UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/message/UpnpRequest$Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 34
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 35
    new-instance v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 36
    new-instance v3, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v5, "NOTIFY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 37
    new-instance v5, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v7, "MSEARCH"

    const/4 v8, 0x3

    const-string v9, "M-SEARCH"

    invoke-direct {v5, v7, v8, v9}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 38
    new-instance v7, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v9, "SUBSCRIBE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 39
    new-instance v9, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v11, "UNSUBSCRIBE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 40
    new-instance v11, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 32
    sput-object v13, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->$VALUES:[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 42
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method$1;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 2

    if-nez p0, :cond_0

    .line 59
    sget-object p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-object p0

    .line 60
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    sget-object p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 1

    .line 32
    const-class v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/message/UpnpRequest$Method;
    .locals 1

    .line 32
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->$VALUES:[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/message/UpnpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    return-object v0
.end method


# virtual methods
.method public getHttpName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    return-object v0
.end method
