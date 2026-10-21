.class public final Lcom/mogu/tv/ui/activity/UserInfoActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "UserInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActivityTopicBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020(H\u0002J\u0008\u0010*\u001a\u00020(H\u0002J\u0008\u0010+\u001a\u00020(H\u0016J\u0008\u0010,\u001a\u00020(H\u0002J\u0008\u0010-\u001a\u00020(H\u0016J\u0008\u0010.\u001a\u00020(H\u0002J\u0008\u0010/\u001a\u00020(H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR*\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0011j\u0008\u0012\u0004\u0012\u00020\u0019`\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010\u0017R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u00060"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/UserInfoActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActivityTopicBinding;",
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
        "mIds",
        "",
        "getMIds",
        "()Ljava/lang/String;",
        "setMIds",
        "(Ljava/lang/String;)V",
        "mTitles",
        "getMTitles",
        "setMTitles",
        "mUserData",
        "Lcom/mogu/tv/model/UserOtherInfo;",
        "getMUserData",
        "()Lcom/mogu/tv/model/UserOtherInfo;",
        "setMUserData",
        "(Lcom/mogu/tv/model/UserOtherInfo;)V",
        "doFocus",
        "",
        "fitData",
        "getServerData",
        "initData",
        "initTab",
        "initView",
        "notifyTab",
        "switchFocus",
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

.field private mIds:Ljava/lang/String;

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserData:Lcom/mogu/tv/model/UserOtherInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/mogu/tv/ui/activity/UserInfoActivity$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    const-string/jumbo v0, "\u957f\u89c6\u9891"

    const-string/jumbo v1, "\u77ed\u89c6\u9891"

    const-string/jumbo v2, "\u52a8\u6001"

    .line 61
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mTitles:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$doFocus(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->doFocus()V

    return-void
.end method

.method public static final synthetic access$fitData(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->fitData()V

    return-void
.end method

.method public static final synthetic access$switchFocus(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->switchFocus()V

    return-void
.end method

.method private final doFocus()V
    .locals 4

    .line 164
    move-object v0, p0

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3, v2}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 165
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mUserData:Lcom/mogu/tv/model/UserOtherInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserOtherInfo;->is_floowed()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 166
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    new-instance v2, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$1;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->unfocusUser(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    .line 177
    :cond_1
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    new-instance v2, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$doFocus$2;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->focusUser(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :goto_0
    return-void
.end method

.method private final fitData()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mUserData:Lcom/mogu/tv/model/UserOtherInfo;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserOtherInfo;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvIntroduce:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserOtherInfo;->getIntroduction()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserOtherInfo;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;->ivUser:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v2, "binding.ivUser"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserOtherInfo;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;->ivUser:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/activity/UserInfoActivity$fitData$1$1;

    invoke-direct {v2, v0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$fitData$1$1;-><init>(Lcom/mogu/tv/model/UserOtherInfo;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 147
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->switchFocus()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvFocus:Landroid/widget/TextView;

    const-string v1, "binding.tvFocus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/UserInfoActivity$fitData$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$fitData$2;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final getServerData()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 125
    :cond_2
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    .line 126
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    .line 125
    new-instance v2, Lcom/mogu/tv/ui/activity/UserInfoActivity$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->getUserOhterData(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initTab()V
    .locals 3

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->setMFragments(Ljava/util/ArrayList;)V

    .line 66
    new-instance v0, Lcom/kotlin/basiclib/common/FragmentPageAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kotlin/basiclib/common/FragmentPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->setMFragAdapter(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/FragmentPageAdapter;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 68
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 69
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdjustMode(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setScrollPivotX(F)V

    .line 71
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setReselectWhenLayout(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/ui/activity/UserInfoActivity$initTab$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$initTab$1;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 102
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActivityTopicBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lnet/lucode/hackware/magicindicator/ViewPagerHelper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private final notifyTab()V
    .locals 4

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/mogu/tv/ui/frag/UserInfoListVideoFragment;

    invoke-direct {v1}, Lcom/mogu/tv/ui/frag/UserInfoListVideoFragment;-><init>()V

    .line 108
    new-instance v2, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;

    invoke-direct {v2}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;-><init>()V

    .line 109
    invoke-virtual {v1, v0}, Lcom/mogu/tv/ui/frag/UserInfoListVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {v2, v0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    new-instance v3, Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-direct {v3}, Lcom/mogu/tv/ui/frag/ShequListFragment;-><init>()V

    .line 113
    invoke-virtual {v3, v0}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMFragments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->notifyDataSetChanged()V

    .line 119
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getMFragAdapter()Lcom/kotlin/basiclib/common/FragmentPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/common/FragmentPageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final switchFocus()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mUserData:Lcom/mogu/tv/model/UserOtherInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/model/UserOtherInfo;->is_floowed()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvFocus:Landroid/widget/TextView;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 156
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvFocus:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u5173\u6ce8"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvFocus:Landroid/widget/TextView;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 159
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvFocus:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5173\u6ce8"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method public final getMFragAdapter()Lcom/kotlin/basiclib/common/FragmentPageAdapter;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/FragmentPageAdapter;

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

    .line 62
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mFragments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mFragments"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMIds()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

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

    .line 61
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMUserData()Lcom/mogu/tv/model/UserOtherInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mUserData:Lcom/mogu/tv/model/UserOtherInfo;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8be6\u60c5"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getServerData()V

    .line 56
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->notifyTab()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->fullScreen()V

    .line 42
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/UserInfoActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/UserInfoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 45
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/UserInfoActivity;->initTab()V

    return-void
.end method

.method public final setMFragAdapter(Lcom/kotlin/basiclib/common/FragmentPageAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mFragAdapter:Lcom/kotlin/basiclib/common/FragmentPageAdapter;

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

    .line 62
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mFragments:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMIds(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mIds:Ljava/lang/String;

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

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mTitles:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMUserData(Lcom/mogu/tv/model/UserOtherInfo;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/UserInfoActivity;->mUserData:Lcom/mogu/tv/model/UserOtherInfo;

    return-void
.end method
