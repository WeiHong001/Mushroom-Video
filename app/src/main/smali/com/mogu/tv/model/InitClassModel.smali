.class public final Lcom/mogu/tv/model/InitClassModel;
.super Ljava/lang/Object;
.source "InitClassModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/mogu/tv/model/InitClassModel;",
        "",
        "search_hot",
        "",
        "site_email",
        "site_qq",
        "vod_extend_area",
        "vod_extend_class",
        "vod_extend_lang",
        "vod_extend_year",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getSearch_hot",
        "()Ljava/lang/String;",
        "getSite_email",
        "getSite_qq",
        "getVod_extend_area",
        "getVod_extend_class",
        "getVod_extend_lang",
        "getVod_extend_year",
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
.field private final search_hot:Ljava/lang/String;

.field private final site_email:Ljava/lang/String;

.field private final site_qq:Ljava/lang/String;

.field private final vod_extend_area:Ljava/lang/String;

.field private final vod_extend_class:Ljava/lang/String;

.field private final vod_extend_lang:Ljava/lang/String;

.field private final vod_extend_year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "search_hot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "site_email"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "site_qq"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vod_extend_area"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vod_extend_class"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vod_extend_lang"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vod_extend_year"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/InitClassModel;->search_hot:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/mogu/tv/model/InitClassModel;->site_email:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/mogu/tv/model/InitClassModel;->site_qq:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_area:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_class:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_lang:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_year:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSearch_hot()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->search_hot:Ljava/lang/String;

    return-object v0
.end method

.method public final getSite_email()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->site_email:Ljava/lang/String;

    return-object v0
.end method

.method public final getSite_qq()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->site_qq:Ljava/lang/String;

    return-object v0
.end method

.method public final getVod_extend_area()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_area:Ljava/lang/String;

    return-object v0
.end method

.method public final getVod_extend_class()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_class:Ljava/lang/String;

    return-object v0
.end method

.method public final getVod_extend_lang()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getVod_extend_year()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/InitClassModel;->vod_extend_year:Ljava/lang/String;

    return-object v0
.end method
