.class Lcom/luck/picture/lib/camare/CameraInterface$1;
.super Ljava/lang/Object;
.source "CameraInterface.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/camare/CameraInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CameraInterface;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CameraInterface;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$1;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 111
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 115
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface$1;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    const/4 v2, 0x0

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-static {v2, p1}, Lcom/luck/picture/lib/camare/util/AngleUtil;->getSensorAngle(FF)I

    move-result p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/camare/CameraInterface;->access$002(Lcom/luck/picture/lib/camare/CameraInterface;I)I

    return-void
.end method
