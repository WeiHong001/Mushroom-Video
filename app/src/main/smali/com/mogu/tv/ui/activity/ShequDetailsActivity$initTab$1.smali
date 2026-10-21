.class public final Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
.source "ShequDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->initTab()V
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
        "com/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;


# direct methods
.method public static synthetic $r8$lambda$JvlWooQpu06uIUaY7IN5Rj1z-qI(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1;->getTitleView$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/ui/activity/ShequDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    .line 111
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;-><init>()V

    return-void
.end method

.method private static final getTitleView$lambda-0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->getMTitles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 134
    invoke-static {p1, v2, v3}, Lnet/lucode/hackware/magicindicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x7f0602bf

    .line 136
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 135
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 141
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    return-object v0
.end method

.method public getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/mogu/tv/view/SizeFlipPagerTitleView;

    invoke-direct {v0, p1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;-><init>(Landroid/content/Context;)V

    .line 115
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    invoke-virtual {v1}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->getMTitles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 116
    iput p2, v0, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->mNormalTextSize:F

    const/high16 p2, 0x41880000    # 17.0f

    .line 117
    iput p2, v0, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->mSelectTextSize:F

    const p2, 0x7f0602bf

    .line 119
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 118
    invoke-virtual {v0, p2}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setSelectedColor(I)V

    const p2, 0x7f0602c1

    .line 121
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 120
    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setNormalColor(I)V

    .line 122
    sget-object p1, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mogu/tv/ui/activity/ShequDetailsActivity$initTab$1$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/view/SizeFlipPagerTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    return-object v0
.end method
