.class public final Lcom/mogu/tv/ui/frag/ImageDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImageDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0004H\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ImageDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "mContext",
        "Landroid/app/Activity;",
        "getMContext",
        "()Landroid/app/Activity;",
        "setMContext",
        "(Landroid/app/Activity;)V",
        "mImageUrl",
        "",
        "mImageView",
        "Lcom/luck/picture/lib/photoview/PhotoView;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "vv_video",
        "Landroid/widget/VideoView;",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onAttach",
        "activity",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;


# instance fields
.field public mContext:Landroid/app/Activity;

.field private mImageUrl:Ljava/lang/String;

.field private mImageView:Lcom/luck/picture/lib/photoview/PhotoView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private vv_video:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$hBDb2o6KXXlZNtMB-bgTO2wpJWg(Lcom/mogu/tv/ui/frag/ImageDetailFragment;Landroid/view/View;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->onCreateView$lambda-0(Lcom/mogu/tv/ui/frag/ImageDetailFragment;Landroid/view/View;FF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->Companion:Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private static final onCreateView$lambda-0(Lcom/mogu/tv/ui/frag/ImageDetailFragment;Landroid/view/View;FF)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->getMContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final getMContext()Landroid/app/Activity;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, " "

    .line 64
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, ".mp4"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->vv_video:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->vv_video:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 69
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "http"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->vv_video:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->vv_video:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->vv_video:Landroid/widget/VideoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    goto :goto_1

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    sget-object p1, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mogu/tv/utils/ImageUtil;->loadPhotoView(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 78
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setMaximumScale(F)V

    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->setMContext(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0077

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0170

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/photoview/PhotoView;

    iput-object p2, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    const p2, 0x7f0a0171

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0a03d5

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iput-object p2, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->vv_video:Landroid/widget/VideoView;

    .line 57
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p3, Lcom/mogu/tv/ui/frag/ImageDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/mogu/tv/ui/frag/ImageDetailFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/ImageDetailFragment;)V

    invoke-virtual {p2, p3}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    return-object p1
.end method

.method public final setMContext(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->mContext:Landroid/app/Activity;

    return-void
.end method
