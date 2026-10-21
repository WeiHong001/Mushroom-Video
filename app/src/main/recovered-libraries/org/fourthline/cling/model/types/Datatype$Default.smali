.class public final enum Lorg/fourthline/cling/model/types/Datatype$Default;
.super Ljava/lang/Enum;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/types/Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/Datatype$Default;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum BOOLEAN_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum CALENDAR:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum CHAR:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum CHAR_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum DOUBLE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum DOUBLE_PRIMTIIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum FLOAT:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum FLOAT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum INTEGER:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum INTEGER_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum SHORT:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum SHORT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_FOUR_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_ONE_BYTE:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_TWO_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

.field public static final enum URI:Lorg/fourthline/cling/model/types/Datatype$Default;


# instance fields
.field private builtinType:Lorg/fourthline/cling/model/types/Datatype$Builtin;

.field private javaType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 44
    new-instance v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 45
    new-instance v1, Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v5, "BOOLEAN_PRIMITIVE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v1, Lorg/fourthline/cling/model/types/Datatype$Default;->BOOLEAN_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 46
    new-instance v2, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v3, Ljava/lang/Short;

    sget-object v5, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v7, "SHORT"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v2, Lorg/fourthline/cling/model/types/Datatype$Default;->SHORT:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 47
    new-instance v3, Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v7, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v9, "SHORT_PRIMITIVE"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v3, Lorg/fourthline/cling/model/types/Datatype$Default;->SHORT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 48
    new-instance v5, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v7, Ljava/lang/Integer;

    sget-object v9, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v11, "INTEGER"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v5, Lorg/fourthline/cling/model/types/Datatype$Default;->INTEGER:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 49
    new-instance v7, Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v11, Lorg/fourthline/cling/model/types/Datatype$Builtin;->I4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v13, "INTEGER_PRIMITIVE"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v7, Lorg/fourthline/cling/model/types/Datatype$Default;->INTEGER_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 50
    new-instance v9, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v11, Lorg/fourthline/cling/model/types/UnsignedIntegerOneByte;

    sget-object v13, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI1:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v15, "UNSIGNED_INTEGER_ONE_BYTE"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v9, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_ONE_BYTE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 51
    new-instance v11, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v13, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI2:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v14, "UNSIGNED_INTEGER_TWO_BYTES"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v11, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_TWO_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 52
    new-instance v13, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->UI4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v12, "UNSIGNED_INTEGER_FOUR_BYTES"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v13, Lorg/fourthline/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_FOUR_BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 53
    new-instance v12, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Ljava/lang/Float;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v10, "FLOAT"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v12, Lorg/fourthline/cling/model/types/Datatype$Default;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 54
    new-instance v10, Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->R4:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v8, "FLOAT_PRIMITIVE"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v10, Lorg/fourthline/cling/model/types/Datatype$Default;->FLOAT_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 55
    new-instance v8, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Ljava/lang/Double;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v6, "DOUBLE"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v8, Lorg/fourthline/cling/model/types/Datatype$Default;->DOUBLE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 56
    new-instance v6, Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v4, "DOUBLE_PRIMTIIVE"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v6, Lorg/fourthline/cling/model/types/Datatype$Default;->DOUBLE_PRIMTIIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 57
    new-instance v4, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Ljava/lang/Character;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v8, "CHAR"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v4, v8, v6, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v4, Lorg/fourthline/cling/model/types/Datatype$Default;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 58
    new-instance v8, Lorg/fourthline/cling/model/types/Datatype$Default;

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->CHAR:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v6, "CHAR_PRIMITIVE"

    move-object/from16 v18, v4

    const/16 v4, 0xe

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v8, Lorg/fourthline/cling/model/types/Datatype$Default;->CHAR_PRIMITIVE:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 59
    new-instance v6, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Ljava/lang/String;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v4, "STRING"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v6, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 60
    new-instance v4, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Ljava/util/Calendar;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v8, "CALENDAR"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v4, v8, v6, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v4, Lorg/fourthline/cling/model/types/Datatype$Default;->CALENDAR:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 61
    new-instance v8, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, [B

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v6, "BYTES"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v8, Lorg/fourthline/cling/model/types/Datatype$Default;->BYTES:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 62
    new-instance v6, Lorg/fourthline/cling/model/types/Datatype$Default;

    const-class v14, Ljava/net/URI;

    sget-object v15, Lorg/fourthline/cling/model/types/Datatype$Builtin;->URI:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    const-string v4, "URI"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/fourthline/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V

    sput-object v6, Lorg/fourthline/cling/model/types/Datatype$Default;->URI:Lorg/fourthline/cling/model/types/Datatype$Default;

    const/16 v4, 0x13

    new-array v4, v4, [Lorg/fourthline/cling/model/types/Datatype$Default;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object v7, v4, v0

    const/4 v0, 0x6

    aput-object v9, v4, v0

    const/4 v0, 0x7

    aput-object v11, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    aput-object v6, v4, v8

    .line 42
    sput-object v4, Lorg/fourthline/cling/model/types/Datatype$Default;->$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lorg/fourthline/cling/model/types/Datatype$Builtin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lorg/fourthline/cling/model/types/Datatype$Builtin;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->javaType:Ljava/lang/Class;

    .line 69
    iput-object p4, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->builtinType:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-void
.end method

.method public static getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;
    .locals 5

    .line 81
    invoke-static {}, Lorg/fourthline/cling/model/types/Datatype$Default;->values()[Lorg/fourthline/cling/model/types/Datatype$Default;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Default;
    .locals 1

    .line 42
    const-class v0, Lorg/fourthline/cling/model/types/Datatype$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/Datatype$Default;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/Datatype$Default;
    .locals 1

    .line 42
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->$VALUES:[Lorg/fourthline/cling/model/types/Datatype$Default;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/Datatype$Default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/Datatype$Default;

    return-object v0
.end method


# virtual methods
.method public getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->builtinType:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object v0
.end method

.method public getJavaType()Ljava/lang/Class;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/types/Datatype$Default;->javaType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
