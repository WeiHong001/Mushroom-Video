.class public final Lcom/kotlin/basiclib/ViewBindingHelperKt;
.super Ljava/lang/Object;
.source "ViewBindingHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewBindingHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewBindingHelper.kt\ncom/kotlin/basiclib/ViewBindingHelperKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00010\u0005\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "getBinding",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "bind",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;",
        "basiclib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VB::",
            "Landroidx/viewbinding/ViewBinding;",
            ">(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "+TVB;>;)TVB;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/kotlin/basiclib/R$id;->tag_view_binding:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/viewbinding/ViewBinding;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/kotlin/basiclib/R$id;->tag_view_binding:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method
