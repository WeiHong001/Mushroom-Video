.class public final Lcom/mogu/tv/adapter/NvYouAdapter;
.super Lme/yokeyword/indexablerv/IndexableAdapter;
.source "NvYouAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/adapter/NvYouAdapter$IndexVH;,
        Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/yokeyword/indexablerv/IndexableAdapter<",
        "Lcom/mogu/tv/model/NvyouList$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/NvYouAdapter;",
        "Lme/yokeyword/indexablerv/IndexableAdapter;",
        "Lcom/mogu/tv/model/NvyouList$Item;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mContext",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "onBindContentViewHolder",
        "",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "item",
        "onBindTitleViewHolder",
        "indexTitle",
        "",
        "onCreateContentViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "onCreateTitleViewHolder",
        "ContentVH",
        "IndexVH",
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
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lme/yokeyword/indexablerv/IndexableAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mogu/tv/adapter/NvYouAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getMContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mogu/tv/adapter/NvYouAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mogu/tv/model/NvyouList$Item;)V
    .locals 3

    const-string v0, "null cannot be cast to non-null type com.mogu.tv.adapter.NvYouAdapter.ContentVH"

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;

    .line 37
    invoke-virtual {p1}, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->getTv()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mogu/tv/model/NvyouList$Item;->getUser()Lcom/mogu/tv/model/NvyouList$User;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mogu/tv/model/NvyouList$User;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1}, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;->getIv()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mogu/tv/model/NvyouList$Item;->getUser()Lcom/mogu/tv/model/NvyouList$User;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mogu/tv/model/NvyouList$User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p1, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lme/yokeyword/indexablerv/IndexableEntity;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/mogu/tv/model/NvyouList$Item;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/NvYouAdapter;->onBindContentViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mogu/tv/model/NvyouList$Item;)V

    return-void
.end method

.method public onBindTitleViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type com.mogu.tv.adapter.NvYouAdapter.IndexVH"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/adapter/NvYouAdapter$IndexVH;

    .line 32
    invoke-virtual {p1}, Lcom/mogu/tv/adapter/NvYouAdapter$IndexVH;->getTv()Landroid/widget/TextView;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateContentViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/adapter/NvYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;

    const-string/jumbo v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/mogu/tv/adapter/NvYouAdapter$ContentVH;-><init>(Landroid/view/View;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateTitleViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/adapter/NvYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/mogu/tv/adapter/NvYouAdapter$IndexVH;

    const-string/jumbo v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/mogu/tv/adapter/NvYouAdapter$IndexVH;-><init>(Landroid/view/View;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/mogu/tv/adapter/NvYouAdapter;->mContext:Landroid/content/Context;

    return-void
.end method
