.class public final Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;
.super Ljava/lang/Object;
.source "ImglookActivity.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/ImglookActivity;->initTab()V
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
        "com/mogu/tv/ui/activity/ImglookActivity$initTab$1",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/ImglookActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActImglookBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActImglookBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActImglookBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActImglookBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$initTab$1;->this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ImglookActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActImglookBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActImglookBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    return-void
.end method
