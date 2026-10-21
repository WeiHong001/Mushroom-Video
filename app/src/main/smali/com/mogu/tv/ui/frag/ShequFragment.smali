.class public final Lcom/mogu/tv/ui/frag/ShequFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "ShequFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragShequBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\"H\u0016J\u0008\u0010$\u001a\u00020\"H\u0002J\u0008\u0010%\u001a\u00020\"H\u0016J\u0008\u0010&\u001a\u00020\"H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R!\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\u0008\u0012\u0004\u0012\u00020\u0019`\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006\'"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ShequFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragShequBinding;",
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
        "userAdapter",
        "Lcom/mogu/tv/adapter/RecommandUserAdapter;",
        "getUserAdapter",
        "()Lcom/mogu/tv/adapter/RecommandUserAdapter;",
        "setUserAdapter",
        "(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V",
        "getUserList",
        "",
        "initData",
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

.field private userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;


# direct methods
.method public static synthetic $r8$lambda$7cog57HQLIK4l21i0TRYLYECWp4(Lcom/mogu/tv/ui/frag/ShequFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->notifyTab$lambda-2(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JexLiZwiVQU6SOFgprmu954rVvY(Lcom/mogu/tv/ui/frag/ShequFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ShequFragment;->getUserList$lambda-1(Lcom/mogu/tv/ui/frag/ShequFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/mogu/tv/adapter/RecommandUserAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/RecommandUserAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    .line 38
    new-instance v0, Lcom/mogu/tv/ui/frag/ShequFragment$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->commonNavigator$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mTitles:Ljava/util/ArrayList;

    return-void
.end method

.method private final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method private final getUserList()V
    .locals 4

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/frag/ShequFragment$getUserList$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$getUserList$1;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getUserList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    .line 78
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/RecommandUserAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private static final getUserList$lambda-1(Lcom/mogu/tv/ui/frag/ShequFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/RecommandUserAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/UserList$User;

    invoke-virtual {p0}, Lcom/mogu/tv/model/UserList$User;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUserDetails(Ljava/lang/String;)V

    return-void
.end method

.method private final initTab()V
    .locals 4

    .line 85
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setScrollPivotX(F)V

    .line 86
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequFragment$initTab$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$initTab$1;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 120
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v2

    check-cast v2, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 122
    :goto_3
    sget-object v0, Lcom/kotlin/basiclib/common/ViewPager2Helper;->INSTANCE:Lcom/kotlin/basiclib/common/ViewPager2Helper;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragShequBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v3, :cond_5

    iget-object v1, v3, Lcom/mogu/tv/databinding/FragShequBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lcom/kotlin/basiclib/common/ViewPager2Helper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method private final notifyTab()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mTitles:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u63a8\u8350"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    new-instance v1, Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/ShequListFragment;-><init>()V

    .line 133
    invoke-virtual {v1, v0}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    .line 137
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final notifyTab$lambda-2(Lcom/mogu/tv/ui/frag/ShequFragment;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragShequBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

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

    .line 43
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mFragments:Ljava/util/ArrayList;

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

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getUserAdapter()Lcom/mogu/tv/adapter/RecommandUserAdapter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getUserList()V

    .line 67
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->notifyTab()V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/frag/ShequFragment;->setMFragments(Ljava/util/ArrayList;)V

    .line 47
    new-instance v0, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getMFragments()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/frag/ShequFragment;->setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V

    .line 48
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 50
    :goto_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v0, :cond_4

    .line 51
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    :cond_4
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->initTab()V

    .line 55
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->IvSq1:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequBinding;->IvSq2:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequFragment$initView$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequFragment$initView$3;-><init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    return-void
.end method

.method public final setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

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

    .line 43
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->mFragments:Ljava/util/ArrayList;

    return-void
.end method

.method public final setUserAdapter(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequFragment;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    return-void
.end method
