.class public final enum Lorg/fourthline/cling/model/types/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ACTION_NOT_AUTHORIZED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_TOO_LONG:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum HUMAN_INTERVENTION_REQUIRED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_CONTROL_URL:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_SEQUENCE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum NOT_ENCRYPTED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum NO_SUCH_SESSION:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum OPTIONAL_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum OUT_OF_MEMORY:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_FAILURE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_MISSING:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum TRANSPORT_LOCKED:Lorg/fourthline/cling/model/types/ErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 25
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v1, "INVALID_ACTION"

    const/4 v2, 0x0

    const/16 v3, 0x191

    const-string v4, "No action by that name at this service"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 26
    new-instance v1, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v3, "INVALID_ARGS"

    const/4 v4, 0x1

    const/16 v5, 0x192

    const-string v6, "Not enough IN args, too many IN args, no IN arg by that name, one or more IN args are of the wrong data type"

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 27
    new-instance v3, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v5, "ACTION_FAILED"

    const/4 v6, 0x2

    const/16 v7, 0x1f5

    const-string v8, "Current state of service prevents invoking that action"

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 28
    new-instance v5, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v7, "ARGUMENT_VALUE_INVALID"

    const/4 v8, 0x3

    const/16 v9, 0x258

    const-string v10, "The argument value is invalid"

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 29
    new-instance v7, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v9, "ARGUMENT_VALUE_OUT_OF_RANGE"

    const/4 v10, 0x4

    const/16 v11, 0x259

    const-string v12, "An argument value is less than the minimum or more than the maximum value of the allowedValueRange, or is not in the allowedValueList"

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 30
    new-instance v9, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v11, "OPTIONAL_ACTION"

    const/4 v12, 0x5

    const/16 v13, 0x25a

    const-string v14, "The requested action is optional and is not implemented by the device"

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/fourthline/cling/model/types/ErrorCode;->OPTIONAL_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 31
    new-instance v11, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "OUT_OF_MEMORY"

    const/4 v14, 0x6

    const/16 v15, 0x25b

    const-string v12, "The device does not have sufficient memory available to complete the action"

    invoke-direct {v11, v13, v14, v15, v12}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/fourthline/cling/model/types/ErrorCode;->OUT_OF_MEMORY:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 32
    new-instance v12, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "HUMAN_INTERVENTION_REQUIRED"

    const/4 v15, 0x7

    const/16 v14, 0x25c

    const-string v10, "The device has encountered an error condition which it cannot resolve itself"

    invoke-direct {v12, v13, v15, v14, v10}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/fourthline/cling/model/types/ErrorCode;->HUMAN_INTERVENTION_REQUIRED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 33
    new-instance v10, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "ARGUMENT_TOO_LONG"

    const/16 v14, 0x8

    const/16 v15, 0x25d

    const-string v8, "A string argument is too long for the device to handle properly"

    invoke-direct {v10, v13, v14, v15, v8}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_TOO_LONG:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 34
    new-instance v8, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "ACTION_NOT_AUTHORIZED"

    const/16 v15, 0x9

    const/16 v14, 0x25e

    const-string v6, "The action requested requires authorization and the sender was not authorized"

    invoke-direct {v8, v13, v15, v14, v6}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_NOT_AUTHORIZED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 35
    new-instance v6, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "SIGNATURE_FAILURE"

    const/16 v14, 0xa

    const/16 v15, 0x25f

    const-string v4, "The sender\'s signature failed to verify"

    invoke-direct {v6, v13, v14, v15, v4}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/fourthline/cling/model/types/ErrorCode;->SIGNATURE_FAILURE:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 36
    new-instance v4, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "SIGNATURE_MISSING"

    const/16 v15, 0xb

    const/16 v14, 0x260

    const-string v2, "The action requested requires a digital signature and there was none provided"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/model/types/ErrorCode;->SIGNATURE_MISSING:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 37
    new-instance v2, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "NOT_ENCRYPTED"

    const/16 v14, 0xc

    const/16 v15, 0x261

    move-object/from16 v16, v4

    const-string v4, "This action requires confidentiality but the action was not delivered encrypted"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->NOT_ENCRYPTED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 38
    new-instance v4, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "INVALID_SEQUENCE"

    const/16 v15, 0xd

    const/16 v14, 0x262

    move-object/from16 v17, v2

    const-string v2, "The sequence provided was not valid"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_SEQUENCE:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 39
    new-instance v2, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "INVALID_CONTROL_URL"

    const/16 v14, 0xe

    const/16 v15, 0x263

    move-object/from16 v18, v4

    const-string v4, "The controlURL within the freshness element does not match the controlURL of the action actually invoked"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_CONTROL_URL:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 40
    new-instance v4, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "NO_SUCH_SESSION"

    const/16 v15, 0xf

    const/16 v14, 0x264

    move-object/from16 v19, v2

    const-string v2, "The session key reference is to a non-existent session"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/model/types/ErrorCode;->NO_SUCH_SESSION:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 41
    new-instance v2, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "TRANSPORT_LOCKED"

    const/16 v14, 0x10

    const/16 v15, 0x2c1

    move-object/from16 v20, v4

    const-string v4, "Transport locked"

    invoke-direct {v2, v13, v14, v15, v4}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->TRANSPORT_LOCKED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 42
    new-instance v4, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v13, "ILLEGAL_MIME_TYPE"

    const/16 v15, 0x11

    const/16 v14, 0x2ca

    move-object/from16 v21, v2

    const-string v2, "Illegal mime-type"

    invoke-direct {v4, v13, v15, v14, v2}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/model/types/ErrorCode;->ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0x12

    new-array v2, v2, [Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    aput-object v4, v2, v15

    .line 23
    sput-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->$VALUES:[Lorg/fourthline/cling/model/types/ErrorCode;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lorg/fourthline/cling/model/types/ErrorCode;->code:I

    .line 49
    iput-object p4, p0, Lorg/fourthline/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/model/types/ErrorCode;
    .locals 5

    .line 61
    invoke-static {}, Lorg/fourthline/cling/model/types/ErrorCode;->values()[Lorg/fourthline/cling/model/types/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 62
    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/ErrorCode;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/ErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/ErrorCode;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->$VALUES:[Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/fourthline/cling/model/types/ErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
