.class public final enum Lorg/fourthline/cling/support/model/TransportState;
.super Ljava/lang/Enum;
.source "TransportState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/TransportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum PAUSED_RECORDING:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum PLAYING:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum RECORDING:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum STOPPED:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    .line 24
    new-instance v1, Lorg/fourthline/cling/support/model/TransportState;

    const-string v3, "PLAYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    .line 25
    new-instance v3, Lorg/fourthline/cling/support/model/TransportState;

    const-string v5, "TRANSITIONING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/TransportState;->TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;

    .line 26
    new-instance v5, Lorg/fourthline/cling/support/model/TransportState;

    const-string v7, "PAUSED_PLAYBACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    .line 27
    new-instance v7, Lorg/fourthline/cling/support/model/TransportState;

    const-string v9, "PAUSED_RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_RECORDING:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    new-instance v9, Lorg/fourthline/cling/support/model/TransportState;

    const-string v11, "RECORDING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/support/model/TransportState;->RECORDING:Lorg/fourthline/cling/support/model/TransportState;

    .line 29
    new-instance v11, Lorg/fourthline/cling/support/model/TransportState;

    const-string v13, "NO_MEDIA_PRESENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    .line 30
    new-instance v13, Lorg/fourthline/cling/support/model/TransportState;

    const-string v15, "CUSTOM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/fourthline/cling/support/model/TransportState;->CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

    const/16 v15, 0x8

    new-array v15, v15, [Lorg/fourthline/cling/support/model/TransportState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 21
    sput-object v15, Lorg/fourthline/cling/support/model/TransportState;->$VALUES:[Lorg/fourthline/cling/support/model/TransportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/TransportState;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/TransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/TransportState;

    return-object p0
.end method

.method public static valueOrCustomOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .line 49
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/support/model/TransportState;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 51
    :catch_0
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/TransportState;->setValue(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->$VALUES:[Lorg/fourthline/cling/support/model/TransportState;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/TransportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/TransportState;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-object p0
.end method
