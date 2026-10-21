.class public final synthetic Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mogu/tv/MainActivity;

.field public final synthetic f$1:Lcom/mogu/tv/model/UpdateModol;


# direct methods
.method public synthetic constructor <init>(Lcom/mogu/tv/MainActivity;Lcom/mogu/tv/model/UpdateModol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;->f$0:Lcom/mogu/tv/MainActivity;

    iput-object p2, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;->f$1:Lcom/mogu/tv/model/UpdateModol;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;->f$0:Lcom/mogu/tv/MainActivity;

    iget-object v1, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;->f$1:Lcom/mogu/tv/model/UpdateModol;

    invoke-static {v0, v1}, Lcom/mogu/tv/MainActivity$checkUpdate$1;->$r8$lambda$LWJg40VZe9USh_zuh0BbC1VU0Os(Lcom/mogu/tv/MainActivity;Lcom/mogu/tv/model/UpdateModol;)V

    return-void
.end method
