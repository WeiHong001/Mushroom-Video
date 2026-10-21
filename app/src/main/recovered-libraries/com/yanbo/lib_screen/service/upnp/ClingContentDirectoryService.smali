.class public Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService;
.super Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;
.source "ClingContentDirectoryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService$ContainerFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/support/contentdirectory/AbstractContentDirectoryService;-><init>()V

    return-void
.end method


# virtual methods
.method public browse(Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JJ[Lorg/fourthline/cling/support/model/SortCriterion;)Lorg/fourthline/cling/support/model/BrowseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService$ContainerFactory;->createContainer(Ljava/lang/String;)Lorg/fourthline/cling/support/model/container/Container;

    move-result-object p1

    .line 30
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {p2}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/fourthline/cling/support/model/container/Container;

    .line 32
    invoke-virtual {p2, p4}, Lorg/fourthline/cling/support/model/DIDLContent;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/DIDLContent;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/fourthline/cling/support/model/item/Item;

    .line 35
    invoke-virtual {p2, p4}, Lorg/fourthline/cling/support/model/DIDLContent;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/DIDLContent;

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 40
    :try_start_0
    new-instance p3, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {p3, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generate(Lorg/fourthline/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    new-instance p2, Lorg/fourthline/cling/support/model/BrowseResult;

    int-to-long v4, p1

    move-object v0, p2

    move-wide v2, v4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;

    sget-object p3, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method
