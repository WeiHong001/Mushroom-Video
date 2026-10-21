.class public final enum Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
.super Ljava/lang/Enum;
.source "ConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

.field public static final enum Input:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

.field public static final enum Output:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    const-string v1, "Output"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->Output:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    .line 38
    new-instance v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    const-string v3, "Input"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 36
    sput-object v3, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
    .locals 1

    .line 36
    const-class v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
    .locals 1

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->$VALUES:[Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    return-object v0
.end method


# virtual methods
.method public getOpposite()Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
    .locals 2

    .line 41
    sget-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->Output:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    :cond_0
    return-object v0
.end method
