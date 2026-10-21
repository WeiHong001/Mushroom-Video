.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$4;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$4;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$4;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->finish()V

    .line 229
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$4;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v0, Lcom/luck/picture/lib/R$anim;->a3:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->overridePendingTransition(II)V

    return-void
.end method
