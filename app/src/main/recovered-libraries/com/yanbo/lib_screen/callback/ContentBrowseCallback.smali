.class public abstract Lcom/yanbo/lib_screen/callback/ContentBrowseCallback;
.super Lorg/fourthline/cling/support/contentdirectory/callback/Browse;
.source "ContentBrowseCallback.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 9

    .line 14
    sget-object v3, Lorg/fourthline/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

    const/4 v0, 0x1

    new-array v8, v0, [Lorg/fourthline/cling/support/model/SortCriterion;

    new-instance v1, Lorg/fourthline/cling/support/model/SortCriterion;

    const-string v2, "dc:title"

    invoke-direct {v1, v0, v2}, Lorg/fourthline/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v4, "*"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lorg/fourthline/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/fourthline/cling/support/model/SortCriterion;)V

    return-void
.end method


# virtual methods
.method public updateStatus(Lorg/fourthline/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0

    return-void
.end method
