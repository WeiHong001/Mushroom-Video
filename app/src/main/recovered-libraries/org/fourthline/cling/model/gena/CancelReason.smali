.class public final enum Lorg/fourthline/cling/model/gena/CancelReason;
.super Ljava/lang/Enum;
.source "CancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/gena/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v1, "RENEWAL_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 26
    new-instance v1, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v3, "DEVICE_WAS_REMOVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 27
    new-instance v3, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v5, "UNSUBSCRIBE_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 28
    new-instance v5, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v7, "EXPIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/model/gena/CancelReason;->EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/fourthline/cling/model/gena/CancelReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 23
    sput-object v7, Lorg/fourthline/cling/model/gena/CancelReason;->$VALUES:[Lorg/fourthline/cling/model/gena/CancelReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/CancelReason;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/gena/CancelReason;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/gena/CancelReason;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->$VALUES:[Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/gena/CancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/gena/CancelReason;

    return-object v0
.end method
