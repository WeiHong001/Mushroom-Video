.class public final Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ViewPagerHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/common/ViewPager2Helper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/kotlin/basiclib/common/ViewPager2Helper$bind$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "basiclib_release"
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
.field final synthetic $magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;->$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 9
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 22
    iget-object v0, p0, Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;->$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 12
    iget-object v0, p0, Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;->$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 17
    iget-object v0, p0, Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;->$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    return-void
.end method
