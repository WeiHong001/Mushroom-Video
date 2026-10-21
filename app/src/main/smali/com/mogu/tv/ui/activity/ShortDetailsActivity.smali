.class public final Lcom/mogu/tv/ui/activity/ShortDetailsActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "ShortDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActShortdetailsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\"H\u0016J\u0008\u0010$\u001a\u00020\"H\u0014J\u0008\u0010%\u001a\u00020\"H\u0014J\u0008\u0010&\u001a\u00020\"H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0007\"\u0004\u0008\u001d\u0010\tR\u001a\u0010\u001e\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0007\"\u0004\u0008 \u0010\t\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/ShortDetailsActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActShortdetailsBinding;",
        "()V",
        "comments",
        "",
        "getComments",
        "()Ljava/lang/String;",
        "setComments",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "favorites",
        "getFavorites",
        "setFavorites",
        "id",
        "getId",
        "setId",
        "isZan",
        "",
        "()I",
        "setZan",
        "(I)V",
        "name",
        "getName",
        "setName",
        "photo",
        "getPhoto",
        "setPhoto",
        "playUrl",
        "getPlayUrl",
        "setPlayUrl",
        "initData",
        "",
        "initView",
        "onDestroy",
        "onResume",
        "onStop",
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
.field private comments:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private favorites:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isZan:I

.field private name:Ljava/lang/String;

.field private photo:Ljava/lang/String;

.field private playUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->playUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->name:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->content:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->comments:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->favorites:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->photo:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComments()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getFavorites()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->favorites:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 10

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->fullScreen()V

    .line 38
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/ShortDetailsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 41
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->playUrl:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "isZan"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->isZan:I

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "photo"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->photo:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v4, "content"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->content:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v4, "comments"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_9

    move-object v0, v1

    :cond_9
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->comments:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v4, "favorites"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    move-object v0, v3

    :goto_5
    if-nez v0, :cond_b

    move-object v0, v1

    :cond_b
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->favorites:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    move-object v1, v3

    :goto_6
    iput-object v1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->id:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    const-string v1, "binding.videoPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 50
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->likeBtn:Lcom/github/like/LikeButton;

    iget v3, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->isZan:I

    if-ne v3, v1, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/github/like/LikeButton;->setLiked(Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->likeBtn:Lcom/github/like/LikeButton;

    new-instance v3, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$2;-><init>(Lcom/mogu/tv/ui/activity/ShortDetailsActivity;)V

    check-cast v3, Lcom/github/like/OnLikeListener;

    invoke-virtual {v0, v3}, Lcom/github/like/LikeButton;->setOnLikeListener(Lcom/github/like/OnLikeListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    .line 87
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->tvUserName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->tvContent:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->content:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->llRight:Landroid/widget/LinearLayout;

    const-string v4, "llRight"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 91
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->tvPrase:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->favorites:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->viewShare:Landroid/view/View;

    const-string/jumbo v4, "viewShare"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$3$1;

    invoke-direct {v4, p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity$initView$3$1;-><init>(Lcom/mogu/tv/ui/activity/ShortDetailsActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 102
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v4, "ivPhoto"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->photo:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mogu/tv/utils/ImageUtilKt;->withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 104
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiVideo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mogu/tv/view/ShortVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 105
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mogu/tv/view/ShortVideoView;->setPlayPosition(I)V

    .line 106
    iget-object v3, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    .line 107
    invoke-virtual {v3}, Lcom/mogu/tv/view/ShortVideoView;->getBackButton()Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {v3}, Lcom/mogu/tv/view/ShortVideoView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {v3}, Lcom/mogu/tv/view/ShortVideoView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {v3, v2}, Lcom/mogu/tv/view/ShortVideoView;->setNeedShowWifiTip(Z)V

    .line 111
    invoke-virtual {v3, v1}, Lcom/mogu/tv/view/ShortVideoView;->setLooping(Z)V

    const/16 v1, 0x9c4

    .line 112
    invoke-virtual {v3, v1}, Lcom/mogu/tv/view/ShortVideoView;->setDismissControlTime(I)V

    .line 114
    iget-object v4, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    iget-object v5, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->playUrl:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual/range {v4 .. v9}, Lcom/mogu/tv/view/ShortVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 115
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/ShortVideoView;->startPlayLogic()V

    return-void
.end method

.method public final isZan()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->isZan:I

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    .line 131
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/ShortVideoView;->release()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onResume()V

    .line 123
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    .line 124
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/ShortVideoView;->onVideoResume(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onStop()V

    .line 138
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/ShortVideoView;->onVideoPause()V

    return-void
.end method

.method public final setComments(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->comments:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->content:Ljava/lang/String;

    return-void
.end method

.method public final setFavorites(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->favorites:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPhoto(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->photo:Ljava/lang/String;

    return-void
.end method

.method public final setPlayUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public final setZan(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/mogu/tv/ui/activity/ShortDetailsActivity;->isZan:I

    return-void
.end method
