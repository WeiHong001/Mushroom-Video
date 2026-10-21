.class public final Lcom/mogu/tv/model/TopicLists;
.super Ljava/lang/Object;
.source "TopicLists.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/TopicLists$Topic;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0010B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mogu/tv/model/TopicLists;",
        "",
        "code",
        "",
        "list",
        "",
        "Lcom/mogu/tv/model/TopicLists$Topic;",
        "msg",
        "",
        "(ILjava/util/List;Ljava/lang/String;)V",
        "getCode",
        "()I",
        "getList",
        "()Ljava/util/List;",
        "getMsg",
        "()Ljava/lang/String;",
        "Topic",
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

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/TopicLists$Topic;",
            ">;"
        }
    .end annotation
.end field

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/TopicLists$Topic;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/mogu/tv/model/TopicLists;->code:I

    .line 8
    iput-object p2, p0, Lcom/mogu/tv/model/TopicLists;->list:Ljava/util/List;

    .line 9
    iput-object p3, p0, Lcom/mogu/tv/model/TopicLists;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/mogu/tv/model/TopicLists;->code:I

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/TopicLists$Topic;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists;->msg:Ljava/lang/String;

    return-object v0
.end method
