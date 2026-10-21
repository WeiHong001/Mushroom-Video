.class public Lcom/luck/picture/lib/camare/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static huaweiRongyao:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "hwH60"

    const-string v1, "hwPE"

    const-string v2, "hwH30"

    const-string v3, "hwHol"

    const-string v4, "hwG750"

    const-string v5, "hw7D"

    const-string v6, "hwChe2"

    .line 7
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/camare/util/DeviceUtil;->huaweiRongyao:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u624b\u673a\u578b\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u7cfb\u7edf\u7248\u672c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSDK\u7248\u672c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static isHuaWeiRongyao()Z
    .locals 5

    .line 30
    sget-object v0, Lcom/luck/picture/lib/camare/util/DeviceUtil;->huaweiRongyao:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    sget-object v3, Lcom/luck/picture/lib/camare/util/DeviceUtil;->huaweiRongyao:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {}, Lcom/luck/picture/lib/camare/util/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
