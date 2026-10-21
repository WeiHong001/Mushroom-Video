.class public Lcom/luck/picture/lib/permissions/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field public final granted:Z

.field public final name:Ljava/lang/String;

.field public final shouldShowRequestPermissionRationale:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/permissions/Permission;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/luck/picture/lib/permissions/Permission;->name:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/luck/picture/lib/permissions/Permission;->granted:Z

    .line 23
    iput-boolean p3, p0, Lcom/luck/picture/lib/permissions/Permission;->shouldShowRequestPermissionRationale:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    check-cast p1, Lcom/luck/picture/lib/permissions/Permission;

    .line 34
    iget-boolean v1, p0, Lcom/luck/picture/lib/permissions/Permission;->granted:Z

    iget-boolean v2, p1, Lcom/luck/picture/lib/permissions/Permission;->granted:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 35
    :cond_2
    iget-boolean v1, p0, Lcom/luck/picture/lib/permissions/Permission;->shouldShowRequestPermissionRationale:Z

    iget-boolean v2, p1, Lcom/luck/picture/lib/permissions/Permission;->shouldShowRequestPermissionRationale:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/Permission;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/luck/picture/lib/permissions/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/luck/picture/lib/permissions/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-boolean v1, p0, Lcom/luck/picture/lib/permissions/Permission;->granted:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-boolean v1, p0, Lcom/luck/picture/lib/permissions/Permission;->shouldShowRequestPermissionRationale:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/luck/picture/lib/permissions/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", granted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/luck/picture/lib/permissions/Permission;->granted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowRequestPermissionRationale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/luck/picture/lib/permissions/Permission;->shouldShowRequestPermissionRationale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
