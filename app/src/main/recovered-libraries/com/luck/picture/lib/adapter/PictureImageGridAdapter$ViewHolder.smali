.class public Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PictureImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/TextView;

.field contentView:Landroid/view/View;

.field iv_picture:Landroid/widget/ImageView;

.field ll_check:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field tv_duration:Landroid/widget/TextView;

.field tv_isGif:Landroid/widget/TextView;

.field tv_long_chart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 270
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 271
    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->contentView:Landroid/view/View;

    .line 272
    sget p1, Lcom/luck/picture/lib/R$id;->iv_picture:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->iv_picture:Landroid/widget/ImageView;

    .line 273
    sget p1, Lcom/luck/picture/lib/R$id;->check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->check:Landroid/widget/TextView;

    .line 274
    sget p1, Lcom/luck/picture/lib/R$id;->ll_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->ll_check:Landroid/widget/LinearLayout;

    .line 275
    sget p1, Lcom/luck/picture/lib/R$id;->tv_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->tv_duration:Landroid/widget/TextView;

    .line 276
    sget p1, Lcom/luck/picture/lib/R$id;->tv_isGif:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->tv_isGif:Landroid/widget/TextView;

    .line 277
    sget p1, Lcom/luck/picture/lib/R$id;->tv_long_chart:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->tv_long_chart:Landroid/widget/TextView;

    return-void
.end method
