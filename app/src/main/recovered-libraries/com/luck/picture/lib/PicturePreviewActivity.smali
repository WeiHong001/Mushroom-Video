.class public Lcom/luck/picture/lib/PicturePreviewActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PicturePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;


# instance fields
.field private adapter:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

.field private animation:Landroid/view/animation/Animation;

.field private check:Landroid/widget/TextView;

.field private id_ll_ok:Landroid/widget/LinearLayout;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private ll_check:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private picture_left_back:Landroid/widget/ImageView;

.field private position:I

.field private refresh:Z

.field private screenWidth:I

.field private selectImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private tv_img_num:Landroid/widget/TextView;

.field private tv_ok:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PicturePreviewActivity;)Lcom/luck/picture/lib/widget/PreviewViewPager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/luck/picture/lib/PicturePreviewActivity;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->index:I

    return p1
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->animation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->singleRadioMediaImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->subSelectPosition()V

    return-void
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->notifyCheckChanged(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/PicturePreviewActivity;ZII)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/PicturePreviewActivity;->isPreviewEggs(ZII)V

    return-void
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/PicturePreviewActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    return p0
.end method

.method static synthetic access$902(Lcom/luck/picture/lib/PicturePreviewActivity;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    return p1
.end method

.method private initViewPageAdapterData()V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    invoke-direct {v0, v1, p0, p0}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->adapter:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    .line 259
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/PreviewViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    iget v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewViewPager;->setCurrentItem(I)V

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onSelectNumChange(Z)V

    .line 262
    iget v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onImageChecked(I)V

    .line 263
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    iget v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 265
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->index:I

    .line 266
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 268
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->notifyCheckChanged(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_0
    return-void
.end method

.method private isPreviewEggs(ZII)V
    .locals 3

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 216
    iget v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    const-string v1, ""

    if-ge p3, v0, :cond_0

    .line 217
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 218
    iget-object p3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 219
    iget-object p3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz p3, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result p3

    .line 221
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->notifyCheckChanged(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PicturePreviewActivity;->onImageChecked(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 226
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 227
    iget-object p3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 228
    iget-object p3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz p3, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result p3

    .line 230
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->notifyCheckChanged(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 232
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PicturePreviewActivity;->onImageChecked(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyCheckChanged(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 281
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    .line 283
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private singleRadioMediaImage()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 246
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v3, 0xad6

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    .line 248
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(ILjava/util/List;I)V

    .line 247
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/rxbus2/RxBus;->post(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private subSelectPosition()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    add-int/lit8 v1, v1, 0x1

    .line 295
    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSelector(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 370
    new-instance p1, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v0, 0xad6

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    iget v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->index:I

    invoke-direct {p1, v0, v1, v2}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(ILjava/util/List;I)V

    .line 371
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/rxbus2/RxBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public eventBus(Lcom/luck/picture/lib/entity/EventEntity;)V
    .locals 3
    .annotation runtime Lcom/luck/picture/lib/rxbus2/Subscribe;
        threadMode = .enum Lcom/luck/picture/lib/rxbus2/ThreadMode;->MAIN:Lcom/luck/picture/lib/rxbus2/ThreadMode;
    .end annotation

    .line 69
    iget p1, p1, Lcom/luck/picture/lib/entity/EventEntity;->what:I

    const/16 v0, 0xad2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->dismissDialog()V

    .line 73
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/luck/picture/lib/PicturePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePreviewActivity$1;-><init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 321
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityBackPressed()V
    .locals 0

    .line 485
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onBackPressed()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x45

    if-eq p1, p2, :cond_1

    const/16 p2, 0x261

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {p3}, Lcom/yalantis/ucrop/UCropMulti;->getOutput(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 444
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    check-cast p1, Ljava/io/Serializable;

    const-string p3, "com.yalantis.ucrop.OutputUriList"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 450
    invoke-virtual {p0, v0, p3}, Lcom/luck/picture/lib/PicturePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->finish()V

    goto :goto_0

    :cond_3
    const/16 p1, 0x60

    if-ne p2, p1, :cond_4

    const-string p1, "com.yalantis.ucrop.Error"

    .line 456
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 457
    iget-object p2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 381
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->refresh:Z

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->updateSelector(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 464
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->closeActivity()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 392
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    if-ne p1, v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onBackPressed()V

    .line 395
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    if-ne p1, v0, :cond_8

    .line 397
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 398
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 400
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    const-string v4, "image"

    const/4 v5, 0x1

    if-lez v3, :cond_4

    .line 401
    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-ge p1, v3, :cond_4

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 402
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 403
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 405
    :goto_2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz p1, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 410
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p1, v5, :cond_5

    .line 411
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->originalPath:Ljava/lang/String;

    .line 412
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->originalPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->startCrop(Ljava/lang/String;)V

    goto :goto_4

    .line 415
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 417
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 419
    :cond_6
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->startCrop(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 422
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->onResult(Ljava/util/List;)V

    :cond_8
    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 85
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_preview:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->register(Ljava/lang/Object;)V

    .line 90
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-static {p0}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->screenWidth:I

    .line 92
    sget p1, Lcom/luck/picture/lib/R$anim;->modal_in:I

    invoke-static {p0, p1}, Lcom/luck/picture/lib/anim/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->animation:Landroid/view/animation/Animation;

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    sget p1, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->picture_left_back:Landroid/widget/ImageView;

    .line 95
    sget p1, Lcom/luck/picture/lib/R$id;->preview_pager:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/widget/PreviewViewPager;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    .line 96
    sget p1, Lcom/luck/picture/lib/R$id;->ll_check:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->ll_check:Landroid/widget/LinearLayout;

    .line 97
    sget p1, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    .line 98
    sget p1, Lcom/luck/picture/lib/R$id;->check:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    .line 99
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->picture_left_back:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget p1, Lcom/luck/picture/lib/R$id;->tv_ok:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    .line 101
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget p1, Lcom/luck/picture/lib/R$id;->tv_img_num:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_title:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    .line 105
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->numComplete:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 105
    invoke-virtual {p0, v0, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    .line 107
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectList"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bottom_preview"

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "previewSelectList"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    goto :goto_2

    .line 120
    :cond_3
    invoke-static {}, Lcom/luck/picture/lib/observable/ImagesObservable;->getInstance()Lcom/luck/picture/lib/observable/ImagesObservable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/observable/ImagesObservable;->readLocalMedias()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    .line 122
    :goto_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->initViewPageAdapterData()V

    .line 123
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->ll_check:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/luck/picture/lib/PicturePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePreviewActivity$2;-><init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    new-instance v0, Lcom/luck/picture/lib/PicturePreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePreviewActivity$3;-><init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/PreviewViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 469
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 470
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->unregister(Ljava/lang/Object;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 475
    iput-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->mHandler:Landroid/os/Handler;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 479
    iput-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->animation:Landroid/view/animation/Animation;

    :cond_2
    return-void
.end method

.method public onImageChecked(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 307
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 429
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v2, 0xad3

    invoke-direct {v1, v2, p1}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/rxbus2/RxBus;->post(Ljava/lang/Object;)V

    .line 431
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-nez p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->showPleaseDialog()V

    :goto_0
    return-void
.end method

.method public onSelectNumChange(Z)V
    .locals 5

    .line 333
    iput-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->refresh:Z

    .line 334
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eqz p1, :cond_4

    .line 336
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 337
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 338
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->numComplete:Z

    if-eqz p1, :cond_2

    .line 339
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    .line 340
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 339
    invoke-virtual {p0, v3, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 342
    :cond_2
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->refresh:Z

    if-eqz p1, :cond_3

    .line 343
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->selectImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_completed:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 350
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 351
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 352
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->numComplete:Z

    if-eqz p1, :cond_6

    .line 353
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    .line 354
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 353
    invoke-virtual {p0, v3, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 356
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_img_num:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->tv_ok:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_3
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->refresh:Z

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->updateSelector(Z)V

    return-void
.end method
