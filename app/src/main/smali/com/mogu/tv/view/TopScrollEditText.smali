.class public Lcom/mogu/tv/view/TopScrollEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TopScrollEditText.java"


# instance fields
.field private TopicTile:Ljava/lang/String;

.field private mBottomFlag:Z

.field private mOffsetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/mogu/tv/view/TopScrollEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/mogu/tv/view/TopScrollEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/mogu/tv/view/TopScrollEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 118
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getEditInputText()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onMeasure(II)V

    .line 95
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    .line 99
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getTotalPaddingTop()I

    move-result p2

    .line 101
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getTotalPaddingBottom()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getHeight()I

    move-result v1

    add-int/2addr p1, p2

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 107
    iput p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->mOffsetHeight:I

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->onScrollChanged(IIII)V

    .line 133
    iget p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->mOffsetHeight:I

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    :cond_1
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 64
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    .line 65
    iget-object p2, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 73
    iget-object v0, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-ltz p1, :cond_2

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, v0, 0x1

    if-le p1, p2, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/TopScrollEditText;->setSelection(I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setSelection(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 123
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 125
    iget-boolean v0, p0, Lcom/mogu/tv/view/TopScrollEditText;->mBottomFlag:Z

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mogu/tv/view/TopScrollEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return p1
.end method

.method public setTopicTile(Ljava/lang/String;)V
    .locals 2

    .line 23
    iput-object p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/view/TopScrollEditText;->TopicTile:Ljava/lang/String;

    :cond_0
    return-void
.end method
