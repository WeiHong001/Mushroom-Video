.class public final enum Lorg/fourthline/cling/support/model/Connection$Status;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/Connection$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Connected:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Connecting:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Disconnected:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Disconnecting:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum PendingDisconnect:Lorg/fourthline/cling/support/model/Connection$Status;

.field public static final enum Unconfigured:Lorg/fourthline/cling/support/model/Connection$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 107
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v1, "Unconfigured"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->Unconfigured:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 113
    new-instance v1, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v3, "Connecting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/Connection$Status;->Connecting:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 119
    new-instance v3, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v5, "Connected"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/Connection$Status;->Connected:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 125
    new-instance v5, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v7, "PendingDisconnect"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/Connection$Status;->PendingDisconnect:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 131
    new-instance v7, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v9, "Disconnecting"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/Connection$Status;->Disconnecting:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 137
    new-instance v9, Lorg/fourthline/cling/support/model/Connection$Status;

    const-string v11, "Disconnected"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/support/model/Connection$Status;->Disconnected:Lorg/fourthline/cling/support/model/Connection$Status;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/fourthline/cling/support/model/Connection$Status;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 102
    sput-object v11, Lorg/fourthline/cling/support/model/Connection$Status;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Status;
    .locals 1

    .line 102
    const-class v0, Lorg/fourthline/cling/support/model/Connection$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/Connection$Status;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/Connection$Status;
    .locals 1

    .line 102
    sget-object v0, Lorg/fourthline/cling/support/model/Connection$Status;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Status;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/Connection$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Connection$Status;

    return-object v0
.end method
