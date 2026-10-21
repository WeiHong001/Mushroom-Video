.class public final Lcom/mogu/tv/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u001c\u0010\u001e\u001a\u00020\u00192\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#J \u0010$\u001a\u00020\u00192\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)J \u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u001b2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010(\u001a\u00020)J \u0010,\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u001b2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010-\u001a\u00020)J \u0010.\u001a\u00020\u00192\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u000e\u0010\nR\u001b\u0010\u0010\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0011\u0010\nR\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006/"
    }
    d2 = {
        "Lcom/mogu/tv/utils/ImageUtil;",
        "",
        "()V",
        "maxNum",
        "",
        "getMaxNum",
        "()I",
        "optionsCenterCropHavePlace",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "getOptionsCenterCropHavePlace",
        "()Lcom/bumptech/glide/request/RequestOptions;",
        "optionsCenterCropHavePlace$delegate",
        "Lkotlin/Lazy;",
        "optionsCenterInsideHavePlace",
        "getOptionsCenterInsideHavePlace",
        "optionsCenterInsideHavePlace$delegate",
        "optionsCenterUserCropHavePlace",
        "getOptionsCenterUserCropHavePlace",
        "optionsCenterUserCropHavePlace$delegate",
        "scaleDenity",
        "",
        "getScaleDenity",
        "()F",
        "scaleDenity$delegate",
        "getCompressFile",
        "",
        "filepath",
        "",
        "compressListener",
        "Ltop/zibin/luban/OnCompressListener;",
        "getImageResult",
        "selectList",
        "",
        "Lcom/luck/picture/lib/entity/LocalMedia;",
        "callBack",
        "Lcom/mogu/tv/utils/PhotoZipCallBack;",
        "loadImage",
        "context",
        "Landroid/content/Context;",
        "url",
        "imageView",
        "Landroid/widget/ImageView;",
        "loadImageSingleList",
        "imageUrl",
        "loadPhotoView",
        "imgView",
        "loadVideo",
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
.field public static final INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

.field private static final maxNum:I

.field private static final optionsCenterCropHavePlace$delegate:Lkotlin/Lazy;

.field private static final optionsCenterInsideHavePlace$delegate:Lkotlin/Lazy;

.field private static final optionsCenterUserCropHavePlace$delegate:Lkotlin/Lazy;

.field private static final scaleDenity$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/utils/ImageUtil;

    invoke-direct {v0}, Lcom/mogu/tv/utils/ImageUtil;-><init>()V

    sput-object v0, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    const/16 v0, 0x9

    .line 34
    sput v0, Lcom/mogu/tv/utils/ImageUtil;->maxNum:I

    .line 35
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil$optionsCenterCropHavePlace$2;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil$optionsCenterCropHavePlace$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/mogu/tv/utils/ImageUtil;->optionsCenterCropHavePlace$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil$optionsCenterInsideHavePlace$2;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil$optionsCenterInsideHavePlace$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/mogu/tv/utils/ImageUtil;->optionsCenterInsideHavePlace$delegate:Lkotlin/Lazy;

    .line 47
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/mogu/tv/utils/ImageUtil;->optionsCenterUserCropHavePlace$delegate:Lkotlin/Lazy;

    .line 53
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil$scaleDenity$2;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil$scaleDenity$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/mogu/tv/utils/ImageUtil;->scaleDenity$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCompressFile(Ljava/lang/String;Ltop/zibin/luban/OnCompressListener;)V
    .locals 1

    const-string v0, "filepath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltop/zibin/luban/Luban;->with(Landroid/content/Context;)Ltop/zibin/luban/Luban$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Ltop/zibin/luban/Luban$Builder;->load(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    const/16 v0, 0x64

    .line 97
    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->ignoreBy(I)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    .line 98
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/kotlin/basiclib/utils/FileUtils;->getImageCacheFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->setTargetDir(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    .line 99
    new-instance v0, Lcom/mogu/tv/utils/ImageUtil$getCompressFile$1;

    invoke-direct {v0}, Lcom/mogu/tv/utils/ImageUtil$getCompressFile$1;-><init>()V

    check-cast v0, Ltop/zibin/luban/CompressionPredicate;

    invoke-virtual {p1, v0}, Ltop/zibin/luban/Luban$Builder;->filter(Ltop/zibin/luban/CompressionPredicate;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p2}, Ltop/zibin/luban/Luban$Builder;->setCompressListener(Ltop/zibin/luban/OnCompressListener;)Ltop/zibin/luban/Luban$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ltop/zibin/luban/Luban$Builder;->launch()V

    return-void
.end method

.method public final getImageResult(Ljava/util/List;Lcom/mogu/tv/utils/PhotoZipCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;",
            "Lcom/mogu/tv/utils/PhotoZipCallBack;",
            ")V"
        }
    .end annotation

    const-string v0, "selectList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/mogu/tv/utils/ImageUtil;->maxNum:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "path"

    .line 67
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    move-object v3, v4

    .line 70
    :cond_2
    new-instance v6, Lcom/mogu/tv/model/UploadImage;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v3}, Lcom/mogu/tv/model/UploadImage;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6, v4}, Lcom/mogu/tv/model/UploadImage;->setSourcePath(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6}, Lcom/mogu/tv/model/UploadImage;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    new-instance v4, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;

    invoke-direct {v4, v6, p2}, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;-><init>(Lcom/mogu/tv/model/UploadImage;Lcom/mogu/tv/utils/PhotoZipCallBack;)V

    check-cast v4, Ltop/zibin/luban/OnCompressListener;

    invoke-virtual {p0, v3, v4}, Lcom/mogu/tv/utils/ImageUtil;->getCompressFile(Ljava/lang/String;Ltop/zibin/luban/OnCompressListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final getMaxNum()I
    .locals 1

    .line 34
    sget v0, Lcom/mogu/tv/utils/ImageUtil;->maxNum:I

    return v0
.end method

.method public final getOptionsCenterCropHavePlace()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 35
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil;->optionsCenterCropHavePlace$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public final getOptionsCenterInsideHavePlace()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 41
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil;->optionsCenterInsideHavePlace$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public final getOptionsCenterUserCropHavePlace()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 47
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil;->optionsCenterUserCropHavePlace$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    return-object v0
.end method

.method public final getScaleDenity()F
    .locals 1

    .line 53
    sget-object v0, Lcom/mogu/tv/utils/ImageUtil;->scaleDenity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mogu/tv/utils/ImageUtil;->getOptionsCenterCropHavePlace()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final loadImageSingleList(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 156
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-static {p2}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mogu/tv/utils/ImageUtil;->getOptionsCenterCropHavePlace()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mogu/tv/utils/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;

    invoke-direct {v1, p2, p1, p3}, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/utils/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final loadPhotoView(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imgView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".mp4"

    .line 114
    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, p2, p1, p3}, Lcom/mogu/tv/utils/ImageUtil;->loadVideo(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 118
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 119
    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const-string v1, "RequestOptions()\n       \u2026mpleTarget.SIZE_ORIGINAL)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p2}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p2

    .line 121
    invoke-virtual {p2, v0}, Lcom/mogu/tv/utils/GlideRequests;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p2

    .line 122
    invoke-virtual {p2, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p3}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method public final loadVideo(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/net/Uri;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
