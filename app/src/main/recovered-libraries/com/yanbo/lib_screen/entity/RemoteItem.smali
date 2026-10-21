.class public Lcom/yanbo/lib_screen/entity/RemoteItem;
.super Ljava/lang/Object;
.source "RemoteItem.java"


# instance fields
.field private creator:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private size:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/yanbo/lib_screen/entity/RemoteItem;->setTitle(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/yanbo/lib_screen/entity/RemoteItem;->setId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/yanbo/lib_screen/entity/RemoteItem;->setCreator(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p4}, Lcom/yanbo/lib_screen/entity/RemoteItem;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->creator:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->duration:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->size:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yanbo/lib_screen/entity/RemoteItem;->url:Ljava/lang/String;

    return-void
.end method
