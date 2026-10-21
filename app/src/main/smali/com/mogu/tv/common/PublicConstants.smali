.class public Lcom/mogu/tv/common/PublicConstants;
.super Ljava/lang/Object;
.source "PublicConstants.java"


# static fields
.field public static final CONTENT_TOPIC_COLOR:Ljava/lang/String; = "#517EB0"

.field public static NeedUpdate:Z = false

.field public static final SHAREKEY:Ljava/lang/String; = "mogushare"

.field public static openPlan:Ljava/lang/Boolean;

.field public static share_icon_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mogu/tv/common/PublicConstants;->openPlan:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
