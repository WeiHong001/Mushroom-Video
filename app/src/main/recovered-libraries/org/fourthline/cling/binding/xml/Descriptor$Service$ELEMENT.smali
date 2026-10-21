.class public final enum Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;
.super Ljava/lang/Enum;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/Descriptor$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum action:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum actionList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum allowedValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum allowedValueList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum allowedValueRange:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum argument:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum argumentList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum dataType:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum defaultValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum direction:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum major:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum maximum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum minimum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum minor:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum relatedStateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum retval:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum scpd:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum serviceStateTable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum step:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 79
    new-instance v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "scpd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 80
    new-instance v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v3, "specVersion"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v3, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v5, "major"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v5, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v7, "minor"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 81
    new-instance v7, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v9, "actionList"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v9, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v11, "action"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v11, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v13, "name"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 82
    new-instance v13, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v15, "argumentList"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v15, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v14, "argument"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v14, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v12, "direction"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v12, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v10, "relatedStateVariable"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v10, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v8, "retval"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 83
    new-instance v8, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v6, "serviceStateTable"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v4, "stateVariable"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v2, "dataType"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v6, "defaultValue"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 84
    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v4, "allowedValueList"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v2, "allowedValue"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v6, "allowedValueRange"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v4, "minimum"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v2, "maximum"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v6, "step"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const/16 v6, 0x16

    new-array v6, v6, [Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    .line 78
    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->$VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;
    .locals 1

    .line 78
    const-class v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-object p0
.end method

.method public static valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;
    .locals 0

    .line 88
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;
    .locals 1

    .line 78
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->$VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v0}, [Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-object v0
.end method


# virtual methods
.method public equals(Lorg/w3c/dom/Node;)Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
