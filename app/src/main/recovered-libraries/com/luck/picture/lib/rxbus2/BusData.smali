.class public Lcom/luck/picture/lib/rxbus2/BusData;
.super Ljava/lang/Object;
.source "BusData.java"


# instance fields
.field id:Ljava/lang/String;

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/BusData;->id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/luck/picture/lib/rxbus2/BusData;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/BusData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/BusData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/BusData;->id:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/BusData;->status:Ljava/lang/String;

    return-void
.end method
