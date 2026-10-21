.class public Lcom/kotlin/basiclib/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field public static DEFAULT_ALPHA:F = 0.0f

.field public static DEFAULT_COLOR:I = 0x0

.field public static final MIN_API:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 326
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 327
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 329
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 331
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 332
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 333
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 334
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 340
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 341
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 363
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 365
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 366
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static StatusBarLightMode(Landroid/app/Activity;)I
    .locals 3

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x3

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static darkMode(Landroid/app/Activity;)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget v0, Lcom/kotlin/basiclib/StatusBarUtil;->DEFAULT_COLOR:I

    sget v1, Lcom/kotlin/basiclib/StatusBarUtil;->DEFAULT_ALPHA:F

    invoke-static {p0, v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkMode(Landroid/view/Window;IF)V

    return-void
.end method

.method public static darkMode(Landroid/app/Activity;IF)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->darkMode(Landroid/view/Window;IF)V

    return-void
.end method

.method public static darkMode(Landroid/app/Activity;Z)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/kotlin/basiclib/StatusBarUtil;->isFlyme4Later()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkModeForFlyme4(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/kotlin/basiclib/StatusBarUtil;->isMIUI6Later()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkModeForMIUI6(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 81
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkModeForM(Landroid/view/Window;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static darkMode(Landroid/view/Window;IF)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/kotlin/basiclib/StatusBarUtil;->isFlyme4Later()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkModeForFlyme4(Landroid/view/Window;Z)Z

    .line 99
    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Lcom/kotlin/basiclib/StatusBarUtil;->isMIUI6Later()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {p0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkModeForMIUI6(Landroid/view/Window;Z)Z

    .line 102
    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    goto :goto_0

    .line 103
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 104
    invoke-static {p0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->darkModeForM(Landroid/view/Window;Z)V

    .line 105
    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    goto :goto_0

    .line 106
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    const/high16 v0, 0x4000000

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->setTranslucentView(Landroid/view/ViewGroup;IF)V

    goto :goto_0

    .line 110
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    :goto_0
    return-void
.end method

.method public static darkModeForFlyme4(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 150
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 151
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 162
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 163
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "StatusBar"

    const-string p1, "darkIcon: failed"

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static darkModeForM(Landroid/view/Window;Z)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static darkModeForMIUI6(Landroid/view/Window;Z)Z
    .locals 8

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.MiuiWindowManager$LayoutParams"

    .line 181
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 183
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "setExtraFlags"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 184
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    const/16 v0, 0x18

    int-to-float v0, v0

    .line 287
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 286
    invoke-static {p0, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static immersive(Landroid/app/Activity;)V
    .locals 2

    .line 34
    sget v0, Lcom/kotlin/basiclib/StatusBarUtil;->DEFAULT_COLOR:I

    sget v1, Lcom/kotlin/basiclib/StatusBarUtil;->DEFAULT_ALPHA:F

    invoke-static {p0, v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/app/Activity;IF)V

    return-void
.end method

.method public static immersive(Landroid/app/Activity;I)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    return-void
.end method

.method public static immersive(Landroid/app/Activity;IF)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    return-void
.end method

.method public static immersive(Landroid/view/Window;)V
    .locals 2

    .line 46
    sget v0, Lcom/kotlin/basiclib/StatusBarUtil;->DEFAULT_COLOR:I

    sget v1, Lcom/kotlin/basiclib/StatusBarUtil;->DEFAULT_ALPHA:F

    invoke-static {p0, v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    return-void
.end method

.method public static immersive(Landroid/view/Window;I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    invoke-static {p0, p1, v0}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/view/Window;IF)V

    return-void
.end method

.method public static immersive(Landroid/view/Window;IF)V
    .locals 3

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 57
    invoke-static {p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->mixtureColor(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 59
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    or-int/lit16 p1, p1, 0x100

    .line 62
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->setTranslucentView(Landroid/view/ViewGroup;IF)V

    goto :goto_0

    .line 66
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-le p1, p2, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x400

    or-int/lit16 p1, p1, 0x100

    .line 70
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isFlyme4Later()Z
    .locals 2

    .line 195
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "Flyme_OS_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "Flyme OS [4|5]"

    .line 197
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMIUI6Later()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 203
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 204
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ro.miui.ui.version.name"

    aput-object v5, v4, v0

    .line 205
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "[vV]"

    const-string v4, ""

    .line 206
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static mixtureColor(IF)I
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p0, 0x18

    :goto_0
    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static setHeightAndPadding(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 239
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v1, p0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 240
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public static setMargin(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 248
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 249
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 251
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static setPadding(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v1, p0

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 219
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public static setPaddingSmart(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_0

    .line 228
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p0}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v1, p0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 230
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static setTranslucentView(Landroid/view/ViewGroup;IF)V
    .locals 3

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 259
    invoke-static {p1, p2}, Lcom/kotlin/basiclib/StatusBarUtil;->mixtureColor(IF)I

    move-result p1

    const p2, 0x102002b

    .line 260
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 262
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 264
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 265
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kotlin/basiclib/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p2, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
