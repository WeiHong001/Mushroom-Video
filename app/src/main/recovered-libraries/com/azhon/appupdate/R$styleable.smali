.class public final Lcom/azhon/appupdate/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azhon/appupdate/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NumberProgressBar:[I

.field public static final NumberProgressBar_progress_reached_color:I = 0x0

.field public static final NumberProgressBar_progress_text_color:I = 0x1

.field public static final NumberProgressBar_progress_text_size:I = 0x2

.field public static final NumberProgressBar_progress_unreached_color:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/azhon/appupdate/R$styleable;->NumberProgressBar:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0403c8
        0x7f0403c9
        0x7f0403ca
        0x7f0403cb
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
