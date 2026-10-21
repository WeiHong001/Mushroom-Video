.class public final Lcom/mogu/tv/model/NvyouList$Item;
.super Ljava/lang/Object;
.source "NvyouList.kt"

# interfaces
.implements Lme/yokeyword/indexablerv/IndexableEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/NvyouList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/mogu/tv/model/NvyouList$Item;",
        "Lme/yokeyword/indexablerv/IndexableEntity;",
        "()V",
        "Pinyin",
        "",
        "getPinyin",
        "()Ljava/lang/String;",
        "setPinyin",
        "(Ljava/lang/String;)V",
        "User",
        "Lcom/mogu/tv/model/NvyouList$User;",
        "getUser",
        "()Lcom/mogu/tv/model/NvyouList$User;",
        "setUser",
        "(Lcom/mogu/tv/model/NvyouList$User;)V",
        "getFieldIndexBy",
        "setFieldIndexBy",
        "",
        "indexField",
        "setFieldPinyinIndexBy",
        "pinyin",
        "app_mogushareRelease"
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
.field private Pinyin:Ljava/lang/String;

.field private User:Lcom/mogu/tv/model/NvyouList$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/mogu/tv/model/NvyouList$Item;->Pinyin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFieldIndexBy()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/NvyouList$Item;->Pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinyin()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/NvyouList$Item;->Pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/mogu/tv/model/NvyouList$User;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/NvyouList$Item;->User:Lcom/mogu/tv/model/NvyouList$User;

    return-object v0
.end method

.method public setFieldIndexBy(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/mogu/tv/model/NvyouList$Item;->Pinyin:Ljava/lang/String;

    return-void
.end method

.method public setFieldPinyinIndexBy(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setPinyin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/mogu/tv/model/NvyouList$Item;->Pinyin:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lcom/mogu/tv/model/NvyouList$User;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mogu/tv/model/NvyouList$Item;->User:Lcom/mogu/tv/model/NvyouList$User;

    return-void
.end method
