.class public Landroid/drm/mobile2/OMADRMManager;
.super Ljava/lang/Object;
.source "OMADRMManager.java"

# interfaces
.implements Landroid/drm/mobile2/DRMConstants;
.implements Landroid/drm/mobile2/DRMROAPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/OMADRMManager$OnErrorListener;,
        Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;,
        Landroid/drm/mobile2/OMADRMManager$OnRoapListener;
    }
.end annotation


# static fields
.field private static OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private TAG:Ljava/lang/String;

.field mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

.field mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

.field mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

.field private rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

.field private roapManager:Landroid/drm/mobile2/DrmRoapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 24
    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 23
    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 26
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/drm/mobile2/DrmRoapManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/DrmRoapManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    .line 34
    new-instance v0, Landroid/drm/mobile2/Drm2RightsManager;

    invoke-direct {v0, p0}, Landroid/drm/mobile2/Drm2RightsManager;-><init>(Landroid/drm/mobile2/OMADRMManager;)V

    iput-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    .line 35
    return-void
.end method

.method private checkDRMAccessPerissions()V
    .locals 4

    .prologue
    .line 1244
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_DRM"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing OMADRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/drm/mobile2/OMADRMManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMManager;-><init>()V

    sput-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    .line 50
    :cond_0
    sget-object v0, Landroid/drm/mobile2/OMADRMManager;->OMADRMManagerInstance:Landroid/drm/mobile2/OMADRMManager;

    return-object v0
.end method

.method private launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "rightsURI"

    .prologue
    .line 731
    if-eqz p1, :cond_0

    .line 733
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 734
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 735
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 739
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 529
    const-string v0, "audio/midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/mid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-mid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/sp-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    const-string v0, "audio/unsupported"

    .line 541
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public GetPermissionType(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v1, -0x1

    .line 412
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 413
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 414
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetPermissionTypeFromDrmFile(Ljava/lang/String;)I

    move-result v1

    .line 424
    :goto_0
    return v1

    .line 418
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public IsDrmFileByExt(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1013
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 1014
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1015
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    .line 1023
    :cond_0
    return v1

    .line 1018
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z
    .locals 11
    .parameter "context"
    .parameter "filePath"
    .parameter "dcfHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 671
    const/4 v3, 0x0

    .line 672
    .local v3, result:Z
    const/4 v4, 0x0

    .line 673
    .local v4, rightsURI:Ljava/lang/String;
    const/4 v5, -0x1

    .line 674
    .local v5, roamingDownload:I
    const/4 v2, 0x0

    .line 676
    .local v2, isRoaming:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_download"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 677
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Roaming behavior: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 678
    if-ne v5, v10, :cond_0

    .line 679
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/drm/mobile2/OMADRMManager$OnErrorListener;->onError(I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    const/4 v6, 0x0

    .line 718
    :goto_0
    return v6

    .line 682
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 683
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "ROAMING DOWNLOAD Settings not found"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 686
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".DCF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 688
    :cond_2
    move-object v1, p3

    .line 689
    .local v1, headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    if-eqz v1, :cond_9

    .line 690
    iget-object v4, v1, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    .line 691
    if-eqz v4, :cond_8

    .line 692
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v6, v9, :cond_4

    .line 693
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)V

    .line 694
    const/4 v3, 0x1

    :cond_3
    :goto_1
    move v6, v3

    .line 718
    goto :goto_0

    .line 695
    :cond_4
    iget v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    if-ne v6, v10, :cond_7

    .line 696
    iget-boolean v6, v1, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    if-eqz v6, :cond_6

    if-eqz v2, :cond_5

    if-eqz v2, :cond_6

    if-eq v5, v9, :cond_6

    .line 697
    :cond_5
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v6, :cond_3

    .line 698
    iget-object v6, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v6, p2}, Landroid/drm/mobile2/DrmRoapManager;->Drm2GoSilentURL(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 701
    :cond_6
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)V

    .line 702
    const/4 v3, 0x1

    goto :goto_1

    .line 705
    :cond_7
    invoke-direct {p0, p1, v4}, Landroid/drm/mobile2/OMADRMManager;->launchRightsIssuer(Landroid/content/Context;Ljava/lang/String;)V

    .line 706
    const/4 v3, 0x1

    goto :goto_1

    .line 709
    :cond_8
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "RIGHTS URI is not Found"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 712
    :cond_9
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "DCF File Header Information Can not be Retrieved"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 716
    .end local v1           #headerInfo:Landroid/drm/mobile2/DCFHeaderInfo;
    :cond_a
    new-instance v6, Landroid/drm/mobile2/OMADRMException;

    const-string v7, "Invalid File Path"

    invoke-direct {v6, v7}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public addDrmFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 74
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 75
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v1

    .line 84
    :cond_0
    return v1

    .line 81
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : addDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public audoDownloadLicense(Z)Z
    .locals 1
    .parameter "autoDownlaod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method public canSetAsRingTone(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    const/4 v2, 0x0

    .line 1127
    .local v2, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1128
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1129
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_1

    .line 1130
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1131
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1}, Landroid/drm/mobile2/Drm2RightsManager;->canSetAsRingTone(Ljava/lang/String;)Z

    move-result v2

    .line 1137
    :cond_0
    return v2

    .line 1134
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not present "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public cancelRoapProcess()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/DrmRoapManager;->cancelRoapProcess()Z

    move-result v0

    .line 821
    .local v0, status:Z
    return v0
