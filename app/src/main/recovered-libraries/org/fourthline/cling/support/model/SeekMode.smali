.class public final enum Lorg/fourthline/cling/support/model/SeekMode;
.super Ljava/lang/Enum;
.source "SeekMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/SeekMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum ABS_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum ABS_TIME:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum CHANNEL_FREQ:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum FRAME:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum REL_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum TAPE_INDEX:Lorg/fourthline/cling/support/model/SeekMode;

.field public static final enum TRACK_NR:Lorg/fourthline/cling/support/model/SeekMode;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v1, "TRACK_NR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/SeekMode;->TRACK_NR:Lorg/fourthline/cling/support/model/SeekMode;

    .line 26
    new-instance v1, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v3, "ABS_TIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/fourthline/cling/support/model/SeekMode;->ABS_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    .line 27
    new-instance v3, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v5, "REL_TIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/fourthline/cling/support/model/SeekMode;->REL_TIME:Lorg/fourthline/cling/support/model/SeekMode;

    .line 28
    new-instance v5, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v7, "ABS_COUNT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/fourthline/cling/support/model/SeekMode;->ABS_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

    .line 29
    new-instance v7, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v9, "REL_COUNT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/fourthline/cling/support/model/SeekMode;->REL_COUNT:Lorg/fourthline/cling/support/model/SeekMode;

    .line 30
    new-instance v9, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v11, "CHANNEL_FREQ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/fourthline/cling/support/model/SeekMode;->CHANNEL_FREQ:Lorg/fourthline/cling/support/model/SeekMode;

    .line 31
    new-instance v11, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v13, "TAPE_INDEX"

    const/4 v14, 0x6

    const-string v15, "TAPE-INDEX"

    invoke-direct {v11, v13, v14, v15}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/fourthline/cling/support/model/SeekMode;->TAPE_INDEX:Lorg/fourthline/cling/support/model/SeekMode;

    .line 32
    new-instance v13, Lorg/fourthline/cling/support/model/SeekMode;

    const-string v15, "FRAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lorg/fourthline/cling/support/model/SeekMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/fourthline/cling/support/model/SeekMode;->FRAME:Lorg/fourthline/cling/support/model/SeekMode;

    const/16 v15, 0x8

    new-array v15, v15, [Lorg/fourthline/cling/support/model/SeekMode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 23
    sput-object v15, Lorg/fourthline/cling/support/model/SeekMode;->$VALUES:[Lorg/fourthline/cling/support/model/SeekMode;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lorg/fourthline/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/support/model/SeekMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/SeekMode;

    return-object p0
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 46
    invoke-static {}, Lorg/fourthline/cling/support/model/SeekMode;->values()[Lorg/fourthline/cling/support/model/SeekMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    iget-object v4, v3, Lorg/fourthline/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid seek mode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static values()[Lorg/fourthline/cling/support/model/SeekMode;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/SeekMode;->$VALUES:[Lorg/fourthline/cling/support/model/SeekMode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/SeekMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/SeekMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SeekMode;->protocolString:Ljava/lang/String;

    return-object v0
.end method
