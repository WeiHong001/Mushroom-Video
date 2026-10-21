.class public final Lcom/mogu/tv/model/ShortVideoList$User;
.super Ljava/lang/Object;
.source "ShortVideoList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/ShortVideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShortVideoList$User;",
        "",
        "avatar",
        "",
        "gender",
        "id",
        "name",
        "type",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getGender",
        "getId",
        "getName",
        "getType",
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

.field private final gender:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mogu/tv/model/ShortVideoList$User;->avatar:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/mogu/tv/model/ShortVideoList$User;->gender:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/mogu/tv/model/ShortVideoList$User;->id:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/mogu/tv/model/ShortVideoList$User;->name:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/mogu/tv/model/ShortVideoList$User;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$User;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$User;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList$User;->type:Ljava/lang/String;

    return-object v0
.end method
