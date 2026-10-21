.class public final Lcom/mogu/tv/ui/activity/SearchActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/ui/activity/SearchActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActSearchBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/mogu/tv/ui/activity/SearchActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,323:1\n1851#2,2:324\n1851#2,2:326\n1851#2,2:328\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/mogu/tv/ui/activity/SearchActivity\n*L\n271#1:324,2\n284#1:326,2\n310#1:328,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 I2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001IB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u00107\u001a\u000208H\u0002J\u0008\u00109\u001a\u000208H\u0002J\u0008\u0010:\u001a\u000208H\u0016J\u0008\u0010;\u001a\u000208H\u0002J\u0008\u0010<\u001a\u000208H\u0002J\u0008\u0010=\u001a\u000208H\u0002J\u0008\u0010>\u001a\u000208H\u0016J\u0008\u0010?\u001a\u000208H\u0002J\u0008\u0010@\u001a\u000208H\u0016J\u0008\u0010A\u001a\u000208H\u0002J\u0016\u0010B\u001a\u0002082\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020E0DH\u0002J\u0008\u0010F\u001a\u000208H\u0002J\u0008\u0010G\u001a\u000208H\u0002J\u0006\u0010H\u001a\u000208R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R*\u0010*\u001a\u0012\u0012\u0004\u0012\u00020+0\u0017j\u0008\u0012\u0004\u0012\u00020+`\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001b\"\u0004\u0008-\u0010\u001dR\u001a\u0010.\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\r\"\u0004\u00080\u0010\u000fR\u001a\u00101\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106\u00a8\u0006J"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/SearchActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActSearchBinding;",
        "()V",
        "commonNavigator",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "getCommonNavigator",
        "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "commonNavigator$delegate",
        "Lkotlin/Lazy;",
        "firstStart",
        "",
        "getFirstStart",
        "()Z",
        "setFirstStart",
        "(Z)V",
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
        "mHotAdapter",
        "Lcom/mogu/tv/adapter/SearchHotAdapter;",
        "getMHotAdapter",
        "()Lcom/mogu/tv/adapter/SearchHotAdapter;",
        "setMHotAdapter",
        "(Lcom/mogu/tv/adapter/SearchHotAdapter;)V",
        "mSearchHistoryBean",
        "Lcom/mogu/tv/model/SearchHistoryBean;",
        "getMSearchHistoryBean",
        "()Lcom/mogu/tv/model/SearchHistoryBean;",
        "setMSearchHistoryBean",
        "(Lcom/mogu/tv/model/SearchHistoryBean;)V",
        "mTitles",
        "",
        "getMTitles",
        "setMTitles",
        "searchResultShow",
        "getSearchResultShow",
        "setSearchResultShow",
        "userAdapter",
        "Lcom/mogu/tv/adapter/RecommandUserAdapter;",
        "getUserAdapter",
        "()Lcom/mogu/tv/adapter/RecommandUserAdapter;",
        "setUserAdapter",
        "(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V",
        "getLables",
        "",
        "getUserList",
        "initData",
        "initLabels",
        "initTab",
        "initUserList",
        "initView",
        "notifyTab",
        "onBackPressed",
        "refreshHistory",
        "refreshLables",
        "datas",
        "",
        "Lcom/mogu/tv/model/LabelsModel$Item;",
        "showBanner",
        "startSearch",
        "switchPage",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/mogu/tv/ui/activity/SearchActivity$Companion;

.field private static searchKey:Ljava/lang/String;


# instance fields
.field private final commonNavigator$delegate:Lkotlin/Lazy;

.field private firstStart:Z

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

.field private mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

.field private mSearchHistoryBean:Lcom/mogu/tv/model/SearchHistoryBean;

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultShow:Z

.field private userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;


