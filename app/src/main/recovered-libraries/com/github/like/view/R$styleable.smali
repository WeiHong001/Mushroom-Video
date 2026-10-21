.class public final Lcom/github/like/view/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/like/view/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LikeButton:[I

.field public static final LikeButton_anim_scale_factor:I = 0x0

.field public static final LikeButton_circle_end_color:I = 0x1

.field public static final LikeButton_circle_start_color:I = 0x2

.field public static final LikeButton_dots_primary_color:I = 0x3

.field public static final LikeButton_dots_secondary_color:I = 0x4

.field public static final LikeButton_icon_size:I = 0x5

.field public static final LikeButton_icon_type:I = 0x6

.field public static final LikeButton_is_enabled:I = 0x7

.field public static final LikeButton_like_drawable:I = 0x8

.field public static final LikeButton_liked:I = 0x9

.field public static final LikeButton_unlike_drawable:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/like/view/R$styleable;->LikeButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f040034
        0x7f0400d2
        0x7f0400d3
        0x7f04016d
        0x7f04016e
        0x7f04022b
        0x7f04022c
        0x7f040252
        0x7f0402cd
        0x7f0402ce
        0x7f040576
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
