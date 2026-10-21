.class Lcom/luck/picture/lib/compress/Luban$1;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/Luban;->launch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/compress/Luban;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/compress/Luban;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x2

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$608(Lcom/luck/picture/lib/compress/Luban;)I

    .line 130
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$800(Lcom/luck/picture/lib/compress/Luban;)I

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/luck/picture/lib/compress/Checker;->isNeedCompress(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/luck/picture/lib/compress/Engine;

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$context:Landroid/content/Context;

    .line 132
    invoke-static {v2}, Lcom/luck/picture/lib/compress/Checker;->checkSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/luck/picture/lib/compress/Luban;->access$900(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/luck/picture/lib/compress/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1000(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1000(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 135
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1000(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v4}, Lcom/luck/picture/lib/compress/Luban;->access$600(Lcom/luck/picture/lib/compress/Luban;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHttp(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    .line 138
    :goto_1
    invoke-virtual {v2, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    if-eqz v4, :cond_2

    const-string v1, ""

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$600(Lcom/luck/picture/lib/compress/Luban;)I

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1000(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 142
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v4}, Lcom/luck/picture/lib/compress/Luban;->access$1000(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 148
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v3}, Lcom/luck/picture/lib/compress/Luban;->access$700(Lcom/luck/picture/lib/compress/Luban;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_4
    return-void
.end method
