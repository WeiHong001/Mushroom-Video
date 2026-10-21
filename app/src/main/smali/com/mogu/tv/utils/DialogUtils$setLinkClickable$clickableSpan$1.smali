.class public final Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;
.super Landroid/text/style/ClickableSpan;
.source "DialogUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/DialogUtils;->setLinkClickable(Landroid/app/Activity;Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "view",
        "Landroid/view/View;",
        "updateDrawState",
        "ds",
        "Landroid/text/TextPaint;",
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


# instance fields
.field final synthetic $act:Landroid/app/Activity;

.field final synthetic $urlSpan:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;->$urlSpan:Landroid/text/style/URLSpan;

    iput-object p2, p0, Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;->$act:Landroid/app/Activity;

    .line 215
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;->$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 220
    sget-object v0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object v1, p0, Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;->$act:Landroid/app/Activity;

    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUrlPraseJump(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const-string v0, "#00ce88"

    .line 225
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
