.class public final enum Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;
.super Ljava/lang/Enum;
.source "TransferModeHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

.field public static final enum Background:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

.field public static final enum Interactive:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

.field public static final enum Streaming:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    const-string v1, "Streaming"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->Streaming:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    .line 26
    new-instance v1, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    const-string v3, "Interactive"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->Interactive:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    .line 27
    new-instance v3, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    const-string v5, "Background"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->Background:Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;
    .locals 1

    .line 24
    const-class v0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;
    .locals 1

    .line 24
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader$Type;

    return-object v0
.end method
