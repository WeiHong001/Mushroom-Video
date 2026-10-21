.class Ltop/zibin/luban/Luban$Builder$2;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ltop/zibin/luban/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/Luban$Builder;->load(Ljava/lang/String;)Ltop/zibin/luban/Luban$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/zibin/luban/Luban$Builder;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltop/zibin/luban/Luban$Builder;Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder$2;->this$0:Ltop/zibin/luban/Luban$Builder;

    iput-object p2, p0, Ltop/zibin/luban/Luban$Builder$2;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$2;->val$string:Ljava/lang/String;

    return-object v0
.end method

.method public open()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder$2;->val$string:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
