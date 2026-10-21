.class public final Lcom/mogu/tv/ui/activity/PiankuActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "PiankuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/FragPiankuBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPiankuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PiankuActivity.kt\ncom/mogu/tv/ui/activity/PiankuActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n1851#2:379\n1851#2,2:380\n1852#2:382\n1851#2:383\n1851#2,2:384\n1852#2:386\n1851#2:387\n1851#2,2:388\n1852#2:390\n1851#2:391\n1851#2,2:392\n1852#2:394\n1851#2,2:395\n1851#2:397\n1851#2,2:398\n1852#2:400\n1851#2,2:401\n1851#2,2:403\n1851#2,2:405\n1851#2,2:407\n*S KotlinDebug\n*F\n+ 1 PiankuActivity.kt\ncom/mogu/tv/ui/activity/PiankuActivity\n*L\n141#1:379\n143#1:380,2\n141#1:382\n231#1:383\n236#1:384,2\n231#1:386\n256#1:387\n257#1:388,2\n256#1:390\n268#1:391\n269#1:392,2\n268#1:394\n275#1:395,2\n286#1:397\n287#1:398,2\n286#1:400\n70#1:401,2\n80#1:403,2\n91#1:405,2\n102#1:407,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010I\u001a\u00020JH\u0002J\u0008\u0010K\u001a\u00020JH\u0016J\u0008\u0010L\u001a\u00020JH\u0002J\u0008\u0010M\u001a\u00020JH\u0002J\u0008\u0010N\u001a\u00020JH\u0016J\u0010\u0010O\u001a\u00020J2\u0006\u0010P\u001a\u000208H\u0002J\u0008\u0010Q\u001a\u00020JH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u0015R*\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020!0 j\u0008\u0012\u0004\u0012\u00020!`\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R*\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020(0 j\u0008\u0012\u0004\u0012\u00020(`\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R*\u0010+\u001a\u0012\u0012\u0004\u0012\u00020!0 j\u0008\u0012\u0004\u0012\u00020!`\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010$\"\u0004\u0008-\u0010&R\u001a\u0010.\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0007\"\u0004\u00080\u0010\tR*\u00101\u001a\u0012\u0012\u0004\u0012\u00020!0 j\u0008\u0012\u0004\u0012\u00020!`\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010$\"\u0004\u00083\u0010&R*\u00104\u001a\u0012\u0012\u0004\u0012\u00020!0 j\u0008\u0012\u0004\u0012\u00020!`\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010$\"\u0004\u00086\u0010&R\u001a\u00107\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010=\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010:\"\u0004\u0008?\u0010<R\u001a\u0010@\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010:\"\u0004\u0008B\u0010<R\u001a\u0010C\u001a\u00020DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010H\u00a8\u0006R"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/PiankuActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/FragPiankuBinding;",
        "()V",
        "distance",
        "",
        "getDistance",
        "()I",
        "setDistance",
        "(I)V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/VideoListsAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/VideoListsAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/VideoListsAdapter;)V",
        "mAdapterChild",
        "Lcom/mogu/tv/adapter/PiankuModelAdapter;",
        "getMAdapterChild",
        "()Lcom/mogu/tv/adapter/PiankuModelAdapter;",
        "setMAdapterChild",
        "(Lcom/mogu/tv/adapter/PiankuModelAdapter;)V",
        "mAdapterLike",
        "getMAdapterLike",
        "setMAdapterLike",
        "mAdapterParent",
        "getMAdapterParent",
        "setMAdapterParent",
        "mAdapterTime",
        "getMAdapterTime",
        "setMAdapterTime",
        "mChildData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/PianKuModel;",
        "Lkotlin/collections/ArrayList;",
        "getMChildData",
        "()Ljava/util/ArrayList;",
        "setMChildData",
        "(Ljava/util/ArrayList;)V",
        "mData",
        "Lcom/mogu/tv/model/VideoListModel$Video;",
        "getMData",
        "setMData",
        "mLikeData",
        "getMLikeData",
        "setMLikeData",
        "mPage",
        "getMPage",
        "setMPage",
        "mPrentData",
        "getMPrentData",
        "setMPrentData",
        "mTimeData",
        "getMTimeData",
        "setMTimeData",
        "requestSort",
        "",
        "getRequestSort",
        "()Ljava/lang/String;",
        "setRequestSort",
        "(Ljava/lang/String;)V",
        "requestTypes",
        "getRequestTypes",
        "setRequestTypes",
        "selectId",
        "getSelectId",
        "setSelectId",
        "topVisible",
        "",
        "getTopVisible",
        "()Z",
        "setTopVisible",
        "(Z)V",
        "getServerData",
        "",
        "initData",
        "initLists",
        "initRetrnTop",
        "initView",
        "notifyChild",
        "id",
        "showBanner",
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
.field private distance:I

.field private mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

.field private mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

.field private mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

.field private mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

.field private mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

.field private mChildData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;"
        }
    .end annotation
.end field

.field private mLikeData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mPrentData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation
.end field

.field private requestSort:Ljava/lang/String;

