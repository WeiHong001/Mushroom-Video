.class public final Lcom/mogu/tv/utils/CommentFilter;
.super Ljava/lang/Object;
.source "CommentFilter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mogu/tv/utils/CommentFilter;",
        "",
        "()V",
        "regular",
        "Lkotlin/text/Regex;",
        "getRegular",
        "()Lkotlin/text/Regex;",
        "setRegular",
        "(Lkotlin/text/Regex;)V",
        "replce1",
        "getReplce1",
        "setReplce1",
        "getegularTxt",
        "",
        "str",
        "isRegularText",
        "",
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
.field public static final INSTANCE:Lcom/mogu/tv/utils/CommentFilter;

.field private static regular:Lkotlin/text/Regex;

.field private static replce1:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mogu/tv/utils/CommentFilter;

    invoke-direct {v0}, Lcom/mogu/tv/utils/CommentFilter;-><init>()V

    sput-object v0, Lcom/mogu/tv/utils/CommentFilter;->INSTANCE:Lcom/mogu/tv/utils/CommentFilter;

    .line 6
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^.*\\d{5}.*$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mogu/tv/utils/CommentFilter;->regular:Lkotlin/text/Regex;

    .line 7
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mogu/tv/utils/CommentFilter;->replce1:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRegular()Lkotlin/text/Regex;
    .locals 1

    .line 6
    sget-object v0, Lcom/mogu/tv/utils/CommentFilter;->regular:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final getReplce1()Lkotlin/text/Regex;
    .locals 1

    .line 7
    sget-object v0, Lcom/mogu/tv/utils/CommentFilter;->replce1:Lkotlin/text/Regex;

    return-object v0
.end method

.method public final getegularTxt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isRegularText(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, Ljava/lang/CharSequence;

    sget-object v0, Lcom/mogu/tv/utils/CommentFilter;->regular:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 22
    :cond_0
    sget-object v0, Lcom/mogu/tv/utils/CommentFilter;->replce1:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final setRegular(Lkotlin/text/Regex;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sput-object p1, Lcom/mogu/tv/utils/CommentFilter;->regular:Lkotlin/text/Regex;

    return-void
.end method

.method public final setReplce1(Lkotlin/text/Regex;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object p1, Lcom/mogu/tv/utils/CommentFilter;->replce1:Lkotlin/text/Regex;

    return-void
.end method
