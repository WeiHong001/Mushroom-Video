.class Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "OverFlyingLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;
    .locals 1

    .line 884
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 881
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;
    .locals 0

    .line 889
    new-array p1, p1, [Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 881
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState$1;->newArray(I)[Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method
