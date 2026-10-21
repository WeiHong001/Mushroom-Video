.class public Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PictureAlbumDirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;,
        Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mimeType:I

.field private onItemClickListener:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->onItemClickListener:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bindFolderData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getFolderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->onBindViewHolder(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;I)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 68
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    .line 70
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked()Z

    move-result v3

    .line 72
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getCheckedNum()I

    move-result v4

    .line 73
    iget-object v5, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->tv_sign:Landroid/widget/TextView;

    if-lez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v4, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 75
    iget v3, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 76
    iget-object v2, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->first_image:Landroid/widget/ImageView;

    sget v3, Lcom/luck/picture/lib/R$drawable;->audio_placeholder:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 78
    :cond_1
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v4, Lcom/luck/picture/lib/R$drawable;->ic_placeholder:I

    .line 79
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 81
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 82
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    const/16 v4, 0xa0

    .line 83
    invoke-virtual {v3, v4, v4}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    .line 84
    iget-object v4, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    .line 86
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$1;

    iget-object v4, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->first_image:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$1;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/widget/ImageView;Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;)V

    .line 88
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 99
    :goto_1
    iget-object v2, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->image_num:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->tv_folder_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$2;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Lcom/luck/picture/lib/entity/LocalMediaFolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;
    .locals 2

    .line 61
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/luck/picture/lib/R$layout;->picture_album_folder_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$ViewHolder;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setMimeType(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->mimeType:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->onItemClickListener:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;

    return-void
.end method
