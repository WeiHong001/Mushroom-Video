.class public final enum Lorg/fourthline/cling/support/model/TransportAction;
.super Ljava/lang/Enum;
.source "TransportAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/TransportAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Next:Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Pause:Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Play:Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Previous:Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Record:Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Seek:Lorg/fourthline/cling/support/model/TransportAction;

.field public static final enum Stop:Lorg/fourthline/cling/support/model/TransportAction;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v1, "Play"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportAction;->Play:Lorg/fourthline/cling/support/model/TransportAction;

    .line 29
    new-instance v1, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v3, "Stop"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/fourthline/cling/support/model/TransportAction;->Stop:Lorg/fourthline/cling/support/model/TransportAction;

    .line 30
    new-instance v3, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v5, "Pause"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/fourthline/cling/support/model/TransportAction;->Pause:Lorg/fourthline/cling/support/model/TransportAction;

    .line 31
    new-instance v5, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v7, "Seek"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/fourthline/cling/support/model/TransportAction;->Seek:Lorg/fourthline/cling/support/model/TransportAction;

    .line 32
    new-instance v7, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v9, "Next"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/fourthline/cling/support/model/TransportAction;->Next:Lorg/fourthline/cling/support/model/TransportAction;

    .line 33
    new-instance v9, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v11, "Previous"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/fourthline/cling/support/model/TransportAction;->Previous:Lorg/fourthline/cling/support/model/TransportAction;

    .line 34
    new-instance v11, Lorg/fourthline/cling/support/model/TransportAction;

    const-string v13, "Record"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/fourthline/cling/support/model/TransportAction;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/fourthline/cling/support/model/TransportAction;->Record:Lorg/fourthline/cling/support/model/TransportAction;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/fourthline/cling/support/model/TransportAction;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 26
    sput-object v13, Lorg/fourthline/cling/support/model/TransportAction;->$VALUES:[Lorg/fourthline/cling/support/model/TransportAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportAction;
    .locals 1

    .line 26
    const-class v0, Lorg/fourthline/cling/support/model/TransportAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/TransportAction;

    return-object p0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 10

    .line 37
    invoke-static {p0}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lorg/fourthline/cling/support/model/TransportAction;

    return-object p0

    .line 39
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 41
    invoke-static {}, Lorg/fourthline/cling/support/model/TransportAction;->values()[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 42
    invoke-virtual {v8}, Lorg/fourthline/cling/support/model/TransportAction;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 43
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/fourthline/cling/support/model/TransportAction;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/fourthline/cling/support/model/TransportAction;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 1

    .line 26
    sget-object v0, Lorg/fourthline/cling/support/model/TransportAction;->$VALUES:[Lorg/fourthline/cling/support/model/TransportAction;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/TransportAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/TransportAction;

    return-object v0
.end method
