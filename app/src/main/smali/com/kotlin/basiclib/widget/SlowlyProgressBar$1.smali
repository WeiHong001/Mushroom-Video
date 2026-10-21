.class Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;
.super Landroid/os/Handler;
.source "SlowlyProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 181
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result p1

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$100(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result v1

    const-string/jumbo v2, "zzzzz"

    if-lt p1, v1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$200(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$300(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const-string p1, "break"

    .line 187
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 189
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$400(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$502(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;Z)Z

    goto/16 :goto_0

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$200(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$200(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v3}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$300(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$102(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;I)I

    .line 196
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$700(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v3}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$300(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$602(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;I)I

    .line 197
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$308(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$600(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result v1

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v3}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$400(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v1, v3}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$800(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;II)V

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send 100 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$600(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$900(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
