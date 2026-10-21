.class Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;
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

.field final synthetic val$contentHolder:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;

.field final synthetic val$image:Lcom/luck/picture/lib/entity/LocalMedia;

.field final synthetic val$mediaMimeType:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Ljava/lang/String;ILcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$mediaMimeType:I

    iput-object p4, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$contentHolder:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;

    iput-object p5, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$image:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 208
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$100(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$100(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$mediaMimeType:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/config/PictureMimeType;->s(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$contentHolder:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$2;->val$image:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->access$200(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method
