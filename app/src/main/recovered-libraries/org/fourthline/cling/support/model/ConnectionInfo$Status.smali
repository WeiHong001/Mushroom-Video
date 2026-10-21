.class public final enum Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
.super Ljava/lang/Enum;
.source "ConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/ConnectionInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum ContentFormatMismatch:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum InsufficientBandwidth:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field public static final enum UnreliableChannel:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 30
    new-instance v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v3, "ContentFormatMismatch"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->ContentFormatMismatch:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 31
    new-instance v3, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v5, "InsufficientBandwidth"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->InsufficientBandwidth:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 32
    new-instance v5, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v7, "UnreliableChannel"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->UnreliableChannel:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 33
    new-instance v7, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const-string v9, "Unknown"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 28
    sput-object v9, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    .locals 1

    .line 28
    const-class v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    .locals 1

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    return-object v0
.end method
