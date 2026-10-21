.class public Lcom/mogu/tv/view/InputTextMsgDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "InputTextMsgDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;
    }
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mContext:Landroid/content/Context;

.field private mLastDiff:I

.field private mOnTextSendListener:Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;

.field private maxNumber:I

.field private messageTextView:Landroid/widget/EditText;

.field private rlDlg:Landroid/widget/RelativeLayout;

.field private tvNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mLastDiff:I

    const/16 p2, 0x64

    .line 41
    iput p2, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->maxNumber:I

    .line 54
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/mogu/tv/view/InputTextMsgDialog;->init()V

    .line 56
    invoke-direct {p0}, Lcom/mogu/tv/view/InputTextMsgDialog;->setLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/mogu/tv/view/InputTextMsgDialog;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->maxNumber:I

    return p0
.end method

.method static synthetic access$100(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->tvNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mogu/tv/view/InputTextMsgDialog;)Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mOnTextSendListener:Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mogu/tv/view/InputTextMsgDialog;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mLastDiff:I

    return p0
.end method

.method static synthetic access$602(Lcom/mogu/tv/view/InputTextMsgDialog;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mLastDiff:I

    return p1
.end method

.method private init()V
    .locals 3

    const v0, 0x7f0d0051

    .line 76
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->setContentView(I)V

    const v0, 0x7f0a00f4

    .line 77
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    const v0, 0x7f0a03aa

    .line 78
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->tvNumber:Landroid/widget/TextView;

    const v0, 0x7f0a02a4

    .line 79
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 81
    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    new-instance v2, Lcom/mogu/tv/view/InputTextMsgDialog$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/view/InputTextMsgDialog$1;-><init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f0a0376

    .line 99
    invoke-virtual {p0, v1}, Lcom/mogu/tv/view/InputTextMsgDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    new-instance v2, Lcom/mogu/tv/view/InputTextMsgDialog$2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/view/InputTextMsgDialog$2;-><init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    new-instance v2, Lcom/mogu/tv/view/InputTextMsgDialog$3;

    invoke-direct {v2, p0}, Lcom/mogu/tv/view/InputTextMsgDialog$3;-><init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 147
    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    new-instance v2, Lcom/mogu/tv/view/InputTextMsgDialog$4;

    invoke-direct {v2, p0}, Lcom/mogu/tv/view/InputTextMsgDialog$4;-><init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    new-instance v1, Lcom/mogu/tv/view/InputTextMsgDialog$5;

    invoke-direct {v1, p0}, Lcom/mogu/tv/view/InputTextMsgDialog$5;-><init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 173
    new-instance v0, Lcom/mogu/tv/view/InputTextMsgDialog$6;

    invoke-direct {v0, p0}, Lcom/mogu/tv/view/InputTextMsgDialog$6;-><init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private setLayout()V
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/mogu/tv/view/InputTextMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 186
    invoke-virtual {p0}, Lcom/mogu/tv/view/InputTextMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 187
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 188
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 189
    invoke-virtual {p0}, Lcom/mogu/tv/view/InputTextMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->setCancelable(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/mogu/tv/view/InputTextMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mLastDiff:I

    .line 204
    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mOnTextSendListener:Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;->dismiss()V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->messageTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxNumber(I)V
    .locals 3

    .line 64
    iput p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->maxNumber:I

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->tvNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setmOnTextSendListener(Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog;->mOnTextSendListener:Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;

    return-void
.end method

.method public show()V
    .locals 0

    .line 210
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    return-void
.end method
