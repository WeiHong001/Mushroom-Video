.class public final enum Lorg/fourthline/cling/support/model/PlayMode;
.super Ljava/lang/Enum;
.source "PlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum DIRECT_1:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum INTRO:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum RANDOM:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum REPEAT_ALL:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum REPEAT_ONE:Lorg/fourthline/cling/support/model/PlayMode;

.field public static final enum SHUFFLE:Lorg/fourthline/cling/support/model/PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 22
    new-instance v0, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PlayMode;->NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

    .line 23
    new-instance v1, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v3, "SHUFFLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/PlayMode;->SHUFFLE:Lorg/fourthline/cling/support/model/PlayMode;

    .line 24
    new-instance v3, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v5, "REPEAT_ONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/PlayMode;->REPEAT_ONE:Lorg/fourthline/cling/support/model/PlayMode;

    .line 25
    new-instance v5, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v7, "REPEAT_ALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/PlayMode;->REPEAT_ALL:Lorg/fourthline/cling/support/model/PlayMode;

    .line 26
    new-instance v7, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v9, "RANDOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/PlayMode;->RANDOM:Lorg/fourthline/cling/support/model/PlayMode;

    .line 27
    new-instance v9, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v11, "DIRECT_1"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/support/model/PlayMode;->DIRECT_1:Lorg/fourthline/cling/support/model/PlayMode;

    .line 28
    new-instance v11, Lorg/fourthline/cling/support/model/PlayMode;

    const-string v13, "INTRO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/fourthline/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/fourthline/cling/support/model/PlayMode;->INTRO:Lorg/fourthline/cling/support/model/PlayMode;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/fourthline/cling/support/model/PlayMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 21
    sput-object v13, Lorg/fourthline/cling/support/model/PlayMode;->$VALUES:[Lorg/fourthline/cling/support/model/PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/PlayMode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/PlayMode;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/PlayMode;->$VALUES:[Lorg/fourthline/cling/support/model/PlayMode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PlayMode;

    return-object v0
.end method
