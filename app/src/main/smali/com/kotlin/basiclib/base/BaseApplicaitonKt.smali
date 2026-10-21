.class public final Lcom/kotlin/basiclib/base/BaseApplicaitonKt;
.super Ljava/lang/Object;
.source "BaseApplicaiton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\"+\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0003\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "<set-?>",
        "Lcom/kotlin/basiclib/base/BaseApplicaiton;",
        "application",
        "getApplication",
        "()Lcom/kotlin/basiclib/base/BaseApplicaiton;",
        "setApplication",
        "(Lcom/kotlin/basiclib/base/BaseApplicaiton;)V",
        "application$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "basiclib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final application$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 11
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-class v3, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;

    const-string v4, "application"

    const-string v5, "getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;"

    invoke-direct {v2, v3, v4, v5, v0}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v2, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    sput-object v0, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->application$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;
    .locals 3

    .line 11
    sget-object v0, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->application$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kotlin/basiclib/base/BaseApplicaiton;

    return-object v0
.end method

.method public static final setApplication(Lcom/kotlin/basiclib/base/BaseApplicaiton;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->application$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p0}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
