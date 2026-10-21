.class public final enum Lcom/github/like/IconType;
.super Ljava/lang/Enum;
.source "IconType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/like/IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/like/IconType;

.field public static final enum Heart:Lcom/github/like/IconType;

.field public static final enum Star:Lcom/github/like/IconType;

.field public static final enum Thumb:Lcom/github/like/IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/github/like/IconType;

    const-string v1, "Heart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/like/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/like/IconType;->Heart:Lcom/github/like/IconType;

    .line 8
    new-instance v1, Lcom/github/like/IconType;

    const-string v3, "Thumb"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/like/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/like/IconType;->Thumb:Lcom/github/like/IconType;

    .line 9
    new-instance v3, Lcom/github/like/IconType;

    const-string v5, "Star"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/like/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/like/IconType;->Star:Lcom/github/like/IconType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/like/IconType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/github/like/IconType;->$VALUES:[Lcom/github/like/IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/like/IconType;
    .locals 1

    .line 6
    const-class v0, Lcom/github/like/IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/like/IconType;

    return-object p0
.end method

.method public static values()[Lcom/github/like/IconType;
    .locals 1

    .line 6
    sget-object v0, Lcom/github/like/IconType;->$VALUES:[Lcom/github/like/IconType;

    invoke-virtual {v0}, [Lcom/github/like/IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/like/IconType;

    return-object v0
.end method
