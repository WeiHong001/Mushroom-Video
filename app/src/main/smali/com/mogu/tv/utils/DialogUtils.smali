.class public final Lcom/mogu/tv/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001*B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\"\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001c\u0010\u0017\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0019J0\u0010\u001a\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010 \u001a\u00020\u0006J\u000e\u0010!\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u0006J\u001c\u0010#\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0019J\u0006\u0010%\u001a\u00020\u0012J6\u0010&\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00192\u0010\u0008\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0019J$\u0010)\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lcom/mogu/tv/utils/DialogUtils;",
        "",
        "()V",
        "checkNeedUpgrade",
        "",
        "appVersion",
        "",
        "latestVersion",
        "getClickableHtml",
        "",
        "html",
        "textView",
        "Landroid/widget/TextView;",
        "act",
        "Landroid/app/Activity;",
        "parseVersionCode",
        "n",
        "setLinkClickable",
        "",
        "clickableHtmlBuilder",
        "Landroid/text/SpannableStringBuilder;",
        "urlSpan",
        "Landroid/text/style/URLSpan;",
        "showDialogPermission",
        "confirm",
        "Lkotlin/Function0;",
        "showEditDialog",
        "hint",
        "maxLength",
        "",
        "editListenr",
        "Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;",
        "content",
        "showJpProductDialog",
        "showNoticeDialog",
        "showQQProductDialog",
        "goShare",
        "showQrCodeDialog",
        "showSimpleDialog",
        "txt",
        "cancel",
        "showSureDialog",
        "EditContentGetListner",
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


# static fields
.field public static final INSTANCE:Lcom/mogu/tv/utils/DialogUtils;


