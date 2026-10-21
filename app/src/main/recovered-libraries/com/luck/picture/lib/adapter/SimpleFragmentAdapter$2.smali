.class Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$2;
.super Ljava/lang/Object;
.source "SimpleFragmentAdapter.java"

# interfaces
.implements Lcom/luck/picture/lib/photoview/OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->access$100(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$2;->this$0:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->access$100(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    move-result-object p1

    invoke-interface {p1}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;->onActivityBackPressed()V

    :cond_0
    return-void
.end method
