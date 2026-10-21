.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;->initViewPageAdapterData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$100(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$000(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
