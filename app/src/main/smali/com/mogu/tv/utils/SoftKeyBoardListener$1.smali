.class Lcom/mogu/tv/utils/SoftKeyBoardListener$1;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/utils/SoftKeyBoardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;


# direct methods
.method constructor <init>(Lcom/mogu/tv/utils/SoftKeyBoardListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v0}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$000(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v0}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$000(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 37
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$000(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iget v1, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-nez v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iput v0, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iget v1, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    if-ne v1, v0, :cond_2

    return-void

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iget v1, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int/2addr v1, v0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_4

    .line 52
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$100(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$100(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iget v2, v2, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShow(I)V

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iput v0, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    return-void

    .line 60
    :cond_4
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iget v1, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int v1, v0, v1

    if-le v1, v2, :cond_6

    .line 61
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$100(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 62
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    invoke-static {v1}, Lcom/mogu/tv/utils/SoftKeyBoardListener;->access$100(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iget v2, v2, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(I)V

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;->this$0:Lcom/mogu/tv/utils/SoftKeyBoardListener;

    iput v0, v1, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    :cond_6
    return-void
.end method
