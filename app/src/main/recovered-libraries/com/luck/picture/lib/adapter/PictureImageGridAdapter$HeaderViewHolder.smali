.class public Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PictureImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field headerView:Landroid/view/View;

.field final synthetic this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field tv_title_camera:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Landroid/view/View;)V
    .locals 1

    .line 251
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$HeaderViewHolder;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 252
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 253
    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$HeaderViewHolder;->headerView:Landroid/view/View;

    .line 254
    sget v0, Lcom/luck/picture/lib/R$id;->tv_title_camera:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$HeaderViewHolder;->tv_title_camera:Landroid/widget/TextView;

    .line 255
    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$800(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)I

    move-result p2

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 256
    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$100(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_tape:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$100(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_take_picture:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    :goto_0
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$HeaderViewHolder;->tv_title_camera:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
