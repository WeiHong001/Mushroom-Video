.class final Lcom/mogu/tv/ui/LoadingActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoadingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/LoadingActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$onCreate$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/LoadingActivity$onCreate$1;->invoke(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xa

    if-le p2, v1, :cond_2

    const-string p2, "api"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, p1, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "http"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {v0, p2, p1, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {v0, p2, p1, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "http"

    .line 74
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    .line 75
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "com"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 77
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object p2, Lcom/mogu/tv/api/ApiClient;->INSTANCE:Lcom/mogu/tv/api/ApiClient;

    invoke-virtual {p2, p1}, Lcom/mogu/tv/api/ApiClient;->setRetrofit(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$onCreate$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/LoadingActivity;->access$startGetData(Lcom/mogu/tv/ui/LoadingActivity;)V

    goto :goto_2

    .line 81
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-le p1, p2, :cond_3

    .line 82
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$onCreate$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/LoadingActivity;->access$startGetDns(Lcom/mogu/tv/ui/LoadingActivity;)V

    goto :goto_2

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$onCreate$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/LoadingActivity;->access$startGetDns26(Lcom/mogu/tv/ui/LoadingActivity;)V

    :goto_2
    return-void
.end method
