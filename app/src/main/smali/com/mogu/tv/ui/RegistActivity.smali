.class public final Lcom/mogu/tv/ui/RegistActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "RegistActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/FragmentRegistBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u001cH\u0002J\u0008\u0010 \u001a\u00020\u001cH\u0014R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R!\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\u0008\u0012\u0004\u0012\u00020\u0019`\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/mogu/tv/ui/RegistActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/FragmentRegistBinding;",
        "()V",
        "commonNavigator",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "getCommonNavigator",
        "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "commonNavigator$delegate",
        "Lkotlin/Lazy;",
        "mFragAdapter",
        "Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;",
        "getMFragAdapter",
        "()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;",
        "setMFragAdapter",
        "(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V",
        "mFragments",
        "Ljava/util/ArrayList;",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlin/collections/ArrayList;",
        "getMFragments",
        "()Ljava/util/ArrayList;",
        "setMFragments",
        "(Ljava/util/ArrayList;)V",
        "mTitles",
        "",
        "getMTitles",
        "initData",
        "",
        "initTab",
        "initView",
        "notifyTab",
        "onDestroy",
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
.field private final commonNavigator$delegate:Lkotlin/Lazy;

.field public mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

.field public mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitles:Ljava/util/ArrayList;
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

    .line 26
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mTitles:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/mogu/tv/ui/RegistActivity$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/RegistActivity$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/RegistActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final initTab()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setScrollPivotX(F)V

    .line 60
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setReselectWhenLayout(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/RegistActivity$initTab$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/RegistActivity$initTab$1;-><init>(Lcom/mogu/tv/ui/RegistActivity;)V

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 91
    sget-object v0, Lcom/kotlin/basiclib/common/ViewPager2Helper;->INSTANCE:Lcom/kotlin/basiclib/common/ViewPager2Helper;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/FragmentRegistBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const-string v2, "binding.magicIndicator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragmentRegistBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string v3, "binding.viewPager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPager2Helper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method private final notifyTab()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mTitles:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u767b\u9304"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mTitles:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u8a3b\u518a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/LoginFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/LoginFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/RegistFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/RegistFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    .line 102
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method public final getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mFragAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mFragments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mFragments"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMTitles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/mogu/tv/ui/RegistActivity;->mTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/mogu/tv/ui/RegistActivity;->notifyTab()V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 41
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/FragmentRegistBinding;->llHead:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->setPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f060245

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/RegistActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/RegistActivity$initView$1;-><init>(Lcom/mogu/tv/ui/RegistActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 49
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8d26\u53f7\u767b\u5f55"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/RegistActivity;->setMFragments(Ljava/util/ArrayList;)V

    .line 51
    new-instance v0, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/RegistActivity;->setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V

    .line 52
    invoke-virtual {p0}, Lcom/mogu/tv/ui/RegistActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentRegistBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 53
    invoke-direct {p0}, Lcom/mogu/tv/ui/RegistActivity;->initTab()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    return-void
.end method

.method public final setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/mogu/tv/ui/RegistActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    return-void
.end method

.method public final setMFragments(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/mogu/tv/ui/RegistActivity;->mFragments:Ljava/util/ArrayList;

    return-void
.end method
