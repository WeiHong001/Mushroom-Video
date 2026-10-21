.class public final enum Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
.super Ljava/lang/Enum;
.source "AvailableSeekRangeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

.field public static final enum MODE_0:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

.field public static final enum MODE_1:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    const-string v1, "MODE_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->MODE_0:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 28
    new-instance v1, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    const-string v3, "MODE_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->MODE_1:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 26
    sput-object v3, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    .locals 1

    .line 26
    const-class v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    .locals 1

    .line 26
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    return-object v0
.end method
