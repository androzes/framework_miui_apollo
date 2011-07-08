.class public Landroid/wmdrm/mobile/WMDrmRightsManager;
.super Ljava/lang/Object;
.source "WMDrmRightsManager.java"

# interfaces
.implements Landroid/wmdrm/mobile/WMDRMConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "WMDRMRIGHTSMANAGER"

.field private static wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v1, 0x0

    sput-object v1, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 117
    :try_start_0
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v2, "[WMDRM] WMDRM JNI is Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string/jumbo v1, "wmdrm_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load wmdrm_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private native IsValidWmdrmFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method private native WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method public static getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;
    .locals 2

    .prologue
    .line 26
    const-string v0, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] Default instance of the WMDRMManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/wmdrm/mobile/WMDrmRightsManager;

    invoke-direct {v0}, Landroid/wmdrm/mobile/WMDrmRightsManager;-><init>()V

    sput-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    .line 30
    :cond_0
    sget-object v0, Landroid/wmdrm/mobile/WMDrmRightsManager;->wmdrmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;

    return-object v0
.end method

.method private native setWmDrmSecureClock(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method

.method private native updateWmDrmSecureClock(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation
.end method


# virtual methods
.method public isWMdrmFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "WMDRMRIGHTSMANAGER"

    .line 74
    const-string v1, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WMDRM] isWMdrmFile called with file : : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, result:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] File is Present "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->IsValidWmdrmFile(Ljava/lang/String;)Z

    move-result v0

    .line 79
    const-string v1, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WMDRM] Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0

    .line 81
    :cond_0
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] File is not Present"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method public queryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "WMDRMRIGHTSMANAGER"

    .line 47
    const-string v1, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WMDRM] queryRights called with file : : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, rightsInfo:Landroid/wmdrm/mobile/WMDRMRightsInfo;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] WMDRM file is Exists "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0, p1}, Landroid/wmdrm/mobile/WMDrmRightsManager;->WMDRMQueryRights(Ljava/lang/String;)Landroid/wmdrm/mobile/WMDRMRightsInfo;

    move-result-object v0

    .line 56
    return-object v0

    .line 53
    :cond_0
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] WMDRM file is not present in specified path"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method public setWMDrmSecureClock(J)Z
    .locals 4
    .parameter "nitzTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v3, "WMDRMRIGHTSMANAGER"

    .line 99
    const-string v1, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WMDRM] setWMDrmSecureClock   called with nitzTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->setWmDrmSecureClock(J)Z

    move-result v0

    .line 101
    .local v0, result:Z
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0
.end method

.method public updateWMDrmSecureClock(JJ)Z
    .locals 4
    .parameter "beforeTime"
    .parameter "afterTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/wmdrm/mobile/WMDRMDRMException;
        }
    .end annotation

    .prologue
    const-string v3, "WMDRMRIGHTSMANAGER"

    .line 90
    const-string v1, "WMDRMRIGHTSMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WMDRM] updateWMDrmSecureClock  called with beforeTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n after time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/wmdrm/mobile/WMDrmRightsManager;->updateWmDrmSecureClock(JJ)Z

    move-result v0

    .line 92
    .local v0, result:Z
    const-string v1, "WMDRMRIGHTSMANAGER"

    const-string v1, "[WMDRM] updateWMDrmSecureClock  updation was successful :"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v0
.end method
