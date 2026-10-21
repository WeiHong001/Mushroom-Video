.class public final Lcom/mogu/tv/adapter/FocusUserListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "FocusUserListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/mogu/tv/model/UserList$User;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/adapter/FocusUserListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/mogu/tv/model/UserList$User;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "()V",
        "convert",
        "",
        "holder",
        "item",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0082

    .line 22
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/UserList$User;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/mogu/tv/adapter/FocusUserListAdapter$convert$1;->INSTANCE:Lcom/mogu/tv/adapter/FocusUserListAdapter$convert$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/ViewBindingHelperKt;->getBinding(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ItemFocususerBinding;

    .line 26
    iget-object v1, v0, Lcom/mogu/tv/databinding/ItemFocususerBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v2, "ivPhoto"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/UserList$User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 27
    iget-object v0, v0, Lcom/mogu/tv/databinding/ItemFocususerBinding;->tvUser:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mogu/tv/model/UserList$User;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    new-array v0, p2, [I

    const v1, 0x7f0a0350

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 29
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array p2, p2, [I

    const v0, 0x7f0a019e

    aput v0, p2, v2

    .line 30
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/mogu/tv/model/UserList$User;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/adapter/FocusUserListAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/mogu/tv/model/UserList$User;)V

    return-void
.end method
