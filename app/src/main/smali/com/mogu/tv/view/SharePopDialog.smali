.class public Lcom/mogu/tv/view/SharePopDialog;
.super Landroid/app/Dialog;
.source "SharePopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private localResImg:I

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const p4, 0x7f130456

    .line 68
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p4, ""

    .line 36
    iput-object p4, p0, Lcom/mogu/tv/view/SharePopDialog;->mType:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/mogu/tv/view/SharePopDialog;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/mogu/tv/view/SharePopDialog;->mUrl:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/mogu/tv/view/SharePopDialog;->mContent:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/mogu/tv/view/SharePopDialog;->localResImg:I

    .line 73
    invoke-virtual {p0}, Lcom/mogu/tv/view/SharePopDialog;->initView()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 12

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/SharePopDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0d004c

    .line 81
    invoke-virtual {p0, v1}, Lcom/mogu/tv/view/SharePopDialog;->setContentView(I)V

    const v1, 0x7f0a0202

    .line 82
    invoke-virtual {p0, v1}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0372

    .line 83
    invoke-virtual {p0, v2}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0203

    .line 84
    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0a01fd

    .line 85
    invoke-virtual {p0, v4}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a01eb

    .line 86
    invoke-virtual {p0, v5}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0a01f4

    .line 87
    invoke-virtual {p0, v6}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f0a01f6

    .line 88
    invoke-virtual {p0, v7}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f0a01fe

    .line 89
    invoke-virtual {p0, v8}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f0a01f5

    .line 90
    invoke-virtual {p0, v9}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f0a01f7

    .line 91
    invoke-virtual {p0, v10}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0a01f9

    .line 92
    invoke-virtual {p0, v11}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 93
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v8, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v10, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/mogu/tv/view/SharePopDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 106
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/mogu/tv/view/SharePopDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 108
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/SharePopDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f130454

    .line 111
    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01eb

    if-ne p1, v0, :cond_0

    .line 146
    sget-object p1, Lcom/qushare/news/utils/ShareUtils;->INSTANCE:Lcom/qushare/news/utils/ShareUtils;

    iget-object v0, p0, Lcom/mogu/tv/view/SharePopDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qushare/news/utils/ShareUtils;->copyText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a01f9

    if-ne p1, v0, :cond_1

    .line 148
    sget-object p1, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    new-instance v0, Lcom/mogu/tv/model/ShareEventSavePhoto;

    invoke-direct {v0}, Lcom/mogu/tv/model/ShareEventSavePhoto;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a01f6

    if-ne p1, v0, :cond_2

    .line 150
    sget-object p1, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    invoke-virtual {p1}, Lcom/mogu/tv/utils/DialogUtils;->showQrCodeDialog()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0a01fd

    if-ne p1, v0, :cond_3

    .line 152
    sget-object p1, Lcom/qushare/news/utils/ShareUtils;->INSTANCE:Lcom/qushare/news/utils/ShareUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/view/SharePopDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mogu/tv/view/SharePopDialog;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/qushare/news/utils/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0a01f7

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const v0, 0x7f0a0372

    if-ne p1, v0, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/mogu/tv/view/SharePopDialog;->dismiss()V

    .line 158
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mogu/tv/view/SharePopDialog;->dismiss()V

    return-void
.end method

.method public showSaveImage(Z)Landroid/app/Dialog;
    .locals 1

    const v0, 0x7f0a01f9

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/SharePopDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object p0
.end method
