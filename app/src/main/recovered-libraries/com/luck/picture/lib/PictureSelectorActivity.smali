.class public Lcom/luck/picture/lib/PictureSelectorActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;
.implements Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;
.implements Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;
    }
.end annotation


# static fields
.field private static final DISMISS_DIALOG:I = 0x1

.field private static final SHOW_DIALOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PictureSelectorActivity"


# instance fields
.field private adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field private anim:Z

.field private animation:Landroid/view/animation/Animation;

.field private audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

.field private audioH:I

.field private folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

.field private foldersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Landroid/os/Handler;

.field private id_ll_ok:Landroid/widget/LinearLayout;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private isPlayAudio:Z

.field private mHandler:Landroid/os/Handler;

.field private mediaLoader:Lcom/luck/picture/lib/model/LocalMediaLoader;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private musicSeekBar:Landroid/widget/SeekBar;

.field private picture_id_preview:Landroid/widget/TextView;

.field private picture_left_back:Landroid/widget/ImageView;

.field private picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private picture_right:Landroid/widget/TextView;

.field private picture_title:Landroid/widget/TextView;

.field private picture_tv_img_num:Landroid/widget/TextView;

.field private picture_tv_ok:Landroid/widget/TextView;

.field private popupWindow:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

.field private rl_picture_title:Landroid/widget/RelativeLayout;

.field public runnable:Ljava/lang/Runnable;

.field private rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

.field private tv_PlayPause:Landroid/widget/TextView;

.field private tv_Quit:Landroid/widget/TextView;

.field private tv_Stop:Landroid/widget/TextView;

.field private tv_empty:Landroid/widget/TextView;

.field private tv_musicStatus:Landroid/widget/TextView;

.field private tv_musicTime:Landroid/widget/TextView;

.field private tv_musicTotal:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->anim:Z

    .line 94
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isPlayAudio:Z

    .line 97
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    .line 597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    .line 598
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$9;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$9;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicTotal:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playAudio()V

    return-void
.end method

.method static synthetic access$1300(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_PlayPause:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PictureSelectorActivity;)Ljava/util/List;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/widget/FolderPopWindow;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_empty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicTime:Landroid/widget/TextView;

    return-object p0
.end method

