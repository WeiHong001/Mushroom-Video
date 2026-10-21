.class Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "BannerLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;
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
            "Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;",
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

    .line 949
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->position:I

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->offset:F

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->isReverseLayout:Z

    return-void
.end method

.method public constructor <init>(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;)V
    .locals 1

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iget v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->position:I

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->position:I

    .line 933
    iget v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->offset:F

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->offset:F

    .line 934
    iget-boolean p1, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->isReverseLayout:Z

    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->isReverseLayout:Z

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

    .line 944
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->offset:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 946
    iget-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->isReverseLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
