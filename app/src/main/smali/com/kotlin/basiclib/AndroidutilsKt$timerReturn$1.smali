.class public final Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;
.super Ljava/lang/Object;
.source "Androidutils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/AndroidutilsKt;->timerReturn(Landroid/view/View;Lkotlin/ranges/IntProgression;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/kotlin/basiclib/AndroidutilsKt$timerReturn$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "basiclib_release"
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
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $iterator:Lkotlin/collections/IntIterator;

.field final synthetic $range:Lkotlin/ranges/IntProgression;

.field final synthetic $this_timerReturn:Landroid/view/View;


# direct methods
.method constructor <init>(Lkotlin/collections/IntIterator;Lkotlin/ranges/IntProgression;Lkotlin/jvm/functions/Function2;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/IntIterator;",
            "Lkotlin/ranges/IntProgression;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$iterator:Lkotlin/collections/IntIterator;

    iput-object p2, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$range:Lkotlin/ranges/IntProgression;

    iput-object p3, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$block:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$this_timerReturn:Landroid/view/View;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$iterator:Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$iterator:Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$range:Lkotlin/ranges/IntProgression;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$this_timerReturn:Landroid/view/View;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$range:Lkotlin/ranges/IntProgression;

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/16 v4, 0x3c

    int-to-long v4, v4

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$block:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/kotlin/basiclib/AndroidutilsKt$timerReturn$1;->$range:Lkotlin/ranges/IntProgression;

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
