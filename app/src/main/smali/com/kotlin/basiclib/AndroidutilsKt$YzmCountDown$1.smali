.class public final Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;
.super Ljava/lang/Object;
.source "Androidutils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/AndroidutilsKt;->YzmCountDown(Landroid/widget/TextView;Lkotlin/ranges/IntProgression;)V
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
        "com/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1",
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
.field final synthetic $iterator:Lkotlin/collections/IntIterator;

.field final synthetic $range:Lkotlin/ranges/IntProgression;

.field final synthetic $textView:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_YzmCountDown:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lkotlin/collections/IntIterator;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/TextView;Lkotlin/ranges/IntProgression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/IntIterator;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/widget/TextView;",
            "Lkotlin/ranges/IntProgression;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$iterator:Lkotlin/collections/IntIterator;

    iput-object p2, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$textView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$this_YzmCountDown:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$range:Lkotlin/ranges/IntProgression;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$iterator:Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$textView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$iterator:Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$this_YzmCountDown:Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$range:Lkotlin/ranges/IntProgression;

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$textView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/kotlin/basiclib/AndroidutilsKt$YzmCountDown$1;->$textView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
