.class Lcom/luck/picture/lib/PicturePreviewActivity$3;
.super Ljava/lang/Object;
.source "PicturePreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PicturePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PicturePreviewActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 181
    iget-object p2, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, p2, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    invoke-static {p2, v0, p1, p3}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$800(Lcom/luck/picture/lib/PicturePreviewActivity;ZII)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$902(Lcom/luck/picture/lib/PicturePreviewActivity;I)I

    .line 187
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$1000(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$900(Lcom/luck/picture/lib/PicturePreviewActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$000(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$000(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$900(Lcom/luck/picture/lib/PicturePreviewActivity;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 189
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$1102(Lcom/luck/picture/lib/PicturePreviewActivity;I)I

    .line 190
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$700(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$3;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$900(Lcom/luck/picture/lib/PicturePreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onImageChecked(I)V

    :cond_1
    return-void
.end method
