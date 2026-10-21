.class final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShortVideoMainFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getVideoData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/mogu/tv/model/ShortVideoList;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortVideoMainFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortVideoMainFragment.kt\ncom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n1851#2,2:243\n*S KotlinDebug\n*F\n+ 1 ShortVideoMainFragment.kt\ncom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1\n*L\n68#1:243,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
        "Lcom/mogu/tv/model/ShortVideoList;",
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


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/ShortVideoList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/ShortVideoList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/ShortVideoList;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMCurrentPage()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 64
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMDatas()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/16 p2, 0xc8

    const/4 v1, 0x0

    if-ne p1, p2, :cond_7

    .line 67
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMDatas()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/mogu/tv/model/ShortVideoList;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_3

    .line 68
    invoke-virtual {p3}, Lcom/mogu/tv/model/ShortVideoList;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 243
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/ShortVideoList$Data;

    .line 69
    sget-object v2, Lcom/mogu/tv/utils/PlayIdSaveUtils;->INSTANCE:Lcom/mogu/tv/utils/PlayIdSaveUtils;

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mogu/tv/model/ShortVideoList$Data;->getPlay_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/mogu/tv/utils/PlayIdSaveUtils;->savePlayData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 71
    invoke-virtual {p3}, Lcom/mogu/tv/model/ShortVideoList;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_7

    .line 72
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object p2, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {p2}, Lcom/mogu/tv/common/cache/CacheKey;->getSHORTVIDEOPAGE()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->setMCurrentPage(I)V

    .line 74
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getVideoData(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V

    .line 77
    :cond_7
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 78
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getVideoData$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getMPagerAdapter$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)Lcom/mogu/tv/adapter/ShortFragment2LazyAdapter;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "mPagerAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v1, p1

    :goto_5
    invoke-virtual {v1}, Lcom/mogu/tv/adapter/ShortFragment2LazyAdapter;->notifyDataSetChanged()V

    :cond_9
    :goto_6
    return-void
.end method
