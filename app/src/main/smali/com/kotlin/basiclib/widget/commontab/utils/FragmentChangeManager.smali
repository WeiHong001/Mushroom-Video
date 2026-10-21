.class public Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;
.super Ljava/lang/Object;
.source "FragmentChangeManager.java"


# instance fields
.field private mContainerViewId:I

.field private mCurrentTab:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mCurrentTab:I

    .line 22
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 23
    iput p2, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mContainerViewId:I

    .line 24
    iput-object p3, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    .line 25
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->initFragments()V

    return-void
.end method

.method private initFragments()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->setFragments(I)V

    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    iget v1, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mCurrentTab:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mCurrentTab:I

    return v0
.end method

.method public setFragments(I)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 43
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 44
    iget v2, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mCurrentTab:I

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 45
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragments:Ljava/util/ArrayList;

    iget v3, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mCurrentTab:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fgm_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 49
    iget v3, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mContainerViewId:I

    invoke-virtual {v1, v3, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 55
    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/utils/FragmentChangeManager;->mCurrentTab:I

    return-void
.end method
