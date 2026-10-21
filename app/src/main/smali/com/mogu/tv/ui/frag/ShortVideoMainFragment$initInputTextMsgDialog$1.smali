.class public final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1;
.super Ljava/lang/Object;
.source "ShortVideoMainFragment.kt"

# interfaces
.implements Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->initInputTextMsgDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1",
        "Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;",
        "dismiss",
        "",
        "onTextSend",
        "msg",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public onTextSend(Ljava/lang/String;)V
    .locals 5

    .line 199
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {v1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getMCommentId$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v2, 0x3

    new-instance v3, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1$onTextSend$1;

    iget-object v4, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-direct {v3, v4}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$initInputTextMsgDialog$1$onTextSend$1;-><init>(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->saveComment(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function3;)V

    return-void
.end method
