.class public Lcom/luck/picture/lib/entity/LocalMediaFolder;
.super Ljava/lang/Object;
.source "LocalMediaFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkedNum:I

.field private firstImagePath:Ljava/lang/String;

.field private imageNum:I

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private isChecked:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder$1;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->path:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    .line 111
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckedNum()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    return v0
.end method

.method public getFirstImagePath()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageNum()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    return-void
.end method

.method public setCheckedNum(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    return-void
.end method

.method public setFirstImagePath(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    return-void
.end method

.method public setImageNum(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->path:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->imageNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->checkedNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->images:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
