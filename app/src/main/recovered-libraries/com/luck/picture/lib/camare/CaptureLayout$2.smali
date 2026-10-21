.class Lcom/luck/picture/lib/camare/CaptureLayout$2;
.super Ljava/lang/Object;
.source "CaptureLayout.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/CaptureLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CaptureLayout;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEnd(J)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordEnd(J)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->startAlphaAnimation()V

    .line 183
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->startTypeBtnAnimator()V

    return-void
.end method

.method public recordError()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordError()V

    :cond_0
    return-void
.end method

.method public recordShort(J)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordShort(J)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->startAlphaAnimation()V

    return-void
.end method

.method public recordStart()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordStart()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->startAlphaAnimation()V

    return-void
.end method

.method public recordZoom(F)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordZoom(F)V

    :cond_0
    return-void
.end method

.method public takePictures()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureLayout$2;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$200(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->takePictures()V

    :cond_0
    return-void
.end method
