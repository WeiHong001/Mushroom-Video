.class public final enum Lorg/fourthline/cling/support/model/StorageMedium;
.super Ljava/lang/Enum;
.source "StorageMedium.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_DA:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_R:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum CD_RW:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DAT:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DV:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_MINUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_PLUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_R:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_RAM:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum DVD_VIDEO:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum D_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum HDD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum HI8:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum LD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MD_PICTURE:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MICRO_MV:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum MINI_DV:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum NONE:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum SACD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum S_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum UNKNOWN:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VHSC:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VIDEO8:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum VIDEO_CD:Lorg/fourthline/cling/support/model/StorageMedium;

.field public static final enum W_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

.field private static byProtocolString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/StorageMedium;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->UNKNOWN:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 29
    new-instance v1, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v3, "DV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->DV:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    new-instance v3, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v5, "MINI_DV"

    const/4 v6, 0x2

    const-string v7, "MINI-DV"

    invoke-direct {v3, v5, v6, v7}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/fourthline/cling/support/model/StorageMedium;->MINI_DV:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 31
    new-instance v5, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v7, "VHS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/StorageMedium;->VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 32
    new-instance v7, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v9, "W_VHS"

    const/4 v10, 0x4

    const-string v11, "W-VHS"

    invoke-direct {v7, v9, v10, v11}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/fourthline/cling/support/model/StorageMedium;->W_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 33
    new-instance v9, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v11, "S_VHS"

    const/4 v12, 0x5

    const-string v13, "S-VHS"

    invoke-direct {v9, v11, v12, v13}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/fourthline/cling/support/model/StorageMedium;->S_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 34
    new-instance v11, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v13, "D_VHS"

    const/4 v14, 0x6

    const-string v15, "D-VHS"

    invoke-direct {v11, v13, v14, v15}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/fourthline/cling/support/model/StorageMedium;->D_VHS:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 35
    new-instance v13, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v15, "VHSC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/fourthline/cling/support/model/StorageMedium;->VHSC:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    new-instance v15, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v14, "VIDEO8"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/fourthline/cling/support/model/StorageMedium;->VIDEO8:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    new-instance v14, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v12, "HI8"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/fourthline/cling/support/model/StorageMedium;->HI8:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 38
    new-instance v12, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "CD_ROM"

    const/16 v8, 0xa

    const-string v6, "CD-ROM"

    invoke-direct {v12, v10, v8, v6}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/fourthline/cling/support/model/StorageMedium;->CD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 39
    new-instance v6, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "CD_DA"

    const/16 v8, 0xb

    const-string v4, "CD-DA"

    invoke-direct {v6, v10, v8, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/fourthline/cling/support/model/StorageMedium;->CD_DA:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 40
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "CD_R"

    const/16 v8, 0xc

    const-string v2, "CD-R"

    invoke-direct {v4, v10, v8, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->CD_R:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 41
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "CD_RW"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "CD-RW"

    invoke-direct {v2, v10, v8, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->CD_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 42
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "VIDEO_CD"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "VIDEO-CD"

    invoke-direct {v4, v10, v8, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->VIDEO_CD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 43
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "SACD"

    const/16 v8, 0xf

    invoke-direct {v2, v10, v8}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->SACD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 44
    new-instance v10, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v8, "MD_AUDIO"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    move-object/from16 v19, v4

    const-string v4, "M-AUDIO"

    invoke-direct {v10, v8, v2, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/fourthline/cling/support/model/StorageMedium;->MD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 45
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v8, "MD_PICTURE"

    const/16 v2, 0x11

    move-object/from16 v20, v10

    const-string v10, "MD-PICTURE"

    invoke-direct {v4, v8, v2, v10}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->MD_PICTURE:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 46
    new-instance v8, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "DVD_ROM"

    const/16 v2, 0x12

    move-object/from16 v21, v4

    const-string v4, "DVD-ROM"

    invoke-direct {v8, v10, v2, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_ROM:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 47
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "DVD_VIDEO"

    const/16 v2, 0x13

    move-object/from16 v22, v8

    const-string v8, "DVD-VIDEO"

    invoke-direct {v4, v10, v2, v8}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_VIDEO:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 48
    new-instance v8, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "DVD_R"

    const/16 v2, 0x14

    move-object/from16 v23, v4

    const-string v4, "DVD-R"

    invoke-direct {v8, v10, v2, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_R:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 49
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "DVD_PLUS_RW"

    const/16 v2, 0x15

    move-object/from16 v24, v8

    const-string v8, "DVD+RW"

    invoke-direct {v4, v10, v2, v8}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_PLUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 50
    new-instance v8, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "DVD_MINUS_RW"

    const/16 v2, 0x16

    move-object/from16 v25, v4

    const-string v4, "DVD-RW"

    invoke-direct {v8, v10, v2, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_MINUS_RW:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 51
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v4, "DVD_RAM"

    const/16 v10, 0x17

    move-object/from16 v26, v8

    const-string v8, "DVD-RAM"

    invoke-direct {v2, v4, v10, v8}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_RAM:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 52
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v8, "DVD_AUDIO"

    const/16 v10, 0x18

    move-object/from16 v27, v2

    const-string v2, "DVD-AUDIO"

    invoke-direct {v4, v8, v10, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->DVD_AUDIO:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 53
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v8, "DAT"

    const/16 v10, 0x19

    invoke-direct {v2, v8, v10}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->DAT:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 54
    new-instance v8, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "LD"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v8, v10, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/fourthline/cling/support/model/StorageMedium;->LD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 55
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "HDD"

    move-object/from16 v29, v8

    const/16 v8, 0x1b

    invoke-direct {v2, v10, v8}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->HDD:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 56
    new-instance v8, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "MICRO_MV"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    move-object/from16 v31, v4

    const-string v4, "MICRO_MV"

    invoke-direct {v8, v10, v2, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/fourthline/cling/support/model/StorageMedium;->MICRO_MV:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 57
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v4, "NETWORK"

    const/16 v10, 0x1d

    invoke-direct {v2, v4, v10}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 58
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "NONE"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v10, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 59
    new-instance v2, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "NOT_IMPLEMENTED"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v10, v4}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 60
    new-instance v4, Lorg/fourthline/cling/support/model/StorageMedium;

    const-string v10, "VENDOR_SPECIFIC"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v10, v2}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

    const/16 v2, 0x21

    new-array v2, v2, [Lorg/fourthline/cling/support/model/StorageMedium;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v31, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v8, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v4, v2, v0

    .line 26
    sput-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->$VALUES:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/StorageMedium$1;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/StorageMedium$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-nez p3, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/StorageMedium;->name()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lorg/fourthline/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/fourthline/cling/support/model/StorageMedium;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/fourthline/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 26
    const-class v0, Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object p0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 3

    .line 95
    invoke-static {p0}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    return-object p0

    .line 97
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Lorg/fourthline/cling/support/model/StorageMedium;

    .line 98
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 99
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 3

    .line 84
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid storage medium string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 90
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/StorageMedium;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object p0, Lorg/fourthline/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/fourthline/cling/support/model/StorageMedium;

    :goto_0
    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 26
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->$VALUES:[Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/StorageMedium;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object v0
.end method
