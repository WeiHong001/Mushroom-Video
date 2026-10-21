.class public final enum Lcom/yanbo/lib_screen/manager/ControlManager$CastState;
.super Ljava/lang/Enum;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CastState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanbo/lib_screen/manager/ControlManager$CastState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

.field public static final enum PAUSED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

.field public static final enum PLAYING:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

.field public static final enum STOPED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

.field public static final enum TRANSITIONING:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 585
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    const-string v1, "TRANSITIONING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->TRANSITIONING:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    .line 586
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    const-string v3, "PLAYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->PLAYING:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    .line 587
    new-instance v3, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    const-string v5, "PAUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->PAUSED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    .line 588
    new-instance v5, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    const-string v7, "STOPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->STOPED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 584
    sput-object v7, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->$VALUES:[Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 584
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanbo/lib_screen/manager/ControlManager$CastState;
    .locals 1

    .line 584
    const-class v0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    return-object p0
.end method

.method public static values()[Lcom/yanbo/lib_screen/manager/ControlManager$CastState;
    .locals 1

    .line 584
    sget-object v0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->$VALUES:[Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    invoke-virtual {v0}, [Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    return-object v0
.end method
