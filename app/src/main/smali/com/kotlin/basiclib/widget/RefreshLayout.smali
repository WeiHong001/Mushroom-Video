.class public Lcom/kotlin/basiclib/widget/RefreshLayout;
.super Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.source "RefreshLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    invoke-direct {p2, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 31
    new-instance p2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;

    invoke-direct {p2, p1}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {p2, p1}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->setSpinnerStyle(Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method


# virtual methods
.method public finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;
    .locals 1

    .line 37
    :try_start_0
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    check-cast v0, Lcom/kotlin/basiclib/widget/RefreshLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    move-result-object v0

    return-object v0
.end method
