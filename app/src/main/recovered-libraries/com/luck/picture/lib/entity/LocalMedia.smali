.class public Lcom/luck/picture/lib/entity/LocalMedia;
.super Ljava/lang/Object;
.source "LocalMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private compressPath:Ljava/lang/String;

.field private compressed:Z

.field private cutPath:Ljava/lang/String;

.field private duration:J

.field private height:I

.field private isChecked:Z

.field private isCut:Z

.field private mimeType:I

.field private num:I

.field private path:Ljava/lang/String;

.field private pictureType:Ljava/lang/String;

.field public position:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 207
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMedia$1;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    .line 38
    iput p4, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    .line 39
    iput-object p5, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    .line 45
    iput p4, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    .line 46
    iput-object p5, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    .line 47
    iput p6, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    .line 48
    iput p7, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZIII)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    .line 55
    iput-boolean p4, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    .line 56
    iput p5, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    .line 57
    iput p6, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    .line 58
    iput p7, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCompressPath()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCutPath()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    return v0
.end method

.method public getMimeType()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    return v0
.end method

.method public getNum()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/jpeg"

    .line 63
    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    return v0
.end method

.method public isCut()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    return-void
.end method

.method public setCompressPath(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    return-void
.end method

.method public setCut(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    return-void
.end method

.method public setCutPath(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    return-void
.end method

.method public setMimeType(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    return-void
.end method

.method public setNum(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    return-void
.end method

.method public setPictureType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 176
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->pictureType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 187
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
