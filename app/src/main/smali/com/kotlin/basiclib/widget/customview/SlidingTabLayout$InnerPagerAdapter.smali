.class Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerPagerAdapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 855
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    .line 856
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 852
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 858
    iput-object p4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;->titles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
