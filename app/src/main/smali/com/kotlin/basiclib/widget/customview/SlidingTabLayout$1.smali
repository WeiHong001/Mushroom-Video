.class Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->addTab(ILjava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$000(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$100(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$200(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$100(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$100(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$300(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$300(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;->onTabSelect(I)V

    goto :goto_1

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$300(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->access$300(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;->onTabReselect(I)V

    :cond_2
    :goto_1
    return-void
.end method
