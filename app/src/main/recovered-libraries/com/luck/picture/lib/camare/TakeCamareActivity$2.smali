.class Lcom/luck/picture/lib/camare/TakeCamareActivity$2;
.super Ljava/lang/Object;
.source "TakeCamareActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/TakeCamareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/TakeCamareActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$2;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$2;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->finish()V

    return-void
.end method
