.class final Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShequLoveListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3;->invoke()V
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
        "Lcom/mogu/tv/model/JustReturnMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
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
        "Lcom/mogu/tv/model/JustReturnMsg;",
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
.field final synthetic $item:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/mogu/tv/model/ShequListModel$Data;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_apply:Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/mogu/tv/model/ShequListModel$Data;",
            ">;",
            "Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$item:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$this_apply:Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/JustReturnMsg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V
    .locals 0

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    .line 52
    iget-object p1, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$item:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/mogu/tv/model/ShequListModel$Data;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/ShequListModel$Data;->setZan(I)V

    .line 53
    iget-object p1, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$this_apply:Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPraise:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$item:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p3}, Lcom/mogu/tv/model/ShequListModel$Data;->isZan()I

    move-result p3

    if-ne p3, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 54
    iget-object p1, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$this_apply:Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvPraise:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/mogu/tv/adapter/ShequLoveListAdapter$convert$2$3$1;->$item:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/mogu/tv/model/ShequListModel$Data;

    invoke-virtual {p3}, Lcom/mogu/tv/model/ShequListModel$Data;->getFavorites()I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
