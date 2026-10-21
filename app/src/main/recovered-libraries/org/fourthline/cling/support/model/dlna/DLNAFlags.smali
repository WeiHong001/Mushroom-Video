.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
.super Ljava/lang/Enum;
.source "DLNAFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum BACKGROUND_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum BYTE_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum CONNECTION_STALL:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum DLNA_V15:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum FLAG_PLAY_CONTAINER:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum INTERACTIVE_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum RTSP_PAUSE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum S0_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum SENDER_PACED:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum SN_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum STREAMING_TRANSFER_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum TIME_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v1, "SENDER_PACED"

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->SENDER_PACED:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 42
    new-instance v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v3, "TIME_BASED_SEEK"

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v4, v5}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->TIME_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 43
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v5, "BYTE_BASED_SEEK"

    const/4 v6, 0x2

    const/high16 v7, 0x20000000

    invoke-direct {v3, v5, v6, v7}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->BYTE_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 44
    new-instance v5, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v7, "FLAG_PLAY_CONTAINER"

    const/4 v8, 0x3

    const/high16 v9, 0x10000000

    invoke-direct {v5, v7, v8, v9}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->FLAG_PLAY_CONTAINER:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 45
    new-instance v7, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v9, "S0_INCREASE"

    const/4 v10, 0x4

    const/high16 v11, 0x8000000

    invoke-direct {v7, v9, v10, v11}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->S0_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 46
    new-instance v9, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v11, "SN_INCREASE"

    const/4 v12, 0x5

    const/high16 v13, 0x4000000

    invoke-direct {v9, v11, v12, v13}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->SN_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 47
    new-instance v11, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v13, "RTSP_PAUSE"

    const/4 v14, 0x6

    const/high16 v15, 0x2000000

    invoke-direct {v11, v13, v14, v15}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->RTSP_PAUSE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 48
    new-instance v13, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v15, "STREAMING_TRANSFER_MODE"

    const/4 v14, 0x7

    const/high16 v12, 0x1000000

    invoke-direct {v13, v15, v14, v12}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->STREAMING_TRANSFER_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 49
    new-instance v12, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v15, "INTERACTIVE_TRANSFERT_MODE"

    const/16 v14, 0x8

    const/high16 v10, 0x800000

    invoke-direct {v12, v15, v14, v10}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->INTERACTIVE_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 50
    new-instance v10, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v15, "BACKGROUND_TRANSFERT_MODE"

    const/16 v14, 0x9

    const/high16 v8, 0x400000

    invoke-direct {v10, v15, v14, v8}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->BACKGROUND_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 51
    new-instance v8, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v15, "CONNECTION_STALL"

    const/16 v14, 0xa

    const/high16 v6, 0x200000

    invoke-direct {v8, v15, v14, v6}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->CONNECTION_STALL:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 52
    new-instance v6, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const-string v15, "DLNA_V15"

    const/16 v14, 0xb

    const/high16 v4, 0x100000

    invoke-direct {v6, v15, v14, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->DLNA_V15:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/16 v4, 0xc

    new-array v4, v4, [Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 39
    sput-object v4, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->code:I

    return-void
.end method

.method public static valueOf(I)Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
    .locals 5

    .line 65
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->getCode()I

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
    .locals 1

    .line 39
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
    .locals 1

    .line 39
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->code:I

    return v0
.end method
