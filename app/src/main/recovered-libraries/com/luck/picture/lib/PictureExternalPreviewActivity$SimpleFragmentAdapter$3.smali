.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$3;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/photoview/OnViewTapListener;


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

    .line 218
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$3;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$3;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->finish()V

    .line 222
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$3;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget p2, Lcom/luck/picture/lib/R$anim;->a3:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->overridePendingTransition(II)V

    return-void
.end method
