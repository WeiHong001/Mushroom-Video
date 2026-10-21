.class public Lcom/yanbo/lib_screen/VApplication;
.super Ljava/lang/Object;
.source "VApplication.java"


# static fields
.field protected static mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 12
    sget-object v0, Lcom/yanbo/lib_screen/VApplication;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/yanbo/lib_screen/VApplication;->mcontext:Landroid/content/Context;

    return-void
.end method
