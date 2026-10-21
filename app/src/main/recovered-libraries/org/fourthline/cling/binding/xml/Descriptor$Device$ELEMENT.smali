.class public final enum Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;
.super Ljava/lang/Enum;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/Descriptor$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum ProductCap:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum SCPDURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum UDN:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum UPC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum URLBase:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum X_DLNACAP:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum X_DLNADOC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum X_ProductCap:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum controlURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum depth:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum device:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum deviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum deviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum eventSubURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum friendlyName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum height:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum icon:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum iconList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum major:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum manufacturer:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum manufacturerURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum mimetype:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum minor:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum modelDescription:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum modelName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum modelNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum modelURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum presentationURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum root:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum serialNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum service:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum serviceId:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum serviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum serviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum url:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

.field public static final enum width:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 36
    new-instance v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v1, "root"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 37
    new-instance v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v3, "specVersion"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v5, "major"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v7, "minor"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 38
    new-instance v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v9, "URLBase"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->URLBase:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 39
    new-instance v9, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v11, "device"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 40
    new-instance v11, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v13, "UDN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 41
    new-instance v13, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v15, "X_DLNADOC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 42
    new-instance v15, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v14, "X_DLNACAP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 43
    new-instance v14, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v12, "ProductCap"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->ProductCap:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 44
    new-instance v12, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v10, "X_ProductCap"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->X_ProductCap:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 45
    new-instance v10, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v8, "deviceType"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 46
    new-instance v8, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "friendlyName"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 47
    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v4, "manufacturer"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 48
    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v2, "manufacturerURL"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 49
    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "modelDescription"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 50
    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v4, "modelName"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 51
    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v2, "modelNumber"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 52
    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "modelURL"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 53
    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v4, "presentationURL"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 54
    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v2, "UPC"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 55
    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "serialNumber"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 56
    new-instance v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v4, "iconList"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v4, "icon"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "width"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "height"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "depth"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "url"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "mimetype"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 57
    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "serviceList"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "service"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "serviceType"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "serviceId"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "SCPDURL"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "controlURL"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    new-instance v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "eventSubURL"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    .line 58
    new-instance v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const-string v6, "deviceList"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const/16 v2, 0x25

    new-array v2, v2, [Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v4, v2, v0

    .line 35
    sput-object v2, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->$VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;
    .locals 1

    .line 35
    const-class v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-object p0
.end method

.method public static valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;
    .locals 0

    .line 62
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;
    .locals 1

    .line 35
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->$VALUES:[Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v0}, [Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-object v0
.end method


# virtual methods
.method public equals(Lorg/w3c/dom/Node;)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
