.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
.super Ljava/lang/Enum;
.source "DLNAAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DLNA_ORG_PN"

    const-string v5, "DLNA.ORG_PN"

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 48
    new-instance v2, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;

    aput-object v5, v3, v4

    const-string v5, "DLNA_ORG_OP"

    const-string v6, "DLNA.ORG_OP"

    invoke-direct {v2, v5, v1, v6, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 49
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;

    aput-object v6, v5, v4

    const-string v6, "DLNA_ORG_PS"

    const/4 v7, 0x2

    const-string v8, "DLNA.ORG_PS"

    invoke-direct {v3, v6, v7, v8, v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 50
    new-instance v5, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-array v6, v1, [Ljava/lang/Class;

    const-class v8, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;

    aput-object v8, v6, v4

    const-string v8, "DLNA_ORG_CI"

    const/4 v9, 0x3

    const-string v10, "DLNA.ORG_CI"

    invoke-direct {v5, v8, v9, v10, v6}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v5, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 51
    new-instance v6, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-array v8, v1, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;

    aput-object v10, v8, v4

    const-string v10, "DLNA_ORG_FLAGS"

    const/4 v11, 0x4

    const-string v12, "DLNA.ORG_FLAGS"

    invoke-direct {v6, v10, v11, v12, v8}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v6, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const/4 v8, 0x5

    new-array v8, v8, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v0, v8, v4

    aput-object v2, v8, v1

    aput-object v3, v8, v7

    aput-object v5, v8, v9

    aput-object v6, v8, v11

    .line 42
    sput-object v8, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type$1;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 1

    .line 42
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object p0
.end method

.method public static valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->byName:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 1

    .line 42
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object v0
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeTypes:[Ljava/lang/Class;

    return-object v0
.end method