# direct methods
.method public static synthetic $r8$lambda$B4o9uhoUdM9PCaoIWL1TZQzrPCg(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/utils/DialogUtils;->showNoticeDialog$lambda-2(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0H9AegDGVAhcm1oiklfc5DncPQ(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/utils/DialogUtils;->showSureDialog$lambda-1(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQOmUsiT1ptpm7GXpqzYaIJ4xsQ(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/utils/DialogUtils;->showSimpleDialog$lambda-0(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/utils/DialogUtils;

    invoke-direct {v0}, Lcom/mogu/tv/utils/DialogUtils;-><init>()V

    sput-object v0, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getClickableHtml(Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 4

    .line 237
    new-instance v0, Lcom/mogu/tv/utils/ImageGetter;

    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mogu/tv/utils/ImageGetter;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    check-cast v0, Landroid/text/Html$ImageGetter;

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 235
    invoke-static {p1, p2, v0, v1}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "fromHtml(\n            ht\u2026textView), null\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/text/SpannableStringBuilder;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 241
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    .line 240
    invoke-virtual {v0, p2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    const-string/jumbo v1, "urls"

    .line 244
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    :goto_0
    if-ge p2, v1, :cond_0

    aget-object v2, p1, p2

    const-string v3, "span"

    .line 245
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0, v2}, Lcom/mogu/tv/utils/DialogUtils;->setLinkClickable(Landroid/app/Activity;Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private final setLinkClickable(Landroid/app/Activity;Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 4

    .line 212
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 213
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 214
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 215
    new-instance v3, Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;

    invoke-direct {v3, p3, p1}, Lcom/mogu/tv/utils/DialogUtils$setLinkClickable$clickableSpan$1;-><init>(Landroid/text/style/URLSpan;Landroid/app/Activity;)V

    check-cast v3, Landroid/text/style/ClickableSpan;

    .line 228
    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static synthetic showEditDialog$default(Lcom/mogu/tv/utils/DialogUtils;Landroid/app/Activity;Ljava/lang/String;ILcom/mogu/tv/utils/DialogUtils$EditContentGetListner;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p5, ""

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/mogu/tv/utils/DialogUtils;->showEditDialog(Landroid/app/Activity;Ljava/lang/String;ILcom/mogu/tv/utils/DialogUtils$EditContentGetListner;Ljava/lang/String;)V

    return-void
.end method

.method private static final showNoticeDialog$lambda-2(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$tvcontent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic showSimpleDialog$default(Lcom/mogu/tv/utils/DialogUtils;Landroid/app/Activity;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mogu/tv/utils/DialogUtils;->showSimpleDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final showSimpleDialog$lambda-0(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$confirm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0a025d

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f0a0087

    if-ne p0, p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static final showSureDialog$lambda-1(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$confirm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 197
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    const p2, 0x7f0a025d

    if-ne p0, p2, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkNeedUpgrade(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 352
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_c

    move-object v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string p2, "."

    .line 355
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 356
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    const/4 v3, -0x1

    if-ge v2, v1, :cond_9

    .line 359
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_8

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_8

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_5

    :cond_5
    const/4 v4, -0x1

    .line 361
    :goto_5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_6
    if-le v3, v4, :cond_7

    return v6

    :cond_7
    if-ge v3, v4, :cond_8

    return p1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 365
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_c

    .line 366
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_c

    .line 367
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_7

    :cond_a
    const/4 v2, -0x1

    :goto_7
    if-lez v2, :cond_b

    return v6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    :goto_8
    return p1
.end method

.method public final parseVersionCode(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/base/BaseApplicaiton;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kotlin/basiclib/base/BaseApplicaiton;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 337
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 338
    invoke-virtual {p0, v0, p1}, Lcom/mogu/tv/utils/DialogUtils;->checkNeedUpgrade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final showDialogPermission(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    const v4, 0x7f13014e

    invoke-direct {v1, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 313
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {p1, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 311
    invoke-virtual {v1, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 319
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0a03a8

    .line 320
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.findViewById<TextView>(R.id.tv_submit)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mogu/tv/utils/DialogUtils$showDialogPermission$1;

    invoke-direct {v0, v1, p2}, Lcom/mogu/tv/utils/DialogUtils$showDialogPermission$1;-><init>(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 324
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    sget-object p2, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {p2}, Lcom/kotlin/basiclib/utils/ScreenUtils;->getScreenWidth()I

    move-result p2

    int-to-double v3, p2

    const-wide v5, 0x3fe6666666666666L    # 0.7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int p2, v3

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 328
    :goto_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showEditDialog(Landroid/app/Activity;Ljava/lang/String;ILcom/mogu/tv/utils/DialogUtils$EditContentGetListner;Ljava/lang/String;)V
    .locals 5

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editListenr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00f2

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/view/TipsEditText;

    const v2, 0x7f0a0372

    .line 155
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0398

    .line 156
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 157
    new-instance v4, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v4, p1}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v1, p3}, Lcom/mogu/tv/view/TipsEditText;->setMaxLength(I)V

    .line 159
    invoke-virtual {v1, p2}, Lcom/mogu/tv/view/TipsEditText;->setHint(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, p5}, Lcom/mogu/tv/view/TipsEditText;->setText(Ljava/lang/String;)V

    const-string/jumbo p1, "tv_cancel"

    .line 161
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance p1, Lcom/mogu/tv/utils/DialogUtils$showEditDialog$1;

    invoke-direct {p1, v4}, Lcom/mogu/tv/utils/DialogUtils$showEditDialog$1;-><init>(Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    const-string/jumbo p1, "tv_ok"

    .line 164
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance p1, Lcom/mogu/tv/utils/DialogUtils$showEditDialog$2;

    invoke-direct {p1, p4, v1, v4}, Lcom/mogu/tv/utils/DialogUtils$showEditDialog$2;-><init>(Lcom/mogu/tv/utils/DialogUtils$EditContentGetListner;Lcom/mogu/tv/view/TipsEditText;Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 168
    invoke-virtual {v4, v0}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v4}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->showAtBottom()V

    return-void
.end method

.method public final showJpProductDialog(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    const v2, 0x7f13014e

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 84
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v1, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo p1, "view"

    .line 89
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/mogu/tv/utils/DialogUtils$showJpProductDialog$1;

    invoke-direct {p1, v1}, Lcom/mogu/tv/utils/DialogUtils$showJpProductDialog$1;-><init>(Landroid/app/Dialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    .line 92
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showNoticeDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "html"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    const v3, 0x7f13014e

    invoke-direct {v1, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 282
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {p1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 280
    invoke-virtual {v1, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 287
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 288
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 289
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const v3, 0x7f0a0377

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string/jumbo v3, "view"

    .line 290
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/mogu/tv/utils/DialogUtils$showNoticeDialog$1;

    invoke-direct {v3, v1}, Lcom/mogu/tv/utils/DialogUtils$showNoticeDialog$1;-><init>(Landroid/app/Dialog;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 293
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView;

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual {v0, p2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Landroid/webkit/WebView;

    new-instance v0, Lcom/mogu/tv/utils/DialogUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/mogu/tv/utils/DialogUtils$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const-wide/16 v3, 0x190

    invoke-virtual {p2, v0, v3, v4}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    sget-object p2, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {p2}, Lcom/kotlin/basiclib/utils/ScreenUtils;->getScreenWidth()I

    move-result p2

    int-to-double v3, p2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int p2, v3

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 299
    :goto_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showQQProductDialog(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goShare"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    const v2, 0x7f13014e

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 106
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v1, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a0187

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f0a00af

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const-string v4, "ivUnlock"

    .line 114
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v4, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;

    invoke-direct {v4, v2, v3}, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$1;-><init>(Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v4}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    const p1, 0x7f0a017d

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "ivGoShare"

    .line 134
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$2;

    invoke-direct {v0, p2}, Lcom/mogu/tv/utils/DialogUtils$showQQProductDialog$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x1

    .line 137
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showQrCodeDialog()V
    .locals 5

    .line 254
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00a1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0185

    .line 256
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    .line 257
    sget-object v3, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v3}, Lcom/mogu/tv/model/GlobeAppData;->getShareLinkWithInvite()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->getQRBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    new-instance v2, Landroid/app/Dialog;

    check-cast v0, Landroid/content/Context;

    const v3, 0x7f13014e

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 261
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 259
    invoke-virtual {v2, v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 266
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 267
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showSimpleDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "txt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00af

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance p2, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    const v1, 0x7f13014e

    invoke-direct {p2, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    invoke-virtual {p2, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 64
    new-instance p1, Lcom/mogu/tv/utils/DialogUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p3, p4}, Lcom/mogu/tv/utils/DialogUtils$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const p2, 0x7f0a0087

    .line 71
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a025d

    .line 72
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showSureDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "act"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "txt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00af

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance p2, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    const v1, 0x7f13014e

    invoke-direct {p2, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 186
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {p2, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 194
    new-instance p1, Lcom/mogu/tv/utils/DialogUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p3}, Lcom/mogu/tv/utils/DialogUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;Lkotlin/jvm/functions/Function0;)V

    const p2, 0x7f0a025d

    .line 201
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
