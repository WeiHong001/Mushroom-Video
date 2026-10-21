.class public final Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/SearchActivity;->initTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/mogu/tv/ui/activity/SearchActivity$initTab$1",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;",
        "getCount",
        "",
        "getIndicator",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;",
        "context",
        "Landroid/content/Context;",
        "getTitleView",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;",
        "index",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/SearchActivity;


# direct methods
.method public static synthetic $r8$lambda$KA_7_1FPH7gApKR8WwhVhYJk40o(Lcom/mogu/tv/ui/activity/SearchActivity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;->getTitleView$lambda-0(Lcom/mogu/tv/ui/activity/SearchActivity;ILandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/ui/activity/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    .line 162
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;-><init>()V

    return-void
.end method

.method private static final getTitleView$lambda-0(Lcom/mogu/tv/ui/activity/SearchActivity;ILandroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/ActSearchBinding;

    iget-object p0, p0, Lcom/mogu/tv/databinding/ActSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMTitles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 185
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 186
    invoke-static {p1, v2, v3}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x7f0602bf

    .line 187
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 188
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    return-object v0
.end method

.method public getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/mogu/tv/view/SizeFlipPagerTitleView;

    invoke-direct {v0, p1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    invoke-virtual {v1}, Lcom/mogu/tv/ui/activity/SearchActivity;->getMTitles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 167
    iput v1, v0, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->mNormalTextSize:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 168
    iput v1, v0, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->mSelectTextSize:F

    const v1, 0x7f0602bf

    .line 170
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setSelectedColor(I)V

    const v1, 0x7f0602c1

    .line 172
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 171
    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setNormalColor(I)V

    .line 173
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/SearchActivity;

    new-instance v1, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/mogu/tv/ui/activity/SearchActivity$initTab$1$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/SearchActivity;I)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    return-object v0
.end method
