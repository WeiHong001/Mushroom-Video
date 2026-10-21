.class public final Lcom/mogu/tv/ui/frag/MineFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "MineFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragMineBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/MineFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragMineBinding;",
        "()V",
        "getInvite",
        "",
        "initData",
        "initView",
        "loadUserData",
        "onDestroy",
        "onEventSwitchPage",
        "event",
        "Lcom/mogu/tv/model/EventSwitchPage;",
        "onResume",
        "refreshUserInfo",
        "showAd",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$loadUserData(Lcom/mogu/tv/ui/frag/MineFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->loadUserData()V

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

    new-instance v3, Lcom/mogu/tv/ui/frag/MineFragment$getInvite$1;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/frag/MineFragment$getInvite$1;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->getUserShareList(IILkotlin/jvm/functions/Function3;)V

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvInviteNumber:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "0"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private final loadUserData()V
    .locals 3

    .line 117
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvUsername:Landroid/widget/TextView;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->ivUser:Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->getPicture()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvUsername:Landroid/widget/TextView;

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "\u767b\u9304/\u8a3b\u518a"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->ivUser:Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f0007

    invoke-static {v0, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;I)V

    .line 124
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llJifen:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 125
    :cond_6
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_9

    .line 126
    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvFocus:Landroid/widget/TextView;

    sget-object v2, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v2}, Lcom/mogu/tv/main/UserManager;->getFocusNumber()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 129
    :cond_7
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvFocus:Landroid/widget/TextView;

    const-string v2, "0"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_3
    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvJifen:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v2}, Lcom/mogu/tv/main/UserManager;->getJifen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 134
    :cond_8
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->tvJifen:Landroid/widget/TextView;

    const-string v1, "\u79ef\u5206:0"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private final refreshUserInfo()V
    .locals 2

    .line 170
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$refreshUserInfo$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$refreshUserInfo$1;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getUserInfo(Lkotlin/jvm/functions/Function3;)V

    :cond_0
    return-void
.end method

.method private final showAd()V
    .locals 4

    .line 106
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel;->getMine()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 107
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
    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragMineBinding;->ivMainAd:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragMineBinding;->ivMainAd:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/mogu/tv/ui/frag/MineFragment$showAd$1;

    invoke-direct {v3, p0, v0}, Lcom/mogu/tv/ui/frag/MineFragment$showAd$1;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/mogu/tv/databinding/FragMineBinding;->ivMainAd:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v2, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->loadUserData()V

    .line 59
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->rlClearCache:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$1;->INSTANCE:Lcom/mogu/tv/ui/frag/MineFragment$initData$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->cardLogin:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$2;->INSTANCE:Lcom/mogu/tv/ui/frag/MineFragment$initData$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llFocus:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$3;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llMsg:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$4;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->ivMsgCenter:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$5;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$5;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llCollect:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$6;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$6;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llHistory:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$7;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$7;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llInvite:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$8;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$8;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 83
    :cond_7
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llLock:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$9;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$9;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 86
    :cond_8
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llShangwu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$10;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$10;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 89
    :cond_9
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llTougao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$11;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$11;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 92
    :cond_a
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llData:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$12;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$12;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 95
    :cond_b
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llSetting:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$13;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$13;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 98
    :cond_c
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llSuggest:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initData$14;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$14;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_d
    return-void
.end method

.method public initView()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llShare:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initView$1;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragMineBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragMineBinding;->llContact:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/MineFragment$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/MineFragment$initView$2;-><init>(Lcom/mogu/tv/ui/frag/MineFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 48
    :cond_1
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onDestroy()V

    .line 53
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEventSwitchPage(Lcom/mogu/tv/model/EventSwitchPage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/mogu/tv/model/EventSwitchPage;->getPage()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->loadUserData()V

    .line 165
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getInvite()V

    .line 166
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->refreshUserInfo()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onResume()V

    .line 154
    sget-object v0, Lcom/mogu/tv/MainActivity;->Companion:Lcom/mogu/tv/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/mogu/tv/MainActivity$Companion;->getCurMainPage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->showAd()V

    .line 156
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->loadUserData()V

    .line 157
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->getInvite()V

    .line 158
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/MineFragment;->refreshUserInfo()V

    :cond_0
    return-void
.end method
