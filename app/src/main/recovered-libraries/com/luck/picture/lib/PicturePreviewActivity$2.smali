.class Lcom/luck/picture/lib/PicturePreviewActivity$2;
.super Ljava/lang/Object;
.source "PicturePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 123
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 126
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$000(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$000(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 127
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$000(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$100(Lcom/luck/picture/lib/PicturePreviewActivity;)Lcom/luck/picture/lib/widget/PreviewViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 128
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    .line 129
    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 130
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/luck/picture/lib/config/PictureMimeType;->mimeToEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_rule:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 143
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v3}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$400(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v3}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v4, v4, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-lt v3, v4, :cond_3

    if-eqz v0, :cond_3

    .line 149
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_message_max_num:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v4, v4, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/VoiceUtils;->playVoice(Landroid/content/Context;Z)V

    .line 156
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v0, v2, :cond_4

    .line 157
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$500(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    .line 161
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 166
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 167
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$600(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    .line 169
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1, v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$700(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 174
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$2;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->onSelectNumChange(Z)V

    :cond_8
    return-void
.end method
