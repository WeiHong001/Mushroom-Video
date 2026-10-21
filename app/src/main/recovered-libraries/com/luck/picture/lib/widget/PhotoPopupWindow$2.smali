.class Lcom/luck/picture/lib/widget/PhotoPopupWindow$2;
.super Ljava/lang/Object;
.source "PhotoPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss4Pop()V
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

    .line 111
    iput-object p1, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow$2;->this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PhotoPopupWindow$2;->this$0:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-static {v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->access$301(Lcom/luck/picture/lib/widget/PhotoPopupWindow;)V

    return-void
.end method
