.class public final Lcom/mogu/tv/ui/frag/JpHomeFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "JpHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragJphomeBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u001cH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u000cH\u0002J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u000cH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/JpHomeFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragJphomeBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/JpItemAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/JpItemAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/JpItemAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/VipVideoList$Data;",
        "Lkotlin/collections/ArrayList;",
        "mPage",
        "",
        "getMPage",
        "()I",
        "setMPage",
        "(I)V",
        "mShareIndex",
        "getMShareIndex",
        "setMShareIndex",
        "shareDialog",
        "Lcom/mogu/tv/view/ShareVipVIdeoDialog;",
        "unlockDialog",
        "Lcom/mogu/tv/view/LockVipVideoDialog;",
        "getInvite",
        "",
        "getServerData",
        "initData",
        "initView",
        "onResume",
        "showShareDialog",
        "data",
        "showUnlockDialog",
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
.field private mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VipVideoList$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mShareIndex:I

.field private shareDialog:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

.field private unlockDialog:Lcom/mogu/tv/view/LockVipVideoDialog;


# direct methods
.method public static synthetic $r8$lambda$7LGvA0a4-vjonggIZhDdFyukGU8(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->initData$lambda-0(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0ZDduDICR1nBJ3TrbjTx1g2oi4(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->initData$lambda-2(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZMfZcU0YMGZMTyrzQ4f5o8-Io8(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->initData$lambda-1(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    .line 38
    new-instance v0, Lcom/mogu/tv/adapter/JpItemAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/JpItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getMData$p(Lcom/mogu/tv/ui/frag/JpHomeFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$showShareDialog(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/mogu/tv/model/VipVideoList$Data;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->showShareDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V

    return-void
.end method

.method private final getInvite()V
    .locals 4

    .line 140
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    const/16 v1, 0xa

    const/4 v2, 0x1

    sget-object v3, Lcom/mogu/tv/ui/frag/JpHomeFragment$getInvite$1;->INSTANCE:Lcom/mogu/tv/ui/frag/JpHomeFragment$getInvite$1;

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->getUserShareList(IILkotlin/jvm/functions/Function3;)V

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mogu/tv/main/UserManager;->setShareTotal(I)V

    :goto_0
    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 114
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget v1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    new-instance v2, Lcom/mogu/tv/ui/frag/JpHomeFragment$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$getServerData$1;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2}, Lcom/mogu/tv/api/ApiManager;->getVipVideoData(IILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-0(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    .line 44
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    .line 48
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-2(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput p3, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mShareIndex:I

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const-string p2, "mData[position]"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 67
    :sswitch_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VipVideoList$Data;->getUnlock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVipVideoDetails(Lcom/mogu/tv/model/VipVideoList$Data;)V

    goto :goto_0

    .line 56
    :sswitch_1
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VipVideoList$Data;->getUnlock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVipVideoDetails(Lcom/mogu/tv/model/VipVideoList$Data;)V

    goto :goto_0

    .line 61
    :sswitch_2
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->showShareDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V

    goto :goto_0

    .line 64
    :sswitch_3
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->showUnlockDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V

    goto :goto_0

    .line 72
    :sswitch_4
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VipVideoList$Data;->getUnlock()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVipVideoDetails(Lcom/mogu/tv/model/VipVideoList$Data;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->showUnlockDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a017f -> :sswitch_4
        0x7f0a0180 -> :sswitch_3
        0x7f0a0186 -> :sswitch_2
        0x7f0a0187 -> :sswitch_1
        0x7f0a0368 -> :sswitch_0
    .end sparse-switch
.end method

.method private final showShareDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->shareDialog:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->shareDialog:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->shareDialog:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->refreshData(Lcom/mogu/tv/model/VipVideoList$Data;)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->shareDialog:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->show()V

    :cond_2
    return-void
.end method

.method private final showUnlockDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->unlockDialog:Lcom/mogu/tv/view/LockVipVideoDialog;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/mogu/tv/view/LockVipVideoDialog;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/mogu/tv/view/LockVipVideoDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->unlockDialog:Lcom/mogu/tv/view/LockVipVideoDialog;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->unlockDialog:Lcom/mogu/tv/view/LockVipVideoDialog;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$1;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/mogu/tv/model/VipVideoList$Data;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mogu/tv/view/LockVipVideoDialog;->setUnLockData(Lcom/mogu/tv/model/VipVideoList$Data;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->unlockDialog:Lcom/mogu/tv/view/LockVipVideoDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mogu/tv/view/LockVipVideoDialog;->show()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/JpItemAdapter;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    return v0
.end method

.method public final getMShareIndex()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mShareIndex:I

    return v0
.end method

.method public initData()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJphomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJphomeBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJphomeBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJphomeBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJphomeBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJphomeBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/JpItemAdapter;->setNewData(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/JpItemAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJphomeBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJphomeBinding;->ivProduct:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$1;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJphomeBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJphomeBinding;->ivGetQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getInvite()V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/JpItemAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mAdapter:Lcom/mogu/tv/adapter/JpItemAdapter;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mPage:I

    return-void
.end method

.method public final setMShareIndex(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment;->mShareIndex:I

    return-void
.end method
