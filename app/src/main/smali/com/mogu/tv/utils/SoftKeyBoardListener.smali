.class public Lcom/mogu/tv/utils/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    }
.end annotation


# instance fields
.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private onSoftKeyBoardChangeListener:Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private rootView:Landroid/view/View;

.field rootViewVisibleHeight:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;

    invoke-direct {v0, p0}, Lcom/mogu/tv/utils/SoftKeyBoardListener$1;-><init>(Lcom/mogu/tv/utils/SoftKeyBoardListener;)V

    iput-object v0, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    iput-object p2, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Landroid/view/View;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mogu/tv/utils/SoftKeyBoardListener;)Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-object p0
.end method


# virtual methods
.method public setOnSoftKeyBoardChangeListener(Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/mogu/tv/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/mogu/tv/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    :cond_0
    return-void
.end method
