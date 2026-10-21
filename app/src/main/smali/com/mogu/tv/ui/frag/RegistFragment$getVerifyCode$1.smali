.class final Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RegistFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/RegistFragment;->getVerifyCode()V
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
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/RegistFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;->invoke(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 45
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    .line 46
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/mogu/tv/model/CaptchaModel;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/CaptchaModel;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/frag/RegistFragment;->setCapObj(Lcom/mogu/tv/model/CaptchaModel;)V

    .line 47
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/RegistFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/FragRegistBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragRegistBinding;->ivVerify:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/RegistFragment;->getCapObj()Lcom/mogu/tv/model/CaptchaModel;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/mogu/tv/model/CaptchaModel;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Lcom/mogu/tv/ui/frag/RegistFragment;->covertBase64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
