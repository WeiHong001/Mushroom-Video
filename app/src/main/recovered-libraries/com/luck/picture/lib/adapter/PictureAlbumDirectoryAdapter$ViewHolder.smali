.class Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PictureAlbumDirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field first_image:Landroid/widget/ImageView;

.field image_num:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

.field tv_folder_name:Landroid/widget/TextView;

.field tv_sign:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->this$0:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    .line 126
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    sget p1, Lcom/luck/picture/lib/R$id;->first_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->first_image:Landroid/widget/ImageView;

    .line 128
    sget p1, Lcom/luck/picture/lib/R$id;->tv_folder_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->tv_folder_name:Landroid/widget/TextView;

    .line 129
    sget p1, Lcom/luck/picture/lib/R$id;->image_num:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->image_num:Landroid/widget/TextView;

    .line 130
    sget p1, Lcom/luck/picture/lib/R$id;->tv_sign:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->tv_sign:Landroid/widget/TextView;

    return-void
.end method
