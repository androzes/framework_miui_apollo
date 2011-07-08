.class public Lcom/samsung/android/bt/drm/DRMCheckHelper;
.super Ljava/lang/Object;
.source "DRMCheckHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DRMCheckHelper"

.field private static mDRMCheckHelper:Lcom/samsung/android/bt/drm/DRMCheckHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/bt/drm/DRMCheckHelper;
    .locals 4

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/bt/drm/DRMCheckHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/bt/drm/DRMCheckHelper;->mDRMCheckHelper:Lcom/samsung/android/bt/drm/DRMCheckHelper;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/samsung/android/bt/drm/DRMCheckHelper;

    invoke-direct {v1}, Lcom/samsung/android/bt/drm/DRMCheckHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/bt/drm/DRMCheckHelper;->mDRMCheckHelper:Lcom/samsung/android/bt/drm/DRMCheckHelper;

    .line 40
    const-string v1, "DRMCheckHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instance was created. hashid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/bt/drm/DRMCheckHelper;->mDRMCheckHelper:Lcom/samsung/android/bt/drm/DRMCheckHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    sget-object v1, Lcom/samsung/android/bt/drm/DRMCheckHelper;->mDRMCheckHelper:Lcom/samsung/android/bt/drm/DRMCheckHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isSendableFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    const-string v3, "DRMCheckHelper"

    .line 52
    const/4 v2, 0x0

    .line 55
    .local v2, result:Z
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v0

    .line 60
    .local v0, drmManager:Landroid/drm/mobile2/OMADRMManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    invoke-virtual {v0, p1, v3}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 63
    const-string v3, "DRMCheckHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSendableFile, File has wrong DRM Grants, returnValue is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return v2

    .line 65
    :cond_0
    const/4 v2, 0x1

    .line 66
    const-string v3, "DRMCheckHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSendableFile, File has right DRM Grants returnValue is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 69
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 71
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 73
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
