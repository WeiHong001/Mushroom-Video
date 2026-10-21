.class public Lcom/yanbo/lib_screen/entity/VItem;
.super Ljava/lang/Object;
.source "VItem.java"


# static fields
.field public static final AUDIO_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

.field public static final AUDIO_ID:Ljava/lang/String; = "10"

.field public static final IMAGE_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

.field public static final IMAGE_ID:Ljava/lang/String; = "30"

.field public static final ROOT_ID:Ljava/lang/String; = "0"

.field public static final VIDEO_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

.field public static final VIDEO_ID:Ljava/lang/String; = "20"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.audio"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/entity/VItem;->AUDIO_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 18
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.imageItem"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/entity/VItem;->IMAGE_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 20
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.video"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/entity/VItem;->VIDEO_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
