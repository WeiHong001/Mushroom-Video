.class Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;
.super Ljava/lang/Object;
.source "CommonTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$000(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$100(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/TabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$100(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/TabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/listener/TabSelectListener;->onTabSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-virtual {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->setCurrentTab(I)V

    .line 282
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$200(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$200(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;->onTabSelect(I)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$200(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout$1;->this$0:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    invoke-static {v0}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->access$200(Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;->onTabReselect(I)V

    :cond_2
    :goto_0
    return-void
.end method
