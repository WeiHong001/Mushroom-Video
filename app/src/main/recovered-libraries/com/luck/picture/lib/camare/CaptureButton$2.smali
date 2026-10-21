.class Lcom/luck/picture/lib/camare/CaptureButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/CaptureButton;->startCaptureAnimation(F)V
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

    .line 225
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$2;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 228
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 230
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$2;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$200(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->takePictures()V

    .line 231
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$2;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/luck/picture/lib/camare/CaptureButton;->access$302(Lcom/luck/picture/lib/camare/CaptureButton;I)I

    return-void
.end method
