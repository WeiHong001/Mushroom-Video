.class Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/customview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDataSource"
.end annotation


# instance fields
.field mData:[Ljava/lang/String;

.field final synthetic this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;


# direct methods
.method public constructor <init>(Lcom/kotlin/basiclib/widget/customview/WheelView;[Ljava/lang/String;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;->this$0:Lcom/kotlin/basiclib/widget/customview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;->mData:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;->mData:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
