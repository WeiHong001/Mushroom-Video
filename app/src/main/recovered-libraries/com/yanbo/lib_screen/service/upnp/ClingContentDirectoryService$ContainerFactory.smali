.class Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService$ContainerFactory;
.super Ljava/lang/Object;
.source "ClingContentDirectoryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createContainer(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 6

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    const/4 v1, 0x0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    const-string v1, "0"

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "20"

    const-string v4, "30"

    const-string v5, "10"

    if-eqz v2, :cond_0

    .line 54
    new-instance p0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 55
    invoke-virtual {p0, v5}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 56
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 57
    sget-object v2, Lcom/yanbo/lib_screen/entity/VItem;->AUDIO_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/container/Container;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    const-string v2, "Audios"

    .line 58
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 60
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/container/Container;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/container/Container;

    .line 61
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 64
    new-instance p0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 65
    invoke-virtual {p0, v4}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 66
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 67
    sget-object v2, Lcom/yanbo/lib_screen/entity/VItem;->IMAGE_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/container/Container;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    const-string v2, "Images"

    .line 68
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 70
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/container/Container;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/container/Container;

    .line 71
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 74
    new-instance p0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 75
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 76
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 77
    sget-object v1, Lcom/yanbo/lib_screen/entity/VItem;->VIDEO_CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    const-string v1, "Videos"

    .line 78
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 80
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/container/Container;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/container/Container;

    .line 81
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 82
    :cond_0
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    new-instance p0, Lcom/yanbo/lib_screen/database/MediaContentDao;

    invoke-static {}, Lcom/yanbo/lib_screen/VApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanbo/lib_screen/database/MediaContentDao;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/database/MediaContentDao;->getAudioItems()Ljava/util/ArrayList;

    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/item/Item;

    .line 87
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;

    .line 88
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance p0, Lcom/yanbo/lib_screen/database/MediaContentDao;

    invoke-static {}, Lcom/yanbo/lib_screen/VApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanbo/lib_screen/database/MediaContentDao;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/database/MediaContentDao;->getImageItems()Ljava/util/ArrayList;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/item/Item;

    .line 95
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;

    .line 96
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 99
    new-instance p0, Lcom/yanbo/lib_screen/database/MediaContentDao;

    invoke-static {}, Lcom/yanbo/lib_screen/VApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yanbo/lib_screen/database/MediaContentDao;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/database/MediaContentDao;->getVideoItems()Ljava/util/ArrayList;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/item/Item;

    .line 103
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;

    .line 104
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method
