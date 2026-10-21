.class Lcom/luck/picture/lib/rxbus2/RxBus$Message;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/rxbus2/RxBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Message"
.end annotation


# instance fields
.field private code:I

.field private object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/luck/picture/lib/rxbus2/RxBus;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/rxbus2/RxBus;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->this$0:Lcom/luck/picture/lib/rxbus2/RxBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/luck/picture/lib/rxbus2/RxBus;ILjava/lang/Object;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->this$0:Lcom/luck/picture/lib/rxbus2/RxBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput p2, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->code:I

    .line 348
    iput-object p3, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->object:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/luck/picture/lib/rxbus2/RxBus;ILjava/lang/Object;Lcom/luck/picture/lib/rxbus2/RxBus$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/rxbus2/RxBus$Message;-><init>(Lcom/luck/picture/lib/rxbus2/RxBus;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/rxbus2/RxBus$Message;)Ljava/lang/Object;
    .locals 0

    .line 339
    invoke-direct {p0}, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->getObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/rxbus2/RxBus$Message;)I
    .locals 0

    .line 339
    invoke-direct {p0}, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->getCode()I

    move-result p0

    return p0
.end method

.method private getCode()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->code:I

    return v0
.end method

.method private getObject()Ljava/lang/Object;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public setCode(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->code:I

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/RxBus$Message;->object:Ljava/lang/Object;

    return-void
.end method
