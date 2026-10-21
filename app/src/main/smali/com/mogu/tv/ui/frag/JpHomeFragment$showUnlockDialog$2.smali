.class final Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "JpHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/JpHomeFragment;->showUnlockDialog(Lcom/mogu/tv/model/VipVideoList$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJpHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JpHomeFragment.kt\ncom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1860#2,3:153\n*S KotlinDebug\n*F\n+ 1 JpHomeFragment.kt\ncom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2\n*L\n101#1:153,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it1",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    invoke-static {v0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->access$getMData$p(Lcom/mogu/tv/ui/frag/JpHomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$showUnlockDialog$2;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    .line 154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/mogu/tv/model/VipVideoList$Data;

    .line 102
    invoke-virtual {v3}, Lcom/mogu/tv/model/VipVideoList$Data;->getID()I

    move-result v5

    if-ne p1, v5, :cond_1

    const/4 v5, 0x1

    .line 103
    invoke-virtual {v3, v5}, Lcom/mogu/tv/model/VipVideoList$Data;->setUnlock(Z)V

    .line 104
    invoke-virtual {v1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getMAdapter()Lcom/mogu/tv/adapter/JpItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mogu/tv/adapter/JpItemAdapter;->notifyItemChanged(I)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method
