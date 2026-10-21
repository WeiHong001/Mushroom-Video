.class Lcom/luck/picture/lib/permissions/RxPermissions$2;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/permissions/RxPermissions;->ensureEach([Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;",
        "Lcom/luck/picture/lib/permissions/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/permissions/RxPermissions;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/permissions/RxPermissions;[Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/luck/picture/lib/permissions/RxPermissions$2;->this$0:Lcom/luck/picture/lib/permissions/RxPermissions;

    iput-object p2, p0, Lcom/luck/picture/lib/permissions/RxPermissions$2;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/luck/picture/lib/permissions/Permission;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/RxPermissions$2;->this$0:Lcom/luck/picture/lib/permissions/RxPermissions;

    iget-object v1, p0, Lcom/luck/picture/lib/permissions/RxPermissions$2;->val$permissions:[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/luck/picture/lib/permissions/RxPermissions;->access$000(Lcom/luck/picture/lib/permissions/RxPermissions;Lio/reactivex/Observable;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
