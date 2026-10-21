.class public final enum Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
.super Ljava/lang/Enum;
.source "UnsignedVariableInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/types/UnsignedVariableInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum EIGHT:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum SIXTEEN:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum THIRTYTWO:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

.field public static final enum TWENTYFOUR:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;


# instance fields
.field private maxValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v1, "EIGHT"

    const/4 v2, 0x0

    const-wide/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->EIGHT:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 31
    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v3, "SIXTEEN"

    const/4 v4, 0x1

    const-wide/32 v5, 0xffff

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->SIXTEEN:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 32
    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v5, "TWENTYFOUR"

    const/4 v6, 0x2

    const-wide/32 v7, 0xffffff

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->TWENTYFOUR:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    .line 33
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const-string v7, "THIRTYTWO"

    const/4 v8, 0x3

    const-wide v9, 0xffffffffL

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 29
    sput-object v7, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->$VALUES:[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-wide p3, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->maxValue:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 1

    .line 29
    const-class v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 1

    .line 29
    sget-object v0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->$VALUES:[Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;

    return-object v0
.end method


# virtual methods
.method public getMaxValue()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lorg/fourthline/cling/model/types/UnsignedVariableInteger$Bits;->maxValue:J

    return-wide v0
.end method
