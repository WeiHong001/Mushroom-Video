.class public final Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
.super Ljava/lang/Object;
.source "OpeningStartAnimation.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/DelegateRecycleView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsite/gemus/openingstartanimation/OpeningStartAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;-><init>(Landroid/content/Context;Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;)V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    .line 165
    invoke-static {v0, p0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$202(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Lsite/gemus/openingstartanimation/DelegateRecycleView;)Lsite/gemus/openingstartanimation/DelegateRecycleView;

    return-void
.end method


# virtual methods
.method public create()Lsite/gemus/openingstartanimation/OpeningStartAnimation;
    .locals 1

    .line 273
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    return-object v0
.end method

.method public finishAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    return-void
.end method

.method public setAnimationFinishTime(J)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 184
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1, p2}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$402(Lsite/gemus/openingstartanimation/OpeningStartAnimation;J)J

    return-object p0
.end method

.method public setAnimationInterval(J)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 174
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1, p2}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$302(Lsite/gemus/openingstartanimation/OpeningStartAnimation;J)J

    return-object p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 194
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$502(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 214
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$702(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAppStatement(Ljava/lang/String;)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 234
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$902(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setColorOfAppIcon(I)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 204
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$602(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I

    return-object p0
.end method

.method public setColorOfAppName(I)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 224
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$802(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I

    return-object p0
.end method

.method public setColorOfAppStatement(I)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 244
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$1002(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I

    return-object p0
.end method

.method public setColorOfBackground(I)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 254
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$1102(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I

    return-object p0
.end method

.method public setDrawStategy(Lsite/gemus/openingstartanimation/DrawStrategy;)Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    .locals 1

    .line 264
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;->mOpeningStartAnimation:Lsite/gemus/openingstartanimation/OpeningStartAnimation;

    invoke-static {v0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->access$1202(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Lsite/gemus/openingstartanimation/DrawStrategy;)Lsite/gemus/openingstartanimation/DrawStrategy;

    return-object p0
.end method
