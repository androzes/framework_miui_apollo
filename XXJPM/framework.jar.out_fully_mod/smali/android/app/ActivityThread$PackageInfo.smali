.class public final Landroid/app/ActivityThread$PackageInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;,
        Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;,
        Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;
    }
.end annotation


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mIncludeCode:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResDir:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mUnboundServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V
    .locals 3
    .parameter "activityThread"
    .parameter "aInfo"
    .parameter "mainThread"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    .line 280
    iput v2, p0, Landroid/app/ActivityThread$PackageInfo;->mClientCount:I

    .line 289
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    .line 290
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 291
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    .line 292
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    .line 293
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    .line 295
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    .line 296
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDirFile:Ljava/io/File;

    .line 298
    iput-object p4, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 299
    iput-boolean p5, p0, Landroid/app/ActivityThread$PackageInfo;->mSecurityViolation:Z

    .line 300
    iput-boolean p6, p0, Landroid/app/ActivityThread$PackageInfo;->mIncludeCode:Z

    .line 301
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {v0, p2}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 303
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 304
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ContextImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    invoke-static {p3}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityThread;->access$102(Landroid/app/ContextImpl;)Landroid/app/ContextImpl;

    .line 307
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p3, v2}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 314
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 315
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    .line 317
    :cond_1
    return-void

    .line 293
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "activityThread"
    .parameter "name"
    .parameter "systemContext"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    .line 280
    iput v2, p0, Landroid/app/ActivityThread$PackageInfo;->mClientCount:I

    .line 321
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    .line 322
    if-eqz p4, :cond_0

    move-object v0, p4

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 323
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    .line 325
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    .line 326
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    .line 327
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    .line 328
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    .line 329
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDirFile:Ljava/io/File;

    .line 330
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 331
    iput-boolean v2, p0, Landroid/app/ActivityThread$PackageInfo;->mSecurityViolation:Z

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$PackageInfo;->mIncludeCode:Z

    .line 333
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 334
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    .line 335
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 336
    return-void

    .line 322
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/app/ActivityThread$PackageInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "list1"
    .parameter "list2"

    .prologue
    const/16 v8, 0x3a

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 390
    .local v2, first:Z
    if-eqz p0, :cond_1

    .line 391
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 392
    .local v6, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 397
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 402
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    const/4 v7, 0x1

    move v1, v7

    .line 404
    .local v1, dupCheck:Z
    :goto_2
    if-eqz p1, :cond_5

    .line 405
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .line 406
    .restart local v6       #s:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-static {p0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 405
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 402
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dupCheck:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    move v1, v7

    goto :goto_2

    .line 410
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dupCheck:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 411
    const/4 v2, 0x0

    .line 415
    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 413
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 419
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-interface {v2, p0, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 368
    if-nez v0, :cond_0

    .line 369
    const/4 v2, 0x0

    .line 372
    :goto_0
    return-object v2

    .line 364
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 365
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 372
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeJavaContextClassLoader()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 510
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 513
    .local v3, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 529
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_1

    move v6, v10

    .line 530
    .local v6, sharedUserIdSet:Z
    :goto_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v10

    .line 533
    .local v4, processNameNotDefault:Z
    :goto_1
    if-nez v6, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    move v5, v10

    .line 534
    .local v5, sharable:Z
    :goto_2
    if-eqz v5, :cond_4

    new-instance v7, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/app/ActivityThread$PackageInfo$WarningContextClassLoader;-><init>(Landroid/app/ActivityThread$1;)V

    move-object v0, v7

    .line 538
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 539
    return-void

    .line 514
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #processNameNotDefault:Z
    .end local v5           #sharable:Z
    .end local v6           #sharedUserIdSet:Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 515
    .local v1, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    move v6, v9

    .line 529
    goto :goto_0

    .restart local v6       #sharedUserIdSet:Z
    :cond_2
    move v4, v9

    .line 530
    goto :goto_1

    .restart local v4       #processNameNotDefault:Z
    :cond_3
    move v5, v9

    .line 533
    goto :goto_2

    .line 534
    .restart local v5       #sharable:Z
    :cond_4
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    move-object v0, v7

    goto :goto_3
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .locals 8
    .parameter "context"
    .parameter "r"

    .prologue
    .line 752
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 753
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 754
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .line 755
    .local v3, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v2, :cond_3

    .line 756
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 757
    .restart local v3       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v3, :cond_3

    .line 758
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 760
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_0
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 763
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 765
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-nez v1, :cond_1

    .line 766
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 767
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unregistered here:"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 772
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 773
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 778
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 780
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-eqz v1, :cond_4

    .line 781
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 782
    .restart local v3       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v3, :cond_4

    .line 783
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 784
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 796
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 789
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v3       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 790
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 793
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 8
    .parameter "context"
    .parameter "c"

    .prologue
    const-string v4, "Unbinding Service "

    .line 1031
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    monitor-enter v4

    .line 1032
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1034
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .line 1035
    .local v3, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v2, :cond_3

    .line 1036
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 1037
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v3, :cond_3

    .line 1038
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doForget()V

    .line 1040
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1041
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :cond_0
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 1044
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1046
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-nez v1, :cond_1

    .line 1047
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1048
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unbound here:"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1053
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 1054
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    :cond_2
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 1059
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1061
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-eqz v1, :cond_4

    .line 1062
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 1063
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v3, :cond_4

    .line 1064
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 1065
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1076
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1070
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :cond_4
    if-nez p1, :cond_5

    .line 1071
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1074
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public getAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread$PackageInfo;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 8

    .prologue
    .line 423
    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_0

    .line 425
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    .line 482
    :goto_0
    return-object v5

    .line 428
    :cond_0
    iget-boolean v5, p0, Landroid/app/ActivityThread$PackageInfo;->mIncludeCode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 429
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    .line 440
    .local v4, zip:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v5, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 442
    .local v0, instrumentationAppDir:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 444
    .local v1, instrumentationAppPackage:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v3, v5, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 446
    .local v3, instrumentedAppDir:Ljava/lang/String;
    const/4 v2, 0x0

    .line 448
    .local v2, instrumentationLibs:[Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 450
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 452
    invoke-static {v1}, Landroid/app/ActivityThread$PackageInfo;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 457
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    .line 459
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/app/ActivityThread$PackageInfo;->combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 471
    :cond_4
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 474
    invoke-direct {p0}, Landroid/app/ActivityThread$PackageInfo;->initializeJavaContextClassLoader()V

    .line 482
    .end local v0           #instrumentationAppDir:Ljava/lang/String;
    .end local v1           #instrumentationAppPackage:Ljava/lang/String;
    .end local v2           #instrumentationLibs:[Ljava/lang/String;
    .end local v3           #instrumentedAppDir:Ljava/lang/String;
    .end local v4           #zip:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    goto/16 :goto_0

    .line 483
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 476
    :cond_5
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_6

    .line 477
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 479
    :cond_6
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .locals 11
    .parameter "r"
    .parameter "context"
    .parameter "handler"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    .line 724
    iget-object v10, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    monitor-enter v10

    .line 725
    const/4 v1, 0x0

    .line 726
    .local v1, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    const/4 v7, 0x0

    .line 727
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-eqz p5, :cond_3

    .line 728
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    .line 729
    if-eqz v7, :cond_3

    .line 730
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v9, v1

    .line 733
    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .local v9, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :goto_0
    if-nez v9, :cond_0

    .line 734
    :try_start_1
    new-instance v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    .end local v9           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz p5, :cond_2

    .line 737
    if-nez v8, :cond_1

    .line 738
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 739
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :try_start_3
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :goto_1
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :goto_2
    invoke-virtual {v1}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2

    .line 744
    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :cond_0
    :try_start_4
    invoke-virtual {v9, p2, p3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    goto :goto_2

    .line 747
    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :catchall_2
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    goto :goto_3

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :cond_1
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    goto :goto_1

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :cond_2
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    goto :goto_2

    :cond_3
    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v9       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    goto :goto_0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .locals 1
    .parameter "mainThread"

    .prologue
    .line 621
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    .line 624
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .locals 6
    .parameter "c"
    .parameter "context"
    .parameter "handler"
    .parameter "flags"

    .prologue
    .line 1009
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 1010
    const/4 v2, 0x0

    .line 1011
    .local v2, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1012
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-eqz v1, :cond_2

    .line 1013
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 1015
    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .local v3, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :goto_0
    if-nez v3, :cond_1

    .line 1016
    :try_start_1
    new-instance v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1017
    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-nez v1, :cond_0

    .line 1018
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1019
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_0
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :goto_1
    invoke-virtual {v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 1023
    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :cond_1
    :try_start_3
    invoke-virtual {v3, p2, p3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    goto :goto_1

    .line 1026
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    goto :goto_2

    :cond_2
    move-object v3, v2

    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    goto :goto_0
.end method

.method public isSecurityViolation()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Landroid/app/ActivityThread$PackageInfo;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 9
    .parameter "forceDefaultAppClass"
    .parameter "instrumentation"

    .prologue
    const-string v8, ": "

    .line 629
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    if-eqz v5, :cond_0

    .line 630
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    .line 669
    :goto_0
    return-object v5

    .line 633
    :cond_0
    const/4 v0, 0x0

    .line 635
    .local v0, app:Landroid/app/Application;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 636
    .local v1, appClass:Ljava/lang/String;
    if-nez p1, :cond_1

    if-nez v1, :cond_2

    .line 637
    :cond_1
    const-string v1, "android.app.Application"

    .line 641
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 642
    .local v3, cl:Ljava/lang/ClassLoader;
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 643
    .local v2, appContext:Landroid/app/ContextImpl;
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p0, v5, v6}, Landroid/app/ContextImpl;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 644
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 646
    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v2           #appContext:Landroid/app/ContextImpl;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    .line 657
    if-eqz p2, :cond_4

    .line 659
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v5, v0

    .line 669
    goto :goto_0

    .line 647
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 648
    .local v4, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 649
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 660
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 661
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {p2, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 662
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    const-string v10, "ActivityThread"

    const-string v9, " "

    .line 674
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 676
    .local v4, rmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-eqz v4, :cond_0

    .line 677
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 678
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 679
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 680
    .local v3, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked IntentReceiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "originally registered here. Are you missing a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "call to unregisterReceiver()?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 685
    .local v2, leak:Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 686
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v7

    goto :goto_0

    .line 695
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .end local v2           #leak:Landroid/app/IntentReceiverLeaked;
    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :cond_0
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 699
    .local v6, smap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-eqz v6, :cond_1

    .line 700
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 701
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 702
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 703
    .local v5, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    new-instance v2, Landroid/app/ServiceConnectionLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked ServiceConnection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was originally bound here"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 706
    .local v2, leak:Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 707
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 714
    :goto_2
    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doForget()V

    goto :goto_1

    .line 717
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .end local v2           #leak:Landroid/app/ServiceConnectionLeaked;
    .end local v5           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :cond_1
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    return-void

    .line 711
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v2       #leak:Landroid/app/ServiceConnectionLeaked;
    .restart local v5       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :catch_1
    move-exception v7

    goto :goto_2
.end method