# direct methods
.method public static synthetic $r8$lambda$754TBfRr-EiVbuDxMTpVXgrs9qE(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/SearchActivity;->initUserList$lambda-2$lambda-1(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kNqiY_OFcvOHcvf7_bP9HtXxm_U(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/SearchActivity;->initView$lambda-0(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mogu/tv/ui/activity/SearchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mogu/tv/ui/activity/SearchActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mogu/tv/ui/activity/SearchActivity;->Companion:Lcom/mogu/tv/ui/activity/SearchActivity$Companion;

    const-string v0, ""

    .line 49
    sput-object v0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/mogu/tv/adapter/SearchHotAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/SearchHotAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->firstStart:Z

    .line 148
    new-instance v0, Lcom/mogu/tv/ui/activity/SearchActivity$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    const-string/jumbo v0, "\u5f71\u7247"

    const-string/jumbo v1, "\u7528\u6237"

    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mTitles:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/mogu/tv/adapter/RecommandUserAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/RecommandUserAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    return-void
.end method

.method public static final synthetic access$getSearchKey$cp()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchKey:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$refreshHistory(Lcom/mogu/tv/ui/activity/SearchActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->refreshHistory()V

    return-void
.end method

.method public static final synthetic access$refreshLables(Lcom/mogu/tv/ui/activity/SearchActivity;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/activity/SearchActivity;->refreshLables(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setSearchKey$cp(Ljava/lang/String;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$startSearch(Lcom/mogu/tv/ui/activity/SearchActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->startSearch()V

    return-void
.end method

.method private final getLables()V
    .locals 2

    .line 299
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$getLables$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$getLables$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getLables(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final getUserList()V
    .locals 4

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/activity/SearchActivity$getUserList$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$getUserList$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getUserList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLabels()V
    .locals 4

    .line 229
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    .line 230
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvMoreIc:Landroid/widget/TextView;

    sget-object v2, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mogu/tv/model/GlobeAppData;->getGlobeIconFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvMoreIc:Landroid/widget/TextView;

    const v2, 0x7f12007d

    invoke-virtual {p0, v2}, Lcom/mogu/tv/ui/activity/SearchActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->llMore:Landroid/widget/LinearLayout;

    const-string v1, "llMore"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initLabels$1$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$initLabels$1$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 236
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getLables()V

    return-void
.end method

.method private final initTab()V
    .locals 4

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/SearchActivity;->setMFragments(Ljava/util/ArrayList;)V

    .line 156
    new-instance v0, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/SearchActivity;->setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V

    .line 157
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 158
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 159
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setScrollPivotX(F)V

    .line 161
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setReselectWhenLayout(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 191
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 192
    sget-object v0, Lcom/kotlin/basiclib/common/ViewPager2Helper;->INSTANCE:Lcom/kotlin/basiclib/common/ViewPager2Helper;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActSearchBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const-string v2, "binding.magicIndicator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string v3, "binding.viewPager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/common/ViewPager2Helper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method private final initUserList()V
    .locals 5

    .line 212
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    .line 213
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 214
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    new-instance v2, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v3, 0xa

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 214
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 220
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 221
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/RecommandUserAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 225
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getUserList()V

    return-void
.end method

.method private static final initUserList$lambda-2$lambda-1(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

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

.method private static final initView$lambda-0(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    .line 115
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/SearchHotAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/SearchHot;

    invoke-virtual {p1}, Lcom/mogu/tv/model/SearchHot;->getItem()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mogu/tv/ui/activity/SearchActivity;->searchKey:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->startSearch()V

    .line 117
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->switchPage()V

    return-void
.end method

.method private final notifyTab()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/frag/SearchUserListFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/SearchUserListFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    .line 198
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final refreshHistory()V
    .locals 8

    .line 283
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 284
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mSearchHistoryBean:Lcom/mogu/tv/model/SearchHistoryBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/SearchHistoryBean;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    .line 326
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0d008f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/kotlin/basiclib/AndroidutilsKt;->inflate$default(Landroid/app/Activity;ILandroid/view/ViewGroup;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a038a

    .line 287
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 288
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v4, v4, Lcom/mogu/tv/databinding/ActSearchBinding;->flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v4, v2}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v2, "tv_item_history"

    .line 290
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/activity/SearchActivity$refreshHistory$1$1;

    invoke-direct {v2, p0, v1}, Lcom/mogu/tv/ui/activity/SearchActivity$refreshHistory$1$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final refreshLables(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/LabelsModel$Item;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->flexLables:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->removeAllViews()V

    .line 310
    check-cast p1, Ljava/lang/Iterable;

    .line 328
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/LabelsModel$Item;

    .line 311
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0d0088

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/kotlin/basiclib/AndroidutilsKt;->inflate$default(Landroid/app/Activity;ILandroid/view/ViewGroup;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a038a

    .line 313
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 314
    invoke-virtual {v0}, Lcom/mogu/tv/model/LabelsModel$Item;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v3, v3, Lcom/mogu/tv/databinding/ActSearchBinding;->flexLables:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v3, v1}, Lcom/google/android/flexbox/FlexboxLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v1, "tv_item_history"

    .line 316
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$refreshLables$1$1;

    invoke-direct {v1, v0}, Lcom/mogu/tv/ui/activity/SearchActivity$refreshLables$1$1;-><init>(Lcom/mogu/tv/model/LabelsModel$Item;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final showBanner()V
    .locals 5

    .line 129
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel;->getSearch()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v4, "binding.ivMainAd"

    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActSearchBinding;->ivMainAd:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActSearchBinding;->ivMainAd:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/mogu/tv/ui/activity/SearchActivity$showBanner$1;

    invoke-direct {v3, p0, v0}, Lcom/mogu/tv/ui/activity/SearchActivity$showBanner$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 137
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActSearchBinding;->ivMainAd:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v2, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private final startSearch()V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->firstStart:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->notifyTab()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->firstStart:Z

    .line 145
    :cond_0
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    new-instance v1, Lcom/mogu/tv/model/EvnetSearchPhoto;

    sget-object v2, Lcom/mogu/tv/ui/activity/SearchActivity;->searchKey:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mogu/tv/model/EvnetSearchPhoto;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/EventBusUtil;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method public final getFirstStart()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->firstStart:Z

    return v0
.end method

.method public final getMFragAdapter()Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

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

    .line 152
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mFragments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mFragments"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMHotAdapter()Lcom/mogu/tv/adapter/SearchHotAdapter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    return-object v0
.end method

.method public final getMSearchHistoryBean()Lcom/mogu/tv/model/SearchHistoryBean;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mSearchHistoryBean:Lcom/mogu/tv/model/SearchHistoryBean;

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

    .line 151
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSearchResultShow()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    return v0
.end method

.method public final getUserAdapter()Lcom/mogu/tv/adapter/RecommandUserAdapter;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 9

    .line 262
    new-instance v0, Lcom/mogu/tv/model/SearchHistoryBean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/mogu/tv/model/SearchHistoryBean;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mSearchHistoryBean:Lcom/mogu/tv/model/SearchHistoryBean;

    .line 263
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getSEARCH_LIST_KEY()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 265
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/mogu/tv/model/SearchHistoryBean;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/SearchHistoryBean;

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mSearchHistoryBean:Lcom/mogu/tv/model/SearchHistoryBean;

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->refreshHistory()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    sget-object v1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v1}, Lcom/mogu/tv/model/GlobeAppData;->getSearchHot()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 271
    check-cast v1, Ljava/lang/Iterable;

    .line 324
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 272
    new-instance v5, Lcom/mogu/tv/model/SearchHot;

    invoke-direct {v5, v4, v3}, Lcom/mogu/tv/model/SearchHot;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v2

    goto :goto_2

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/mogu/tv/adapter/SearchHotAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rlHead:Landroid/widget/RelativeLayout;

    const-string v1, "binding.rlHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/SearchActivity;->fitStatubar(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->ivClear:Landroid/widget/ImageView;

    const-string v1, "binding.ivClear"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 61
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->ivClearContent:Landroid/widget/ImageView;

    const-string v1, "binding.ivClearContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$initView$2;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 64
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$initView$3;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvTosearch:Landroid/widget/TextView;

    const-string v1, "binding.tvTosearch"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$initView$4;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 111
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvHotSearch:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvHotSearch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SearchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/SearchHotAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->initLabels()V

    .line 121
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->initUserList()V

    .line 122
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->initTab()V

    .line 123
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->showBanner()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    .line 247
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->switchPage()V

    return-void

    .line 250
    :cond_0
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onBackPressed()V

    return-void
.end method

.method public final setFirstStart(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->firstStart:Z

    return-void
.end method

.method public final setMFragAdapter(Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/ViewPage2FragmentAdapter;

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

    .line 152
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mFragments:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMHotAdapter(Lcom/mogu/tv/adapter/SearchHotAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mHotAdapter:Lcom/mogu/tv/adapter/SearchHotAdapter;

    return-void
.end method

.method public final setMSearchHistoryBean(Lcom/mogu/tv/model/SearchHistoryBean;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mSearchHistoryBean:Lcom/mogu/tv/model/SearchHistoryBean;

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

    .line 151
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->mTitles:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSearchResultShow(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    return-void
.end method

.method public final setUserAdapter(Lcom/mogu/tv/adapter/RecommandUserAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->userAdapter:Lcom/mogu/tv/adapter/RecommandUserAdapter;

    return-void
.end method

.method public final switchPage()V
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->llSearchfirst:Landroid/widget/LinearLayout;

    const-string v1, "binding.llSearchfirst"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 258
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->llSearchresult:Landroid/widget/LinearLayout;

    const-string v1, "binding.llSearchresult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity;->searchResultShow:Z

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    return-void
.end method
