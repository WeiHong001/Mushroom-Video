.class Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;
.super Ljava/lang/Object;
.source "SimpleFragmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;->this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 154
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;->val$path:Ljava/lang/String;

    const-string/jumbo v2, "video_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;->this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-static {v0}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->access$200(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/luck/picture/lib/PictureVideoPlayActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;->this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-static {v0}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->access$200(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
