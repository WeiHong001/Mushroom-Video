.class Ltop/zibin/luban/Luban$Builder$3;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ltop/zibin/luban/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/Luban$Builder;->load(Landroid/net/Uri;)Ltop/zibin/luban/Luban$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/zibin/luban/Luban$Builder;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ltop/zibin/luban/Luban$Builder;Landroid/net/Uri;)V
    .locals 0

    .line 281
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder$3;->this$0:Ltop/zibin/luban/Luban$Builder;

    iput-object p2, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->this$0:Ltop/zibin/luban/Luban$Builder;

    invoke-static {v0}, Ltop/zibin/luban/Luban$Builder;->access$900(Ltop/zibin/luban/Luban$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
