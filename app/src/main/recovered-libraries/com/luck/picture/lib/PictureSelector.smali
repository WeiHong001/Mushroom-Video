.class public final Lcom/luck/picture/lib/PictureSelector;
.super Ljava/lang/Object;
.source "PictureSelector.java"


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelector;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelector;->mActivity:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelector;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/luck/picture/lib/PictureSelector;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/luck/picture/lib/PictureSelector;
    .locals 1

    .line 53
    new-instance v0, Lcom/luck/picture/lib/PictureSelector;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelector;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroidx/fragment/app/Fragment;)Lcom/luck/picture/lib/PictureSelector;
    .locals 1

    .line 63
    new-instance v0, Lcom/luck/picture/lib/PictureSelector;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelector;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public static obtainMultipleResult(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const-string v0, "extra_result_media"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 101
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static obtainSelectorList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "selectList"

    .line 124
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static putIntentResult(Ljava/util/List;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    check-cast p0, Ljava/io/Serializable;

    const-string v1, "extra_result_media"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static saveSelectorList(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 136
    check-cast p1, Ljava/io/Serializable;

    const-string v0, "selectList"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method public externalPictureAudio(Ljava/lang/String;)V
    .locals 3

    .line 192
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "audio_path"

    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public externalPicturePreview(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    check-cast p3, Ljava/io/Serializable;

    const-string v1, "previewSelectList"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "position"

    .line 166
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "directory_path"

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public externalPicturePreview(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    check-cast p2, Ljava/io/Serializable;

    const-string v1, "previewSelectList"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "position"

    .line 149
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public externalPictureVideo(Ljava/lang/String;)V
    .locals 3

    .line 179
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/luck/picture/lib/PictureVideoPlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "video_path"

    .line 181
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelector;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelector;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public openCamera(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    .line 79
    new-instance v0, Lcom/luck/picture/lib/PictureSelectionModel;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/luck/picture/lib/PictureSelectionModel;-><init>(Lcom/luck/picture/lib/PictureSelector;IZ)V

    return-object v0
.end method

.method public openGallery(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 71
    new-instance v0, Lcom/luck/picture/lib/PictureSelectionModel;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureSelectionModel;-><init>(Lcom/luck/picture/lib/PictureSelector;I)V

    return-object v0
.end method

.method public themeStyle(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    .line 89
    new-instance v0, Lcom/luck/picture/lib/PictureSelectionModel;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;-><init>(Lcom/luck/picture/lib/PictureSelector;I)V

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureSelectionModel;->theme(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object p1

    return-object p1
.end method
