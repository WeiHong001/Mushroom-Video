.class final Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/bumptech/glide/request/RequestOptions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/bumptech/glide/request/RequestOptions;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;

    invoke-direct {v0}, Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;-><init>()V

    sput-object v0, Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 48
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const v1, 0x7f0f0007

    .line 50
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/mogu/tv/utils/ImageUtil$optionsCenterUserCropHavePlace$2;->invoke()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method
