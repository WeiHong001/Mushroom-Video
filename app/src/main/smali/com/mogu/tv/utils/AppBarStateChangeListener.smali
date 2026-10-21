.class public abstract Lcom/mogu/tv/utils/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/utils/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->IDLE:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/mogu/tv/utils/AppBarStateChangeListener;->mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 23
    iget-object v0, p0, Lcom/mogu/tv/utils/AppBarStateChangeListener;->mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    sget-object v1, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->EXPANDED:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_0

    .line 24
    sget-object v0, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->EXPANDED:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mogu/tv/utils/AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/mogu/tv/utils/AppBarStateChangeListener$State;I)V

    .line 25
    sget-object p1, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->EXPANDED:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/mogu/tv/utils/AppBarStateChangeListener;->mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mogu/tv/utils/AppBarStateChangeListener;->mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    sget-object v1, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_1

    .line 27
    sget-object v0, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mogu/tv/utils/AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/mogu/tv/utils/AppBarStateChangeListener$State;I)V

    .line 28
    sget-object p1, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/mogu/tv/utils/AppBarStateChangeListener;->mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->IDLE:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mogu/tv/utils/AppBarStateChangeListener;->onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/mogu/tv/utils/AppBarStateChangeListener$State;I)V

    .line 31
    sget-object p1, Lcom/mogu/tv/utils/AppBarStateChangeListener$State;->IDLE:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/mogu/tv/utils/AppBarStateChangeListener;->mCurrentState:Lcom/mogu/tv/utils/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method

.method public abstract onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/mogu/tv/utils/AppBarStateChangeListener$State;I)V
.end method
