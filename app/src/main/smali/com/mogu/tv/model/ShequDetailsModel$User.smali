.class public final Lcom/mogu/tv/model/ShequDetailsModel$User;
.super Ljava/lang/Object;
.source "ShequDetailsModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/ShequDetailsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShequDetailsModel$User;",
        "",
        "avatar",
        "",
        "gender",
        "",
        "id",
        "name",
        "type",
        "(Ljava/lang/String;IILjava/lang/String;I)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getGender",
        "()I",
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

.field private final gender:I

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 1

    const-string v0, "avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->avatar:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->gender:I

    .line 20
    iput p3, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->id:I

    .line 21
    iput-object p4, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->name:Ljava/lang/String;

    .line 22
    iput p5, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->type:I

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->gender:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mogu/tv/model/ShequDetailsModel$User;->type:I

    return v0
.end method
