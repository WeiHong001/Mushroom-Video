.class public final enum Lorg/fourthline/cling/model/message/UpnpResponse$Status;
.super Ljava/lang/Enum;
.source "UpnpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/message/UpnpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/message/UpnpResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum METHOD_NOT_SUPPORTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum NOT_FOUND:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/fourthline/cling/model/message/UpnpResponse$Status;


# instance fields
.field private statusCode:I

.field private statusMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3, v1}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->OK:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 28
    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v3, "BAD_REQUEST"

    const/4 v4, 0x1

    const/16 v5, 0x190

    const-string v6, "Bad Request"

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 29
    new-instance v3, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v5, "NOT_FOUND"

    const/4 v6, 0x2

    const/16 v7, 0x194

    const-string v8, "Not Found"

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 30
    new-instance v5, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v7, "METHOD_NOT_SUPPORTED"

    const/4 v8, 0x3

    const/16 v9, 0x195

    const-string v10, "Method Not Supported"

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 31
    new-instance v7, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v9, "PRECONDITION_FAILED"

    const/4 v10, 0x4

    const/16 v11, 0x19c

    const-string v12, "Precondition Failed"

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 32
    new-instance v9, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v11, "UNSUPPORTED_MEDIA_TYPE"

    const/4 v12, 0x5

    const/16 v13, 0x19f

    const-string v14, "Unsupported Media Type"

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 33
    new-instance v11, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v13, "INTERNAL_SERVER_ERROR"

    const/4 v14, 0x6

    const/16 v15, 0x1f4

    const-string v12, "Internal Server Error"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 34
    new-instance v12, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const-string v13, "NOT_IMPLEMENTED"

    const/4 v15, 0x7

    const/16 v14, 0x1f5

    const-string v10, "Not Implemented"

    invoke-direct {v12, v13, v15, v14, v10}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->NOT_IMPLEMENTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    const/16 v10, 0x8

    new-array v10, v10, [Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    aput-object v12, v10, v15

    .line 25
    sput-object v10, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->$VALUES:[Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->statusCode:I

    .line 41
    iput-object p4, p0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->statusMsg:Ljava/lang/String;

    return-void
.end method

.method public static getByStatusCode(I)Lorg/fourthline/cling/model/message/UpnpResponse$Status;
    .locals 5

    .line 53
    invoke-static {}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->values()[Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpResponse$Status;
    .locals 1

    .line 25
    const-class v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/message/UpnpResponse$Status;
    .locals 1

    .line 25
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->$VALUES:[Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/message/UpnpResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->statusCode:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->statusMsg:Ljava/lang/String;

    return-object v0
.end method
