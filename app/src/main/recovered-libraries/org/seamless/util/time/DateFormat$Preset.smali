.class public final enum Lorg/seamless/util/time/DateFormat$Preset;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/time/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Preset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/util/time/DateFormat$Preset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;


# instance fields
.field protected dateFormat:Lorg/seamless/util/time/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v1, Lorg/seamless/util/time/DateFormat;

    const-string v2, "31.12.2010"

    const-string v3, "dd.MM.yyyy"

    invoke-direct {v1, v2, v3}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DD_MM_YYYY_DOT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 28
    new-instance v1, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v2, Lorg/seamless/util/time/DateFormat;

    const-string v4, "12.31.2010"

    const-string v5, "MM.dd.yyyy"

    invoke-direct {v2, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MM_DD_YYYY_DOT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v1, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 29
    new-instance v2, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v4, Lorg/seamless/util/time/DateFormat;

    const-string v6, "2010.12.31"

    const-string v7, "yyyy.MM.dd"

    invoke-direct {v4, v6, v7}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "YYYY_MM_DD_DOT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v2, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 30
    new-instance v4, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v6, Lorg/seamless/util/time/DateFormat;

    const-string v8, "2010.31.12"

    const-string v9, "yyyy.dd.MM"

    invoke-direct {v6, v8, v9}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "YYYY_DD_MM_DOT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v4, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 31
    new-instance v6, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v8, Lorg/seamless/util/time/DateFormat;

    const-string v10, "31/12/2010"

    const-string v11, "dd/MM/yyyy"

    invoke-direct {v8, v10, v11}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "DD_MM_YYYY_SLASH"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v6, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 32
    new-instance v8, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v10, Lorg/seamless/util/time/DateFormat;

    const-string v12, "12/31/2010"

    const-string v13, "MM/dd/yyyy"

    invoke-direct {v10, v12, v13}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "MM_DD_YYYY_SLASH"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v8, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 33
    new-instance v10, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v12, Lorg/seamless/util/time/DateFormat;

    const-string v14, "2010/12/31"

    const-string v15, "yyyy/MM/dd"

    invoke-direct {v12, v14, v15}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "YYYY_MM_DD_SLASH"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v10, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 34
    new-instance v12, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v14, Lorg/seamless/util/time/DateFormat;

    const-string v15, "2010/31/12"

    const-string v13, "yyyy/dd/MM"

    invoke-direct {v14, v15, v13}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "YYYY_DD_MM_SLASH"

    const/4 v15, 0x7

    invoke-direct {v12, v13, v15, v14}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v12, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 35
    new-instance v13, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v14, Lorg/seamless/util/time/DateFormat;

    const-string v15, "2010 Dec 31"

    const-string v11, "yyyy MMM dd"

    invoke-direct {v14, v15, v11}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "YYYY_MMM_DD"

    const/16 v15, 0x8

    invoke-direct {v13, v11, v15, v14}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v13, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

    .line 36
    new-instance v11, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v14, Lorg/seamless/util/time/DateFormat;

    const-string v15, "31 Dec 2010"

    const-string v9, "dd MMM yyyy"

    invoke-direct {v14, v15, v9}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "DD_MMM_YYYY"

    const/16 v15, 0x9

    invoke-direct {v11, v9, v15, v14}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v11, Lorg/seamless/util/time/DateFormat$Preset;->DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    .line 37
    new-instance v9, Lorg/seamless/util/time/DateFormat$Preset;

    new-instance v14, Lorg/seamless/util/time/DateFormat;

    const-string v15, "Dec 31 2010"

    const-string v7, "MMM dd yyyy"

    invoke-direct {v14, v15, v7}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "MMM_DD_YYYY"

    const/16 v15, 0xa

    invoke-direct {v9, v7, v15, v14}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v9, Lorg/seamless/util/time/DateFormat$Preset;->MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    const/16 v7, 0xb

    new-array v7, v7, [Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v0, v7, v3

    aput-object v1, v7, v5

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    const/16 v0, 0x9

    aput-object v11, v7, v0

    aput-object v9, v7, v15

    .line 26
    sput-object v7, Lorg/seamless/util/time/DateFormat$Preset;->$VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/util/time/DateFormat;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lorg/seamless/util/time/DateFormat$Preset;->dateFormat:Lorg/seamless/util/time/DateFormat;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateFormat$Preset;
    .locals 1

    .line 26
    const-class v0, Lorg/seamless/util/time/DateFormat$Preset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/util/time/DateFormat$Preset;

    return-object p0
.end method

.method public static values()[Lorg/seamless/util/time/DateFormat$Preset;
    .locals 1

    .line 26
    sget-object v0, Lorg/seamless/util/time/DateFormat$Preset;->$VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

    invoke-virtual {v0}, [Lorg/seamless/util/time/DateFormat$Preset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/util/time/DateFormat$Preset;

    return-object v0
.end method


# virtual methods
.method public getDateFormat()Lorg/seamless/util/time/DateFormat;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/seamless/util/time/DateFormat$Preset;->dateFormat:Lorg/seamless/util/time/DateFormat;

    return-object v0
.end method
