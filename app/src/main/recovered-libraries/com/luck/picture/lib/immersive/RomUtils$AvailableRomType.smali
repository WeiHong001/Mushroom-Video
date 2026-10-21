.class public Lcom/luck/picture/lib/immersive/RomUtils$AvailableRomType;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/immersive/RomUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvailableRomType"
.end annotation


# static fields
.field public static final ANDROID_NATIVE:I = 0x3

.field public static final FLYME:I = 0x2

.field public static final MIUI:I = 0x1

.field public static final NA:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/immersive/RomUtils;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/immersive/RomUtils;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/luck/picture/lib/immersive/RomUtils$AvailableRomType;->this$0:Lcom/luck/picture/lib/immersive/RomUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
