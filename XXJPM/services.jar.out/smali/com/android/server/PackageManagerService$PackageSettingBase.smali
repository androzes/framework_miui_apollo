.class Lcom/android/server/PackageManagerService$PackageSettingBase;
.super Lcom/android/server/PackageManagerService$GrantedPermissions;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageSettingBase"
.end annotation


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:I

.field enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

.field private timeStamp:J

.field private timeStampString:Ljava/lang/String;

.field uidError:Z

.field versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V
    .locals 2
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 7707
    invoke-direct {p0, p6}, Lcom/android/server/PackageManagerService$GrantedPermissions;-><init>(I)V

    .line 7683
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7688
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7696
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7697
    iput v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7698
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7708
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    .line 7709
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    .line 7710
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/PackageManagerService$PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;I)V

    .line 7711
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 7758
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    .line 7759
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    .line 7761
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7762
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7763
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7764
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    .line 7765
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    .line 7766
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7767
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7768
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7769
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7770
    return-void
.end method

.method currentEnabledStateLP(Ljava/lang/String;)I
    .locals 1
    .parameter "componentName"

    .prologue
    .line 7791
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7792
    const/4 v0, 0x1

    .line 7796
    :goto_0
    return v0

    .line 7793
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7794
    const/4 v0, 0x2

    goto :goto_0

    .line 7796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method disableComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7779
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7780
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7781
    return v0
.end method

.method enableComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7773
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7774
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7775
    return v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 7734
    iget v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7726
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 7750
    iget-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    return-wide v0
.end method

.method public getTimeStampStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7754
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;I)V
    .locals 1
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "pVersionCode"

    .prologue
    .line 7714
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    .line 7715
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 7716
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 7717
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 7718
    iput p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .line 7719
    return-void
.end method

.method restoreComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7785
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7786
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7787
    return v0
.end method

.method public setInstallStatus(I)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 7730
    iput p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7731
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 7722
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 7723
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 2
    .parameter "newStamp"

    .prologue
    .line 7738
    iget-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 7739
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7740
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7742
    :cond_0
    return-void
.end method

.method public setTimeStamp(JLjava/lang/String;)V
    .locals 0
    .parameter "newStamp"
    .parameter "newStampStr"

    .prologue
    .line 7745
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7746
    iput-object p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStampString:Ljava/lang/String;

    .line 7747
    return-void
.end method
