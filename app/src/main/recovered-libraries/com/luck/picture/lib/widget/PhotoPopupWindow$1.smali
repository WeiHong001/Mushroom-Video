.class Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;
.super Ljava/lang/Object;
.source "PhotoPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;->this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;->this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->access$002(Lcom/luck/picture/lib/widget/PhotoPopupWindow;Z)Z

    .line 94
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;->this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->access$100(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow$1;->this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->access$201(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
