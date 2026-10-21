.class public final Lcom/mogu/tv/model/MoguConfig;
.super Ljava/lang/Object;
.source "AllNetConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/mogu/tv/model/MoguConfig;",
        "",
        "Comment",
        "",
        "Name",
        "Value",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getComment",
        "()Ljava/lang/String;",
        "getName",
        "getValue",
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
.field private final Comment:Ljava/lang/String;

.field private final Name:Ljava/lang/String;

.field private final Value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Comment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/MoguConfig;->Comment:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/mogu/tv/model/MoguConfig;->Name:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/mogu/tv/model/MoguConfig;->Value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/MoguConfig;->Comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/MoguConfig;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/MoguConfig;->Value:Ljava/lang/String;

    return-object v0
.end method
