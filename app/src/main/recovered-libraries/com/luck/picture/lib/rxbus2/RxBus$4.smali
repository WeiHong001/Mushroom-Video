.class synthetic Lcom/luck/picture/lib/rxbus2/RxBus$4;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/rxbus2/RxBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$luck$picture$lib$rxbus2$ThreadMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 223
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/ThreadMode;->values()[Lcom/luck/picture/lib/rxbus2/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/luck/picture/lib/rxbus2/RxBus$4;->$SwitchMap$com$luck$picture$lib$rxbus2$ThreadMode:[I

    :try_start_0
    sget-object v1, Lcom/luck/picture/lib/rxbus2/ThreadMode;->MAIN:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-virtual {v1}, Lcom/luck/picture/lib/rxbus2/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/luck/picture/lib/rxbus2/RxBus$4;->$SwitchMap$com$luck$picture$lib$rxbus2$ThreadMode:[I

    sget-object v1, Lcom/luck/picture/lib/rxbus2/ThreadMode;->NEW_THREAD:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-virtual {v1}, Lcom/luck/picture/lib/rxbus2/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/luck/picture/lib/rxbus2/RxBus$4;->$SwitchMap$com$luck$picture$lib$rxbus2$ThreadMode:[I

    sget-object v1, Lcom/luck/picture/lib/rxbus2/ThreadMode;->CURRENT_THREAD:Lcom/luck/picture/lib/rxbus2/ThreadMode;

    invoke-virtual {v1}, Lcom/luck/picture/lib/rxbus2/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
