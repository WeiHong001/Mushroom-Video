.class Lsite/gemus/openingstartanimation/OpeningStartAnimation$2;
.super Ljava/util/TimerTask;
.source "OpeningStartAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsite/gemus/openingstartanimation/OpeningStartAnimation;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/os/Handler;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$2;->this$0:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    iput-object p2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 126
    iput v1, v0, Landroid/os/Message;->what:I

    .line 127
    iget-object v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
