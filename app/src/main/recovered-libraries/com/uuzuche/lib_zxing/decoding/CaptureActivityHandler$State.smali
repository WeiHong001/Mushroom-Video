.class final enum Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 51
    new-instance v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 52
    new-instance v1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 53
    new-instance v3, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 50
    sput-object v5, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->$VALUES:[Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 50
    const-class v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 50
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->$VALUES:[Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    return-object v0
.end method
