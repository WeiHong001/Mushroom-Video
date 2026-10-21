.class public final synthetic Lcom/mogu/tv/api/RxSchedulers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/mogu/tv/api/RxSchedulers$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/api/RxSchedulers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mogu/tv/api/RxSchedulers$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mogu/tv/api/RxSchedulers$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mogu/tv/api/RxSchedulers$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p1}, Lcom/mogu/tv/api/RxSchedulers;->lambda$ioMain$0(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
