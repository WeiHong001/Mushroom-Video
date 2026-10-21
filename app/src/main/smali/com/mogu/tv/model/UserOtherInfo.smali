.class public final Lcom/mogu/tv/model/UserOtherInfo;
.super Ljava/lang/Object;
.source "UserOtherInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015R\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/mogu/tv/model/UserOtherInfo;",
        "",
        "avatar",
        "",
        "birthday",
        "follower",
        "",
        "gender",
        "height",
        "id",
        "introduction",
        "is_floowed",
        "",
        "name",
        "type",
        "weight",
        "(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZLjava/lang/String;II)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getBirthday",
        "getFollower",
        "()I",
        "getGender",
        "getHeight",
        "getId",
        "getIntroduction",
        "()Z",
        "set_floowed",
        "(Z)V",
        "getName",
        "getType",
        "getWeight",
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
.field private final avatar:Ljava/lang/String;

.field private final birthday:Ljava/lang/String;

.field private final follower:I

.field private final gender:I

.field private final height:I

.field private final id:I

.field private final introduction:Ljava/lang/String;

.field private is_floowed:Z

.field private final name:Ljava/lang/String;

.field private final type:I

.field private final weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZLjava/lang/String;II)V
    .locals 1

    const-string v0, "avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthday"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introduction"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/UserOtherInfo;->avatar:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/mogu/tv/model/UserOtherInfo;->birthday:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/mogu/tv/model/UserOtherInfo;->follower:I

    .line 10
    iput p4, p0, Lcom/mogu/tv/model/UserOtherInfo;->gender:I

    .line 11
    iput p5, p0, Lcom/mogu/tv/model/UserOtherInfo;->height:I

    .line 12
    iput p6, p0, Lcom/mogu/tv/model/UserOtherInfo;->id:I

    .line 13
    iput-object p7, p0, Lcom/mogu/tv/model/UserOtherInfo;->introduction:Ljava/lang/String;

    .line 14
    iput-boolean p8, p0, Lcom/mogu/tv/model/UserOtherInfo;->is_floowed:Z

    .line 15
    iput-object p9, p0, Lcom/mogu/tv/model/UserOtherInfo;->name:Ljava/lang/String;

    .line 16
    iput p10, p0, Lcom/mogu/tv/model/UserOtherInfo;->type:I

    .line 17
    iput p11, p0, Lcom/mogu/tv/model/UserOtherInfo;->weight:I

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final getFollower()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->follower:I

    return v0
.end method

.method public final getGender()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->gender:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->height:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->id:I

    return v0
.end method

.method public final getIntroduction()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->type:I

    return v0
.end method

.method public final getWeight()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->weight:I

    return v0
.end method

.method public final is_floowed()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/mogu/tv/model/UserOtherInfo;->is_floowed:Z

    return v0
.end method

.method public final set_floowed(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/mogu/tv/model/UserOtherInfo;->is_floowed:Z

    return-void
.end method
