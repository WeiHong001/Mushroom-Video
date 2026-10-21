.class public final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ShortVideoMainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
        "position",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    .line 128
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 130
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mogu/tv/model/ClearPositionEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/mogu/tv/model/ClearPositionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMCurrentPage()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->setMCurrentPage(I)V

    .line 134
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getVideoData(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V

    .line 135
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initView$1$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getMPagerAdapter$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)Lcom/mogu/tv/adapter/ShortFragment2LazyAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mPagerAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/mogu/tv/adapter/ShortFragment2LazyAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
