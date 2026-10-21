.class public final Lcom/mogu/tv/model/ShareCodeResultBean;
.super Ljava/lang/Object;
.source "ShareCodeResultBean.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShareCodeResultBean;",
        "",
        "code",
        "",
        "data",
        "",
        "ip",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "getCode",
        "()I",
        "getData",
        "()Ljava/lang/String;",
        "getIp",
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
.field private final code:I

.field private final data:Ljava/lang/String;

.field private final ip:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ip"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/mogu/tv/model/ShareCodeResultBean;->code:I

    .line 5
    iput-object p2, p0, Lcom/mogu/tv/model/ShareCodeResultBean;->data:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/mogu/tv/model/ShareCodeResultBean;->ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/mogu/tv/model/ShareCodeResultBean;->code:I

    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mogu/tv/model/ShareCodeResultBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mogu/tv/model/ShareCodeResultBean;->ip:Ljava/lang/String;

    return-object v0
.end method
