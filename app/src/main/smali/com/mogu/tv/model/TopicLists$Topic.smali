.class public final Lcom/mogu/tv/model/TopicLists$Topic;
.super Ljava/lang/Object;
.source "TopicLists.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/TopicLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Topic"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008#\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0008\u0012\u0006\u0010\u0014\u001a\u00020\u0008\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0018R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0018R\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0018R\u0011\u0010\u0010\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001dR\u0011\u0010\u0013\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001dR\u0011\u0010\u0014\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001dR\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lcom/mogu/tv/model/TopicLists$Topic;",
        "",
        "topic_blurb",
        "",
        "topic_color",
        "topic_content",
        "topic_des",
        "topic_hits",
        "",
        "topic_id",
        "topic_key",
        "topic_letter",
        "topic_name",
        "topic_pic",
        "topic_remarks",
        "topic_score",
        "topic_score_all",
        "topic_score_num",
        "topic_rel_vod",
        "topic_status",
        "topic_time",
        "topic_title",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V",
        "getTopic_blurb",
        "()Ljava/lang/String;",
        "getTopic_color",
        "getTopic_content",
        "getTopic_des",
        "getTopic_hits",
        "()I",
        "getTopic_id",
        "getTopic_key",
        "getTopic_letter",
        "getTopic_name",
        "getTopic_pic",
        "getTopic_rel_vod",
        "getTopic_remarks",
        "getTopic_score",
        "getTopic_score_all",
        "getTopic_score_num",
        "getTopic_status",
        "getTopic_time",
        "getTopic_title",
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
.field private final topic_blurb:Ljava/lang/String;

.field private final topic_color:Ljava/lang/String;

.field private final topic_content:Ljava/lang/String;

.field private final topic_des:Ljava/lang/String;

.field private final topic_hits:I

.field private final topic_id:I

.field private final topic_key:Ljava/lang/String;

.field private final topic_letter:Ljava/lang/String;

.field private final topic_name:Ljava/lang/String;

.field private final topic_pic:Ljava/lang/String;

.field private final topic_rel_vod:Ljava/lang/String;

.field private final topic_remarks:Ljava/lang/String;

.field private final topic_score:Ljava/lang/String;

.field private final topic_score_all:I

.field private final topic_score_num:I

.field private final topic_status:I

.field private final topic_time:I

.field private final topic_title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p15

    move-object/from16 v12, p18

    const-string/jumbo v13, "topic_blurb"

    invoke-static {p1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_color"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_content"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_des"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_key"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_letter"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_name"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_pic"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_remarks"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_score"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_rel_vod"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "topic_title"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_blurb:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_color:Ljava/lang/String;

    .line 14
    iput-object v3, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_content:Ljava/lang/String;

    .line 15
    iput-object v4, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_des:Ljava/lang/String;

    move/from16 v1, p5

    .line 16
    iput v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_hits:I

    move/from16 v1, p6

    .line 17
    iput v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_id:I

    .line 18
    iput-object v5, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_key:Ljava/lang/String;

    .line 19
    iput-object v6, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_letter:Ljava/lang/String;

    .line 20
    iput-object v7, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_name:Ljava/lang/String;

    .line 21
    iput-object v8, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_pic:Ljava/lang/String;

    .line 22
    iput-object v9, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_remarks:Ljava/lang/String;

    .line 23
    iput-object v10, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_score:Ljava/lang/String;

    move/from16 v1, p13

    .line 24
    iput v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_score_all:I

    move/from16 v1, p14

    .line 25
    iput v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_score_num:I

    .line 26
    iput-object v11, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_rel_vod:Ljava/lang/String;

    move/from16 v1, p16

    .line 27
    iput v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_status:I

    move/from16 v1, p17

    .line 28
    iput v1, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_time:I

    .line 29
    iput-object v12, v0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTopic_blurb()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_blurb:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_color()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_color:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_content()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_content:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_des()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_des:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_hits()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_hits:I

    return v0
.end method

.method public final getTopic_id()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_id:I

    return v0
.end method

.method public final getTopic_key()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_key:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_letter()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_letter:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_name()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_pic()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_pic:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_rel_vod()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_rel_vod:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_remarks()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_remarks:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_score()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_score:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic_score_all()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_score_all:I

    return v0
.end method

.method public final getTopic_score_num()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_score_num:I

    return v0
.end method

.method public final getTopic_status()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_status:I

    return v0
.end method

.method public final getTopic_time()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_time:I

    return v0
.end method

.method public final getTopic_title()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/model/TopicLists$Topic;->topic_title:Ljava/lang/String;

    return-object v0
.end method
