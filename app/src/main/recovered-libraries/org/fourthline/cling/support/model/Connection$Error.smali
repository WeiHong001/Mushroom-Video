.class public final enum Lorg/fourthline/cling/support/model/Connection$Error;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/Connection$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_COMMAND_ABORTED:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_FORCED_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_IDLE_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_IP_CONFIGURATION:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_ISP_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_NONE:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_NO_CARRIER:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_UNKNOWN:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_USER_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 141
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NONE:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 142
    new-instance v1, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v3, "ERROR_COMMAND_ABORTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_COMMAND_ABORTED:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 143
    new-instance v3, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v5, "ERROR_NOT_ENABLED_FOR_INTERNET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 144
    new-instance v5, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v7, "ERROR_USER_DISCONNECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_USER_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 145
    new-instance v7, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v9, "ERROR_ISP_DISCONNECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_ISP_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 146
    new-instance v9, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v11, "ERROR_IDLE_DISCONNECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_IDLE_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 147
    new-instance v11, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v13, "ERROR_FORCED_DISCONNECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_FORCED_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 148
    new-instance v13, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v15, "ERROR_NO_CARRIER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NO_CARRIER:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 149
    new-instance v15, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v14, "ERROR_IP_CONFIGURATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_IP_CONFIGURATION:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 150
    new-instance v14, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v12, "ERROR_UNKNOWN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_UNKNOWN:Lorg/fourthline/cling/support/model/Connection$Error;

    const/16 v12, 0xa

    new-array v12, v12, [Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 140
    sput-object v12, Lorg/fourthline/cling/support/model/Connection$Error;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Error;
    .locals 1

    .line 140
    const-class v0, Lorg/fourthline/cling/support/model/Connection$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/Connection$Error;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/Connection$Error;
    .locals 1

    .line 140
    sget-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Error;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/Connection$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Connection$Error;

    return-object v0
.end method