.end method

.method public clearDrmLicenses()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1441
    const/4 v0, 0x0

    .line 1442
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1443
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearAllRights()Z

    move-result v0

    .line 1446
    :cond_0
    return v0
.end method

.method public clearMMCFilesDRMEntry()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1457
    const/4 v0, 0x0

    .line 1458
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1459
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2ClearMMCContentRegistry()Z

    move-result v0

    .line 1462
    :cond_0
    return v0
.end method

.method public closeDrmFile(J)Z
    .locals 3
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1419
    const/4 v0, 0x0

    .line 1420
    .local v0, result:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 1421
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1422
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->closeDrmFile(J)Z

    move-result v0

    .line 1430
    :cond_0
    return v0

    .line 1427
    :cond_1
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v2, "OMADRMManager : closeDrmFile : in : handle : NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "filehandle is NULL"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public consumeDrmRights(Ljava/lang/String;I)I
    .locals 4
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v1, -0x1

    .line 224
    .local v1, result:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 225
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 226
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->consumeDrmRights(Ljava/lang/String;I)I

    move-result v1

    .line 234
    :cond_0
    return v1

    .line 231
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : consumeDrmRights : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 143
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 144
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_0
    return-object v1

    .line 149
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : convertDM2DCF : in : file :NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteDrmFile(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "filePath"
    .parameter "removeRights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 110
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 112
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->deleteDrmFile(Ljava/lang/String;Z)Z

    move-result v1

    .line 120
    :cond_0
    return v1

    .line 117
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : deleteDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmCopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 873
    :cond_0
    return v0
.end method

.method public drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "srcFilePath"
    .parameter "destFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->drmMoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 847
    :cond_0
    return v0
.end method

.method public getBestRights(Ljava/lang/String;I)Landroid/drm/mobile2/DrmBestRights;
    .locals 6
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 328
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 329
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 330
    new-instance v0, Landroid/drm/mobile2/DrmBestRights;

    .end local v0           #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    invoke-direct {v0}, Landroid/drm/mobile2/DrmBestRights;-><init>()V

    .line 331
    .restart local v0       #drmBestRightsInfo:Landroid/drm/mobile2/DrmBestRights;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v0, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetBestMergedRO(Ljava/lang/String;Landroid/drm/mobile2/DrmBestRights;I)Z

    move-result v2

    .line 332
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 341
    .end local v2           #result:Z
    :cond_0
    return-object v0

    .line 339
    :cond_1
    new-instance v3, Landroid/drm/mobile2/OMADRMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;
    .locals 5
    .parameter "dcfFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 925
    .local v0, dcfHeader:Landroid/drm/mobile2/DCFHeaderInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 927
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 928
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v2, :cond_0

    .line 929
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/DrmRoapManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_0

    .line 953
    :cond_0
    return-object v0

    .line 948
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDRMRingToneAlarmInfo(Landroid/content/Context;)I
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1210
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRTAlarmInfo(Landroid/content/Context;)I

    move-result v0

    .line 1214
    :cond_0
    return v0
.end method

.method public getDecryptedContent(Ljava/lang/String;I)[B
    .locals 4
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, result:[B
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 267
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 268
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    .line 277
    :cond_0
    return-object v1

    .line 273
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : getDecryptedContent : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrmFileInfo(Ljava/lang/String;)[I
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 982
    .local v1, isFileExists:Z
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 983
    .local v0, drmInfo:[I
    if-eqz v1, :cond_1

    .line 984
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 985
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, v0}, Landroid/drm/mobile2/Drm2RightsManager;->getDrmFileInfo(Ljava/lang/String;[I)V

    .line 993
    :cond_0
    return-object v0

    .line 988
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "File is not present"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 191
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->drm2GetAllFilePathByCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, metaData:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 560
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 561
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->getMetaData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 569
    :cond_0
    return-object v1

    .line 565
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, mimetype:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 511
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 512
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/drm/mobile2/OMADRMManager;->resolveDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    :cond_0
    return-object v1

    .line 519
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOptionMenu(Ljava/lang/String;I)Landroid/drm/mobile2/Drm2Options;
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v2, 0x0

    .line 1042
    .local v2, status:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1043
    .local v0, isFileExists:Z
    const/4 v1, 0x0

    .line 1044
    .local v1, options:Landroid/drm/mobile2/Drm2Options;
    if-eqz v0, :cond_2

    .line 1045
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1046
    new-instance v1, Landroid/drm/mobile2/Drm2Options;

    .end local v1           #options:Landroid/drm/mobile2/Drm2Options;
    invoke-direct {v1}, Landroid/drm/mobile2/Drm2Options;-><init>()V

    .line 1047
    .restart local v1       #options:Landroid/drm/mobile2/Drm2Options;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, v1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2GetOptionMenu(Ljava/lang/String;Landroid/drm/mobile2/Drm2Options;I)Z

    move-result v2

    .line 1048
    if-eqz v2, :cond_1

    .line 1049
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v4, "OMADRMManager :getOptionMenu  : success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    :goto_0
    return-object v1

    .line 1052
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1056
    :cond_2
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "File is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, rightsURI:Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 482
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 483
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->getRightsIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    :cond_0
    return-object v1

    .line 487
    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file is not Present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasValidRights(Ljava/lang/String;I)I
    .locals 5
    .parameter "filePath"
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v1, -0x1

    .line 374
    .local v1, status:I
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 375
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 376
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2HasValidRight(Ljava/lang/String;I)I

    move-result v1

    .line 386
    :goto_0
    return v1

    .line 380
    :cond_0
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "rights manager is NUll"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initOmaDrm(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0}, Landroid/drm/mobile2/DrmRoapManager;->native_drm_init()Z

    .line 1106
    return-void
.end method

.method public installDrmRights([B)Ljava/lang/String;
    .locals 2
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->installDrmRights([B)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public isConvertedFL(Ljava/lang/String;)Z
    .locals 5
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, result:Z
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 295
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 296
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1}, Landroid/drm/mobile2/Drm2RightsManager;->Drm2IsConvertedFL(Ljava/lang/String;)Z

    move-result v1

    .line 304
    :cond_0
    return v1

    .line 302
    :cond_1
    new-instance v2, Landroid/drm/mobile2/OMADRMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is not present :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/mobile2/OMADRMException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openDrmFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "filePath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1283
    const-wide/16 v1, -0x1

    .line 1286
    .local v1, result:J
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    .line 1287
    .local v0, isFileExists:Z
    if-eqz v0, :cond_1

    .line 1288
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v3, :cond_0

    .line 1289
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v3, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->openDrmFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1296
    :cond_0
    return-wide v1

    .line 1294
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "file is not present"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processRoap(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .parameter "roapTrigger"
    .parameter "fileName"
    .parameter "fileSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v6, 0x0

    .line 776
    .local v6, roapResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 777
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/DrmRoapManager;->processRoap(Ljava/lang/String;ILjava/lang/String;J)Z

    move-result v6

    .line 781
    :cond_0
    return v6
.end method

.method public processRoap([B)Z
    .locals 3
    .parameter "roapPdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, roapResult:Z
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 800
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    array-length v2, p1

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/DrmRoapManager;->processRoap([BI)Z

    move-result v0

    .line 803
    :cond_0
    return v0
.end method

.method public queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;
    .locals 6
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-static {p1}, Landroid/drm/mobile2/DrmUtils;->checkForFileorDirectoryExists(Ljava/lang/String;)Z

    move-result v1

    .line 447
    .local v1, isFileExists:Z
    if-eqz v1, :cond_1

    .line 448
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v3, :cond_0

    .line 450
    new-instance v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;

    .end local v0           #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    invoke-direct {v0}, Landroid/drm/mobile2/OMADRMConstraintsInfo;-><init>()V

    .line 451
    .restart local v0       #drmConInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    iget-object v3, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v3, p1, v0}, Landroid/drm/mobile2/DrmRoapManager;->queryRights(Ljava/lang/String;Landroid/drm/mobile2/OMADRMConstraintsInfo;)Z

    move-result v2

    .line 452
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 461
    .end local v2           #result:Z
    :cond_0
    return-object v0

    .line 458
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is not present :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDrmFile(J[BJ)J
    .locals 8
    .parameter "fh"
    .parameter "buffer"
    .parameter "buflen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1316
    const-wide/16 v6, -0x1

    .line 1319
    .local v6, result:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1320
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/drm/mobile2/Drm2RightsManager;->readDrmFile(J[BJ)J

    move-result-wide v6

    .line 1328
    :cond_0
    return-wide v6

    .line 1325
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : openDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1189
    const/4 v0, 0x0

    .line 1190
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->removeFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1194
    :cond_0
    return v0
.end method

.method public seekDrmFile(JJJ)Z
    .locals 8
    .parameter "fh"
    .parameter "position"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1355
    const/4 v7, 0x0

    .line 1358
    .local v7, result:Z
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->seekDrmFile(JJJ)Z

    move-result v7

    .line 1367
    :cond_0
    return v7

    .line 1364
    :cond_1
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v1, "OMADRMManager : seekDrmFile : in : file : NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "file handle is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1162
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1163
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->setFileAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1167
    :cond_0
    return v0
.end method

.method public setOnDownloadListener(Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1580
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnDownloadListener:Landroid/drm/mobile2/OMADRMManager$OnDownloadListener;

    .line 1581
    return-void
.end method

.method public setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1608
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnErrorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    .line 1609
    return-void
.end method

.method public setOnRoapListener(Landroid/drm/mobile2/OMADRMManager$OnRoapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1521
    iput-object p1, p0, Landroid/drm/mobile2/OMADRMManager;->mOnRoapListener:Landroid/drm/mobile2/OMADRMManager$OnRoapListener;

    .line 1522
    return-void
.end method

.method public setSecureClock(IIIIII)Z
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v7, 0x0

    .line 597
    .local v7, result:Z
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/drm/mobile2/Drm2RightsManager;->setSecureClock(IIIIII)Z

    move-result v7

    .line 602
    :cond_0
    return v7
.end method

.method public setTransferTracking(Z)Z
    .locals 2
    .parameter "trackingOn"

    .prologue
    .line 1259
    const/4 v0, 0x0

    .line 1261
    .local v0, settrackRet:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/Drm2RightsManager;->setTransferTracking(Z)Z

    move-result v0

    .line 1264
    return v0
.end method

.method public submitUserConsent(JZZ)V
    .locals 1
    .parameter "userConsentObject"
    .parameter "bcontinue"
    .parameter "bAddToTrustedWhiteList"

    .prologue
    .line 897
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Landroid/drm/mobile2/OMADRMManager;->roapManager:Landroid/drm/mobile2/DrmRoapManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/drm/mobile2/DrmRoapManager;->SubmitUserConsent(JZZ)V

    .line 902
    :cond_0
    return-void
.end method

.method public tellDrmFile(J)J
    .locals 4
    .parameter "fh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1388
    const-wide/16 v0, -0x1

    .line 1391
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 1392
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v2, :cond_0

    .line 1393
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v2, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->tellDrmFile(J)J

    move-result-wide v0

    .line 1400
    :cond_0
    return-wide v0

    .line 1397
    :cond_1
    iget-object v2, p0, Landroid/drm/mobile2/OMADRMManager;->TAG:Ljava/lang/String;

    const-string v3, "OMADRMManager : tellDrmFile : in : file : NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file handle is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateDRMRingToneAlarmInfo(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "AlarmID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, result:I
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 1231
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2}, Landroid/drm/mobile2/Drm2RightsManager;->updateRTAlarm(Landroid/content/Context;I)I

    move-result v0

    .line 1234
    :cond_0
    return v0
.end method

.method public updateMeteringStatus(Z)Z
    .locals 1
    .parameter "meteringStatus"

    .prologue
    .line 1076
    const/4 v0, 0x0

    return v0
.end method

.method public updateSecureClock(JJ)Z
    .locals 2
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, result:Z
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Landroid/drm/mobile2/OMADRMManager;->rightsManager:Landroid/drm/mobile2/Drm2RightsManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/drm/mobile2/Drm2RightsManager;->drm2UpdateSecureClock(JJ)Z

    move-result v0

    .line 629
    :cond_0
    return v0
.end method
