.class Lcom/luck/picture/lib/camare/CaptureButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/CaptureButton;->startRecordAnimation(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CaptureButton;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CaptureButton;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$5;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 263
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 265
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$5;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$300(Lcom/luck/picture/lib/camare/CaptureButton;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 266
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$5;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$200(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$5;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$200(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordStart()V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$5;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/luck/picture/lib/camare/CaptureButton;->access$302(Lcom/luck/picture/lib/camare/CaptureButton;I)I

    .line 269
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$5;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$500(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method