.method private audioDialog(Ljava/lang/String;)V
    .locals 7

    .line 535
    new-instance v6, Lcom/luck/picture/lib/dialog/CustomDialog;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioH:I

    sget v4, Lcom/luck/picture/lib/R$layout;->picture_audio_dialog:I

    sget v5, Lcom/luck/picture/lib/R$style;->Theme_dialog:I

    const/4 v2, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/dialog/CustomDialog;-><init>(Landroid/content/Context;IIII)V

    iput-object v6, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    .line 539
    invoke-virtual {v6}, Lcom/luck/picture/lib/dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$style;->Dialog_Audio_StyleAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 540
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicStatus:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicStatus:Landroid/widget/TextView;

    .line 541
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicTime:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicTime:Landroid/widget/TextView;

    .line 542
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->musicSeekBar:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    .line 543
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicTotal:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicTotal:Landroid/widget/TextView;

    .line 544
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_PlayPause:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_PlayPause:Landroid/widget/TextView;

    .line 545
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_Stop:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_Stop:Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_Quit:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_Quit:Landroid/widget/TextView;

    .line 547
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$6;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_PlayPause:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_Stop:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_Quit:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$7;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$7;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 572
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$8;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 592
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->show()V

    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 1

    .line 621
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 623
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 625
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 626
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playAudio()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 628
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initView(Landroid/os/Bundle;)V
    .locals 12

    .line 195
    sget v0, Lcom/luck/picture/lib/R$id;->rl_picture_title:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rl_picture_title:Landroid/widget/RelativeLayout;

    .line 196
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_left_back:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_title:Landroid/widget/TextView;

    .line 198
    sget v0, Lcom/luck/picture/lib/R$id;->picture_right:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_right:Landroid/widget/TextView;

    .line 199
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_ok:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    .line 200
    sget v0, Lcom/luck/picture/lib/R$id;->picture_id_preview:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    .line 201
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_img_num:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_img_num:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/luck/picture/lib/R$id;->picture_recycler:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    .line 204
    sget v0, Lcom/luck/picture/lib/R$id;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_empty:Landroid/widget/TextView;

    .line 205
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isNumComplete(Z)V

    .line 206
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAll()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->popupWindow:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    .line 208
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setOnItemClickListener(Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioH:I

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_left_back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_right:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    .line 224
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget v0, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    .line 225
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v0, Lcom/luck/picture/lib/widget/FolderPopWindow;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    .line 228
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setPictureTitleView(Landroid/widget/TextView;)V

    .line 229
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 231
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 232
    invoke-static {p0, v4}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4, v3}, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 231
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 233
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 235
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 236
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 237
    new-instance v0, Lcom/luck/picture/lib/model/LocalMediaLoader;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v7, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    int-to-long v8, v1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    int-to-long v10, v1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/luck/picture/lib/model/LocalMediaLoader;-><init>(Landroidx/fragment/app/FragmentActivity;IZJJ)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaLoader:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 238
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/permissions/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$3;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$3;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    .line 239
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 262
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_empty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget v1, Lcom/luck/picture/lib/R$string;->picture_audio_empty:I

    .line 263
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget v1, Lcom/luck/picture/lib/R$string;->picture_empty:I

    .line 264
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_empty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/StringUtils;->tempTextFont(Landroid/widget/TextView;I)V

    if-eqz p1, :cond_5

    .line 268
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->obtainSelectorList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->selectionMedias:Ljava/util/List;

    .line 270
    :cond_5
    new-instance p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-direct {p1, v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 271
    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setOnPhotoSelectChangedListener(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;)V

    .line 272
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->selectionMedias:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectImages(Ljava/util/List;)V

    .line 273
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 274
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    if-eqz v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {p1}, Lcom/luck/picture/lib/tools/StringUtils;->isCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    :cond_6
    return-void
.end method

.method private isNumComplete(Z)V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 293
    invoke-virtual {p0, v1, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget v1, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    .line 295
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    .line 297
    sget v0, Lcom/luck/picture/lib/R$anim;->modal_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 299
    :cond_3
    sget p1, Lcom/luck/picture/lib/R$anim;->modal_in:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method private manualSaveFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->createNewFolder(Ljava/util/List;)V

    .line 1156
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getImageFolder(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    .line 1157
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1160
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 1161
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImages(Ljava/util/List;)V

    .line 1162
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 1164
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1165
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 1166
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1167
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 1168
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->foldersList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->bindFolder(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private parUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 447
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 449
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private playAudio()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 679
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 680
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_PlayPause:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_PlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playOrPause()V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_PlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_musicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playOrPause()V

    .line 692
    :goto_0
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isPlayAudio:Z

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isPlayAudio:Z

    :cond_2
    return-void
.end method

.method private singleRadioMediaImage()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1142
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeImageNumber(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 841
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 842
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 843
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    .line 844
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 846
    :cond_1
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isVideo(Ljava/lang/String;)Z

    move-result v0

    .line 847
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 848
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 852
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 853
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 854
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 855
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 856
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    if-eqz v0, :cond_7

    .line 857
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 858
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p1, v6, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    .line 859
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    .line 858
    invoke-virtual {p0, v2, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 861
    :cond_7
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->anim:Z

    if-nez v0, :cond_8

    .line 862
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_img_num:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 864
    :cond_8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_img_num:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_img_num:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_completed:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iput-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->anim:Z

    goto :goto_7

    .line 870
    :cond_9
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->id_ll_ok:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 871
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 872
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_id_preview:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 873
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 874
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    if-eqz p1, :cond_b

    .line 875
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v1, v6, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    .line 876
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    .line 875
    invoke-virtual {p0, v0, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 878
    :cond_b
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_img_num:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_tv_ok:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method public eventBus(Lcom/luck/picture/lib/entity/EventEntity;)V
    .locals 3
    .annotation runtime Lcom/luck/picture/lib/rxbus2/Subscribe;
        threadMode = .enum Lcom/luck/picture/lib/rxbus2/ThreadMode;->MAIN:Lcom/luck/picture/lib/rxbus2/ThreadMode;
    .end annotation

    .line 119
    iget v0, p1, Lcom/luck/picture/lib/entity/EventEntity;->what:I

    const/16 v1, 0xad3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xad6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p1, Lcom/luck/picture/lib/entity/EventEntity;->medias:Ljava/util/List;

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->anim:Z

    .line 124
    iget p1, p1, Lcom/luck/picture/lib/entity/EventEntity;->position:I

    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5237\u65b0\u4e0b\u6807:"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectImages(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p1, Lcom/luck/picture/lib/entity/EventEntity;->medias:Ljava/util/List;

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v1, :cond_3

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_26

    .line 888
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x45

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_23

    const/16 v1, 0x261

    if-eq p1, v1, :cond_21

    const/16 v1, 0x38d

    const-string v4, ""

    const/4 v5, 0x4

    const-string v6, "image"

    const-string v7, "audio/mpeg"

    const-string v8, "video"

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eq p1, v1, :cond_11

    const/16 v1, 0x38e

    if-eq p1, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string p1, "url"

    .line 937
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 939
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    .line 941
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 942
    new-instance p3, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p3, v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->fileToType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    .line 944
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v9

    if-eq v1, v9, :cond_2

    .line 945
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 946
    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->rotateImage(ILjava/io/File;)V

    .line 949
    :cond_2
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 950
    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v9

    if-eq v1, v9, :cond_3

    .line 952
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 953
    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->rotateImage(ILjava/io/File;)V

    .line 956
    :cond_3
    new-instance p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p1}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 957
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 960
    iget-object v8, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->getLocalVideoDuration(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 962
    :goto_0
    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v9, v9, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 964
    iget-object v8, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->getLocalVideoDuration(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 966
    :cond_5
    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->createVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 967
    :cond_6
    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->createImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 969
    :goto_1
    invoke-virtual {p1, v7}, Lcom/luck/picture/lib/entity/LocalMedia;->setPictureType(Ljava/lang/String;)V

    int-to-long v7, v8

    .line 970
    invoke-virtual {p1, v7, v8}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 971
    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v7, v7, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-virtual {p1, v7}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(I)V

    .line 974
    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v7, v7, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v7, :cond_9

    .line 976
    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    .line 977
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    .line 979
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->originalPath:Ljava/lang/String;

    .line 980
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCrop(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 981
    :cond_7
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v2, :cond_8

    if-eqz p3, :cond_8

    .line 983
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    .line 985
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_e

    .line 986
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 987
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 991
    :cond_8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_2

    .line 996
    :cond_9
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 997
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_e

    .line 998
    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object p2

    .line 1000
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-ge p3, v6, :cond_d

    .line 1001
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v4

    .line 1002
    :cond_a
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/luck/picture/lib/config/PictureMimeType;->mimeToEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 1004
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_d

    .line 1005
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-ge p3, v4, :cond_d

    .line 1007
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p3, v2, :cond_c

    .line 1008
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->singleRadioMediaImage()V

    .line 1010
    :cond_c
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p3, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectImages(Ljava/util/List;)V

    .line 1015
    :cond_d
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    .line 1018
    :cond_e
    :goto_2
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_10

    .line 1021
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->manualSaveFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1022
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_empty:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    const/4 v3, 0x4

    :cond_f
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1026
    :cond_10
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result p2

    if-eq p1, p2, :cond_28

    .line 1027
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getLastImageId(Z)I

    move-result p1

    if-eq p1, v0, :cond_28

    .line 1029
    invoke-virtual {p0, p1, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->removeImage(IZ)V

    goto/16 :goto_8

    .line 1034
    :cond_11
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 1035
    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getAudioPath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    .line 1038
    :cond_12
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    new-instance p3, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p3, v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1040
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->fileToType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    .line 1041
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v9

    if-eq v1, v9, :cond_13

    .line 1042
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 1043
    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->rotateImage(ILjava/io/File;)V

    .line 1046
    :cond_13
    new-instance p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p1}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 1047
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1050
    iget-object v8, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->getLocalVideoDuration(Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    :cond_14
    const/4 v8, 0x0

    .line 1052
    :goto_3
    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v9, v9, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v10

    if-ne v9, v10, :cond_15

    .line 1054
    iget-object v8, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->getLocalVideoDuration(Ljava/lang/String;)I

    move-result v8

    goto :goto_4

    .line 1056
    :cond_15
    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->createVideoType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 1057
    :cond_16
    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->createImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1059
    :goto_4
    invoke-virtual {p1, v7}, Lcom/luck/picture/lib/entity/LocalMedia;->setPictureType(Ljava/lang/String;)V

    int-to-long v7, v8

    .line 1060
    invoke-virtual {p1, v7, v8}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 1061
    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v7, v7, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-virtual {p1, v7}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(I)V

    .line 1064
    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v7, v7, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v7, :cond_19

    .line 1066
    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    .line 1067
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v2, :cond_17

    if-eqz p3, :cond_17

    .line 1069
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->originalPath:Ljava/lang/String;

    .line 1070
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCrop(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1071
    :cond_17
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v2, :cond_18

    if-eqz p3, :cond_18

    .line 1073
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    .line 1075
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_1e

    .line 1076
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1077
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 1081
    :cond_18
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_5

    .line 1086
    :cond_19
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1087
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_1e

    .line 1088
    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object p2

    .line 1090
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-ge p3, v6, :cond_1d

    .line 1091
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1a

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v4

    .line 1092
    :cond_1a
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/luck/picture/lib/config/PictureMimeType;->mimeToEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 1094
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1d

    .line 1095
    :cond_1b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-ge p3, v4, :cond_1d

    .line 1097
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p3, v2, :cond_1c

    .line 1098
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->singleRadioMediaImage()V

    .line 1100
    :cond_1c
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p3, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectImages(Ljava/util/List;)V

    .line 1105
    :cond_1d
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    .line 1108
    :cond_1e
    :goto_5
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_20

    .line 1111
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->manualSaveFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1112
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->tv_empty:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1f

    const/4 v3, 0x4

    :cond_1f
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    :cond_20
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result p2

    if-eq p1, p2, :cond_28

    .line 1117
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getLastImageId(Z)I

    move-result p1

    if-eq p1, v0, :cond_28

    .line 1119
    invoke-virtual {p0, p1, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->removeImage(IZ)V

    goto/16 :goto_8

    .line 923
    :cond_21
    invoke-static {p3}, Lcom/yalantis/ucrop/UCropMulti;->getOutput(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 924
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yalantis/ucrop/model/CutInfo;

    .line 925
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 926
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CutInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->createImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 928
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CutInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/CutInfo;->getCutPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPictureType(Ljava/lang/String;)V

    .line 931
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(I)V

    .line 932
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 934
    :cond_22
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    goto/16 :goto_8

    .line 893
    :cond_23
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 894
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 895
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p3, :cond_25

    .line 897
    invoke-virtual {p3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_24

    .line 898
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_7

    :cond_24
    const/4 p3, 0x0

    :goto_7
    if-eqz p3, :cond_28

    .line 900
    invoke-virtual {p3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->originalPath:Ljava/lang/String;

    .line 901
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->originalPath:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 902
    invoke-virtual {p3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v8

    invoke-virtual {p3}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v9

    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v10, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>(Ljava/lang/String;JZIII)V

    .line 903
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 905
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->createImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPictureType(Ljava/lang/String;)V

    .line 907
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    goto :goto_8

    .line 910
    :cond_25
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz p3, :cond_28

    .line 912
    new-instance p3, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v8, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v10, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    move-object v3, p3

    invoke-direct/range {v3 .. v10}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>(Ljava/lang/String;JZIII)V

    .line 914
    invoke-virtual {p3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 915
    invoke-virtual {p3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 916
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->createImageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-virtual {p3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPictureType(Ljava/lang/String;)V

    .line 918
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    goto :goto_8

    :cond_26
    if-nez p2, :cond_27

    .line 1125
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz p1, :cond_28

    .line 1126
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->closeActivity()V

    goto :goto_8

    :cond_27
    const/16 p1, 0x60

    if-ne p2, p1, :cond_28

    const-string p1, "com.yalantis.ucrop.Error"

    .line 1129
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 1130
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_28
    :goto_8
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1178
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onBackPressed()V

    .line 1179
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->closeActivity()V

    return-void
.end method

.method public onChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 779
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->changeImageNumber(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 458
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/luck/picture/lib/R$id;->picture_right:I

    if-ne p1, v0, :cond_2

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->closeActivity()V

    .line 465
    :cond_2
    :goto_0
    sget v0, Lcom/luck/picture/lib/R$id;->picture_title:I

    if-ne p1, v0, :cond_4

    .line 466
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    goto :goto_1

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->images:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 470
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rl_picture_title:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->showAsDropDown(Landroid/view/View;)V

    .line 471
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->notifyDataCheckedStatus(Ljava/util/List;)V

    .line 477
    :cond_4
    :goto_1
    sget v0, Lcom/luck/picture/lib/R$id;->picture_id_preview:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 480
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 482
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 484
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 485
    check-cast v3, Ljava/io/Serializable;

    const-string v5, "previewSelectList"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 486
    check-cast v0, Ljava/io/Serializable;

    const-string v3, "selectList"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "bottom_preview"

    .line 487
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    const-class v0, Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v3, v2, :cond_6

    const/16 v3, 0x45

    goto :goto_3

    :cond_6
    const/16 v3, 0x261

    :goto_3
    invoke-virtual {p0, v0, v4, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 490
    sget v0, Lcom/luck/picture/lib/R$anim;->a5:I

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->overridePendingTransition(II)V

    .line 493
    :cond_7
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    if-ne p1, v0, :cond_10

    .line 494
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object p1

    .line 495
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 496
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    const-string v3, ""

    .line 498
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "image"

    .line 499
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 500
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 501
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-ge v4, v5, :cond_b

    if-eqz v3, :cond_a

    .line 502
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    .line 503
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 504
    :goto_6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 508
    :cond_b
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    .line 509
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v1, v2, :cond_c

    .line 510
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->originalPath:Ljava/lang/String;

    .line 511
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->originalPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCrop(Ljava/lang/String;)V

    goto :goto_8

    .line 514
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 516
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 518
    :cond_d
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCrop(Ljava/util/ArrayList;)V

    goto :goto_8

    .line 520
    :cond_e
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    .line 522
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_8

    .line 524
    :cond_f
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    :cond_10
    :goto_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->register(Ljava/lang/Object;)V

    .line 152
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/permissions/RxPermissions;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/permissions/RxPermissions;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    .line 153
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/permissions/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$2;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    .line 156
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 182
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_empty:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->setContentView(I)V

    goto :goto_0

    .line 184
    :cond_2
    sget v0, Lcom/luck/picture/lib/R$layout;->picture_selector:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->setContentView(I)V

    .line 185
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initView(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1184
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 1185
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/RxBus;->unregister(Ljava/lang/Object;)V

    .line 1188
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/observable/ImagesObservable;->getInstance()Lcom/luck/picture/lib/observable/ImagesObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/observable/ImagesObservable;->clearLocalMedia()V

    .line 1189
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1191
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1194
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1195
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1196
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method public onItemClick(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraVideo()V

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCamera()V

    :goto_0
    return-void
.end method

.method public onItemClick(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 736
    invoke-static {p1}, Lcom/luck/picture/lib/tools/StringUtils;->isCamera(Ljava/lang/String;)Z

    move-result v0

    .line 737
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 738
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setShowCamera(Z)V

    .line 739
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->picture_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindImagesData(Ljava/util/List;)V

    .line 741
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    return-void
.end method

.method public onPictureClick(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 0

    .line 784
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getImages()Ljava/util/List;

    move-result-object p1

    .line 785
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->startPreview(Ljava/util/List;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureSelector;->saveSelectorList(Landroid/os/Bundle;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTakePhoto()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/permissions/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$10;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$10;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public playOrPause()V
    .locals 1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected readLocalMedia()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaLoader:Lcom/luck/picture/lib/model/LocalMediaLoader;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$4;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->loadAllMedia(Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V

    return-void
.end method

.method public startCamera()V
    .locals 2

    .line 340
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_7

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraAudio()V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraVideo()V

    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCamera()V

    goto :goto_0

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->popupWindow:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    if-eqz v0, :cond_6

    .line 345
    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->popupWindow:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->popupWindow:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rl_picture_title:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 350
    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCamera()V

    :cond_7
    :goto_0
    return-void
.end method

.method public startOpenCamera()V
    .locals 4

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->outputCameraPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    .line 380
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->parUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    .line 381
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public startOpenCameraAudio()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/permissions/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$5;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$5;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public startOpenCameraVideo()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->outputCameraPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    const/16 v0, 0x38e

    .line 394
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->cameraPath:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->toTakeCamareActivity(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public startPreview(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;I)V"
        }
    .end annotation

    .line 795
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 796
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v1

    .line 797
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 798
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 799
    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isPictureType(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 823
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p1, v4, :cond_1

    .line 824
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_1

    .line 827
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 813
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p1, v4, :cond_3

    .line 814
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_1

    .line 817
    :cond_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_path"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-class p1, Lcom/luck/picture/lib/PictureVideoPlayActivity;

    invoke-virtual {p0, p1, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 804
    invoke-static {}, Lcom/luck/picture/lib/observable/ImagesObservable;->getInstance()Lcom/luck/picture/lib/observable/ImagesObservable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/observable/ImagesObservable;->saveLocalMedia(Ljava/util/List;)V

    .line 805
    check-cast v0, Ljava/io/Serializable;

    const-string p1, "selectList"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "position"

    .line 806
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    const-class p1, Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p2, v4, :cond_5

    const/16 p2, 0x45

    goto :goto_0

    :cond_5
    const/16 p2, 0x261

    :goto_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 809
    sget p1, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 706
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 707
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 708
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 709
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 710
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
