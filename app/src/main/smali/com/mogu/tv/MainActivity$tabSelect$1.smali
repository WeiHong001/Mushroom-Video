.class public final Lcom/mogu/tv/MainActivity$tabSelect$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/kotlin/basiclib/widget/commontab/listener/TabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/mogu/tv/MainActivity$tabSelect$1",
        "Lcom/kotlin/basiclib/widget/commontab/listener/TabSelectListener;",
        "onTabSelect",
        "",
        "position",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/MainActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelect(I)Z
    .locals 4

    .line 150
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    new-instance v1, Lcom/mogu/tv/model/EventSwitchPage;

    invoke-direct {v1, p1}, Lcom/mogu/tv/model/EventSwitchPage;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/MainActivity;->setMTabIndex(I)V

    .line 152
    sget-object v0, Lcom/mogu/tv/MainActivity;->Companion:Lcom/mogu/tv/MainActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/MainActivity$Companion;->setCurMainPage(I)V

    .line 153
    iget-object v0, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/MainActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityMainBinding;->tabLayout:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-virtual {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->hideMsg(I)V

    .line 154
    iget-object v0, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-static {v0}, Lcom/mogu/tv/MainActivity;->access$getFgms$p(Lcom/mogu/tv/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-static {v0}, Lcom/mogu/tv/MainActivity;->access$getFgms$p(Lcom/mogu/tv/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {v1, p1}, Lcom/mogu/tv/MainActivity;->getTabFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-static {v0}, Lcom/mogu/tv/MainActivity;->access$getFgms$p(Lcom/mogu/tv/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fgms[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 161
    iget-object v1, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {v1}, Lcom/mogu/tv/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "fm.beginTransaction()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {v3}, Lcom/mogu/tv/MainActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {v3}, Lcom/mogu/tv/MainActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 168
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    const v1, 0x7f0a00ae

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/MainActivity$tabSelect$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/MainActivity;->setCurrentFragment(Landroidx/fragment/app/Fragment;)V

    .line 174
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    return p1
.end method
