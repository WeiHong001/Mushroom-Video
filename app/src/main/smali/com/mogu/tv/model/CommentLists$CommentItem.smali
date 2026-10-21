.class public final Lcom/mogu/tv/model/CommentLists$CommentItem;
.super Ljava/lang/Object;
.source "CommentLists.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/CommentLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/mogu/tv/model/CommentLists$CommentItem;",
        "",
        "comment",
        "",
        "created_at",
        "id",
        "",
        "user",
        "Lcom/mogu/tv/model/CommentLists$User;",
        "vod_id",
        "(Ljava/lang/String;Ljava/lang/String;ILcom/mogu/tv/model/CommentLists$User;I)V",
        "getComment",
        "()Ljava/lang/String;",
        "getCreated_at",
        "getId",
        "()I",
        "getUser",
        "()Lcom/mogu/tv/model/CommentLists$User;",
        "getVod_id",
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
.field private final comment:Ljava/lang/String;

.field private final created_at:Ljava/lang/String;

.field private final id:I

.field private final user:Lcom/mogu/tv/model/CommentLists$User;

.field private final vod_id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/mogu/tv/model/CommentLists$User;I)V
    .locals 1

    const-string v0, "comment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created_at"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->comment:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->created_at:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->id:I

    .line 14
    iput-object p4, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->user:Lcom/mogu/tv/model/CommentLists$User;

    .line 15
    iput p5, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->vod_id:I

    return-void
.end method


# virtual methods
.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated_at()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->id:I

    return v0
.end method

.method public final getUser()Lcom/mogu/tv/model/CommentLists$User;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->user:Lcom/mogu/tv/model/CommentLists$User;

    return-object v0
.end method

.method public final getVod_id()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mogu/tv/model/CommentLists$CommentItem;->vod_id:I

    return v0
.end method
