.class final Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "ImglookActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/ui/activity/ImglookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImagePagerAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;",
        "Landroidx/fragment/app/FragmentStatePagerAdapter;",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "fileList",
        "Ljava/util/ArrayList;",
        "",
        "(Lcom/mogu/tv/ui/activity/ImglookActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V",
        "getFileList",
        "()Ljava/util/ArrayList;",
        "setFileList",
        "(Ljava/util/ArrayList;)V",
        "getCount",
        "",
        "getItem",
        "Landroidx/fragment/app/Fragment;",
        "position",
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
.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;


# direct methods
.method public constructor <init>(Lcom/mogu/tv/ui/activity/ImglookActivity;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;->this$0:Lcom/mogu/tv/ui/activity/ImglookActivity;

    .line 96
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 95
    iput-object p3, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fileList!![position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/mogu/tv/ui/frag/ImageDetailFragment;->Companion:Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/ui/frag/ImageDetailFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/mogu/tv/ui/frag/ImageDetailFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public final setFileList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ImglookActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    return-void
.end method
