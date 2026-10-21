.class public Lcom/luck/picture/lib/widget/PhotoPopupWindow;
.super Landroid/widget/PopupWindow;
.source "PhotoPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;
    }
.end annotation


# instance fields
.field private animationIn:Landroid/view/animation/Animation;

.field private animationOut:Landroid/view/animation/Animation;

.field private fl_content:Landroid/widget/FrameLayout;

.field private isDismiss:Z

.field private ll_root:Landroid/widget/LinearLayout;

.field private onItemClickListener:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

.field private picture_tv_cancel:Landroid/widget/TextView;

.field private picture_tv_photo:Landroid/widget/TextView;

.field private picture_tv_video:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->isDismiss:Z

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_camera_pop_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    .line 37
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setWidth(I)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setHeight(I)V

    .line 39
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setFocusable(Z)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setOutsideTouchable(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->update()V

    .line 43
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setContentView(Landroid/view/View;)V

    .line 45
    sget v1, Lcom/luck/picture/lib/R$anim;->up_in:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->animationIn:Landroid/view/animation/Animation;

    .line 46
    sget v1, Lcom/luck/picture/lib/R$anim;->down_out:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->animationOut:Landroid/view/animation/Animation;

    .line 47
    sget p1, Lcom/luck/picture/lib/R$id;->ll_root:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->ll_root:Landroid/widget/LinearLayout;

    .line 48
    sget p1, Lcom/luck/picture/lib/R$id;->fl_content:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->fl_content:Landroid/widget/FrameLayout;

    .line 49
    sget p1, Lcom/luck/picture/lib/R$id;->picture_tv_photo:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->picture_tv_photo:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/luck/picture/lib/R$id;->picture_tv_cancel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->picture_tv_cancel:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/luck/picture/lib/R$id;->picture_tv_video:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->picture_tv_video:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->picture_tv_cancel:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->picture_tv_photo:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->fl_content:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/luck/picture/lib/widget/PhotoPopupWindow;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->isDismiss:Z

    return p1
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss4Pop()V

    return-void
.end method

.method static synthetic access$201(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$301(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$401(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$501(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private dismiss4Pop()V
    .locals 2

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/luck/picture/lib/widget/PhotoPopupWindow$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$2;-><init>(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->isDismiss:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->isDismiss:Z

    .line 84
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->ll_root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->animationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->animationOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;-><init>(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 122
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_photo:I

    if-ne p1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->onItemClickListener:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 124
    invoke-interface {v0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;->onItemClick(I)V

    .line 125
    invoke-static {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->access$401(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    .line 128
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_video:I

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->onItemClickListener:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 130
    invoke-interface {p1, v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;->onItemClick(I)V

    .line 131
    invoke-static {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->access$501(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->onItemClickListener:Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 5

    .line 61
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/16 v2, 0x50

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 66
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, v2, v3, v3}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 71
    :goto_0
    iput-boolean v3, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->isDismiss:Z

    .line 72
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->ll_root:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->animationIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
