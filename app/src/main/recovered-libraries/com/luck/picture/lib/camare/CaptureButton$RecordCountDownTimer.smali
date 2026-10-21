.class Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/camare/CaptureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CaptureButton;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CaptureButton;JJ)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    .line 289
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/camare/CaptureButton;->access$600(Lcom/luck/picture/lib/camare/CaptureButton;J)V

    .line 300
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureButton;->access$700(Lcom/luck/picture/lib/camare/CaptureButton;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v0, p1, p2}, Lcom/luck/picture/lib/camare/CaptureButton;->access$600(Lcom/luck/picture/lib/camare/CaptureButton;J)V

    return-void
.end method
