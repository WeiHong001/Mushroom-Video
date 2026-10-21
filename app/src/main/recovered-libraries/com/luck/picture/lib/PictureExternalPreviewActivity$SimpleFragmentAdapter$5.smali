.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 235
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$400(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/permissions/RxPermissions;

    move-result-object p1

    if-nez p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    new-instance v0, Lcom/luck/picture/lib/permissions/RxPermissions;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/permissions/RxPermissions;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$402(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/permissions/RxPermissions;)Lcom/luck/picture/lib/permissions/RxPermissions;

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;->this$1:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$400(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/permissions/RxPermissions;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/permissions/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5$1;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;)V

    .line 239
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    const/4 p1, 0x1

    return p1
.end method
