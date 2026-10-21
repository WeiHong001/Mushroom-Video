.class public final enum Lorg/fourthline/cling/support/model/WriteStatus;
.super Ljava/lang/Enum;
.source "WriteStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/WriteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/WriteStatus;

.field public static final enum MIXED:Lorg/fourthline/cling/support/model/WriteStatus;

.field public static final enum NOT_WRITABLE:Lorg/fourthline/cling/support/model/WriteStatus;

.field public static final enum UNKNOWN:Lorg/fourthline/cling/support/model/WriteStatus;

.field public static final enum WRITABLE:Lorg/fourthline/cling/support/model/WriteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/model/WriteStatus;

    const-string v1, "WRITABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/WriteStatus;->WRITABLE:Lorg/fourthline/cling/support/model/WriteStatus;

    .line 24
    new-instance v1, Lorg/fourthline/cling/support/model/WriteStatus;

    const-string v3, "NOT_WRITABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/fourthline/cling/support/model/WriteStatus;

    .line 25
    new-instance v3, Lorg/fourthline/cling/support/model/WriteStatus;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/WriteStatus;->UNKNOWN:Lorg/fourthline/cling/support/model/WriteStatus;

    .line 26
    new-instance v5, Lorg/fourthline/cling/support/model/WriteStatus;

    const-string v7, "MIXED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/WriteStatus;->MIXED:Lorg/fourthline/cling/support/model/WriteStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/fourthline/cling/support/model/WriteStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 21
    sput-object v7, Lorg/fourthline/cling/support/model/WriteStatus;->$VALUES:[Lorg/fourthline/cling/support/model/WriteStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/WriteStatus;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/WriteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/WriteStatus;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/WriteStatus;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/WriteStatus;->$VALUES:[Lorg/fourthline/cling/support/model/WriteStatus;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/WriteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/WriteStatus;

    return-object v0
.end method
