.class public Lcom/luck/picture/lib/camare/TakeCamareActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TakeCamareActivity.java"


# static fields
.field public static final REQUEST_VEDIO_CUSTOM:I = 0x69

.field public static final TOSELECT:Ljava/lang/String; = "toselect"


# instance fields
.field private final GET_PERMISSION_REQUEST:I

.field cameraPath:Ljava/lang/String;

.field private granted:Z

.field private jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

.field requeCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x64

    .line 47
    iput v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->GET_PERMISSION_REQUEST:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->granted:Z

    return-void
.end method

.method private getPermissions()V
    .locals 4

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 163
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    if-nez v1, :cond_0

    .line 164
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->granted:Z

    goto :goto_0

    .line 170
    :cond_0
    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->granted:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static toTakeCamareActivity(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    const-class v1, Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "cameraPath"

    .line 37
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "requeCode"

    .line 38
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcom/luck/picture/lib/R$layout;->module_takecamare:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->setContentView(I)V

    .line 57
    sget p1, Lcom/luck/picture/lib/R$id;->jcameraview:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/camare/JCameraView;

    iput-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    const/16 v0, 0x4e20

    .line 58
    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setDuration(I)V

    .line 60
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cameraPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->cameraPath:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "requeCode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->requeCode:I

    .line 62
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->cameraPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setSaveVideoPath(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    sget v0, Lcom/luck/picture/lib/camare/JCameraView;->MEDIA_QUALITY_HIGH:I

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setMediaQuality(I)V

    .line 64
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    const/16 v0, 0x102

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setFeatures(I)V

    .line 65
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    const-string/jumbo v0, "\u957f\u6309\u5f00\u59cb\u5f55\u5236"

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setTip(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    new-instance v0, Lcom/luck/picture/lib/camare/TakeCamareActivity$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity$1;-><init>(Lcom/luck/picture/lib/camare/TakeCamareActivity;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setJCameraLisenter(Lcom/luck/picture/lib/camare/listener/JCameraListener;)V

    .line 82
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    new-instance v0, Lcom/luck/picture/lib/camare/TakeCamareActivity$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity$2;-><init>(Lcom/luck/picture/lib/camare/TakeCamareActivity;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setRturnClickClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    new-instance v0, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;-><init>(Lcom/luck/picture/lib/camare/TakeCamareActivity;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camare/JCameraView;->setRightClickListener(Lcom/luck/picture/lib/camare/listener/ClickListener;)V

    .line 121
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->getPermissions()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/JCameraView;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_6

    .line 185
    array-length p1, p3

    const/4 p2, 0x1

    if-lt p1, p2, :cond_6

    const/4 p1, 0x0

    .line 186
    aget v0, p3, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, p2

    .line 193
    aget v1, p3, p2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/4 v1, 0x2

    .line 199
    aget p3, p3, v1

    if-nez p3, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    .line 205
    iput-boolean p2, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->granted:Z

    .line 206
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/JCameraView;->onResume()V

    goto :goto_3

    :cond_5
    const-string/jumbo p2, "\u8bf7\u5230\u8bbe\u7f6e-\u6743\u9650\u7ba1\u7406\u4e2d\u5f00\u542f"

    .line 208
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 209
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->finish()V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 147
    iget-boolean v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->granted:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->jCameraView:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/JCameraView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method
