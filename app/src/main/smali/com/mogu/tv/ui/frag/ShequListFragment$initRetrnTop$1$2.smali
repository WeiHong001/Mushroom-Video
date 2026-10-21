.class public final Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ShequListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShequListFragment;->initRetrnTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
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
.field final synthetic $this_run:Lcom/mogu/tv/databinding/FragShequlistBinding;

.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShequListFragment;Lcom/mogu/tv/databinding/FragShequlistBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    iput-object p2, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->$this_run:Lcom/mogu/tv/databinding/FragShequlistBinding;

    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 70
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getDistance()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, -0x32

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getTopVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->$this_run:Lcom/mogu/tv/databinding/FragShequlistBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragShequlistBinding;->ivReturnTop:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/mogu/tv/utils/AnimUtil;->showFABAnimation(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setDistance(I)V

    .line 73
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setTopVisible(Z)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getDistance()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getTopVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->$this_run:Lcom/mogu/tv/databinding/FragShequlistBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragShequlistBinding;->ivReturnTop:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/mogu/tv/utils/AnimUtil;->hideFABAnimation(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setDistance(I)V

    .line 77
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setTopVisible(Z)V

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 79
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getTopVisible()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-gez p3, :cond_4

    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getTopVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShequListFragment$initRetrnTop$1$2;->this$0:Lcom/mogu/tv/ui/frag/ShequListFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShequListFragment;->getDistance()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/frag/ShequListFragment;->setDistance(I)V

    :cond_4
    return-void
.end method
