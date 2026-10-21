.class public final Lcom/kotlin/basiclib/common/ViewPager2Helper;
.super Ljava/lang/Object;
.source "ViewPagerHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kotlin/basiclib/common/ViewPager2Helper;",
        "",
        "()V",
        "bind",
        "",
        "magicIndicator",
        "Lnet/lucode/hackware/magicindicator/MagicIndicator;",
        "viewPager",
        "Landroidx/viewpager2/widget/ViewPager2;",
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


# static fields
.field public static final INSTANCE:Lcom/kotlin/basiclib/common/ViewPager2Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kotlin/basiclib/common/ViewPager2Helper;

    invoke-direct {v0}, Lcom/kotlin/basiclib/common/ViewPager2Helper;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/common/ViewPager2Helper;->INSTANCE:Lcom/kotlin/basiclib/common/ViewPager2Helper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const-string v0, "magicIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewPager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;

    invoke-direct {v0, p1}, Lcom/kotlin/basiclib/common/ViewPager2Helper$bind$1;-><init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method
