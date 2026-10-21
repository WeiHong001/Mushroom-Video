.class public final Lcom/mogu/tv/ui/frag/ShortIndexFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "ShortIndexFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragShortindexvideoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001dH\u0002J\u0008\u0010\u001f\u001a\u00020\u001dH\u0016J\u0008\u0010 \u001a\u00020\u001dH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R*\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\u0008\u0012\u0004\u0012\u00020\u0019`\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017\u00a8\u0006!"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ShortIndexFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragShortindexvideoBinding;",
        "()V",
        "commonNavigator",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "getCommonNavigator",
        "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "commonNavigator$delegate",
        "Lkotlin/Lazy;",
        "mFragAdapter",
        "Lcom/kotlin/basiclib/common/FragmentPageAdapter;",
        "getMFragAdapter",
        "()Lcom/kotlin/basiclib/common/FragmentPageAdapter;",
        "setMFragAdapter",
        "(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V",
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
        "setMTitles",
        "initData",
        "",
        "initTab",
        "initView",
        "notifyTab",
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

.field public mFragAdapter:Lcom/kotlin/basiclib/common/FragmentPageAdapter;

.field public mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/ArrayList;
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
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    const-string/jumbo v0, "\u63a8\u8350"

    const-string/jumbo v1, "\u559c\u6b22"

    .line 24
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mTitles:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/mogu/tv/ui/frag/ShortIndexFragment$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/frag/ShortIndexFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->commonNavigator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final initTab()V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->setMFragments(Ljava/util/ArrayList;)V

    .line 39
    new-instance v0, Lcom/kotlin/basiclib/common/FragmentPageAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getMFragments()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kotlin/basiclib/common/FragmentPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->setMFragAdapter(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V

    .line 40
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getMFragAdapter()Lcom/kotlin/basiclib/common/FragmentPageAdapter;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 41
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 42
    :goto_3
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setScrollPivotX(F)V

    .line 44
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setReselectWhenLayout(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    new-instance v2, Lcom/mogu/tv/ui/frag/ShortIndexFragment$initTab$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment$initTab$1;-><init>(Lcom/mogu/tv/ui/frag/ShortIndexFragment;)V

    check-cast v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v2

    check-cast v2, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 75
    :goto_5
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    if-eqz v2, :cond_7

    iget-object v1, v2, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    :cond_7
    invoke-static {v0, v1}, Lnet/lucode/hackware/magicindicator/ViewPagerHelper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private final notifyTab()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    .line 81
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->getMFragAdapter()Lcom/kotlin/basiclib/common/FragmentPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/common/FragmentPageAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method public final getMFragAdapter()Lcom/kotlin/basiclib/common/FragmentPageAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mFragAdapter:Lcom/kotlin/basiclib/common/FragmentPageAdapter;

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

    .line 25
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mFragments:Ljava/util/ArrayList;

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

    .line 24
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->notifyTab()V

    return-void
.end method

.method public initView()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->initTab()V

    return-void
.end method

.method public final setMFragAdapter(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mFragAdapter:Lcom/kotlin/basiclib/common/FragmentPageAdapter;

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

    .line 25
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mFragments:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMTitles(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortIndexFragment;->mTitles:Ljava/util/ArrayList;

    return-void
.end method