.field private requestTypes:Ljava/lang/String;

.field private selectId:Ljava/lang/String;

.field private topVisible:Z


# direct methods
.method public static synthetic $r8$lambda$2BJHhsCr00eomP4cU9g-IT86Un4(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initLists$lambda-11(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ZXeR-qtOmRoLaOfM_R8QVkDegg(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initView$lambda-8(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LXFgT6THPlma9jhmd3xbVqSRiXw(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initView$lambda-4(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TzQ3OyYiYP7R6Ri2iy18gPyaoxc(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initView$lambda-2(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLk-5hgnz4qvYJ3GLg3sTMZcciU(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initView$lambda-6(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxnm0yS2nYUNCRyMmjhEaeUAvmc(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initLists$lambda-13(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m7eMW1J-5PFtnCesOYoq08w9E08(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initLists$lambda-12(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/PiankuModelAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/PiankuModelAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/PiankuModelAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/PiankuModelAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    const-string v1, "-id"

    .line 46
    iput-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestSort:Ljava/lang/String;

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mData:Ljava/util/ArrayList;

    .line 191
    new-instance v1, Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-direct {v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;-><init>()V

    iput-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    .line 216
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    const-string/jumbo v3, "types"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestSort:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestSort:Ljava/lang/String;

    const-string v3, "order"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/activity/PiankuActivity$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 4

    .line 193
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 197
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 201
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    new-instance v1, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 202
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 208
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private static final initLists$lambda-11(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 194
    iput p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    .line 195
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-12(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    .line 199
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-13(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/VideoListsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/VideoListModel$Video;

    .line 212
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoListModel$Video;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVideoDetails(Ljava/lang/String;)V

    return-void
.end method

.method private final initRetrnTop()V
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivReturnTop:Landroid/widget/ImageView;

    const-string v1, "binding.ivReturnTop"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$1;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 169
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const-string p2, "mAdapterParent.data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 401
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/PianKuModel;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 74
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->notifyDataSetChanged()V

    .line 75
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    invoke-virtual {p1}, Lcom/mogu/tv/model/PianKuModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->notifyChild(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->autoRefresh()Z

    return-void
.end method

.method private static final initView$lambda-4(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const-string p2, "mAdapterChild.data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 403
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/PianKuModel;

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p2, v0}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 84
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    invoke-virtual {p1}, Lcom/mogu/tv/model/PianKuModel;->getRequestKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->notifyDataSetChanged()V

    .line 86
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->autoRefresh()Z

    return-void
.end method

.method private static final initView$lambda-6(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const-string p2, "mAdapterLike.data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 405
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/PianKuModel;

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p2, v0}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 95
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    invoke-virtual {p1}, Lcom/mogu/tv/model/PianKuModel;->getRequestKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestSort:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->notifyDataSetChanged()V

    .line 97
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->autoRefresh()Z

    return-void
.end method

.method private static final initView$lambda-8(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    const-string p2, "mAdapterTime.data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 407
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/PianKuModel;

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p2, v0}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/PianKuModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 106
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->notifyDataSetChanged()V

    .line 107
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->autoRefresh()Z

    return-void
.end method

.method private final notifyChild(Ljava/lang/String;)V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 132
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    const/4 v1, 0x1

    .line 133
    iput v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    .line 134
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    new-instance v2, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v2}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 136
    invoke-virtual {v2, v1}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    const-string/jumbo v1, "\u5168\u90e8"

    .line 137
    invoke-virtual {v2, v1}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2, v0}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v0}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v1}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    .line 379
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/model/VideoTypes$Types;

    .line 142
    invoke-virtual {v2}, Lcom/mogu/tv/model/VideoTypes$Types;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    :cond_1
    invoke-virtual {v2}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 380
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 144
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    .line 149
    :goto_1
    new-instance v4, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v4}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 150
    invoke-virtual {v3}, Lcom/mogu/tv/model/VideoTypes$Child;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getServerData()V

    .line 159
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final showBanner()V
    .locals 5

    .line 117
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel;->getPianku()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 118
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

    .line 119
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivMainAd:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivMainAd:Landroid/widget/ImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;

    invoke-direct {v3, p0, v0}, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 125
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivMainAd:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v2, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final getDistance()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->distance:I

    return v0
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/VideoListsAdapter;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    return-object v0
.end method

.method public final getMAdapterChild()Lcom/mogu/tv/adapter/PiankuModelAdapter;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-object v0
.end method

.method public final getMAdapterLike()Lcom/mogu/tv/adapter/PiankuModelAdapter;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-object v0
.end method

.method public final getMAdapterParent()Lcom/mogu/tv/adapter/PiankuModelAdapter;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-object v0
.end method

.method public final getMAdapterTime()Lcom/mogu/tv/adapter/PiankuModelAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-object v0
.end method

.method public final getMChildData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMLikeData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    return v0
.end method

.method public final getMPrentData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMTimeData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRequestSort()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestSort:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestTypes()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopVisible()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->topVisible:Z

    return v0
.end method

.method public initData()V
    .locals 9

    .line 218
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    .line 219
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string/jumbo v2, "\u5168\u90e8"

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 223
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 224
    iget-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    invoke-virtual {v0, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 227
    :cond_2
    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    .line 383
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/VideoTypes$Types;

    .line 232
    new-instance v5, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v5}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 233
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Types;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Types;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Types;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 384
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 237
    invoke-virtual {v6}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 238
    invoke-virtual {v5, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    goto :goto_1

    .line 241
    :cond_4
    iget-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 246
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 247
    iget-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 248
    invoke-virtual {v0, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 250
    :cond_6
    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Iterable;

    .line 387
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/VideoTypes$Types;

    .line 257
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 388
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 258
    new-instance v6, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v6}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 260
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    sget-object v4, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v4}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    check-cast v4, Ljava/lang/Iterable;

    .line 391
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mogu/tv/model/VideoTypes$Types;

    .line 269
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 392
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 270
    invoke-virtual {v7}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 271
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    .line 275
    :cond_b
    check-cast v0, Ljava/lang/Iterable;

    .line 395
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 276
    new-instance v5, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v5}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 277
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 278
    invoke-virtual {v5, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 280
    :cond_c
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Child;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 286
    :cond_d
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, Ljava/lang/Iterable;

    .line 397
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/VideoTypes$Types;

    .line 287
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 398
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 288
    new-instance v6, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v6}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 289
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 290
    invoke-virtual {v6, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 292
    :cond_f
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v5}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 295
    iget-object v5, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 299
    :cond_10
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v4, "play"

    if-eqz v0, :cond_11

    .line 300
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 301
    invoke-virtual {v0, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    const-string/jumbo v5, "\u6700\u65b0\u53d1\u5e03"

    .line 302
    invoke-virtual {v0, v5}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v4}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    const-string v5, "-id"

    .line 304
    invoke-virtual {v0, v5}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    const-string/jumbo v5, "\u6700\u591a\u64ad\u653e"

    .line 307
    invoke-virtual {v0, v5}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, v4}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    const-string v5, "-view"

    .line 309
    invoke-virtual {v0, v5}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 310
    iget-object v5, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    const-string/jumbo v5, "\u6700\u591a\u6536\u85cf"

    .line 312
    invoke-virtual {v0, v5}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v4}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    const-string v5, "-stat"

    .line 314
    invoke-virtual {v0, v5}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 315
    iget-object v5, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_11
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 318
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    .line 319
    invoke-virtual {v0, v3}, Lcom/mogu/tv/model/PianKuModel;->setSelect(Z)V

    .line 320
    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    const-string/jumbo v1, "\u6700\u8fd1\u4e00\u5468"

    .line 325
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, v4}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    const-string v1, "by"

    .line 327
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    const-string/jumbo v2, "\u6700\u8fd1\u4e00\u6708"

    .line 330
    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, v4}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v0, Lcom/mogu/tv/model/PianKuModel;

    invoke-direct {v0}, Lcom/mogu/tv/model/PianKuModel;-><init>()V

    const-string/jumbo v2, "\u6700\u8fd1\u4e00\u5e74"

    .line 335
    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/PianKuModel;->setName(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v4}, Lcom/mogu/tv/model/PianKuModel;->setId(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/PianKuModel;->setRequestKey(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_12
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setNewData(Ljava/util/List;)V

    .line 341
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setNewData(Ljava/util/List;)V

    .line 342
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setNewData(Ljava/util/List;)V

    .line 343
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setNewData(Ljava/util/List;)V

    .line 344
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->llHead:Landroid/widget/RelativeLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->fitStatubar(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7247\u5e93"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 54
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvParentType:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvchildType:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvLike:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvTime:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    .line 64
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvParentType:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvchildType:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvLike:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvTime:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/PiankuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/PiankuModelAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initLists()V

    .line 110
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->initRetrnTop()V

    .line 111
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->showBanner()V

    return-void
.end method

.method public final setDistance(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->distance:I

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/VideoListsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    return-void
.end method

.method public final setMAdapterChild(Lcom/mogu/tv/adapter/PiankuModelAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterChild:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-void
.end method

.method public final setMAdapterLike(Lcom/mogu/tv/adapter/PiankuModelAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterLike:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-void
.end method

.method public final setMAdapterParent(Lcom/mogu/tv/adapter/PiankuModelAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterParent:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-void
.end method

.method public final setMAdapterTime(Lcom/mogu/tv/adapter/PiankuModelAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mAdapterTime:Lcom/mogu/tv/adapter/PiankuModelAdapter;

    return-void
.end method

.method public final setMChildData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mChildData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMLikeData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mLikeData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPage:I

    return-void
.end method

.method public final setMPrentData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mPrentData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMTimeData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/PianKuModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->mTimeData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRequestSort(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestSort:Ljava/lang/String;

    return-void
.end method

.method public final setRequestTypes(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->requestTypes:Ljava/lang/String;

    return-void
.end method

.method public final setSelectId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->selectId:Ljava/lang/String;

    return-void
.end method

.method public final setTopVisible(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity;->topVisible:Z

    return-void
.end method
