.class Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "OverFlyingLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isReverseLayout:Z

.field offset:F

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 880
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->position:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->offset:F

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->isReverseLayout:Z

    return-void
.end method

.method public constructor <init>(Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;)V
    .locals 1

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iget v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->position:I

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->position:I

    .line 864
    iget v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->offset:F

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->offset:F

    .line 865
    iget-boolean p1, p1, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->isReverseLayout:Z

    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->isReverseLayout:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 875
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->offset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 877
    iget-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->isReverseLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
