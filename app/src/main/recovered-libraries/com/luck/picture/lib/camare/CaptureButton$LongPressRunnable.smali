.class Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;
.super Ljava/lang/Object;
.source "CaptureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/camare/CaptureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CaptureButton;


# direct methods
.method private constructor <init>(Lcom/luck/picture/lib/camare/CaptureButton;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/luck/picture/lib/camare/CaptureButton;Lcom/luck/picture/lib/camare/CaptureButton$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$302(Lcom/luck/picture/lib/camare/CaptureButton;I)I

    .line 310
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CheckPermission;->getRecordState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$302(Lcom/luck/picture/lib/camare/CaptureButton;I)I

    .line 312
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureButton;->access$200(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureButton;->access$200(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordError()V

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    .line 319
    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureButton;->access$400(Lcom/luck/picture/lib/camare/CaptureButton;)F

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    .line 320
    invoke-static {v2}, Lcom/luck/picture/lib/camare/CaptureButton;->access$400(Lcom/luck/picture/lib/camare/CaptureButton;)F

    move-result v2

    iget-object v3, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v3}, Lcom/luck/picture/lib/camare/CaptureButton;->access$800(Lcom/luck/picture/lib/camare/CaptureButton;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    .line 321
    invoke-static {v3}, Lcom/luck/picture/lib/camare/CaptureButton;->access$100(Lcom/luck/picture/lib/camare/CaptureButton;)F

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    .line 322
    invoke-static {v4}, Lcom/luck/picture/lib/camare/CaptureButton;->access$100(Lcom/luck/picture/lib/camare/CaptureButton;)F

    move-result v4

    iget-object v5, p0, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-static {v5}, Lcom/luck/picture/lib/camare/CaptureButton;->access$900(Lcom/luck/picture/lib/camare/CaptureButton;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 318
    invoke-static {v0, v1, v2, v3, v4}, Lcom/luck/picture/lib/camare/CaptureButton;->access$1000(Lcom/luck/picture/lib/camare/CaptureButton;FFFF)V

    return-void
.end method
