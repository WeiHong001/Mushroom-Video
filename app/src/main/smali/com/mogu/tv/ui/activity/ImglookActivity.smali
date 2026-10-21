.class public final Lcom/mogu/tv/ui/activity/ImglookActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "ImglookActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActImglookBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0018\u001a\u00020\u0016H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001bH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/ImglookActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActImglookBinding;",
        "()V",
        "circleNavigator",
        "Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;",
        "getCircleNavigator",
        "()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;",
        "circleNavigator$delegate",
        "Lkotlin/Lazy;",
        "mPager",
        "Lcom/mogu/tv/view/PhotoViewPager;",
        "pagerPosition",
        "",
        "getPagerPosition$app_mogushareRelease",
        "()I",
        "setPagerPosition$app_mogushareRelease",
        "(I)V",
        "urls",
        "Ljava/util/ArrayList;",
        "",
        "initData",
        "",
        "initTab",
        "initView",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSaveInstanceState",
        "outState",
        "ImagePagerAdapter",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final circleNavigator$delegate:Lkotlin/Lazy;

.field private mPager:Lcom/mogu/tv/view/PhotoViewPager;

.field private pagerPosition:I

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/mogu/tv/ui/activity/ImglookActivity$circleNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/activity/ImglookActivity$circleNavigator$2;-><init>(Lcom/mogu/tv/ui/activity/ImglookActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->circleNavigator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCircleNavigator()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->circleNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;

    return-object v0
.end method

.method private final initTab()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActImglookBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActImglookBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const-string v1, "binding.magicIndicator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 67
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getCircleNavigator()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;

    move-result-object v0

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->urls:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string/jumbo v1, "urls"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->setCircleCount(I)V

    .line 68
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getCircleNavigator()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0602bf

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->setCircleColor(I)V

    .line 69
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getCircleNavigator()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;

    move-result-object v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v1, v2, v3}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->setRadius(I)V

    .line 70
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActImglookBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActImglookBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getCircleNavigator()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 71
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->mPager:Lcom/mogu/tv/view/PhotoViewPager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;-><init>(Lcom/mogu/tv/ui/activity/ImglookActivity;)V

    check-cast v1, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/PhotoViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 89
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getCircleNavigator()Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/circlenavigator/CircleNavigator;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final getPagerPosition$app_mogushareRelease()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->pagerPosition:I

    return v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->urls:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->pagerPosition:I

    const v0, 0x7f0a026e

    .line 52
    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/view/PhotoViewPager;

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->mPager:Lcom/mogu/tv/view/PhotoViewPager;

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->urls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string/jumbo v2, "urls"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->urls:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 54
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->initTab()V

    .line 56
    :cond_3
    new-instance v0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;

    .line 57
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "supportFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->urls:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v4

    .line 56
    :goto_0
    invoke-direct {v0, p0, v3, v1}, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;-><init>(Lcom/mogu/tv/ui/activity/ImglookActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 59
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->mPager:Lcom/mogu/tv/view/PhotoViewPager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Lcom/mogu/tv/view/PhotoViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->mPager:Lcom/mogu/tv/view/PhotoViewPager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->pagerPosition:I

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/PhotoViewPager;->setCurrentItem(I)V

    .line 62
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->mPager:Lcom/mogu/tv/view/PhotoViewPager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/mogu/tv/view/PhotoViewPager;->invalidate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 44
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->mPager:Lcom/mogu/tv/view/PhotoViewPager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/mogu/tv/view/PhotoViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "STATE_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setPagerPosition$app_mogushareRelease(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity;->pagerPosition:I

    return-void
.end method
