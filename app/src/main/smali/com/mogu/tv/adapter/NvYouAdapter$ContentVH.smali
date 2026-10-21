.class final Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NvYouAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/adapter/NvYouAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentVH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "iv",
        "Landroid/widget/ImageView;",
        "getIv",
        "()Landroid/widget/ImageView;",
        "setIv",
        "(Landroid/widget/ImageView;)V",
        "tv",
        "Landroid/widget/TextView;",
        "getTv",
        "()Landroid/widget/TextView;",
        "setTv",
        "(Landroid/widget/TextView;)V",
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

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0395

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->tv:Landroid/widget/TextView;

    const v0, 0x7f0a018f

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->iv:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getIv()Landroid/widget/ImageView;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTv()Landroid/widget/TextView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setIv(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTv(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->tv:Landroid/widget/TextView;

    return-void
.end method
