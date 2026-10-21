.class public final enum Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
.super Ljava/lang/Enum;
.source "RecordMediumWriteStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

.field public static final enum NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

.field public static final enum NOT_WRITABLE:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

.field public static final enum PROTECTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

.field public static final enum UNKNOWN:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

.field public static final enum WRITABLE:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    const-string v1, "WRITABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->WRITABLE:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 24
    new-instance v1, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    const-string v3, "PROTECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->PROTECTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 25
    new-instance v3, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    const-string v5, "NOT_WRITABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_WRITABLE:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 26
    new-instance v5, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 27
    new-instance v7, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    const-string v9, "NOT_IMPLEMENTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 21
    sput-object v9, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->$VALUES:[Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-object p0
.end method

.method public static valueOrUnknownOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
    .locals 0

    if-nez p0, :cond_0

    .line 31
    sget-object p0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-object p0

    .line 33
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 35
    :catch_0
    sget-object p0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->$VALUES:[Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-object v0
.end method
