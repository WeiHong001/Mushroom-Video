.class Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;
.super Ljava/lang/Object;
.source "OpeningStartAnimation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/app/Activity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;->this$0:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    iput-object p2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 115
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;->this$0:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$000(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
