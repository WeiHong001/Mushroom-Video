.class Lcom/github/like/LikeButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LikeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/like/LikeButton;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/like/LikeButton;


# direct methods
.method constructor <init>(Lcom/github/like/LikeButton;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$000(Lcom/github/like/LikeButton;)Lcom/github/like/CircleView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/like/CircleView;->setInnerCircleRadiusProgress(F)V

    .line 227
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$000(Lcom/github/like/LikeButton;)Lcom/github/like/CircleView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/like/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 228
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$100(Lcom/github/like/LikeButton;)Lcom/github/like/DotsView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/github/like/DotsView;->setCurrentProgress(F)V

    .line 229
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$200(Lcom/github/like/LikeButton;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 230
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$200(Lcom/github/like/LikeButton;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$300(Lcom/github/like/LikeButton;)Lcom/github/like/OnAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-static {p1}, Lcom/github/like/LikeButton;->access$300(Lcom/github/like/LikeButton;)Lcom/github/like/OnAnimationEndListener;

    move-result-object p1

    iget-object v0, p0, Lcom/github/like/LikeButton$1;->this$0:Lcom/github/like/LikeButton;

    invoke-interface {p1, v0}, Lcom/github/like/OnAnimationEndListener;->onAnimationEnd(Lcom/github/like/LikeButton;)V

    :cond_0
    return-void
.end method
