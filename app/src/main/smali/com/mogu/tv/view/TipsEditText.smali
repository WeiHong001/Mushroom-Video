.class public Lcom/mogu/tv/view/TipsEditText;
.super Landroid/widget/LinearLayout;
.source "TipsEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/view/TipsEditText$OnPhoneGetListener;
    }
.end annotation


# static fields
.field public static final TOPIC_SEPARATE:Ljava/lang/String; = "#"


# instance fields
.field private et_content:Lcom/mogu/tv/view/TopScrollEditText;

.field private mTopicName:Ljava/lang/String;

.field private maxLength:I

.field private tv_tips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->mTopicName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/TipsEditText;->setOrientation(I)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0116

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/mogu/tv/view/TipsEditText;->init()V

    .line 52
    sget-object v1, Lcom/mogu/tv/R$styleable;->TipsEditText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v1, 0x64

    .line 53
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mogu/tv/view/TipsEditText;->maxLength:I

    const/4 p2, 0x3

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 55
    iget-object v1, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/mogu/tv/view/TipsEditText;->maxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/mogu/tv/view/TopScrollEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 56
    iget-object v1, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v1, p2}, Lcom/mogu/tv/view/TopScrollEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0}, Lcom/mogu/tv/view/TopScrollEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    iget-object v1, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v1, p2}, Lcom/mogu/tv/view/TopScrollEditText;->setMinHeight(I)V

    const/4 p2, -0x2

    .line 61
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_0
    const/4 p2, 0x4

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->tv_tips:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/mogu/tv/view/TipsEditText;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mogu/tv/view/TipsEditText;->mTopicName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/mogu/tv/view/TipsEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mogu/tv/view/TipsEditText;->mTopicName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mogu/tv/view/TipsEditText;)Lcom/mogu/tv/view/TopScrollEditText;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mogu/tv/view/TipsEditText;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/mogu/tv/view/TipsEditText;->maxLength:I

    return p0
.end method

.method static synthetic access$300(Lcom/mogu/tv/view/TipsEditText;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/mogu/tv/view/TipsEditText;->tv_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0a03ac

    .line 71
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/TipsEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->tv_tips:Landroid/widget/TextView;

    const v0, 0x7f0a0377

    .line 72
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/TipsEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/view/TopScrollEditText;

    iput-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    .line 73
    new-instance v1, Lcom/mogu/tv/view/TipsEditText$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/view/TipsEditText$1;-><init>(Lcom/mogu/tv/view/TipsEditText;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/TopScrollEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setHeightLight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "#"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {p2, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    .line 200
    iget-object p2, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {p2, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :cond_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v0, v0, 0x1

    const/16 p2, 0x21

    invoke-virtual {v2, p1, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 204
    iget-object p1, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {p1, v2}, Lcom/mogu/tv/view/TopScrollEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0}, Lcom/mogu/tv/view/TopScrollEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditInputText()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0}, Lcom/mogu/tv/view/TopScrollEditText;->getEditInputText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0}, Lcom/mogu/tv/view/TopScrollEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->mTopicName:Ljava/lang/String;

    return-object v0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 4

    .line 104
    iput p1, p0, Lcom/mogu/tv/view/TipsEditText;->maxLength:I

    .line 105
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->tv_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6700\u591a\u53ef\u4ee5\u8f93\u5165"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e2a\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/TopScrollEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setSelection(I)V

    return-void
.end method

.method public setText(Landroid/text/Spanned;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 135
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/mogu/tv/view/TipsEditText;->maxLength:I

    if-gt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setTextSize(F)V

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 5

    .line 165
    iput-object p1, p0, Lcom/mogu/tv/view/TipsEditText;->mTopicName:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object p1

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mogu/tv/view/TipsEditText;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    iget-object v1, p0, Lcom/mogu/tv/view/TipsEditText;->mTopicName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mogu/tv/view/TopScrollEditText;->setTopicTile(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "#517EB0"

    invoke-direct {p0, p1, v1}, Lcom/mogu/tv/view/TipsEditText;->setHeightLight(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/mogu/tv/view/TipsEditText;->et_content:Lcom/mogu/tv/view/TopScrollEditText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mogu/tv/view/TopScrollEditText;->setSelection(I)V

    return-void
.end method
