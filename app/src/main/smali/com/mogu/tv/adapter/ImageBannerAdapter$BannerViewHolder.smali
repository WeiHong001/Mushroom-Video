.class public final Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/adapter/ImageBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BannerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Lcom/mogu/tv/adapter/ImageBannerAdapter;Landroid/view/View;)V",
        "iv",
        "Landroid/widget/ImageView;",
        "getIv",
        "()Landroid/widget/ImageView;",
        "setIv",
        "(Landroid/widget/ImageView;)V",
        "getView",
        "()Landroid/view/View;",
        "setView",
        "(Landroid/view/View;)V",
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
.field private iv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mogu/tv/adapter/ImageBannerAdapter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mogu/tv/adapter/ImageBannerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->this$0:Lcom/mogu/tv/adapter/ImageBannerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->view:Landroid/view/View;

    const p1, 0x7f0a019e

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->iv:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getIv()Landroid/widget/ImageView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->view:Landroid/view/View;

    return-object v0
.end method

.method public final setIv(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/mogu/tv/adapter/ImageBannerAdapter$BannerViewHolder;->view:Landroid/view/View;

    return-void
.end method
