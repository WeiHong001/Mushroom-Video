.class Lcom/luck/picture/lib/widget/FolderPopWindow$1;
.super Ljava/lang/Object;
.source "FolderPopWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/widget/FolderPopWindow;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/widget/FolderPopWindow;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow$1;->this$0:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow$1;->this$0:Lcom/luck/picture/lib/widget/FolderPopWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->access$002(Lcom/luck/picture/lib/widget/FolderPopWindow;Z)Z

    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow$1;->this$0:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->access$100(Lcom/luck/picture/lib/widget/FolderPopWindow;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow$1;->this$0:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->access$201(Lcom/luck/picture/lib/widget/FolderPopWindow;)V

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
