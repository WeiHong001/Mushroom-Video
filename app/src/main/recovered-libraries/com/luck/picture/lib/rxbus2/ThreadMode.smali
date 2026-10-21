.class public final enum Lcom/luck/picture/lib/rxbus2/ThreadMode;
.super Ljava/lang/Enum;
.source "ThreadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/luck/picture/lib/rxbus2/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/luck/picture/lib/rxbus2/ThreadMode;

.field public static final enum CURRENT_THREAD:Lcom/luck/picture/lib/rxbus2/ThreadMode;

.field public static final enum MAIN:Lcom/luck/picture/lib/rxbus2/ThreadMode;

.field public static final enum NEW_THREAD:Lcom/luck/picture/lib/rxbus2/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/luck/picture/lib/rxbus2/ThreadMode;

    const-string v1, "CURRENT_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/rxbus2/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/luck/picture/lib/rxbus2/ThreadMode;->CURRENT_THREAD:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    .line 16
    new-instance v1, Lcom/luck/picture/lib/rxbus2/ThreadMode;

    const-string v3, "MAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/luck/picture/lib/rxbus2/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/luck/picture/lib/rxbus2/ThreadMode;->MAIN:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    .line 22
    new-instance v3, Lcom/luck/picture/lib/rxbus2/ThreadMode;

    const-string v5, "NEW_THREAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/luck/picture/lib/rxbus2/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/luck/picture/lib/rxbus2/ThreadMode;->NEW_THREAD:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/luck/picture/lib/rxbus2/ThreadMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lcom/luck/picture/lib/rxbus2/ThreadMode;->$VALUES:[Lcom/luck/picture/lib/rxbus2/ThreadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/luck/picture/lib/rxbus2/ThreadMode;
    .locals 1

    .line 7
    const-class v0, Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/rxbus2/ThreadMode;

    return-object p0
.end method

.method public static values()[Lcom/luck/picture/lib/rxbus2/ThreadMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/luck/picture/lib/rxbus2/ThreadMode;->$VALUES:[Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-virtual {v0}, [Lcom/luck/picture/lib/rxbus2/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/luck/picture/lib/rxbus2/ThreadMode;

    return-object v0
.end method
