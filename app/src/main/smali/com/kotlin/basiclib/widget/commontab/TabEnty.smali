.class public final Lcom/kotlin/basiclib/widget/commontab/TabEnty;
.super Ljava/lang/Object;
.source "TabEnty.kt"

# interfaces
.implements Lcom/kotlin/basiclib/widget/commontab/listener/CustomTabEntity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u0003H\u0016J\u0008\u0010\u001a\u001a\u00020\u0005H\u0016J\r\u0010\u001b\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u001cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kotlin/basiclib/widget/commontab/TabEnty;",
        "Lcom/kotlin/basiclib/widget/commontab/listener/CustomTabEntity;",
        "title",
        "",
        "selected",
        "",
        "unSelect",
        "(Ljava/lang/String;II)V",
        "getSelected",
        "()I",
        "setSelected",
        "(I)V",
        "singleImg",
        "",
        "getSingleImg",
        "()Z",
        "setSingleImg",
        "(Z)V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getUnSelect",
        "setUnSelect",
        "getTabSelectedIcon",
        "getTabTitle",
        "getTabUnselectedIcon",
        "singleIcon",
        "()Ljava/lang/Boolean;",
        "basiclib_release"
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
.field private selected:I

.field private singleImg:Z

.field private title:Ljava/lang/String;

.field private unSelect:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->title:Ljava/lang/String;

    iput p2, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->selected:I

    iput p3, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->unSelect:I

    return-void
.end method


# virtual methods
.method public final getSelected()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->selected:I

    return v0
.end method

.method public final getSingleImg()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->singleImg:Z

    return v0
.end method

.method public getTabSelectedIcon()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->selected:I

    return v0
.end method

.method public getTabTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTabUnselectedIcon()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->unSelect:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnSelect()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->unSelect:I

    return v0
.end method

.method public final setSelected(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->selected:I

    return-void
.end method

.method public final setSingleImg(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->singleImg:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUnSelect(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->unSelect:I

    return-void
.end method

.method public singleIcon()Ljava/lang/Boolean;
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/commontab/TabEnty;->singleImg:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
