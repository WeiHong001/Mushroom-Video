.class public final Lcom/mogu/tv/adapter/NewCommentAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "NewCommentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/CommentLists$CommentItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/NewCommentAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/CommentLists$CommentItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "()V",
        "mDownCall",
        "Ljava/lang/Runnable;",
        "mZanCall",
        "convert",
        "",
        "holder",
        "item",
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
.field private mDownCall:Ljava/lang/Runnable;

.field private mZanCall:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d008a

    .line 24
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/CommentLists$CommentItem;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/mogu/tv/adapter/NewCommentAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/NewCommentAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;

    .line 29
    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getUser()Lcom/mogu/tv/model/CommentLists$User;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvAuther:Landroid/widget/TextView;

    const-string/jumbo v2, "tvAuther"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 31
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvAuther:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getUser()Lcom/mogu/tv/model/CommentLists$User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mogu/tv/model/CommentLists$User;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvAuther:Landroid/widget/TextView;

    const-string/jumbo v2, "\u8611\u83c7\u7528\u6237"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_0
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvReply:Landroid/widget/TextView;

    const-string/jumbo v2, "tvReply"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 37
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->ivUserphoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v3, "ivUserphoto"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getUser()Lcom/mogu/tv/model/CommentLists$User;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/mogu/tv/model/CommentLists$User;->getAvatar()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-static {v0, v3}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getCreated_at()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v3, "tvTime"

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvTime:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 40
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getCreated_at()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kotlin/basiclib/utils/DateUtil;->getCarStrTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 42
    :cond_3
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvTime:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 44
    :goto_3
    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getComment()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    const-string/jumbo v3, "tvCommentContent"

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvCommentContent:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 46
    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getUser()Lcom/mogu/tv/model/CommentLists$User;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mogu/tv/model/CommentLists$User;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvCommentContent:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getComment()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 49
    :cond_6
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvCommentContent:Landroid/widget/TextView;

    sget-object v0, Lcom/mogu/tv/utils/CommentFilter;->INSTANCE:Lcom/mogu/tv/utils/CommentFilter;

    invoke-virtual {p2}, Lcom/mogu/tv/model/CommentLists$CommentItem;->getComment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mogu/tv/utils/CommentFilter;->getegularTxt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 52
    :cond_7
    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemNewcommentLayoutBinding;->tvCommentContent:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    :goto_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/mogu/tv/model/CommentLists$CommentItem;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/NewCommentAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/CommentLists$CommentItem;)V

    return-void
.end method
