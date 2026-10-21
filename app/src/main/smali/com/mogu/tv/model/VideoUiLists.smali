.class public final Lcom/mogu/tv/model/VideoUiLists;
.super Ljava/lang/Object;
.source "VideoUiLists.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R*\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0006\"\u0004\u0008\u001f\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "Lcom/mogu/tv/model/VideoUiLists;",
        "",
        "()V",
        "labelsId",
        "",
        "getLabelsId",
        "()Ljava/lang/String;",
        "setLabelsId",
        "(Ljava/lang/String;)V",
        "labelsName",
        "getLabelsName",
        "setLabelsName",
        "list",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/VideoListModel$Video;",
        "Lkotlin/collections/ArrayList;",
        "getList",
        "()Ljava/util/ArrayList;",
        "setList",
        "(Ljava/util/ArrayList;)V",
        "page",
        "",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "typeId",
        "getTypeId",
        "setTypeId",
        "typeName",
        "getTypeName",
        "setTypeName",
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
.field private labelsId:Ljava/lang/String;

.field private labelsName:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private typeId:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->typeId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->labelsId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->labelsName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->typeName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/mogu/tv/model/VideoUiLists;->page:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getLabelsId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->labelsId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabelsName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->labelsName:Ljava/lang/String;

    return-object v0
.end method

.method public final getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/mogu/tv/model/VideoUiLists;->page:I

    return v0
.end method

.method public final getTypeId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/VideoUiLists;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public final setLabelsId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/VideoUiLists;->labelsId:Ljava/lang/String;

    return-void
.end method

.method public final setLabelsName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/mogu/tv/model/VideoUiLists;->labelsName:Ljava/lang/String;

    return-void
.end method

.method public final setList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/mogu/tv/model/VideoUiLists;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/mogu/tv/model/VideoUiLists;->page:I

    return-void
.end method

.method public final setTypeId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/VideoUiLists;->typeId:Ljava/lang/String;

    return-void
.end method

.method public final setTypeName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/mogu/tv/model/VideoUiLists;->typeName:Ljava/lang/String;

    return-void
.end method
