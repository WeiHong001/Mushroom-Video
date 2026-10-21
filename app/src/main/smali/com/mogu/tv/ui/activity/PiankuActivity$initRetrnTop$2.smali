.class public final Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PiankuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/PiankuActivity;->initRetrnTop()V
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
        "com/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/PiankuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    .line 169
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 173
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getDistance()I

    move-result p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p2

    neg-int p2, p2

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getTopVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivReturnTop:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/mogu/tv/utils/AnimUtil;->showFABAnimation(Landroid/view/View;)V

    .line 176
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->setDistance(I)V

    .line 177
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/activity/PiankuActivity;->setTopVisible(Z)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getDistance()I

    move-result p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getTopVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/FragPiankuBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivReturnTop:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/mogu/tv/utils/AnimUtil;->hideFABAnimation(Landroid/view/View;)V

    .line 180
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->setDistance(I)V

    .line 181
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->setTopVisible(Z)V

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 183
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getTopVisible()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-gez p3, :cond_4

    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getTopVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$initRetrnTop$2;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getDistance()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/activity/PiankuActivity;->setDistance(I)V

    :cond_4
    return-void
.end method
