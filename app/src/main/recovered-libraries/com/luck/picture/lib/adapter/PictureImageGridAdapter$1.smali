.class Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$1;
.super Ljava/lang/Object;
.source "PictureImageGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$1;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$1;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$000(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$1;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$000(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;->onTakePhoto()V

    :cond_0
    return-void
.end method
