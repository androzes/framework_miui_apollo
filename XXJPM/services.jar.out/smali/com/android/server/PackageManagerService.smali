.class Lcom/android/server/PackageManagerService;
.super Landroid/content/pm/IPackageManager$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings;,
        Lcom/android/server/PackageManagerService$SharedUserSetting;,
        Lcom/android/server/PackageManagerService$PackageSetting;,
        Lcom/android/server/PackageManagerService$PackageSettingBase;,
        Lcom/android/server/PackageManagerService$GrantedPermissions;,
        Lcom/android/server/PackageManagerService$PreferredActivity;,
        Lcom/android/server/PackageManagerService$PackageSignatures;,
        Lcom/android/server/PackageManagerService$BasePermission;,
        Lcom/android/server/PackageManagerService$PackageRemovedInfo;,
        Lcom/android/server/PackageManagerService$PackageInstalledInfo;,
        Lcom/android/server/PackageManagerService$SdInstallArgs;,
        Lcom/android/server/PackageManagerService$FileInstallArgs;,
        Lcom/android/server/PackageManagerService$InstallArgs;,
        Lcom/android/server/PackageManagerService$MoveParams;,
        Lcom/android/server/PackageManagerService$InstallParams;,
        Lcom/android/server/PackageManagerService$HandlerParams;,
        Lcom/android/server/PackageManagerService$AppDirObserver;,
        Lcom/android/server/PackageManagerService$ServiceIntentResolver;,
        Lcom/android/server/PackageManagerService$ActivityIntentResolver;,
        Lcom/android/server/PackageManagerService$PackageHandler;,
        Lcom/android/server/PackageManagerService$PostInstallData;,
        Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final ADD_EVENTS:I = 0x88

.field static final BROADCAST_DELAY:I = 0x2710

.field private static final DEBUG_INSTALL:Z = false

.field private static final DEBUG_NATIVE:Z = false

.field private static final DEBUG_PREFERRED:Z = false

.field static final DEBUG_SD_INSTALL:Z = false

.field private static final DEBUG_SETTINGS:Z = false

.field private static final DEBUG_UPGRADE:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final END_COPY:I = 0x4

.field static final FIND_INSTALL_LOC:I = 0x8

.field private static final FIRST_APPLICATION_UID:I = 0x2710

.field private static final GET_CERTIFICATES:Z = true

.field private static final GRAPHICS_UID:I = 0x3eb

.field static final INIT_COPY:I = 0x5

.field private static final INSTALL_PACKAGE_SUFFIX:Ljava/lang/String; = "-"

.field private static final LOG_UID:I = 0x3ef

.field private static final MAX_APPLICATION_UIDS:I = 0x3e8

.field private static final MAX_CONTAINERS:I = 0xfa

.field static final MCS_BOUND:I = 0x3

.field static final MCS_GIVE_UP:I = 0xb

.field static final MCS_RECONNECT:I = 0xa

.field static final MCS_UNBIND:I = 0x6

.field private static final MULTIPLE_APPLICATION_UIDS:Z = true

.field private static final OBSERVER_EVENTS:I = 0x2c8

.field private static final PACKAGE_INSTALL_NATIVE_ABI_MISMATCH:I = 0x2

.field private static final PACKAGE_INSTALL_NATIVE_FOUND_LIBRARIES:I = 0x0

.field private static final PACKAGE_INSTALL_NATIVE_NO_LIBRARIES:I = 0x1

.field private static final PKG_INSTALL_COMPLETE:I = 0x1

.field private static final PKG_INSTALL_INCOMPLETE:I = 0x0

.field static final POST_INSTALL:I = 0x9

.field private static final RADIO_UID:I = 0x3e9

.field static final REMOVE_CHATTY:I = 0x10000

.field private static final REMOVE_EVENTS:I = 0x248

.field static final SCAN_FORCE_DEX:I = 0x4

.field static final SCAN_MONITOR:I = 0x1

.field static final SCAN_NEW_INSTALL:I = 0x10

.field static final SCAN_NO_DEX:I = 0x2

.field static final SCAN_NO_PATHS:I = 0x20

.field static final SCAN_UPDATE_SIGNATURE:I = 0x8

.field static final SEND_PENDING_BROADCAST:I = 0x1

.field private static final SHOW_INFO:Z = false

.field static final START_CLEANING_PACKAGE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field static final UPDATED_MEDIA_STATUS:I = 0xc

.field static final WRITE_SETTINGS:I = 0xd

.field static final WRITE_SETTINGS_DELAY:I = 0x2710

.field private static final mProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field final mAppDataDir:Ljava/io/File;

.field final mAppDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mAppInstallDir:Ljava/io/File;

.field final mAppInstallObserver:Landroid/os/FileObserver;

.field final mAvailableFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final mContext:Landroid/content/Context;

.field final mDalvikCacheDir:Ljava/io/File;

.field private final mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

.field final mDefParseFlags:I

.field final mDrmAppInstallObserver:Landroid/os/FileObserver;

.field final mDrmAppPrivateInstallDir:Ljava/io/File;

.field final mFactoryTest:Z

.field final mFrameworkDir:Ljava/io/File;

.field final mFrameworkInstallObserver:Landroid/os/FileObserver;

.field mGlobalGids:[I

.field final mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mHasSystemUidErrors:Z

.field final mInstallLock:Ljava/lang/Object;

.field final mInstaller:Lcom/android/server/Installer;

.field final mInstrumentation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field mLastScanError:I

.field private mMediaMounted:Z

.field final mMetrics:Landroid/util/DisplayMetrics;

.field mNextInstallToken:I

.field final mNoDexOpt:Z

.field final mOutPermissions:[I

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingBroadcasts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field mPlatformPackage:Landroid/content/pm/PackageParser$Package;

.field final mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field mResolveComponentName:Landroid/content/ComponentName;

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRestoredSettings:Z

.field final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/PackageManagerService$PostInstallData;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScanningPath:Ljava/io/File;

.field private final mSdEncryptAlg:Ljava/lang/String;

.field private final mSdEncryptKey:Ljava/lang/String;

.field final mSdkCodename:Ljava/lang/String;

.field final mSdkVersion:I

.field final mSeparateProcesses:[Ljava/lang/String;

.field final mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

.field final mSettings:Lcom/android/server/PackageManagerService$Settings;

.field final mSharedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemAppDir:Ljava/io/File;

.field final mSystemInstallObserver:Landroid/os/FileObserver;

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTmpSharedLibraries:[Ljava/lang/String;

.field final mTransferedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 4557
    new-instance v0, Lcom/android/server/PackageManagerService$3;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 4581
    new-instance v0, Lcom/android/server/PackageManagerService$4;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$4;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 37
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 702
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 183
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "PackageManager"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 187
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    .line 188
    const-string v5, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    .line 231
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 236
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    .line 243
    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    .line 250
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 261
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 266
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    .line 269
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    .line 273
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    .line 277
    new-instance v5, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    .line 281
    new-instance v5, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    .line 285
    new-instance v5, Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    .line 288
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    .line 293
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    .line 297
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    .line 301
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    .line 306
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    .line 309
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    .line 316
    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 317
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 322
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    .line 327
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 346
    new-instance v5, Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/PackageManagerService;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    .line 372
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 373
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mNextInstallToken:I

    .line 9473
    const-string v5, "AppsOnSD"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSdEncryptKey:Ljava/lang/String;

    .line 9474
    const-string v5, "AES"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSdEncryptAlg:Ljava/lang/String;

    .line 9475
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    .line 703
    const/16 v5, 0xbf4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v5, v0

    if-gtz v5, :cond_0

    .line 707
    const-string v5, "PackageManager"

    const-string v6, "**** ro.build.version.sdk not set!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    .line 711
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    .line 714
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    .line 717
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 718
    new-instance v5, Lcom/android/server/PackageManagerService$Settings;

    invoke-direct {v5}, Lcom/android/server/PackageManagerService$Settings;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.system"

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.phone"

    const/16 v7, 0x3e9

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.log"

    const/16 v7, 0x3ef

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.graphics"

    const/16 v7, 0x3eb

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 737
    const-string v5, "debug.separate_processes"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 738
    .local v33, separateProcesses:Ljava/lang/String;
    if-eqz v33, :cond_6

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 739
    const-string v5, "*"

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 740
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 741
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 742
    const-string v5, "PackageManager"

    const-string v6, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_1
    new-instance v21, Lcom/android/server/Installer;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/Installer;-><init>()V

    .line 759
    .local v21, installer:Lcom/android/server/Installer;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/Installer;->ping()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 760
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    .line 765
    :goto_2
    const-string v5, "window"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/WindowManager;

    .line 766
    .local v36, wm:Landroid/view/WindowManager;
    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 767
    .local v12, d:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #d:Landroid/view/Display;
    monitor-enter v12

    .line 770
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .end local v21           #installer:Lcom/android/server/Installer;
    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 772
    new-instance v5, Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;-><init>(Lcom/android/server/PackageManagerService;Landroid/os/Looper;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    .line 774
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    .line 775
    .local v13, dataDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "data"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    .line 776
    new-instance v5, Ljava/io/File;

    const-string v6, "app-private"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 782
    new-instance v26, Ljava/io/File;

    const-string v5, "misc"

    move-object/from16 v0, v26

    move-object v1, v13

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 783
    .local v26, miscDir:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 788
    .end local v26           #miscDir:Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->readPermissions()V

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->readLP()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mRestoredSettings:Z

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 793
    .local v34, startTime:J
    const/16 v5, 0xbfe

    move v0, v5

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 798
    const/16 v32, 0x21

    .line 799
    .local v32, scanMode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 800
    const-string v5, "PackageManager"

    const-string v6, "Running ENG build: no pre-dexopt!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    or-int/lit8 v32, v32, 0x2

    .line 804
    :cond_2
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 806
    .local v23, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "framework"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    .line 807
    new-instance v5, Ljava/io/File;

    const-string v6, "dalvik-cache"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_12

    .line 810
    const/4 v15, 0x0

    .line 816
    .local v15, didDexOpt:Z
    const-string v5, "java.boot.class.path"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 817
    .local v11, bootClassPath:Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 818
    const/16 v5, 0x3a

    invoke-static {v11, v5}, Lcom/android/server/PackageManagerService;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v29

    .line 819
    .local v29, paths:[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 821
    :try_start_2
    aget-object v5, v29, v20

    invoke-static {v5}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 822
    aget-object v5, v29, v20

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    aget-object v6, v29, v20

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 824
    const/4 v15, 0x1

    .line 819
    :cond_3
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 188
    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v13           #dataDir:Ljava/io/File;
    .end local v15           #didDexOpt:Z
    .end local v20           #i:I
    .end local v23           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #paths:[Ljava/lang/String;
    .end local v32           #scanMode:I
    .end local v33           #separateProcesses:Ljava/lang/String;
    .end local v34           #startTime:J
    .end local v36           #wm:Landroid/view/WindowManager;
    :cond_4
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto/16 :goto_0

    .line 744
    .restart local v33       #separateProcesses:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 745
    const-string v5, ","

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 746
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running with debug.separate_processes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 750
    :cond_6
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 751
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    goto/16 :goto_1

    .line 762
    .restart local v21       #installer:Lcom/android/server/Installer;
    :cond_7
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    goto/16 :goto_2

    .line 826
    .end local v21           #installer:Lcom/android/server/Installer;
    .restart local v11       #bootClassPath:Ljava/lang/String;
    .restart local v13       #dataDir:Ljava/io/File;
    .restart local v15       #didDexOpt:Z
    .restart local v20       #i:I
    .restart local v23       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #paths:[Ljava/lang/String;
    .restart local v32       #scanMode:I
    .restart local v34       #startTime:J
    .restart local v36       #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 827
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Boot class path not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v29, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1015
    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v13           #dataDir:Ljava/io/File;
    .end local v15           #didDexOpt:Z
    .end local v16           #e:Ljava/io/FileNotFoundException;
    .end local v20           #i:I
    .end local v23           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #paths:[Ljava/lang/String;
    .end local v32           #scanMode:I
    .end local v34           #startTime:J
    .end local p1
    :catchall_0
    move-exception v5

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 1016
    :catchall_1
    move-exception v5

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 828
    .restart local v11       #bootClassPath:Ljava/lang/String;
    .restart local v13       #dataDir:Ljava/io/File;
    .restart local v15       #didDexOpt:Z
    .restart local v20       #i:I
    .restart local v23       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #paths:[Ljava/lang/String;
    .restart local v32       #scanMode:I
    .restart local v34       #startTime:J
    .restart local p1
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    .line 829
    .local v16, e:Ljava/io/IOException;
    :try_start_5
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading boot class path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v29, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 833
    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #i:I
    .end local v29           #paths:[Ljava/lang/String;
    :cond_8
    const-string v5, "PackageManager"

    const-string v6, "No BOOTCLASSPATH found!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 841
    .local v25, libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 842
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 844
    .local v22, lib:Ljava/lang/String;
    :try_start_6
    invoke-static/range {v22 .. v22}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 845
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 847
    const/4 v15, 0x1

    goto :goto_5

    .line 849
    :catch_2
    move-exception v5

    move-object/from16 v16, v5

    .line 850
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 851
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    move-object/from16 v16, v5

    .line 852
    .local v16, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 867
    .end local v16           #e:Ljava/io/IOException;
    .end local v22           #lib:Ljava/lang/String;
    .end local v25           #libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v19

    .line 868
    .local v19, frameworkFiles:[Ljava/lang/String;
    if-eqz v19, :cond_f

    .line 869
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_6
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_f

    .line 870
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    aget-object v6, v19, v20

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 871
    .local v24, libPath:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    .line 878
    .local v28, path:Ljava/lang/String;
    const-string v5, "-res.apk"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 869
    :cond_c
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 883
    :cond_d
    const-string v5, ".apk"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, ".jar"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-eqz v5, :cond_c

    .line 887
    :cond_e
    :try_start_8
    invoke-static/range {v28 .. v28}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v28

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 889
    const/4 v15, 0x1

    goto :goto_7

    .line 891
    :catch_4
    move-exception v5

    move-object/from16 v16, v5

    .line 892
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Jar not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 893
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    move-object/from16 v16, v5

    .line 894
    .local v16, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading jar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 899
    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #i:I
    .end local v24           #libPath:Ljava/io/File;
    .end local v28           #path:Ljava/lang/String;
    :cond_f
    if-eqz v15, :cond_12

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 906
    .local v17, files:[Ljava/lang/String;
    if-eqz v17, :cond_12

    .line 907
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_8
    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_12

    .line 908
    aget-object v18, v17, v20

    .line 909
    .local v18, fn:Ljava/lang/String;
    const-string v5, "data@app@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "data@app-private@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 911
    :cond_10
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruning dalvik file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 907
    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 920
    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v15           #didDexOpt:Z
    .end local v17           #files:[Ljava/lang/String;
    .end local v18           #fn:Ljava/lang/String;
    .end local v19           #frameworkFiles:[Ljava/lang/String;
    .end local v20           #i:I
    :cond_12
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    const/16 v6, 0x41

    or-int/lit8 v7, v32, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 928
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    .line 929
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object v5, v0

    const/16 v6, 0x41

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_13

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/Installer;->moveFiles()I

    .line 941
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 942
    .local v31, psit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_14
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 943
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 944
    .local v30, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 947
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " no longer exists; wiping its data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 950
    .local v27, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_14

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    goto :goto_9

    .line 957
    .end local v27           #msg:Ljava/lang/String;
    .end local v30           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_15
    new-instance v5, Ljava/io/File;

    const-string v6, "app"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_16

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 964
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->getListOfIncompleteInstallPackages()Ljava/util/ArrayList;

    move-result-object v14

    .line 966
    .local v14, deletePkgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/16 v20, 0x0

    .end local p1
    .restart local v20       #i:I
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_17

    .line 968
    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PackageManagerService$PackageSetting;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->cleanupInstallFailedPackage(Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 966
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 971
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->deleteTempPackageFiles()V

    .line 973
    const/16 v5, 0xc08

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 975
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 980
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v5, v0

    const/16 v6, 0x10

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 985
    const/16 v5, 0xc12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 987
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to scan packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v34

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    if-eq v5, v6, :cond_19

    const/4 v5, 0x1

    move v9, v5

    .line 999
    .local v9, regrantPermissions:Z
    :goto_b
    if-eqz v9, :cond_18

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Platform changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    iget v7, v7, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; regranting permissions for internal storage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    iput v6, v5, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    .line 1004
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1008
    const/16 v5, 0xc1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1014
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1015
    monitor-exit v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1016
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1017
    return-void

    .line 997
    .end local v9           #regrantPermissions:Z
    :cond_19
    const/4 v5, 0x0

    move v9, v5

    goto :goto_b
.end method

.method static synthetic access$1600()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1700(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/PackageManagerService;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->installPackageLI(Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$MoveParams;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V

    return-void
.end method

.method static synthetic access$2600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/PackageManagerService;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/PackageManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->deletePackageX(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/PackageManagerService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatusInner(ZZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PackageManagerService;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V

    return-void
.end method

.method static appendInt([II)[I
    .locals 5
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 1273
    if-nez p0, :cond_0

    .line 1274
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    .line 1285
    :goto_0
    return-object v3

    .line 1276
    :cond_0
    array-length v0, p0

    .line 1277
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1278
    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    move-object v3, p0

    .line 1279
    goto :goto_0

    .line 1277
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1282
    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 1283
    .local v2, ret:[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1284
    aput p1, v2, v0

    move-object v3, v2

    .line 1285
    goto :goto_0
.end method

.method static appendInts([I[I)[I
    .locals 3
    .parameter "cur"
    .parameter "add"

    .prologue
    .line 1289
    if-nez p1, :cond_0

    move-object v2, p0

    .line 1295
    :goto_0
    return-object v2

    .line 1290
    :cond_0
    if-nez p0, :cond_1

    move-object v2, p1

    goto :goto_0

    .line 1291
    :cond_1
    array-length v0, p1

    .line 1292
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1293
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object p0

    .line 1292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p0

    .line 1295
    goto :goto_0
.end method

.method static arrayToString([I)Ljava/lang/String;
    .locals 3
    .parameter "array"

    .prologue
    .line 6989
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6990
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6991
    if-eqz p0, :cond_1

    .line 6992
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 6993
    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6994
    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 6992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6997
    .end local v1           #i:I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6998
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private cacheNativeBinaryLI(Landroid/content/pm/PackageParser$Package;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "pkg"
    .parameter "zipFile"
    .parameter "entry"
    .parameter "binaryDir"
    .parameter "binaryFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "tmp"

    .line 3791
    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 3793
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_0
    const-string v3, "tmp"

    const-string v4, "tmp"

    invoke-static {v3, v4, p4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 3794
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3797
    .local v2, tempFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1ed

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3805
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3806
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create cached binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3810
    .end local v1           #tempFile:Ljava/io/File;
    .end local v2           #tempFilePath:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #tempFile:Ljava/io/File;
    .restart local v2       #tempFilePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3812
    return-void
.end method

.method private cachePackageGdbServerLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;)I
    .locals 11
    .parameter "pkg"
    .parameter "scanFile"
    .parameter "cpuAbi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 3694
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->getNativeBinaryDirForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v4

    .line 3695
    .local v4, installGdbServerDir:Ljava/io/File;
    const-string v6, "gdbserver"

    .line 3696
    .local v6, GDBSERVER:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gdbserver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3698
    .local v7, apkGdbServerPath:Ljava/lang/String;
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 3699
    .local v2, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    .line 3702
    .local v8, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3703
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 3705
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3708
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3710
    .local v9, entryName:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gdbserver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3716
    .local v10, installGdbServerPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3717
    .local v5, installGdbServerFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    .end local v6           #GDBSERVER:Ljava/lang/String;
    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    .line 3721
    :cond_1
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching gdbserver "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-nez v0, :cond_2

    .line 3724
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_2
    move-object v0, p0

    move-object v1, p1

    .line 3726
    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->cacheNativeBinaryLI(Landroid/content/pm/PackageParser$Package;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V

    .line 3729
    :cond_3
    const/4 v0, 0x0

    .line 3731
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #installGdbServerFile:Ljava/io/File;
    .end local v9           #entryName:Ljava/lang/String;
    .end local v10           #installGdbServerPath:Ljava/lang/String;
    :goto_0
    return v0

    .restart local v6       #GDBSERVER:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cachePackageSharedLibsForAbiLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;)I
    .locals 26
    .parameter "pkg"
    .parameter "scanFile"
    .parameter "cpuAbi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 3596
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->getNativeBinaryDirForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v9

    .line 3597
    .local v9, sharedLibraryDir:Ljava/io/File;
    const-string v11, "lib/"

    .line 3598
    .local v11, apkLib:Ljava/lang/String;
    const-string v5, "lib/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    .line 3599
    .local v12, apkLibLen:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 3600
    .local v13, cpuAbiLen:I
    const-string v20, "lib"

    .line 3601
    .local v20, libPrefix:Ljava/lang/String;
    const-string v5, "lib"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    .line 3602
    .local v21, libPrefixLen:I
    const-string v22, ".so"

    .line 3603
    .local v22, libSuffix:Ljava/lang/String;
    const-string v5, ".so"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    .line 3604
    .local v23, libSuffixLen:I
    const/16 v16, 0x0

    .line 3605
    .local v16, hasNativeLibraries:Z
    const/16 v17, 0x0

    .line 3609
    .local v17, installedNativeLibraries:Z
    add-int/lit8 v5, v12, 0x2

    add-int v5, v5, v21

    add-int/lit8 v5, v5, 0x1

    add-int v24, v5, v23

    .line 3611
    .local v24, minEntryLen:I
    new-instance v7, Ljava/util/zip/ZipFile;

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 3612
    .local v7, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14

    .line 3615
    .end local v11           #apkLib:Ljava/lang/String;
    .local v14, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3616
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 3618
    .local v8, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3621
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3629
    .local v15, entryName:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    const-string v5, ".so"

    invoke-virtual {v15, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "lib/"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3636
    const/16 v5, 0x2f

    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 3638
    .local v18, lastSlash:I
    if-ltz v18, :cond_0

    add-int/lit8 v5, v18, 0x1

    const-string v6, "lib"

    const/4 v10, 0x0

    move-object v0, v15

    move v1, v5

    move-object v2, v6

    move v3, v10

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3643
    const/16 v16, 0x1

    .line 3647
    add-int v5, v12, v13

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_0

    const/4 v5, 0x0

    move-object v0, v15

    move v1, v12

    move-object/from16 v2, p3

    move v3, v5

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3654
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 3655
    .local v19, libFileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/FileUtils;->isFilenameSafe(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3659
    const/16 v17, 0x1

    .line 3661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 3663
    .local v25, sharedLibraryFilePath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3664
    .local v10, sharedLibraryFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    .end local v18           #lastSlash:I
    cmp-long v5, v5, v18

    if-nez v5, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v18

    cmp-long v5, v5, v18

    if-eqz v5, :cond_0

    .line 3668
    :cond_1
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caching shared lib "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 3671
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 3673
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->cacheNativeBinaryLI(Landroid/content/pm/PackageParser$Package;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_0

    .line 3677
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v10           #sharedLibraryFile:Ljava/io/File;
    .end local v15           #entryName:Ljava/lang/String;
    .end local v19           #libFileName:Ljava/lang/String;
    .end local v25           #sharedLibraryFilePath:Ljava/lang/String;
    :cond_3
    if-nez v16, :cond_4

    .line 3678
    const/4 v5, 0x1

    .line 3683
    :goto_1
    return v5

    .line 3680
    :cond_4
    if-nez v17, :cond_5

    .line 3681
    const/4 v5, 0x2

    goto :goto_1

    .line 3683
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private cachePackageSharedLibsLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)I
    .locals 10
    .parameter "pkg"
    .parameter "scanFile"

    .prologue
    const/4 v7, 0x2

    const/4 v9, -0x2

    const-string v8, "PackageManager"

    .line 3742
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 3744
    .local v0, cpuAbi:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/PackageManagerService;->cachePackageSharedLibsForAbiLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 3752
    .local v3, result:I
    if-ne v3, v7, :cond_2

    .line 3753
    const-string v5, "ro.product.cpu.abi2"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3754
    .local v1, cpuAbi2:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3755
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PackageManagerService;->cachePackageSharedLibsForAbiLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 3758
    :cond_0
    if-ne v3, v7, :cond_1

    .line 3759
    const-string v5, "PackageManager"

    const-string v6, "Native ABI mismatch from package file"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 3784
    .end local v1           #cpuAbi2:Ljava/lang/String;
    .end local v3           #result:I
    :goto_0
    return v5

    .line 3763
    .restart local v1       #cpuAbi2:Ljava/lang/String;
    .restart local v3       #result:I
    :cond_1
    if-nez v3, :cond_2

    .line 3764
    move-object v0, v1

    .line 3770
    .end local v1           #cpuAbi2:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 3772
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/PackageManagerService;->cachePackageGdbServerLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;)I

    move-result v4

    .line 3773
    .local v4, result2:I
    if-nez v4, :cond_3

    .line 3774
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x20

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3784
    .end local v4           #result2:I
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 3777
    .end local v3           #result:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 3778
    .local v2, e:Ljava/util/zip/ZipException;
    const-string v5, "PackageManager"

    const-string v5, "Failed to extract data from package file"

    invoke-static {v8, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v9

    .line 3779
    goto :goto_0

    .line 3780
    .end local v2           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 3781
    .local v2, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    const-string v5, "Failed to cache package shared libs"

    invoke-static {v8, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3782
    const/4 v5, -0x4

    goto :goto_0
.end method

.method private checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .locals 4
    .parameter "permName"

    .prologue
    .line 1703
    if-eqz p1, :cond_1

    .line 1704
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v0

    .line 1705
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_1

    .line 1706
    iget v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1707
    return-object v0

    .line 1709
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1715
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permission tree found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 10
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1945
    if-eqz p4, :cond_4

    .line 1946
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 1947
    .local v6, N:I
    if-ne v6, v0, :cond_0

    .line 1948
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    .line 1977
    .end local v6           #N:I
    :goto_0
    return-object v0

    .line 1949
    .restart local v6       #N:I
    .restart local p0
    :cond_0
    if-le v6, v0, :cond_4

    .line 1952
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1953
    .local v7, r0:Landroid/content/pm/ResolveInfo;
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1962
    .local v8, r1:Landroid/content/pm/ResolveInfo;
    iget v0, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_1

    iget v0, v7, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_2

    .line 1965
    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    goto :goto_0

    .line 1969
    .restart local p0
    :cond_2
    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1971
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_3

    move-object v0, v9

    .line 1972
    goto :goto_0

    .line 1974
    :cond_3
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 1977
    .end local v6           #N:I
    .end local v7           #r0:Landroid/content/pm/ResolveInfo;
    .end local v8           #r1:Landroid/content/pm/ResolveInfo;
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearApplicationUserDataLI(Ljava/lang/String;)Z
    .locals 11
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    const-string v10, "Package named \'"

    const-string v8, "\' doesn\'t exist."

    const-string v7, "PackageManager"

    .line 6470
    if-nez p1, :cond_0

    .line 6471
    const-string v5, "PackageManager"

    const-string v5, "Attempt to delete null packageName."

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 6509
    :goto_0
    return v5

    .line 6475
    :cond_0
    const/4 v1, 0x0

    .line 6476
    .local v1, dataOnly:Z
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 6477
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 6478
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_3

    .line 6479
    const/4 v1, 0x1

    .line 6480
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6481
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v6, :cond_2

    .line 6482
    :cond_1
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package named \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' doesn\'t exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6483
    monitor-exit v5

    move v5, v9

    goto :goto_0

    .line 6485
    :cond_2
    iget-object v2, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6487
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6489
    if-nez v1, :cond_5

    .line 6491
    if-nez v2, :cond_4

    .line 6492
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package named \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' doesn\'t exist."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 6493
    goto :goto_0

    .line 6487
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 6495
    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6496
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    .line 6497
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no applicationInfo."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 6498
    goto/16 :goto_0

    .line 6501
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v5, :cond_6

    .line 6502
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v5, p1}, Lcom/android/server/Installer;->clearUserData(Ljava/lang/String;)I

    move-result v4

    .line 6503
    .local v4, retCode:I
    if-gez v4, :cond_6

    .line 6504
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t remove cache files for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 6506
    goto/16 :goto_0

    .line 6509
    .end local v4           #retCode:I
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z
    .locals 6
    .parameter "pp"
    .parameter "ps"
    .parameter "pkg"
    .parameter "srcFile"
    .parameter "parseFlags"

    .prologue
    const/4 v4, 0x1

    const-string v5, "PackageManager"

    .line 2531
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v0, p4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2534
    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 2538
    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move v0, v4

    .line 2552
    :goto_0
    return v0

    .line 2542
    :cond_0
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :goto_1
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2548
    invoke-virtual {p1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v0

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2549
    const/4 v0, 0x0

    goto :goto_0

    .line 2544
    :cond_1
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changed; collecting certs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v4

    .line 2552
    goto :goto_0
.end method

.method static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "pi1"
    .parameter "pi2"

    .prologue
    const/4 v2, 0x0

    .line 1732
    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 1743
    :goto_0
    return v0

    .line 1733
    :cond_0
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    .line 1734
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 1735
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 1737
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 1743
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v2, 0x0

    .line 1719
    if-nez p0, :cond_1

    .line 1720
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1728
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1720
    goto :goto_0

    .line 1722
    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    .line 1723
    goto :goto_0

    .line 1725
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 1726
    goto :goto_0

    .line 1728
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .parameter "zipEntry"
    .parameter "inZipFile"
    .parameter "outZipStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6067
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 6071
    .local v0, buffer:[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_0

    .line 6073
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 6078
    .local v2, newEntry:Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 6080
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 6081
    .local v1, data:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, num:I
    if-lez v3, :cond_1

    .line 6082
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 6076
    .end local v1           #data:Ljava/io/InputStream;
    .end local v2           #newEntry:Ljava/util/zip/ZipEntry;
    .end local v3           #num:I
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2       #newEntry:Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 6084
    .restart local v1       #data:Ljava/io/InputStream;
    .restart local v3       #num:I
    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 6085
    return-void
.end method

.method private createInstallArgs(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "flags"
    .parameter "fullCodePath"
    .parameter "fullResourcePath"

    .prologue
    .line 5088
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5089
    new-instance v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 5091
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInstallArgs(Landroid/net/Uri;ILjava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 3
    .parameter "packageURI"
    .parameter "flags"
    .parameter "pkgName"

    .prologue
    .line 5097
    invoke-static {p2}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5098
    const/4 v1, 0x0

    const-string v2, "/pkg.apk"

    invoke-static {v1, p3, v2}, Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5099
    .local v0, cid:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    .line 5101
    .end local v0           #cid:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "params"

    .prologue
    .line 5080
    iget v0, p1, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-static {v0}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5081
    new-instance v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V

    .line 5083
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V

    goto :goto_0
.end method

.method private createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .parameter "installDir"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 6106
    :try_start_0
    const-string v2, "vmdl"

    const-string v3, ".tmp"

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6112
    .local v1, tmpPackageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x180

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .line 6119
    .end local v1           #tmpPackageFile:Ljava/io/File;
    :goto_0
    return-object v2

    .line 6107
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 6108
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Couldn\'t create temp file for downloaded package file."

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 6109
    goto :goto_0

    .line 6115
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tmpPackageFile:Ljava/io/File;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 6116
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Trouble getting the canoncical path for a temp file."

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 6117
    goto :goto_0
.end method

.method private deleteApplicationCacheFilesLI(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    const-string v6, "PackageManager"

    .line 6536
    if-nez p1, :cond_0

    .line 6537
    const-string v3, "PackageManager"

    const-string v3, "Attempt to delete null packageName."

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 6561
    :goto_0
    return v3

    .line 6541
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6542
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 6543
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6544
    if-nez v1, :cond_1

    .line 6545
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 6546
    goto :goto_0

    .line 6543
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 6548
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6549
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 6550
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no applicationInfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 6551
    goto :goto_0

    .line 6553
    :cond_2
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_3

    .line 6554
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v3, p1}, Lcom/android/server/Installer;->deleteCacheFiles(Ljava/lang/String;)I

    move-result v2

    .line 6555
    .local v2, retCode:I
    if-gez v2, :cond_3

    .line 6556
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove cache files for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 6558
    goto :goto_0

    .line 6561
    .end local v2           #retCode:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z
    .locals 6
    .parameter "p"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6359
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6360
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 6361
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no applicationInfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 6381
    :goto_0
    return v2

    .line 6364
    :cond_0
    if-eqz p4, :cond_1

    .line 6365
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 6369
    :cond_1
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;I)V

    .line 6372
    if-eqz p2, :cond_2

    .line 6374
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    move v1, v2

    .line 6376
    .local v1, installFlags:I
    :goto_1
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    move v2, v4

    :goto_2
    or-int/2addr v1, v2

    .line 6378
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v2

    iput-object v2, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .end local v1           #installFlags:I
    :cond_2
    move v2, v4

    .line 6381
    goto :goto_0

    :cond_3
    move v1, v5

    .line 6374
    goto :goto_1

    .restart local v1       #installFlags:I
    :cond_4
    move v2, v5

    .line 6376
    goto :goto_2
.end method

.method private deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z
    .locals 10
    .parameter "packageName"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"

    .prologue
    const/4 v8, 0x0

    const-string v9, "Package named \'"

    const-string v7, "\' doesn\'t exist."

    const-string v6, "PackageManager"

    .line 6389
    if-nez p1, :cond_0

    .line 6390
    const-string v4, "PackageManager"

    const-string v4, "Attempt to delete null packageName."

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 6435
    :goto_0
    return v4

    .line 6394
    :cond_0
    const/4 v0, 0x0

    .line 6395
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 6396
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 6397
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_2

    .line 6399
    const/4 v0, 0x1

    .line 6400
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6401
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_1

    .line 6402
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package named \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' doesn\'t exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6403
    monitor-exit v4

    move v4, v8

    goto :goto_0

    .line 6405
    :cond_1
    iget-object v1, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6407
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6408
    if-nez v1, :cond_3

    .line 6409
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package named \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t exist."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 6410
    goto :goto_0

    .line 6407
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 6413
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_3
    if-eqz v0, :cond_4

    .line 6415
    invoke-direct {p0, v1, p4, p3}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;I)V

    .line 6416
    const/4 v4, 0x1

    goto :goto_0

    .line 6419
    :cond_4
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_5

    .line 6420
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no applicationInfo."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 6421
    goto/16 :goto_0

    .line 6423
    :cond_5
    const/4 v3, 0x0

    .line 6424
    .local v3, ret:Z
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 6425
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing system package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6428
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/PackageManagerService;->deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v3

    :goto_1
    move v4, v3

    .line 6435
    goto/16 :goto_0

    .line 6430
    :cond_6
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing non-system package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6432
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    .line 6433
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v3

    goto :goto_1
.end method

.method private deletePackageX(Ljava/lang/String;ZZI)Z
    .locals 10
    .parameter "packageName"
    .parameter "sendBroadCast"
    .parameter "deleteCodeAndResources"
    .parameter "flags"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6159
    new-instance v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v2}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 6162
    .local v2, info:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    const-string v5, "device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 6165
    .local v0, dpm:Landroid/app/admin/IDevicePolicyManager;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6166
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not removing package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": has active device admin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6167
    const/4 v5, 0x0

    .line 6201
    :goto_0
    return v5

    .line 6169
    :catch_0
    move-exception v5

    .line 6172
    :cond_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6173
    const/high16 v6, 0x1

    or-int/2addr v6, p4

    :try_start_1
    invoke-direct {p0, p1, p3, v6, v2}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v3

    .line 6175
    .local v3, res:Z
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6177
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 6178
    iget-boolean v4, v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 6179
    .local v4, systemUpdate:Z
    invoke-virtual {v2, p3, v4}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 6183
    if-eqz v4, :cond_1

    .line 6184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 6185
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.UID"

    iget v6, v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v6, :cond_3

    iget v6, v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6186
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6188
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v5, p1, v1, v9}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6189
    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v5, p1, v1, v9}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6193
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v4           #systemUpdate:Z
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 6196
    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    if-eqz v5, :cond_2

    .line 6197
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6198
    :try_start_2
    iget-object v6, v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    invoke-virtual {v6, p3}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 6199
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v5, v3

    .line 6201
    goto :goto_0

    .line 6175
    .end local v3           #res:Z
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 6185
    .restart local v1       #extras:Landroid/os/Bundle;
    .restart local v3       #res:Z
    .restart local v4       #systemUpdate:Z
    :cond_3
    iget v6, v2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_1

    .line 6199
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v4           #systemUpdate:Z
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method private deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z
    .locals 12
    .parameter "p"
    .parameter "flags"
    .parameter "outInfo"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const-string v5, "PackageManager"

    .line 6297
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6299
    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_0

    .line 6300
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no applicationInfo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 6354
    :goto_0
    return v0

    .line 6303
    :cond_0
    const/4 v8, 0x0

    .line 6307
    .local v8, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v8

    .line 6309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6310
    if-nez v8, :cond_1

    .line 6311
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to delete system package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 6312
    goto :goto_0

    .line 6309
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6314
    :cond_1
    const-string v0, "PackageManager"

    const-string v0, "Deleting system pkg from data partition"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6317
    iput-boolean v11, p3, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 6318
    const/4 v7, 0x0

    .line 6319
    .local v7, deleteCodeAndResources:Z
    iget v0, v8, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v0, v1, :cond_3

    .line 6321
    const/4 v7, 0x1

    .line 6322
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    .line 6323
    and-int/lit8 p2, p2, -0x2

    .line 6331
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v7, p2, p3}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v9

    .line 6332
    .local v9, ret:Z
    if-nez v9, :cond_4

    move v0, v4

    .line 6333
    goto :goto_0

    .line 6327
    .end local v9           #ret:Z
    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    .line 6328
    or-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 6335
    .restart local v9       #ret:Z
    :cond_4
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6337
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6339
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->removeNativeBinariesLI(Landroid/content/pm/PackageParser$Package;)V

    .line 6340
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6342
    iget-object v0, v8, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    const/4 v1, 0x5

    const/16 v3, 0x21

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 6346
    .local v2, newPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_5

    .line 6347
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restore system package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 6348
    goto/16 :goto_0

    .line 6340
    .end local v2           #newPkg:Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 6350
    .restart local v2       #newPkg:Landroid/content/pm/PackageParser$Package;
    :cond_5
    iget-object v10, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 6351
    :try_start_4
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 6352
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 6353
    monitor-exit v10

    move v0, v11

    .line 6354
    goto/16 :goto_0

    .line 6353
    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private deleteTempPackageFiles()V
    .locals 6

    .prologue
    .line 6088
    new-instance v0, Lcom/android/server/PackageManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/PackageManagerService$6;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 6093
    .local v0, filter:Ljava/io/FilenameFilter;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 6094
    .local v3, tmpFilesList:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 6101
    :cond_0
    return-void

    .line 6097
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 6098
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6099
    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 6097
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    .locals 9
    .parameter "newPackage"
    .parameter "publicZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 6031
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6033
    .local v3, publicZipOutStream:Ljava/util/zip/ZipOutputStream;
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 6037
    .local v1, privateZip:Ljava/util/zip/ZipFile;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 6038
    .local v2, privateZipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6039
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 6040
    .local v4, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6041
    .local v5, zipEntryName:Ljava/lang/String;
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "resources.arsc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "res/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6045
    :cond_1
    :try_start_0
    invoke-static {v4, v1, v3}, Lcom/android/server/PackageManagerService;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6046
    :catch_0
    move-exception v0

    .line 6048
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 6049
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6051
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v6

    .line 6057
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v5           #zipEntryName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 6058
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a4

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 6062
    return-void
.end method

.method private findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .locals 4
    .parameter "permName"

    .prologue
    .line 1692
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1693
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    move-object v2, v0

    .line 1699
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defProcessName"
    .parameter "processName"
    .parameter "uid"

    .prologue
    .line 2682
    if-nez p1, :cond_0

    move-object v0, p0

    .line 2685
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1475
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1476
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_2

    .line 1477
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1

    .line 1478
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1479
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 1480
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1486
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .restart local v0       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    move-object v2, v3

    .line 1482
    goto :goto_0

    .line 1484
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 1486
    goto :goto_0
.end method

.method private generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1491
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1

    .line 1492
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_0

    .line 1493
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1494
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1495
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1496
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1497
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1498
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, v2}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1500
    :cond_0
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1502
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static final generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .parameter "bp"
    .parameter "flags"

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1420
    :goto_0
    return-object v1

    .line 1415
    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 1416
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1417
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1418
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1419
    iget v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move-object v1, v0

    .line 1420
    goto :goto_0
.end method

.method static getApkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "codePath"

    .prologue
    const/4 v5, 0x0

    .line 5573
    if-nez p0, :cond_0

    move-object v2, v5

    .line 5584
    :goto_0
    return-object v2

    .line 5576
    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5577
    .local v1, sidx:I
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5578
    .local v0, eidx:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 5579
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5584
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5580
    :cond_2
    if-nez v0, :cond_1

    .line 5581
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Invalid code path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Not a valid apk name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 5582
    goto :goto_0
.end method

.method private getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2785
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getEncryptKey()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    const-string v2, "AppsOnSD"

    .line 9480
    :try_start_0
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v2

    const-string v3, "AppsOnSD"

    invoke-virtual {v2, v3}, Landroid/security/SystemKeyStore;->retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9481
    .local v1, sdEncKey:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 9482
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v2

    const/16 v3, 0x80

    const-string v4, "AES"

    const-string v5, "AppsOnSD"

    invoke-virtual {v2, v3, v4, v5}, Landroid/security/SystemKeyStore;->generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9484
    if-nez v1, :cond_0

    .line 9485
    const-string v2, "PackageManager"

    const-string v3, "Failed to create encryption keys"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 9492
    .end local v1           #sdEncKey:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v1       #sdEncKey:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 9489
    goto :goto_0

    .line 9490
    .end local v1           #sdEncKey:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 9491
    .local v0, nsae:Ljava/security/NoSuchAlgorithmException;
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create encryption keys with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 9492
    goto :goto_0
.end method

.method private static getNativeBinaryDirForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 3583
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "oldCodePath"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const-string v7, "-"

    .line 5518
    const-string v1, ""

    .line 5519
    .local v1, idxStr:Ljava/lang/String;
    const/4 v0, 0x1

    .line 5522
    .local v0, idx:I
    if-eqz p0, :cond_2

    .line 5523
    move-object v3, p0

    .line 5525
    .local v3, subStr:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5526
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5530
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 5531
    .local v2, sidx:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 5532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5533
    if-eqz v3, :cond_2

    .line 5534
    const-string v4, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5535
    const-string v4, "-"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5538
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5539
    const/4 v4, 0x1

    if-gt v0, v4, :cond_3

    .line 5540
    add-int/lit8 v0, v0, 0x1

    .line 5549
    .end local v2           #sidx:I
    .end local v3           #subStr:Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5542
    .restart local v2       #sidx:I
    .restart local v3       #subStr:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5544
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .locals 11
    .parameter "packageName"
    .parameter "pStats"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v8, "PackageManager"

    .line 6589
    if-nez p1, :cond_0

    .line 6590
    const-string v6, "PackageManager"

    const-string v6, "Attempt to get size of null packageName."

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 6625
    :goto_0
    return v6

    .line 6594
    :cond_0
    const/4 v1, 0x0

    .line 6595
    .local v1, dataOnly:Z
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 6596
    :try_start_0
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 6597
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_3

    .line 6598
    const/4 v1, 0x1

    .line 6599
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6600
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v7, :cond_2

    .line 6601
    :cond_1
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package named \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    monitor-exit v6

    move v6, v10

    goto :goto_0

    .line 6604
    :cond_2
    iget-object v2, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 6606
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6607
    const/4 v4, 0x0

    .line 6608
    .local v4, publicSrcDir:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 6609
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6610
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    .line 6611
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no applicationInfo."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 6612
    goto :goto_0

    .line 6606
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    .end local v4           #publicSrcDir:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 6614
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v4       #publicSrcDir:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v4, v6

    .line 6616
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v6, :cond_8

    .line 6617
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v4, p2}, Lcom/android/server/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    move-result v5

    .line 6619
    .local v5, res:I
    if-gez v5, :cond_7

    move v6, v10

    .line 6620
    goto/16 :goto_0

    .line 6614
    .end local v5           #res:I
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_1

    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #res:I
    :cond_7
    move v6, v9

    .line 6622
    goto/16 :goto_0

    .end local v5           #res:I
    :cond_8
    move v6, v9

    .line 6625
    goto/16 :goto_0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 2504
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2505
    .local v0, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2506
    .local v2, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "uiderrors.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2507
    .local v1, fname:Ljava/io/File;
    return-object v1
.end method

.method private getStoragePackageList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "configFilename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10027
    const-string v0, "/data/databases/"

    .line 10029
    .local v0, PURE_NAND_DIRECTORY:Ljava/lang/String;
    const/4 v1, 0x0

    .line 10063
    .local v1, mAlPackageName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method static getTempContainerId()Ljava/lang/String;
    .locals 11

    .prologue
    .line 9497
    const-string v8, "smdl2tmp"

    .line 9498
    .local v8, prefix:Ljava/lang/String;
    const/4 v9, 0x1

    .line 9499
    .local v9, tmpIdx:I
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .line 9500
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 9501
    const/4 v2, 0x0

    .line 9502
    .local v2, idx:I
    const/16 v1, 0xfa

    new-array v3, v1, [I

    .line 9503
    .local v3, idList:[I
    const/4 v4, 0x1

    .line 9504
    .local v4, neverFound:Z
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v7, v4

    .end local v4           #neverFound:Z
    .local v7, neverFound:Z
    move v5, v2

    .end local v2           #idx:I
    .local v5, idx:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v1, v0, v2

    .line 9506
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    move v4, v5

    .end local v5           #idx:I
    .local v4, idx:I
    move v5, v7

    .line 9504
    .end local v1           #name:Ljava/lang/String;
    .end local v7           #neverFound:Z
    .local v5, neverFound:Z
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    move v7, v5

    .end local v5           #neverFound:Z
    .restart local v7       #neverFound:Z
    move v5, v4

    .end local v4           #idx:I
    .local v5, idx:I
    goto :goto_0

    .line 9509
    .local v1, name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 9510
    .local v4, sidx:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_1

    move v4, v5

    .end local v5           #idx:I
    .local v4, idx:I
    move v5, v7

    .line 9512
    .end local v7           #neverFound:Z
    .local v5, neverFound:Z
    goto :goto_1

    .line 9514
    .local v4, sidx:I
    .local v5, idx:I
    .restart local v7       #neverFound:Z
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v4           #sidx:I
    move-result-object v1

    .line 9515
    .local v1, subStr:Ljava/lang/String;
    const/4 v4, -0x1

    aput v4, v3, v5

    .line 9516
    if-eqz v1, :cond_5

    .line 9518
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 9519
    .local v1, cid:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #idx:I
    .local v4, idx:I
    :try_start_1
    aput v1, v3, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9520
    const/4 v1, 0x0

    .end local v7           #neverFound:Z
    .local v1, neverFound:Z
    move v5, v1

    .line 9522
    .end local v1           #neverFound:Z
    .local v5, neverFound:Z
    goto :goto_1

    .line 9521
    .end local v4           #idx:I
    .local v1, subStr:Ljava/lang/String;
    .local v5, idx:I
    .restart local v7       #neverFound:Z
    :catch_0
    move-exception v1

    move v1, v5

    .end local v5           #idx:I
    .local v1, idx:I
    :goto_2
    move v5, v7

    .end local v7           #neverFound:Z
    .local v5, neverFound:Z
    move v4, v1

    .end local v1           #idx:I
    .restart local v4       #idx:I
    goto :goto_1

    .line 9525
    .end local v4           #idx:I
    .local v5, idx:I
    .restart local v7       #neverFound:Z
    :cond_2
    if-nez v7, :cond_4

    .line 9527
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 9528
    const/4 v0, 0x1

    .local v0, j:I
    :goto_3
    array-length v1, v3

    if-gt v0, v1, :cond_4

    .line 9529
    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget v1, v3, v1

    if-eq v1, v0, :cond_3

    .line 9530
    move v0, v0

    .line 9536
    .end local v2           #i$:I
    .end local v3           #idList:[I
    .end local v5           #idx:I
    .end local v6           #len$:I
    .end local v7           #neverFound:Z
    .end local v9           #tmpIdx:I
    .local v0, tmpIdx:I
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #tmpIdx:I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9528
    .local v0, j:I
    .restart local v2       #i$:I
    .restart local v3       #idList:[I
    .restart local v5       #idx:I
    .restart local v6       #len$:I
    .restart local v7       #neverFound:Z
    .restart local v9       #tmpIdx:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 9521
    .end local v5           #idx:I
    .local v0, arr$:[Ljava/lang/String;
    .local v1, cid:I
    .restart local v4       #idx:I
    :catch_1
    move-exception v1

    move v1, v4

    .end local v4           #idx:I
    .local v1, idx:I
    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #idx:I
    .end local v2           #i$:I
    .end local v3           #idList:[I
    .end local v6           #len$:I
    .end local v7           #neverFound:Z
    :cond_4
    move v0, v9

    .end local v9           #tmpIdx:I
    .local v0, tmpIdx:I
    goto :goto_4

    .local v0, arr$:[Ljava/lang/String;
    .local v1, subStr:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #idList:[I
    .restart local v5       #idx:I
    .restart local v6       #len$:I
    .restart local v7       #neverFound:Z
    .restart local v9       #tmpIdx:I
    :cond_5
    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    move v5, v7

    .end local v7           #neverFound:Z
    .local v5, neverFound:Z
    goto :goto_1
.end method

.method private grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 20
    .parameter "pkg"
    .parameter "replace"

    .prologue
    .line 4102
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4103
    .local v15, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v15, :cond_0

    .line 4244
    :goto_0
    return-void

    .line 4106
    :cond_0
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 4107
    .local v9, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1
    const/4 v8, 0x0

    .line 4109
    .local v8, changedPermission:Z
    if-eqz p2, :cond_1

    .line 4110
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    .line 4111
    if-ne v9, v15, :cond_1

    .line 4112
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 4117
    :cond_1
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 4118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 4121
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4122
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v3, :cond_17

    .line 4123
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 4124
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$BasePermission;

    .line 4131
    .local v7, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v7, :cond_16

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 4132
    iget-object v14, v7, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    .line 4134
    .local v14, perm:Ljava/lang/String;
    const/4 v6, 0x0

    .line 4135
    .local v6, allowedSig:Z
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 4137
    :cond_3
    const/4 v5, 0x1

    .line 4175
    .local v5, allowed:Z
    :cond_4
    :goto_3
    if-eqz v5, :cond_14

    .line 4176
    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_5

    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 4180
    if-nez v6, :cond_5

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 4181
    const/4 v5, 0x0

    .line 4185
    sget-object v17, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    .line 4186
    .local v4, NP:I
    const/4 v11, 0x0

    .local v11, ip:I
    :goto_4
    if-ge v11, v4, :cond_5

    .line 4187
    sget-object v17, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v13, v17, v11

    .line 4189
    .local v13, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v17, v0

    move-object v0, v13

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    .line 4191
    const/4 v5, 0x1

    .line 4192
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Auto-granting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to old pkg "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    .end local v4           #NP:I
    .end local v11           #ip:I
    .end local v13           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_5
    if-eqz v5, :cond_13

    .line 4200
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 4201
    const/4 v8, 0x1

    .line 4202
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4203
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 4122
    .end local v5           #allowed:Z
    .end local v6           #allowedSig:Z
    .end local v14           #perm:Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .end local v3           #N:I
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #changedPermission:Z
    .end local v9           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v10           #i:I
    .end local v12           #name:Ljava/lang/String;
    :cond_7
    move-object v9, v15

    .line 4106
    goto/16 :goto_1

    .line 4138
    .restart local v3       #N:I
    .restart local v6       #allowedSig:Z
    .restart local v7       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v8       #changedPermission:Z
    .restart local v9       #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .restart local v10       #i:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v14       #perm:Ljava/lang/String;
    :cond_8
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 4140
    const/4 v5, 0x0

    .restart local v5       #allowed:Z
    goto/16 :goto_3

    .line 4141
    .end local v5           #allowed:Z
    :cond_9
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 4143
    :cond_a
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v17

    if-nez v17, :cond_d

    :cond_b
    const/16 v17, 0x1

    move/from16 v5, v17

    .line 4147
    .restart local v5       #allowed:Z
    :goto_6
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 4148
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_c

    .line 4151
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v16

    .line 4154
    .local v16, sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 4155
    const/4 v5, 0x1

    .line 4164
    .end local v16           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_c
    :goto_7
    if-eqz v5, :cond_4

    .line 4165
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 4143
    .end local v5           #allowed:Z
    :cond_d
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 4157
    .restart local v5       #allowed:Z
    .restart local v16       #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_e
    const/4 v5, 0x0

    goto :goto_7

    .line 4160
    .end local v16           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_f
    const/4 v5, 0x1

    goto :goto_7

    .line 4168
    .end local v5           #allowed:Z
    :cond_10
    const/4 v5, 0x0

    .restart local v5       #allowed:Z
    goto/16 :goto_3

    .line 4186
    .restart local v4       #NP:I
    .restart local v11       #ip:I
    .restart local v13       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 4204
    .end local v4           #NP:I
    .end local v11           #ip:I
    .end local v13           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_12
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->haveGids:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 4205
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    goto/16 :goto_5

    .line 4208
    :cond_13
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because it was previously installed without"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4213
    :cond_14
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 4214
    const/4 v8, 0x1

    .line 4215
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->removeInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 4216
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Un-granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " from package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (protectionLevel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " flags=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4222
    :cond_15
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (protectionLevel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " flags=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4230
    .end local v5           #allowed:Z
    .end local v6           #allowedSig:Z
    .end local v14           #perm:Ljava/lang/String;
    :cond_16
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4235
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v12           #name:Ljava/lang/String;
    :cond_17
    if-nez v8, :cond_18

    if-eqz p2, :cond_19

    :cond_18
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1a

    :cond_19
    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 4241
    :cond_1a
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    .line 4243
    :cond_1b
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->haveGids:Z

    goto/16 :goto_0
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgInfo"
    .parameter "perm"

    .prologue
    const/4 v2, 0x1

    .line 4011
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4012
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 4016
    :goto_1
    return v1

    .line 4011
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4016
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static ignoreCodePath(Ljava/lang/String;)Z
    .locals 5
    .parameter "fullPathStr"

    .prologue
    .line 5556
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5557
    .local v0, apkName:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 5558
    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5560
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5562
    .local v2, version:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5563
    const/4 v3, 0x1

    .line 5566
    .end local v2           #version:Ljava/lang/String;
    :goto_0
    return v3

    .line 5564
    .restart local v2       #version:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 5566
    .end local v2           #version:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 9
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v3, "Attempt to re-install "

    const-string v7, "PackageManager"

    .line 5603
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5605
    .local v2, pkgName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    .line 5606
    .local v0, dataDirExists:Z
    iput-object v2, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 5607
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 5608
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5613
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to re-install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without first uninstalling package running as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    const/4 v4, -0x1

    iput v4, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5617
    monitor-exit v3

    .line 5651
    :cond_0
    :goto_0
    return-void

    .line 5619
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5621
    :cond_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to re-install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without first uninstalling."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    const/4 v4, -0x1

    iput v4, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5624
    monitor-exit v3

    goto :goto_0

    .line 5626
    .end local p0
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local p0
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5627
    iput v6, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 5628
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 5629
    .local v1, newPackage:Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_4

    .line 5630
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package couldn\'t be installed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    iget v3, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    iput v3, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v3, v6, :cond_0

    .line 5632
    const/4 v3, -0x2

    iput v3, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_0

    .line 5635
    :cond_4
    invoke-direct {p0, v1, p4, p5}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 5640
    iget v3, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v3, v6, :cond_0

    .line 5645
    if-eqz v0, :cond_5

    move v3, v6

    :goto_1
    iget-object v4, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {p0, v2, v8, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    goto :goto_0

    :cond_5
    move v3, v8

    goto :goto_1
.end method

.method static installOnSd(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 657
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 664
    :goto_0
    return v0

    .line 661
    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 662
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 664
    goto :goto_0
.end method

.method private installPackageLI(Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 22
    .parameter "args"
    .parameter "newInstall"
    .parameter "res"

    .prologue
    .line 5889
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->flags:I

    move v15, v0

    .line 5890
    .local v15, pFlags:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    move-object v9, v0

    .line 5891
    .local v9, installerPackageName:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5892
    .local v21, tmpPackageFile:Ljava/io/File;
    and-int/lit8 v5, v15, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v11, v5

    .line 5893
    .local v11, forwardLocked:Z
    :goto_0
    and-int/lit8 v5, v15, 0x8

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v14, v5

    .line 5894
    .local v14, onSd:Z
    :goto_1
    const/16 v19, 0x0

    .line 5895
    .local v19, replace:Z
    if-eqz v14, :cond_2

    const/4 v5, 0x0

    :goto_2
    or-int/lit8 v5, v5, 0x4

    or-int/lit8 v5, v5, 0x8

    if-eqz p2, :cond_3

    const/16 v6, 0x10

    :goto_3
    or-int v8, v5, v6

    .line 5898
    .local v8, scanMode:I
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5901
    if-eqz v11, :cond_4

    const/16 v5, 0x10

    :goto_4
    or-int/lit8 v5, v5, 0x2

    if-eqz v14, :cond_5

    const/16 v6, 0x20

    :goto_5
    or-int v7, v5, v6

    .line 5904
    .local v7, parseFlags:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/2addr v7, v5

    .line 5905
    new-instance v17, Landroid/content/pm/PackageParser;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 5906
    .local v17, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 5907
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 5909
    .local v6, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_6

    .line 5910
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5978
    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local p2
    :goto_6
    return-void

    .line 5892
    .end local v7           #parseFlags:I
    .end local v8           #scanMode:I
    .end local v11           #forwardLocked:Z
    .end local v14           #onSd:Z
    .end local v17           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #replace:Z
    .restart local p2
    :cond_0
    const/4 v5, 0x0

    move v11, v5

    goto :goto_0

    .line 5893
    .restart local v11       #forwardLocked:Z
    :cond_1
    const/4 v5, 0x0

    move v14, v5

    goto :goto_1

    .line 5895
    .restart local v14       #onSd:Z
    .restart local v19       #replace:Z
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 5901
    .restart local v8       #scanMode:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 5913
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v7       #parseFlags:I
    .restart local v17       #pp:Landroid/content/pm/PackageParser;
    :cond_6
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 5914
    .local v16, pkgName:Ljava/lang/String;
    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_7

    .line 5915
    and-int/lit8 v5, v15, 0x4

    if-nez v5, :cond_7

    .line 5916
    const/16 v5, -0xf

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    .line 5920
    :cond_7
    move-object/from16 v0, v17

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 5921
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    .line 5925
    :cond_8
    const/16 v17, 0x0

    .line 5926
    const/4 v12, 0x0

    .line 5927
    .local v12, oldCodePath:Ljava/lang/String;
    const/16 v20, 0x0

    .line 5928
    .local v20, systemApp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5930
    and-int/lit8 v10, v15, 0x2

    if-eqz v10, :cond_9

    .line 5931
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5932
    .local v13, oldName:Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v10, v0

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 5939
    invoke-virtual {v6, v13}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 5940
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 5941
    const/16 v19, 0x1

    .line 5948
    .end local v13           #oldName:Ljava/lang/String;
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5949
    .local v18, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v18, :cond_a

    .line 5950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object v12, v0

    .line 5951
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    if-eqz v10, :cond_a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_a

    .line 5952
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    move/from16 v20, v10

    .line 5956
    :cond_a
    :goto_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5958
    if-eqz v20, :cond_d

    if-eqz v14, :cond_d

    .line 5960
    const-string v5, "PackageManager"

    const-string v6, "Cannot install updates to system apps on sdcard"

    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5961
    const/16 v5, -0x13

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    .line 5942
    .end local v18           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v13       #oldName:Ljava/lang/String;
    .restart local p2
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 5945
    const/16 v19, 0x1

    goto :goto_7

    .line 5952
    .end local v13           #oldName:Ljava/lang/String;
    .end local p2
    .restart local v18       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_c
    const/4 v10, 0x0

    move/from16 v20, v10

    goto :goto_8

    .line 5956
    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 5965
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v18       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_d
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v16

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$InstallArgs;->doRename(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 5966
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    .line 5970
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v5, v10}, Lcom/android/server/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 5971
    if-eqz v19, :cond_f

    move-object/from16 v5, p0

    move-object/from16 v10, p3

    .line 5972
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v5, p0

    move-object/from16 v10, p3

    .line 5975
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_6
.end method

.method private isExternal(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 6026
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    .line 6022
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFwdLocked(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 668
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 4007
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "uid"

    .prologue
    .line 3558
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3559
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 3561
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationWithUid(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3565
    :cond_0
    :goto_0
    return-void

    .line 3562
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V
    .locals 21
    .parameter
    .parameter "uidArr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9675
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    .local p3, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 9676
    .local v19, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 9677
    .local v16, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    const/4 v14, 0x0

    .line 9678
    .local v14, doGc:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .line 9679
    .local v11, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 9682
    .local v13, codePath:Ljava/lang/String;
    const/16 v20, -0x12

    .line 9685
    .local v20, retCode:I
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v11, v5}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPreInstall(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 9687
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to mount cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when installing from sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9718
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 9720
    iget-object v5, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9692
    :cond_1
    if-eqz v13, :cond_2

    :try_start_1
    invoke-virtual {v11}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9693
    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cachepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match one in settings "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9718
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 9720
    iget-object v5, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto :goto_1

    .line 9698
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/lit8 v17, v5, 0x20

    .line 9699
    .local v17, parseFlags:I
    const/4 v14, 0x1

    .line 9700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v5, v0

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9701
    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 9704
    .local v18, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_5

    .line 9705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9706
    const/16 v20, 0x1

    .line 9707
    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9709
    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPostInstall(I)I

    .line 9710
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9715
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 9718
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 9720
    iget-object v5, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto/16 :goto_1

    .line 9710
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7

    .line 9715
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 9718
    .end local v17           #parseFlags:I
    :catchall_2
    move-exception v5

    const/4 v6, 0x1

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_4

    .line 9720
    iget-object v6, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9718
    :cond_4
    throw v5

    .line 9712
    .restart local v17       #parseFlags:I
    .restart local v18       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_5
    :try_start_9
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to install pkg from  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from sdcard"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 9724
    .end local v11           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v13           #codePath:Ljava/lang/String;
    .end local v17           #parseFlags:I
    .end local v18           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v20           #retCode:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v11, v0

    monitor-enter v11

    .line 9731
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    if-eq v5, v6, :cond_a

    const/4 v5, 0x1

    move v9, v5

    .line 9733
    .local v9, regrantPermissions:Z
    :goto_3
    if-eqz v9, :cond_7

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Platform changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    iget v7, v7, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; regranting permissions for external storage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9736
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    iput v6, v5, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    .line 9740
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 9742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 9743
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 9745
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 9746
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 9749
    :cond_8
    if-eqz v14, :cond_9

    .line 9750
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 9753
    :cond_9
    if-eqz p3, :cond_b

    .line 9754
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 9755
    .local v12, cid:Ljava/lang/String;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is stale"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 9731
    .end local v9           #regrantPermissions:Z
    .end local v12           #cid:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    move v9, v5

    goto/16 :goto_3

    .line 9743
    :catchall_3
    move-exception v5

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v5

    .line 9758
    .restart local v9       #regrantPermissions:Z
    :cond_b
    return-void
.end method

.method public static final main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 675
    new-instance v0, Lcom/android/server/PackageManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService;-><init>(Landroid/content/Context;Z)V

    .line 676
    .local v0, m:Lcom/android/server/PackageManagerService;
    const-string v1, "package"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 677
    return-object v0
.end method

.method private moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .parameter "newPackage"

    .prologue
    .line 5838
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 5839
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/Installer;->movedex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5840
    .local v0, retCode:I
    if-eqz v0, :cond_0

    .line 5841
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename dex file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    const/4 v1, -0x4

    .line 5845
    .end local v0           #retCode:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I
    .locals 10
    .parameter "pkg"
    .parameter "forceDex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "PackageManager"

    .line 2736
    const/4 v2, 0x0

    .line 2737
    .local v2, performed:Z
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_3

    .line 2738
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 2739
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2741
    .local v3, ret:I
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {v1}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2742
    :cond_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v8

    :goto_0
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I

    move-result v3

    .line 2744
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldalvik/system/StaleDexCacheError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2745
    const/4 v2, 0x1

    .line 2760
    :cond_1
    :goto_1
    if-gez v3, :cond_3

    .line 2762
    const/4 v4, -0x1

    .line 2766
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :goto_2
    return v4

    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_2
    move v6, v9

    .line 2742
    goto :goto_0

    .line 2747
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2748
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apk not found for dexopt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    const/4 v3, -0x1

    .line 2759
    goto :goto_1

    .line 2750
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 2751
    .local v0, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2752
    const/4 v3, -0x1

    .line 2759
    goto :goto_1

    .line 2753
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 2754
    .local v0, e:Ldalvik/system/StaleDexCacheError;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StaleDexCacheError when reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2755
    const/4 v3, -0x1

    .line 2759
    goto :goto_1

    .line 2756
    .end local v0           #e:Ldalvik/system/StaleDexCacheError;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 2757
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PackageManager"

    const-string v4, "Exception when doing dexopt : "

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2758
    const/4 v3, -0x1

    goto :goto_1

    .line 2766
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :cond_3
    if-eqz v2, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v9

    goto :goto_2
.end method

.method private processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V
    .locals 2
    .parameter "args"
    .parameter "currentStatus"

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageManagerService$5;-><init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$InstallArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 4835
    return-void
.end method

.method private processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V
    .locals 2
    .parameter "mp"
    .parameter "currentStatus"

    .prologue
    .line 9879
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageManagerService$13;-><init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$MoveParams;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 9983
    return-void
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .locals 21
    .parameter "permFile"

    .prologue
    .line 1118
    const/4 v13, 0x0

    .line 1120
    .local v13, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v13           #permReader:Ljava/io/FileReader;
    .local v14, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1128
    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1130
    const-string v18, "permissions"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1133
    :goto_0
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1134
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    move-object v13, v14

    .line 1235
    .end local v14           #permReader:Ljava/io/FileReader;
    .restart local v13       #permReader:Ljava/io/FileReader;
    :goto_2
    return-void

    .line 1121
    :catch_0
    move-exception v18

    move-object/from16 v3, v18

    .line 1122
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1138
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v13           #permReader:Ljava/io/FileReader;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #permReader:Ljava/io/FileReader;
    :cond_0
    :try_start_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1139
    .local v10, name:Ljava/lang/String;
    const-string v18, "group"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1140
    const/16 v18, 0x0

    const-string v19, "gid"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1141
    .local v7, gidStr:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1142
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1143
    .local v6, gid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    .line 1149
    .end local v6           #gid:I
    :goto_3
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1230
    .end local v7           #gidStr:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v18

    move-object/from16 v3, v18

    .line 1231
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "PackageManager"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1145
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #gidStr:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<group> without gid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 1232
    .end local v7           #gidStr:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v18

    move-object/from16 v3, v18

    .line 1233
    .local v3, e:Ljava/io/IOException;
    const-string v18, "PackageManager"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1151
    .end local v3           #e:Ljava/io/IOException;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_4
    const-string v18, "permission"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1152
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1153
    .local v12, perm:Ljava/lang/String;
    if-nez v12, :cond_3

    .line 1154
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1159
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 1160
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1162
    .end local v12           #perm:Ljava/lang/String;
    :cond_4
    const-string v18, "assign-permission"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1163
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1164
    .restart local v12       #perm:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 1165
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1170
    :cond_5
    const/16 v18, 0x0

    const-string v19, "uid"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1171
    .local v17, uidStr:Ljava/lang/String;
    if-nez v17, :cond_6

    .line 1172
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without uid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1177
    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v16

    .line 1178
    .local v16, uid:I
    if-gez v16, :cond_7

    .line 1179
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1185
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 1187
    .local v15, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v15, :cond_8

    .line 1188
    new-instance v15, Ljava/util/HashSet;

    .end local v15           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1189
    .restart local v15       #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1191
    :cond_8
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1194
    .end local v12           #perm:Ljava/lang/String;
    .end local v15           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #uid:I
    .end local v17           #uidStr:Ljava/lang/String;
    :cond_9
    const-string v18, "library"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1195
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1196
    .local v9, lname:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "file"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1197
    .local v8, lfile:Ljava/lang/String;
    if-nez v9, :cond_a

    .line 1198
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_4
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1200
    :cond_a
    if-nez v8, :cond_b

    .line 1201
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without file at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1205
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1210
    .end local v8           #lfile:Ljava/lang/String;
    .end local v9           #lname:Ljava/lang/String;
    :cond_c
    const-string v18, "feature"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1211
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1212
    .local v5, fname:Ljava/lang/String;
    if-nez v5, :cond_d

    .line 1213
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<feature> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_5
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1217
    :cond_d
    new-instance v4, Landroid/content/pm/FeatureInfo;

    invoke-direct {v4}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1218
    .local v4, fi:Landroid/content/pm/FeatureInfo;
    iput-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1225
    .end local v4           #fi:Landroid/content/pm/FeatureInfo;
    .end local v5           #fname:Ljava/lang/String;
    :cond_e
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method static removeInt([II)[I
    .locals 6
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1299
    if-nez p0, :cond_0

    .line 1300
    const/4 v3, 0x0

    .line 1315
    :goto_0
    return-object v3

    .line 1302
    :cond_0
    array-length v0, p0

    .line 1303
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1304
    aget v3, p0, v1

    if-ne v3, p1, :cond_3

    .line 1305
    sub-int v3, v0, v5

    new-array v2, v3, [I

    .line 1306
    .local v2, ret:[I
    if-lez v1, :cond_1

    .line 1307
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1309
    :cond_1
    sub-int v3, v0, v5

    if-ge v1, v3, :cond_2

    .line 1310
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    sub-int/2addr v4, v5

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v3, v2

    .line 1312
    goto :goto_0

    .line 1303
    .end local v2           #ret:[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v3, p0

    .line 1315
    goto :goto_0
.end method

.method static removeInts([I[I)[I
    .locals 3
    .parameter "cur"
    .parameter "rem"

    .prologue
    .line 1319
    if-nez p1, :cond_1

    .line 1325
    :cond_0
    return-object p0

    .line 1320
    :cond_1
    if-eqz p0, :cond_0

    .line 1321
    array-length v0, p1

    .line 1322
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1323
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->removeInt([II)[I

    move-result-object p0

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeNativeBinariesLI(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .parameter "pkg"

    .prologue
    .line 3817
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->getNativeBinaryDirForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v1

    .line 3827
    .local v1, binaryDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3828
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3829
    .local v0, binaries:[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 3830
    const/4 v2, 0x0

    .local v2, nn:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3834
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3835
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete native binary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3843
    .end local v0           #binaries:[Ljava/io/File;
    .end local v2           #nn:I
    :cond_1
    return-void
.end method

.method private removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;I)V
    .locals 17
    .parameter "p"
    .parameter "outInfo"
    .parameter "flags"

    .prologue
    .line 6236
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v13, v0

    .line 6237
    .local v13, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 6238
    move-object v0, v13

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 6240
    :cond_0
    const/high16 v3, 0x1

    and-int v3, v3, p3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 6243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    monitor-enter v3

    .line 6244
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6245
    .local v10, deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6246
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2

    .line 6247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 6248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v3, v0

    invoke-virtual {v3, v13}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v16

    .line 6249
    .local v16, retCode:I
    if-gez v16, :cond_1

    .line 6250
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove app data or cache directory for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6260
    .end local v16           #retCode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->schedulePackageCleaning(Ljava/lang/String;)V

    .line 6262
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    monitor-enter v9

    .line 6263
    if-eqz v10, :cond_9

    .line 6264
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_4

    .line 6265
    if-eqz p2, :cond_3

    .line 6266
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-static {v3, v13}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 6268
    :cond_3
    if-eqz v10, :cond_4

    .line 6269
    iget-object v4, v10, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 6270
    iget-object v3, v10, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_4

    .line 6272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object v4, v0

    invoke-static {v3, v10, v4}, Lcom/android/server/PackageManagerService$Settings;->access$3000(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    .line 6277
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6278
    .local v15, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6279
    .local v12, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v12, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6280
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6289
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v15           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 6240
    .end local v10           #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6245
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 6256
    .restart local v10       #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    .line 6257
    .local v14, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v9, Ljava/io/File;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6258
    .local v9, dataDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 6283
    .end local v9           #dataDir:Ljava/io/File;
    .end local v14           #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_8
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6284
    .restart local v12       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    goto :goto_3

    .line 6288
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v15           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 6289
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6290
    return-void
.end method

.method private replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 20
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5681
    const/4 v12, 0x0

    .line 5682
    .local v12, newPackage:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 5683
    .local v17, pkgName:Ljava/lang/String;
    const/4 v11, 0x1

    .line 5684
    .local v11, deletedPkg:Z
    const/16 v19, 0x0

    .line 5686
    .local v19, updatedSettings:Z
    const/4 v13, 0x0

    .line 5687
    .local v13, oldInstallerPackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5688
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5689
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5692
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5695
    const/16 v5, -0xa

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5696
    const/4 v11, 0x0

    .line 5714
    :cond_0
    :goto_0
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 5719
    if-eqz v19, :cond_1

    .line 5720
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    .line 5727
    :cond_1
    if-eqz v11, :cond_2

    .line 5728
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5729
    .local v18, restoreFile:Ljava/io/File;
    if-nez v18, :cond_5

    .line 5730
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed allocating storage when restoring pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5752
    .end local v11           #deletedPkg:Z
    .end local v18           #restoreFile:Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 5689
    .restart local v11       #deletedPkg:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 5699
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 5700
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 5701
    if-nez v12, :cond_4

    .line 5702
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5704
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_0

    .line 5707
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 5710
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 5734
    .restart local v18       #restoreFile:Ljava/io/File;
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v14

    .line 5735
    .local v14, oldOnSd:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    if-eqz v14, :cond_7

    const/16 v6, 0x20

    :goto_3
    or-int v15, v5, v6

    .line 5738
    .local v15, oldParseFlags:I
    if-eqz v14, :cond_8

    const/4 v5, 0x0

    :goto_4
    or-int/lit8 v16, v5, 0x8

    .line 5739
    .local v16, oldScanMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v15

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-nez v5, :cond_9

    .line 5740
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to restore package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after failed upgrade"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5735
    .end local v15           #oldParseFlags:I
    .end local v16           #oldScanMode:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 5738
    .restart local v15       #oldParseFlags:I
    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    .line 5744
    .restart local v16       #oldScanMode:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v11, v0

    .end local v11           #deletedPkg:Z
    monitor-enter v11

    .line 5745
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5748
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5749
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully restored package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after failed upgrade"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5748
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 9
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5659
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5661
    .local v7, pkgName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 5662
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 5663
    .local v1, oldPackage:Landroid/content/pm/PackageParser$Package;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 5665
    const/16 v2, -0x68

    iput v2, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5666
    monitor-exit v0

    .line 5675
    :goto_0
    return-void

    .line 5668
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5669
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v8, v0

    .line 5670
    .local v8, sysPkg:Z
    :goto_1
    if-eqz v8, :cond_2

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 5671
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService;->replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_0

    .line 5668
    .end local v1           #oldPackage:Landroid/content/pm/PackageParser$Package;
    .end local v8           #sysPkg:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5669
    .restart local v1       #oldPackage:Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .restart local v8       #sysPkg:Z
    :cond_2
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 5673
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService;->replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_0
.end method

.method private replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 16
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 5758
    const/4 v5, 0x0

    .line 5759
    .local v5, newPackage:Landroid/content/pm/PackageParser$Package;
    const/4 v10, 0x0

    .line 5760
    .local v10, updatedSettings:Z
    or-int/lit8 p3, p3, 0x3

    .line 5762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v8, v0

    .line 5763
    .local v8, packageName:Ljava/lang/String;
    const/16 v11, -0xa

    move v0, v11

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5764
    if-nez v8, :cond_0

    .line 5765
    const-string v11, "PackageManager"

    const-string v12, "Attempt to delete null packageName."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    :goto_0
    return-void

    .line 5770
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v11, v0

    monitor-enter v11

    .line 5771
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v12, v0

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 5772
    .local v6, oldPkg:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5773
    .local v7, oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v6, :cond_1

    iget-object v12, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_1

    if-nez v7, :cond_2

    .line 5775
    :cond_1
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find package:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " information"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5776
    monitor-exit v11

    goto :goto_0

    .line 5778
    .end local v6           #oldPkg:Landroid/content/pm/PackageParser$Package;
    .end local v7           #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v6       #oldPkg:Landroid/content/pm/PackageParser$Package;
    .restart local v7       #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5779
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v11, v0

    iget-object v12, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v12, v11, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 5780
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v11, v0

    iput-object v8, v11, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 5782
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 5783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v11, v0

    monitor-enter v11

    .line 5784
    :try_start_2
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v13, v0

    invoke-virtual {v13, v8}, Lcom/android/server/PackageManagerService$Settings;->disableSystemPackageLP(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 5785
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5788
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 5789
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v11, v0

    iget v12, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5790
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 5791
    if-nez v5, :cond_6

    .line 5792
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package couldn\'t be installed in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v11, v0

    move v0, v11

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 5794
    const/4 v11, -0x2

    move v0, v11

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5801
    :cond_3
    :goto_1
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v11, v0

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 5804
    if-eqz v5, :cond_4

    .line 5805
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 5808
    :cond_4
    const/16 v11, 0x9

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p3

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    .line 5812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v11, v0

    monitor-enter v11

    .line 5813
    if-eqz v10, :cond_5

    .line 5814
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v12, v0

    invoke-virtual {v12, v8}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 5815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v12, v0

    iget-object v13, v7, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v12, v8, v13}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 5818
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5819
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v12

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 5785
    :catchall_2
    move-exception v12

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v12

    .line 5797
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 5798
    const/4 v10, 0x1

    goto :goto_1

    .line 5823
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v11, v0

    monitor-enter v11

    .line 5824
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v12, v0

    invoke-virtual {v12, v8}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v9

    .line 5825
    .local v9, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v9, :cond_8

    iget-object v12, v9, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    if-eqz v12, :cond_8

    iget-object v12, v9, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v13, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 5827
    const/4 v4, 0x0

    .line 5828
    .local v4, installFlags:I
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v12, v0

    const/4 v13, 0x0

    iget-object v14, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v15, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5831
    .end local v4           #installFlags:I
    :cond_8
    monitor-exit v11

    goto/16 :goto_0

    .end local v9           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_3
    move-exception v12

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v12
.end method

.method private static reportSettingsProblem(ILjava/lang/String;)V
    .locals 9
    .parameter "priority"
    .parameter "msg"

    .prologue
    .line 2512
    :try_start_0
    invoke-static {}, Lcom/android/server/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v1

    .line 2513
    .local v1, fname:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2514
    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2515
    .local v4, pw:Ljava/io/PrintWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 2516
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, dateString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2519
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2525
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #fname:Ljava/io/File;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #pw:Ljava/io/PrintWriter;
    :goto_0
    const-string v5, "PackageManager"

    invoke-static {p0, v5, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 2526
    return-void

    .line 2523
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private scanDirLI(Ljava/io/File;II)V
    .locals 7
    .parameter "dir"
    .parameter "flags"
    .parameter "scanMode"

    .prologue
    const-string v6, "PackageManager"

    .line 2480
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scanning app dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 2485
    .local v1, files:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 2486
    new-instance v0, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2487
    .local v0, file:Ljava/io/File;
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2485
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2491
    :cond_1
    or-int/lit8 v4, p2, 0x4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2494
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 2497
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up failed install of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 2501
    .end local v0           #file:Ljava/io/File;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_2
    return-void
.end method

.method private scanPackageLI(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;
    .locals 51
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"

    .prologue
    .line 2790
    new-instance v45, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v45

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2791
    .local v45, scanFile:Ljava/io/File;
    if-eqz v45, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2794
    :cond_0
    const-string v5, "PackageManager"

    const-string v6, " Code and resource paths haven\'t been set correctly"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2796
    const/4 v5, 0x0

    .line 3551
    .end local p1
    .end local p3
    :goto_0
    return-object v5

    .line 2798
    .restart local p1
    .restart local p3
    :cond_1
    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    .line 2799
    if-nez p1, :cond_2

    .line 2800
    const/16 v5, -0x6a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2801
    const/4 v5, 0x0

    goto :goto_0

    .line 2804
    :cond_2
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_3

    .line 2805
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2808
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 2810
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 2811
    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const-string v6, "PackageManager"

    const-string v7, "Core android package being redefined.  Skipping."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v6, -0x5

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2816
    const/4 v6, 0x0

    monitor-exit v5

    move-object v5, v6

    goto :goto_0

    .line 2821
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    .line 2822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 2823
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const-class v7, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/16 v7, 0x20

    iput v7, v6, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const v7, 0x103009b

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->match:I

    .line 2837
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 2839
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2842
    :cond_5
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_6

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2846
    :cond_7
    const-string v5, "PackageManager"

    const-string v6, "*************************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already installed.  Skipping duplicate."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    const-string v5, "PackageManager"

    const-string v6, "*************************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2851
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2839
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2855
    :cond_8
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2856
    .local v10, destCodeFile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2858
    .local v11, destResourceFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 2859
    .local v9, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v39, 0x0

    .line 2861
    .local v39, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_9

    .line 2863
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2864
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2865
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2868
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2870
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-nez v5, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_16

    .line 2871
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 2873
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    .line 2875
    :cond_c
    const/16 v29, 0x0

    .line 2876
    .local v29, num:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v15, v5

    .line 2877
    .local v15, N:I
    :goto_1
    const/16 v25, 0x0

    .local v25, i:I
    :goto_2
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_f

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2879
    .local v22, file:Ljava/lang/String;
    if-nez v22, :cond_e

    .line 2880
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires unavailable shared library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; failing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    const/16 v5, -0x9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2884
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 3101
    .end local v15           #N:I
    .end local v22           #file:Ljava/lang/String;
    .end local v25           #i:I
    .end local v29           #num:I
    :catchall_1
    move-exception v5

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 2876
    .restart local v29       #num:I
    .restart local p1
    :cond_d
    const/4 v5, 0x0

    move v15, v5

    goto :goto_1

    .line 2886
    .restart local v15       #N:I
    .restart local v22       #file:Ljava/lang/String;
    .restart local v25       #i:I
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    aput-object v22, v5, v29

    .line 2887
    add-int/lit8 v29, v29, 0x1

    .line 2877
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 2889
    .end local v22           #file:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v15, v5

    .line 2890
    :goto_3
    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_12

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2892
    .restart local v22       #file:Ljava/lang/String;
    if-nez v22, :cond_11

    .line 2893
    const-string v6, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " desires unavailable shared library "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; ignoring!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 2889
    .end local v22           #file:Ljava/lang/String;
    :cond_10
    const/4 v5, 0x0

    move v15, v5

    goto :goto_3

    .line 2897
    .restart local v22       #file:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    aput-object v22, v5, v29

    .line 2898
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 2901
    .end local v22           #file:Ljava/lang/String;
    :cond_12
    if-lez v29, :cond_13

    .line 2902
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move v3, v8

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2907
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_16

    .line 2908
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2909
    const/16 v25, 0x0

    :goto_6
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_16

    .line 2910
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/FeatureInfo;

    .line 2911
    .local v21, fi:Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/FeatureInfo;->flags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_15

    .line 2909
    :cond_14
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 2916
    :cond_15
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_14

    .line 2917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_14

    .line 2918
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires unavailable feature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; failing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    const/16 v5, -0x11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2922
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 2929
    .end local v15           #N:I
    .end local v21           #fi:Landroid/content/pm/FeatureInfo;
    .end local v25           #i:I
    .end local v29           #num:I
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_18

    .line 2930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v9

    .line 2932
    if-nez v9, :cond_17

    .line 2933
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for shared user failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2936
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 2938
    :cond_17
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_18

    .line 2939
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared UserID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v9, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): packages="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_18
    const/4 v7, 0x0

    .line 2955
    .local v7, origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v8, 0x0

    .line 2956
    .local v8, realName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_19

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 2960
    .local v42, renamed:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2965
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    move-object v8, v0

    .line 2966
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 2970
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 3003
    .end local v42           #renamed:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3004
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " was transferred to another, but its .apk remains"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v12, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v39

    .line 3012
    if-nez v39, :cond_1e

    .line 3013
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating application package "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3015
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 2974
    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v42       #renamed:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v25, v5, v6

    .restart local v25       #i:I
    :goto_7
    if-ltz v25, :cond_19

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 2979
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2981
    const/4 v7, 0x0

    .line 2974
    :cond_1c
    :goto_8
    add-int/lit8 v25, v25, -0x1

    goto :goto_7

    .line 2983
    :cond_1d
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_19

    .line 2985
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 2986
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to migrate data from "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ": old uid "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " differs from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    const/4 v7, 0x0

    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    goto :goto_8

    .line 3018
    .end local v25           #i:I
    .end local v42           #renamed:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v5, v0

    if-eqz v5, :cond_1f

    .line 3023
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 3026
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " renamed to replace old package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3028
    .local v27, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3034
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3037
    .end local v27           #msg:Ljava/lang/String;
    :cond_1f
    if-eqz v8, :cond_20

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3042
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 3043
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3046
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v6, v0

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3047
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    .line 3049
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 3050
    and-int/lit8 v5, p2, 0x40

    if-nez v5, :cond_22

    .line 3051
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 3055
    :cond_22
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 3061
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    if-eqz v5, :cond_23

    .line 3062
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-eqz v5, :cond_23

    .line 3064
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature mismatch for shared user : "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const/16 v5, -0x68

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3066
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 3070
    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " signature changed; retaining data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3072
    .restart local v27       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3079
    .end local v27           #msg:Ljava/lang/String;
    :cond_24
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_28

    .line 3080
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3082
    .restart local v15       #N:I
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_9
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_28

    .line 3083
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Provider;

    .line 3084
    .local v33, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 3085
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 3086
    .local v28, names:[Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, j:I
    :goto_a
    move-object/from16 v0, v28

    array-length v0, v0

    move v5, v0

    move/from16 v0, v26

    move v1, v5

    if-ge v0, v1, :cond_27

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v28, v26

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v28, v26

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/PackageParser$Provider;

    .line 3089
    .local v32, other:Landroid/content/pm/PackageParser$Provider;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t install because provider name "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v28, v26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is already used by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v32, :cond_25

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_25

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    const/16 v5, -0xd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3095
    const/4 v5, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 3089
    :cond_25
    const-string v7, "?"

    goto :goto_b

    .line 3086
    .end local v32           #other:Landroid/content/pm/PackageParser$Provider;
    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_26
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 3082
    .end local v26           #j:I
    .end local v28           #names:[Ljava/lang/String;
    :cond_27
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_9

    .line 3101
    .end local v15           #N:I
    .end local v25           #i:I
    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_28
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3103
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 3105
    .local v38, pkgName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_2a

    .line 3108
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v25, v5, v6

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v25       #i:I
    :goto_c
    if-ltz v25, :cond_2a

    .line 3109
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 3110
    .local v31, origName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v30

    .line 3111
    .local v30, orig:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v30, :cond_29

    .line 3112
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3113
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adopting permissions from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v31

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->access$1300(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    :cond_29
    add-int/lit8 v25, v25, -0x1

    goto :goto_c

    .line 3121
    .end local v25           #i:I
    .end local v30           #orig:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v31           #origName:Ljava/lang/String;
    :cond_2a
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->lastModified()J

    move-result-wide v47

    .line 3122
    .local v47, scanFileTime:J
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 3123
    .local v24, forceDex:Z
    :goto_d
    if-nez v24, :cond_2b

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStamp()J

    move-result-wide v5

    cmp-long v5, v47, v5

    if-eqz v5, :cond_2e

    :cond_2b
    const/4 v5, 0x1

    move/from16 v46, v5

    .line 3124
    .local v46, scanFileNewer:Z
    :goto_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    .end local v8           #realName:Ljava/lang/String;
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7, v8}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2f

    .line 3132
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "system"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3133
    .local v19, dataPath:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3232
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_3d

    .line 3233
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v35

    .line 3234
    .local v35, path:Ljava/lang/String;
    if-eqz v46, :cond_3c

    .line 3242
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    .line 3243
    .local v23, flags:I
    and-int/lit8 v5, v23, 0x1

    if-eqz v5, :cond_2c

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_3b

    .line 3245
    :cond_2c
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed; unpacking"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->cachePackageSharedLibsLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)I

    move-result v20

    .line 3247
    .local v20, err:I
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_3c

    .line 3248
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3249
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3122
    .end local v19           #dataPath:Ljava/io/File;
    .end local v20           #err:I
    .end local v23           #flags:I
    .end local v24           #forceDex:Z
    .end local v35           #path:Ljava/lang/String;
    .end local v46           #scanFileNewer:Z
    .restart local v8       #realName:Ljava/lang/String;
    :cond_2d
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_d

    .line 3123
    .restart local v24       #forceDex:Z
    :cond_2e
    const/4 v5, 0x0

    move/from16 v46, v5

    goto/16 :goto_e

    .line 3136
    .end local v8           #realName:Ljava/lang/String;
    .restart local v46       #scanFileNewer:Z
    :cond_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v19

    .line 3138
    .restart local v19       #dataPath:Ljava/io/File;
    const/16 v50, 0x0

    .line 3140
    .local v50, uidError:Z
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 3142
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 3143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v6, :cond_30

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-nez v5, :cond_32

    .line 3145
    :cond_30
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3197
    :cond_31
    :goto_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3227
    :goto_11
    move/from16 v0, v50

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->uidError:Z

    goto/16 :goto_f

    .line 3147
    :cond_32
    const/16 v41, 0x0

    .line 3148
    .local v41, recovered:Z
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_34

    .line 3151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_33

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v43

    .line 3153
    .local v43, ret:I
    if-ltz v43, :cond_33

    .line 3155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed from uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; old data erased"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3159
    .restart local v27       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3160
    const/16 v41, 0x1

    .line 3163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v38

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->install(Ljava/lang/String;II)I

    move-result v43

    .line 3165
    const/4 v5, -0x1

    move/from16 v0, v43

    move v1, v5

    if-ne v0, v1, :cond_33

    .line 3167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not have data directory re-created after delete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3169
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3170
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3171
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3175
    .end local v27           #msg:Ljava/lang/String;
    .end local v43           #ret:I
    :cond_33
    if-nez v41, :cond_34

    .line 3176
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    .line 3179
    :cond_34
    if-nez v41, :cond_31

    .line 3180
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mismatched_uid/settings_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/fs_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has mismatched uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on disk, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3187
    .restart local v27       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3188
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3190
    const/16 v50, 0x1

    .line 3191
    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->uidError:Z

    move v6, v0

    if-nez v6, :cond_35

    .line 3192
    const/4 v6, 0x6

    move v0, v6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3194
    :cond_35
    monitor-exit v5

    goto/16 :goto_10

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    .line 3199
    .end local v27           #msg:Ljava/lang/String;
    .end local v41           #recovered:Z
    :cond_36
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_37

    .line 3202
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_38

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v38

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->install(Ljava/lang/String;II)I

    move-result v43

    .line 3205
    .restart local v43       #ret:I
    if-gez v43, :cond_39

    .line 3207
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3208
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3211
    .end local v43           #ret:I
    :cond_38
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 3212
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 3213
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3219
    :cond_39
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3220
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_11

    .line 3222
    :cond_3a
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create data directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_11

    .line 3256
    .end local v50           #uidError:Z
    .restart local v23       #flags:I
    .restart local v35       #path:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "com.adobe.flashplayer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 3258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->cachePackageSharedLibsLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)I

    move-result v20

    .line 3259
    .restart local v20       #err:I
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_3c

    .line 3261
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3262
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3266
    .end local v20           #err:I
    .end local v23           #flags:I
    :cond_3c
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 3268
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_3d

    .line 3269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3d

    .line 3270
    const/16 v5, -0xb

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3271
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3276
    .end local v35           #path:Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    move v5, v0

    if-eqz v5, :cond_3e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    const-string v6, "android.permission.FACTORY_TEST"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 3278
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3284
    :cond_3e
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3f

    .line 3285
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    .line 3289
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3291
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_40

    .line 3292
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->access$1500(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 3297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3301
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3302
    .restart local v15       #N:I
    const/16 v40, 0x0

    .line 3304
    .local v40, r:Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local v25       #i:I
    :goto_12
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_49

    .line 3305
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Provider;

    .line 3306
    .restart local v33       #p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3310
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move v0, v6

    move-object/from16 v1, v33

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 3311
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v6, :cond_46

    .line 3312
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 3313
    .restart local v28       #names:[Ljava/lang/String;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 3314
    const/16 v26, 0x0

    .restart local v26       #j:I
    move-object/from16 v34, v33

    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    .local v34, p:Landroid/content/pm/PackageParser$Provider;
    :goto_13
    move-object/from16 v0, v28

    array-length v0, v0

    move v6, v0

    move/from16 v0, v26

    move v1, v6

    if-ge v0, v1, :cond_45

    .line 3315
    const/4 v6, 0x1

    move/from16 v0, v26

    move v1, v6

    if-ne v0, v1, :cond_71

    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    move v6, v0

    if-eqz v6, :cond_71

    .line 3323
    new-instance v33, Landroid/content/pm/PackageParser$Provider;

    invoke-direct/range {v33 .. v34}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 3324
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v33       #p:Landroid/content/pm/PackageParser$Provider;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v33

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 3326
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v28, v26

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 3327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v28, v26

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v6, :cond_42

    .line 3329
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    aget-object v7, v28, v26

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 3333
    :goto_15
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_41

    .line 3334
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered content provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v28, v26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", className = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSyncable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :cond_41
    :goto_16
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v34, v33

    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_13

    .line 3331
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v33       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_42
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v28, v26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_15

    .line 3549
    .end local v15           #N:I
    .end local v25           #i:I
    .end local v26           #j:I
    .end local v28           #names:[Ljava/lang/String;
    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v40           #r:Ljava/lang/StringBuilder;
    .end local p3
    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6

    .line 3338
    .restart local v15       #N:I
    .restart local v25       #i:I
    .restart local v26       #j:I
    .restart local v28       #names:[Ljava/lang/String;
    .restart local v33       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v40       #r:Ljava/lang/StringBuilder;
    .restart local p3
    :cond_43
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v28, v26

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/PackageParser$Provider;

    .line 3339
    .restart local v32       #other:Landroid/content/pm/PackageParser$Provider;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping provider name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v28, v26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (in package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): name already used by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v32, :cond_44

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_44

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_44
    const-string v8, "?"

    goto :goto_17

    .end local v32           #other:Landroid/content/pm/PackageParser$Provider;
    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_45
    move-object/from16 v33, v34

    .line 3347
    .end local v26           #j:I
    .end local v28           #names:[Ljava/lang/String;
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v33       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_46
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_47

    .line 3348
    if-nez v40, :cond_48

    .line 3349
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3353
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_18
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    :cond_47
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_12

    .line 3351
    :cond_48
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 3356
    .end local v33           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_49
    if-eqz v40, :cond_4a

    .line 3357
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_4a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3361
    const/16 v40, 0x0

    .line 3362
    const/16 v25, 0x0

    :goto_19
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_4d

    .line 3363
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PackageParser$Service;

    .line 3364
    .local v44, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 3366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 3367
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_4b

    .line 3368
    if-nez v40, :cond_4c

    .line 3369
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3373
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_1a
    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    :cond_4b
    add-int/lit8 v25, v25, 0x1

    goto :goto_19

    .line 3371
    :cond_4c
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 3376
    .end local v44           #s:Landroid/content/pm/PackageParser$Service;
    :cond_4d
    if-eqz v40, :cond_4e

    .line 3377
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Services: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3381
    const/16 v40, 0x0

    .line 3382
    const/16 v25, 0x0

    :goto_1b
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_51

    .line 3383
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Activity;

    .line 3384
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "receiver"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3387
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_4f

    .line 3388
    if-nez v40, :cond_50

    .line 3389
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3393
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_1c
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3382
    :cond_4f
    add-int/lit8 v25, v25, 0x1

    goto :goto_1b

    .line 3391
    :cond_50
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 3396
    .end local v16           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_51
    if-eqz v40, :cond_52

    .line 3397
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3401
    const/16 v40, 0x0

    .line 3402
    const/16 v25, 0x0

    :goto_1d
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_55

    .line 3403
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Activity;

    .line 3404
    .restart local v16       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "activity"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3407
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_53

    .line 3408
    if-nez v40, :cond_54

    .line 3409
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3413
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_1e
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3402
    :cond_53
    add-int/lit8 v25, v25, 0x1

    goto :goto_1d

    .line 3411
    :cond_54
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 3416
    .end local v16           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_55
    if-eqz v40, :cond_56

    .line 3417
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    :cond_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3421
    const/16 v40, 0x0

    .line 3422
    const/16 v25, 0x0

    :goto_1f
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_5b

    .line 3423
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3424
    .local v37, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3425
    .local v18, cur:Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v18, :cond_59

    .line 3426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_57

    .line 3428
    if-nez v40, :cond_58

    .line 3429
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3433
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_20
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    :cond_57
    :goto_21
    add-int/lit8 v25, v25, 0x1

    goto :goto_1f

    .line 3431
    :cond_58
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 3436
    :cond_59
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_57

    .line 3440
    if-nez v40, :cond_5a

    .line 3441
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3445
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_22
    const-string v6, "DUP:"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3446
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 3443
    :cond_5a
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 3450
    .end local v18           #cur:Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v37           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_5b
    if-eqz v40, :cond_5c

    .line 3451
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permission Groups: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3455
    const/16 v40, 0x0

    .line 3456
    const/16 v25, 0x0

    .end local p3
    :goto_23
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_6a

    .line 3457
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Permission;

    .line 3458
    .local v33, p:Landroid/content/pm/PackageParser$Permission;
    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    move v6, v0

    if-eqz v6, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v36, v6

    .line 3461
    .local v36, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    iput-object v0, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 3462
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v6, :cond_5d

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v6, v0

    if-eqz v6, :cond_69

    .line 3463
    :cond_5d
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3464
    .local v17, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v17, :cond_5e

    .line 3465
    new-instance v17, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v17           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v17

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3467
    .restart local v17       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v36

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    :cond_5e
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    if-nez v6, :cond_67

    .line 3470
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_5f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 3472
    :cond_5f
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v49

    .line 3473
    .local v49, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v49, :cond_60

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 3475
    :cond_60
    move-object/from16 v0, v39

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 3476
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 3477
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 3478
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_61

    .line 3479
    if-nez v40, :cond_64

    .line 3480
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3484
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_25
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
    .end local v49           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_61
    :goto_26
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_62

    .line 3507
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 3456
    .end local v17           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_62
    :goto_27
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_23

    .line 3458
    .end local v36           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v36, v6

    goto/16 :goto_24

    .line 3482
    .restart local v17       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v36       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    .restart local v49       #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_64
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 3487
    :cond_65
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: base tree "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 3493
    .end local v49           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_66
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 3497
    :cond_67
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_61

    .line 3498
    if-nez v40, :cond_68

    .line 3499
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3503
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_28
    const-string v6, "DUP:"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3504
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_26

    .line 3501
    :cond_68
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 3510
    .end local v17           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_69
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: no group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 3515
    .end local v33           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v36           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_6a
    if-eqz v40, :cond_6b

    .line 3516
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permissions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :cond_6b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3520
    const/16 v40, 0x0

    .line 3521
    const/16 v25, 0x0

    :goto_29
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_6e

    .line 3522
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Instrumentation;

    .line 3523
    .local v16, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 3524
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 3525
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3526
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 3527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_6c

    .line 3529
    if-nez v40, :cond_6d

    .line 3530
    new-instance v40, Ljava/lang/StringBuilder;

    .end local v40           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v40

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3534
    .restart local v40       #r:Ljava/lang/StringBuilder;
    :goto_2a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    :cond_6c
    add-int/lit8 v25, v25, 0x1

    goto :goto_29

    .line 3532
    :cond_6d
    const/16 v6, 0x20

    move-object/from16 v0, v40

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 3537
    .end local v16           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_6e
    if-eqz v40, :cond_6f

    .line 3538
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Instrumentation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    :cond_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    if-eqz v6, :cond_70

    .line 3542
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3543
    const/16 v25, 0x0

    :goto_2b
    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_70

    .line 3544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3543
    add-int/lit8 v25, v25, 0x1

    goto :goto_2b

    .line 3548
    :cond_70
    move-object/from16 v0, v39

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 3549
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v5, p1

    .line 3551
    goto/16 :goto_0

    .restart local v26       #j:I
    .restart local v28       #names:[Ljava/lang/String;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local p3
    :cond_71
    move-object/from16 v33, v34

    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .local v33, p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_14
.end method

.method private scanPackageLI(Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;
    .locals 12
    .parameter "scanFile"
    .parameter "parseFlags"
    .parameter "scanMode"

    .prologue
    .line 2561
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2562
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 2563
    .local v10, scanPath:Ljava/lang/String;
    iget v0, p0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    or-int/2addr p2, v0

    .line 2564
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1, v10}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 2565
    .local v1, pp:Landroid/content/pm/PackageParser;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 2566
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, p1, v10, v0, p2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2568
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 2569
    invoke-virtual {v1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v0

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2570
    const/4 v0, 0x0

    .line 2670
    .end local v1           #pp:Landroid/content/pm/PackageParser;
    :goto_0
    return-object v0

    .line 2572
    .restart local v1       #pp:Landroid/content/pm/PackageParser;
    :cond_0
    const/4 v2, 0x0

    .line 2574
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 2576
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2577
    .local v8, oldName:Ljava/lang/String;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2580
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, v8}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v2

    .line 2583
    :cond_1
    if-nez v2, :cond_2

    .line 2584
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v2

    .line 2589
    :cond_2
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2591
    .local v11, updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    if-eqz v11, :cond_5

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    .line 2594
    iget-object v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2598
    iget v0, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    if-ge v0, v4, :cond_4

    .line 2601
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ignored: updated version "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " better than this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2605
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2589
    .end local v11           #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v1       #pp:Landroid/content/pm/PackageParser;
    .restart local v2       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 2591
    .end local v1           #pp:Landroid/content/pm/PackageParser;
    .end local v8           #oldName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2613
    .restart local v1       #pp:Landroid/content/pm/PackageParser;
    .restart local v8       #oldName:Ljava/lang/String;
    .restart local v11       #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 2615
    :try_start_2
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2617
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reverting from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": new version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " better than installed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    new-instance v6, Lcom/android/server/PackageManagerService$FileInstallArgs;

    iget-object v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-direct {v6, p0, v0, v4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    .local v6, args:Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 2623
    invoke-direct {p0, v3}, Lcom/android/server/PackageManagerService;->removeNativeBinariesLI(Landroid/content/pm/PackageParser$Package;)V

    .line 2624
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2628
    .end local v6           #args:Lcom/android/server/PackageManagerService$InstallArgs;
    :cond_5
    if-eqz v11, :cond_6

    .line 2630
    or-int/lit8 p2, p2, 0x1

    :cond_6
    move-object v0, p0

    move-object v4, p1

    move v5, p2

    .line 2633
    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2634
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed verifying certificates for package:"

    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2616
    .restart local v2       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 2640
    .restart local v1       #pp:Landroid/content/pm/PackageParser;
    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v1, v2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .end local v1           #pp:Landroid/content/pm/PackageParser;
    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2641
    or-int/lit8 p2, p2, 0x10

    .line 2644
    :cond_8
    const/4 v7, 0x0

    .line 2645
    .local v7, codePath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2646
    .local v9, resPath:Ljava/lang/String;
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_b

    .line 2647
    if-eqz v2, :cond_a

    iget-object v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2648
    iget-object v9, v2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 2656
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_2
    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 2658
    invoke-static {v3, v7, v9}, Lcom/android/server/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v1, "com.adobe.flashplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2666
    or-int/lit8 p3, p3, 0x4

    .line 2670
    :cond_9
    or-int/lit8 v0, p3, 0x8

    invoke-direct {p0, v3, p2, v0}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto/16 :goto_0

    .line 2651
    .restart local v2       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_a
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource path not set for pkg : "

    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2654
    .restart local v2       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_b
    iget-object v9, v3, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    goto :goto_2
.end method

.method private static final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    .locals 11
    .parameter "action"
    .parameter "pkg"
    .parameter "extras"
    .parameter "finishedReceiver"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4592
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4593
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_2

    .line 4595
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "package"

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4597
    .local v2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 4598
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4600
    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4601
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p3, :cond_3

    const/4 v4, 0x1

    move v9, v4

    :goto_0
    const/4 v10, 0x0

    move-object v4, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4606
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    move v9, v4

    .line 4601
    goto :goto_0

    .line 4603
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 4
    .parameter "packageName"
    .parameter "killFlag"
    .parameter
    .parameter "packageUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6915
    .local p3, componentNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 6916
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.changed_component_name"

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6917
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 6918
    .local v1, nameList:[Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6919
    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6920
    const-string v2, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6921
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6922
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6923
    return-void
.end method

.method private sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .locals 5
    .parameter "mediaStatus"
    .parameter
    .parameter "uidArr"
    .parameter "finishedReceiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[I",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9652
    .local p2, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 9653
    .local v2, size:I
    if-lez v2, :cond_1

    .line 9655
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9656
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.changed_package_list"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9658
    if-eqz p3, :cond_0

    .line 9659
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9661
    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v0, v3

    .line 9663
    .local v0, action:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p4}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 9665
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 9661
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v3

    goto :goto_0
.end method

.method private static setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "destCodePath"
    .parameter "destResPath"

    .prologue
    .line 2675
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 2676
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2677
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2678
    return-void
.end method

.method private setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 22
    .parameter "packageName"
    .parameter "className"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 6811
    if-eqz p3, :cond_0

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 6814
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid new component state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 6818
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 6819
    .local v16, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v13

    .line 6821
    .local v13, permission:I
    if-nez v13, :cond_1

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 6822
    .local v5, allowedByPermission:Z
    :goto_0
    const/4 v15, 0x0

    .line 6823
    .local v15, sendNow:Z
    if-nez p2, :cond_2

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 6824
    .local v10, isApp:Z
    :goto_1
    if-eqz v10, :cond_3

    move-object/from16 v8, p1

    .line 6825
    .local v8, componentName:Ljava/lang/String;
    :goto_2
    const/4 v12, -0x1

    .line 6827
    .local v12, packageUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 6828
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6829
    .local v14, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v14, :cond_5

    .line 6830
    if-nez p2, :cond_4

    .line 6831
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6898
    .end local v14           #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 6821
    .end local v5           #allowedByPermission:Z
    .end local v8           #componentName:Ljava/lang/String;
    .end local v10           #isApp:Z
    .end local v12           #packageUid:I
    .end local v15           #sendNow:Z
    :cond_1
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_0

    .line 6823
    .restart local v5       #allowedByPermission:Z
    .restart local v15       #sendNow:Z
    :cond_2
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_1

    .restart local v10       #isApp:Z
    :cond_3
    move-object/from16 v8, p2

    .line 6824
    goto :goto_2

    .line 6834
    .restart local v8       #componentName:Ljava/lang/String;
    .restart local v12       #packageUid:I
    .restart local v14       #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4
    :try_start_1
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown component: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6838
    :cond_5
    if-nez v5, :cond_6

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 6839
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: attempt to change component state from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", package uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 6844
    :cond_6
    if-nez p2, :cond_d

    .line 6846
    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 6848
    monitor-exit v17

    .line 6909
    :goto_3
    return-void

    .line 6850
    :cond_7
    move/from16 v0, p3

    move-object v1, v14

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    .line 6874
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 6875
    iget v12, v14, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 6876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 6877
    .local v9, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_e

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 6878
    .local v11, newPackage:Z
    :goto_4
    if-eqz v11, :cond_9

    .line 6879
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6881
    .restart local v9       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 6882
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6884
    :cond_a
    and-int/lit8 v18, p4, 0x1

    if-nez v18, :cond_f

    .line 6885
    const/4 v15, 0x1

    .line 6888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6898
    :cond_b
    :goto_5
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6902
    .local v6, callingId:J
    if-eqz v15, :cond_c

    .line 6903
    and-int/lit8 v17, p4, 0x1

    if-eqz v17, :cond_11

    const/16 v17, 0x1

    :goto_6
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v9

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6907
    :cond_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 6853
    .end local v6           #callingId:J
    .end local v9           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #newPackage:Z
    :cond_d
    packed-switch p3, :pswitch_data_0

    .line 6870
    :try_start_3
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid new component state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6871
    monitor-exit v17

    goto/16 :goto_3

    .line 6855
    :pswitch_0
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->enableComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 6856
    monitor-exit v17

    goto/16 :goto_3

    .line 6860
    :pswitch_1
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->disableComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 6861
    monitor-exit v17

    goto/16 :goto_3

    .line 6865
    :pswitch_2
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->restoreComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 6866
    monitor-exit v17

    goto/16 :goto_3

    .line 6877
    .restart local v9       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_4

    .line 6890
    .restart local v11       #newPackage:Z
    :cond_f
    if-eqz v11, :cond_10

    .line 6891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6893
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_b

    .line 6895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/16 v20, 0x2710

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 6903
    .restart local v6       #callingId:J
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 6907
    :catchall_1
    move-exception v17

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 6853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I
    .locals 11
    .parameter "newPackage"

    .prologue
    const/4 v9, -0x4

    const-string v10, "PackageManager"

    .line 5981
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5982
    .local v3, pkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 5985
    .local v4, retCode:I
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 5987
    new-instance v0, Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5989
    .local v0, destResourceFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/PackageManagerService;->extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5997
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v5, :cond_1

    .line 5998
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/Installer;->setForwardLockPerm(Ljava/lang/String;I)I

    move-result v4

    .line 6011
    .end local v0           #destResourceFile:Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 6012
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t set new package file permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". The return code was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 6018
    :goto_1
    return v5

    .line 5990
    .restart local v0       #destResourceFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 5991
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "PackageManager"

    const-string v6, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v9

    .line 5993
    goto :goto_1

    .line 5994
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    throw v5

    .line 6001
    :cond_1
    const/16 v2, 0x1a0

    .line 6003
    .local v2, filePermissions:I
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    const/16 v6, 0x1a0

    const/4 v7, -0x1

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    goto :goto_0

    .line 6018
    .end local v0           #destResourceFile:Ljava/io/File;
    .end local v2           #filePermissions:I
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method static splitString(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "sep"

    .prologue
    .line 681
    const/4 v0, 0x1

    .line 682
    .local v0, count:I
    const/4 v1, 0x0

    .line 683
    .local v1, i:I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 684
    add-int/lit8 v0, v0, 0x1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    .line 689
    .local v3, res:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 690
    const/4 v0, 0x0

    .line 691
    const/4 v2, 0x0

    .line 692
    .local v2, lastI:I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    .line 693
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 694
    add-int/lit8 v0, v0, 0x1

    .line 695
    add-int/lit8 v1, v1, 0x1

    .line 696
    move v2, v1

    goto :goto_1

    .line 698
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 699
    return-object v3
.end method

.method private unloadAllContainers(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9765
    .local p1, cidArgs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .line 9766
    .local v0, arg:Lcom/android/server/PackageManagerService$SdInstallArgs;
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9767
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPostDeleteLI(Z)Z

    .line 9768
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 9770
    .end local v0           #arg:Lcom/android/server/PackageManagerService$SdInstallArgs;
    :cond_0
    return-void
.end method

.method private unloadMediaPackages(Ljava/util/HashMap;[IZ)V
    .locals 19
    .parameter
    .parameter "uidArr"
    .parameter "reportStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    .prologue
    .line 9784
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 9785
    .local v12, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9786
    .local v7, failedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 9787
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .line 9788
    .local v5, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    iget-object v6, v5, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .line 9789
    .local v6, cid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 9792
    .local v13, pkgName:Ljava/lang/String;
    new-instance v11, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v11}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 9793
    .local v11, outInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 9794
    const/16 v16, 0x0

    const/16 v17, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v14

    .line 9796
    .local v14, res:Z
    if-eqz v14, :cond_0

    .line 9797
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9802
    :goto_1
    monitor-exit v15

    goto :goto_0

    .end local v14           #res:Z
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 9799
    .restart local v14       #res:Z
    :cond_0
    :try_start_1
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed to delete pkg from sdcard : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9800
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9808
    .end local v5           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v11           #outInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v14           #res:Z
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 9809
    const/4 v15, 0x0

    new-instance v16, Lcom/android/server/PackageManagerService$12;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$12;-><init>(Lcom/android/server/PackageManagerService;ZLjava/util/Set;)V

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 9822
    :goto_2
    return-void

    .line 9818
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object v15, v0

    const/16 v16, 0xc

    if-eqz p3, :cond_3

    const/16 v17, 0x1

    :goto_3
    const/16 v18, -0x1

    move-object v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 9820
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object v15, v0

    invoke-virtual {v15, v10}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 9818
    .end local v10           #msg:Landroid/os/Message;
    :cond_3
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private updateExternalMediaStatusInner(ZZ)V
    .locals 25
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    .line 9578
    const/16 v20, 0x0

    .line 9580
    .local v20, uidArr:[I
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 9582
    .local v18, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 9584
    .local v16, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v12

    .line 9585
    .local v12, list:[Ljava/lang/String;
    if-eqz v12, :cond_0

    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 9586
    :cond_0
    const-string v22, "PackageManager"

    const-string v23, "No secure containers on sdcard"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9640
    :cond_1
    if-eqz p1, :cond_7

    .line 9642
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V

    .line 9643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->startCleaningPackages()V

    .line 9648
    :goto_0
    return-void

    .line 9590
    :cond_2
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 9591
    .local v21, uidList:[I
    const/4 v13, 0x0

    .line 9592
    .local v13, num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 9593
    move-object v5, v12

    .local v5, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v11, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v14, v13

    .end local v13           #num:I
    .local v14, num:I
    :goto_1
    if-ge v10, v11, :cond_6

    :try_start_1
    aget-object v6, v5, v10

    .line 9594
    .local v6, cid:Ljava/lang/String;
    new-instance v4, Lcom/android/server/PackageManagerService$SdInstallArgs;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;)V

    .line 9596
    .local v4, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 9597
    .local v15, pkgName:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 9599
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v13, v14

    .line 9593
    .end local v14           #num:I
    .restart local v13       #num:I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v14, v13

    .end local v13           #num:I
    .restart local v14       #num:I
    goto :goto_1

    .line 9603
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9606
    .local v17, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 9612
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9613
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9614
    .local v19, uid:I
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 9615
    add-int/lit8 v13, v14, 0x1

    .end local v14           #num:I
    .restart local v13       #num:I
    :try_start_2
    aput v19, v21, v14

    goto :goto_2

    .line 9623
    .end local v4           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v17           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v19           #uid:I
    :catchall_0
    move-exception v23

    :goto_3
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 9620
    .end local v13           #num:I
    .restart local v4       #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .restart local v6       #cid:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #num:I
    .restart local v15       #pkgName:Ljava/lang/String;
    .restart local v17       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4
    :try_start_3
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_2

    .line 9623
    .end local v4           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v13           #num:I
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v17           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v14       #num:I
    :cond_6
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9625
    if-lez v14, :cond_1

    .line 9627
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v14

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 9629
    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 9630
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget v23, v21, v23

    aput v23, v20, v22

    .line 9631
    const/4 v7, 0x0

    .line 9632
    .local v7, di:I
    const/4 v9, 0x1

    .local v9, i:I
    move v8, v7

    .end local v7           #di:I
    .local v8, di:I
    :goto_4
    if-ge v9, v14, :cond_1

    .line 9633
    const/16 v22, 0x1

    sub-int v22, v9, v22

    aget v22, v21, v22

    aget v23, v21, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 9634
    add-int/lit8 v7, v8, 0x1

    .end local v8           #di:I
    .restart local v7       #di:I
    aget v22, v21, v9

    aput v22, v20, v8

    .line 9632
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #di:I
    .restart local v8       #di:I
    goto :goto_4

    .line 9646
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #di:I
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #num:I
    .end local v21           #uidList:[I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->unloadMediaPackages(Ljava/util/HashMap;[IZ)V

    goto/16 :goto_0

    .line 9623
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #num:I
    .restart local v21       #uidList:[I
    :catchall_1
    move-exception v23

    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_3

    .end local v13           #num:I
    .restart local v8       #di:I
    .restart local v9       #i:I
    .restart local v14       #num:I
    :cond_8
    move v7, v8

    .end local v8           #di:I
    .restart local v7       #di:I
    goto :goto_5
.end method

.method private updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 9
    .parameter "changingPkg"
    .parameter "pkgInfo"
    .parameter "grantPermissions"
    .parameter "replace"
    .parameter "replaceAll"

    .prologue
    .line 4023
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4025
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4026
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 4027
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_1

    .line 4030
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 4032
    :cond_1
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_2

    .line 4033
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 4036
    :cond_2
    if-eqz p1, :cond_0

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4037
    if-eqz p2, :cond_3

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4038
    :cond_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    const/4 p3, 0x1

    .line 4041
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 4048
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4049
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4050
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 4051
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 4055
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_6

    .line 4056
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v4

    .line 4057
    .local v4, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v4, :cond_6

    .line 4058
    iget-object v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 4059
    new-instance v5, Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v7, Landroid/content/pm/PermissionInfo;

    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 4061
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 4062
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4063
    iget v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 4067
    .end local v4           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_6
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_7

    .line 4070
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 4072
    :cond_7
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_8

    .line 4073
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 4076
    :cond_8
    if-eqz p1, :cond_5

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4077
    if-eqz p2, :cond_9

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4078
    :cond_9
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    const/4 p3, 0x1

    .line 4081
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 4088
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_a
    if-eqz p3, :cond_c

    .line 4089
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4090
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eq v3, p2, :cond_b

    .line 4091
    invoke-direct {p0, v3, p5}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_2

    .line 4096
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_c
    if-eqz p2, :cond_d

    .line 4097
    invoke-direct {p0, p2, p4}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4099
    :cond_d
    return-void
.end method

.method private updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 8
    .parameter "newPackage"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5850
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 5851
    .local v6, pkgName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 5855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 5856
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v1}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5857
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5859
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v0, v3, :cond_1

    .line 5885
    :cond_0
    :goto_0
    return-void

    .line 5857
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5864
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v0, v3, :cond_2

    .line 5866
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v0, :cond_0

    .line 5867
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    goto :goto_0

    .line 5871
    :cond_2
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New package installed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 5874
    :try_start_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 5876
    iput-object v6, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 5877
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 5878
    iput-object p1, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 5879
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 5880
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0, v6, p2}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 5881
    const/4 v0, 0x1

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 5883
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 5884
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    move v3, v4

    .line 5874
    goto :goto_1
.end method

.method private verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .locals 6
    .parameter "oldPkg"
    .parameter "newPkg"

    .prologue
    const/4 v2, 0x0

    const-string v5, "Unable to update from "

    const-string v4, "PackageManager"

    const-string v3, " to "

    .line 2770
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2771
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": old package not in system partition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2781
    :goto_0
    return v0

    .line 2775
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2776
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": old package still exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2779
    goto :goto_0

    .line 2781
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .parameter "pkgSetting"
    .parameter "pkg"

    .prologue
    const/4 v2, 0x0

    const-string v4, "PackageManager"

    const-string v3, "Package "

    .line 2690
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2692
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2694
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signatures do not match the previously installed version; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const/4 v0, -0x7

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    .line 2711
    :goto_0
    return v0

    .line 2701
    :cond_0
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2702
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2704
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no signatures that match those in shared user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    const/4 v0, -0x8

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    .line 2708
    goto :goto_0

    .line 2711
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 6630
    const-string v0, "PackageManager"

    const-string v1, "addPackageToPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6631
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1789
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1790
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1795
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 7
    .parameter "info"
    .parameter "async"

    .prologue
    const/4 v6, 0x2

    .line 1747
    iget v4, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 1748
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Label must be specified in permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1750
    :cond_0
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v3

    .line 1751
    .local v3, tree:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1752
    .local v1, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v1, :cond_4

    const/4 v4, 0x1

    move v0, v4

    .line 1753
    .local v0, added:Z
    :goto_0
    const/4 v2, 0x1

    .line 1754
    .local v2, changed:Z
    if-eqz v0, :cond_5

    .line 1755
    new-instance v1, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v1           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1769
    .restart local v1       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_1
    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 1770
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v6, Landroid/content/pm/PermissionInfo;

    invoke-direct {v6, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 1772
    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1773
    iget v4, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 1774
    if-eqz v0, :cond_2

    .line 1775
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    :cond_2
    if-eqz v2, :cond_3

    .line 1778
    if-nez p2, :cond_7

    .line 1779
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1784
    :cond_3
    :goto_2
    return v0

    .line 1752
    .end local v0           #added:Z
    .end local v2           #changed:Z
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1757
    .restart local v0       #added:Z
    .restart local v2       #changed:Z
    :cond_5
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    if-eq v4, v6, :cond_6

    .line 1758
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1762
    :cond_6
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iget v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-static {v4, p1}, Lcom/android/server/PackageManagerService;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1766
    const/4 v2, 0x0

    goto :goto_1

    .line 1781
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    goto :goto_2
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const-string v0, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v0, "PackageManager"

    .line 6668
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 6669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 6672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 6674
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    monitor-exit v0

    .line 6688
    :goto_0
    return-void

    .line 6678
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6682
    :cond_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6683
    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6684
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 6686
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 6687
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "names"

    .prologue
    .line 1369
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 1370
    .local v2, out:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1371
    :try_start_0
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1372
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1373
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v4, v0

    :goto_1
    aput-object v4, v2, v1

    .line 1371
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1373
    :cond_0
    aget-object v4, p1, v1

    goto :goto_1

    .line 1375
    .end local v0           #cur:Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 1376
    return-object v2

    .line 1375
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 1657
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1658
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1659
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1660
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1661
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_0

    .line 1662
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1663
    monitor-exit v2

    move v2, v4

    .line 1670
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_0
    return v2

    .line 1665
    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1666
    monitor-exit v2

    move v2, v4

    goto :goto_0

    .line 1669
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    monitor-exit v2

    .line 1670
    const/4 v2, -0x1

    goto :goto_0

    .line 1669
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 1822
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1823
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1824
    .local v0, p1:Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1825
    .local v1, p2:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 1827
    :cond_0
    const/4 v3, -0x4

    monitor-exit v2

    move v2, v3

    .line 1829
    :goto_0
    return v2

    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .line 1830
    .end local v0           #p1:Landroid/content/pm/PackageParser$Package;
    .end local v1           #p2:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 1866
    if-nez p1, :cond_1

    .line 1867
    if-nez p2, :cond_0

    const/4 v6, 0x1

    .line 1886
    :goto_0
    return v6

    .line 1867
    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 1871
    :cond_1
    if-nez p2, :cond_2

    .line 1872
    const/4 v6, -0x2

    goto :goto_0

    .line 1874
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1875
    .local v3, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 1876
    .local v5, sig:Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1875
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1878
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1879
    .local v4, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 1880
    .restart local v5       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1879
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1883
    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1884
    const/4 v6, 0x0

    goto :goto_0

    .line 1886
    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 7
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v6, 0x0

    .line 1674
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1675
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v2

    .line 1676
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1677
    move-object v0, v2

    check-cast v0, Lcom/android/server/PackageManagerService$GrantedPermissions;

    move-object v1, v0

    .line 1678
    .local v1, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    iget-object v5, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1679
    monitor-exit v4

    move v4, v6

    .line 1688
    .end local v1           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_0
    return v4

    .line 1682
    :cond_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1683
    .local v3, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1684
    monitor-exit v4

    move v4, v6

    goto :goto_0

    .line 1687
    .end local v3           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v4

    .line 1688
    const/4 v4, -0x1

    goto :goto_0

    .line 1687
    .end local v2           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public checkUidSignatures(II)I
    .locals 7
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    const/4 v6, -0x4

    .line 1834
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1837
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1838
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 1839
    instance-of v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_0

    .line 1840
    check-cast v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 1849
    .local v2, s1:[Landroid/content/pm/Signature;
    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1850
    .restart local v1       #obj:Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 1851
    instance-of v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_3

    .line 1852
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    .line 1861
    .local v3, s2:[Landroid/content/pm/Signature;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    monitor-exit v5

    .end local v2           #s1:[Landroid/content/pm/Signature;
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :goto_2
    return v4

    .line 1841
    :cond_0
    instance-of v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v4, :cond_1

    .line 1842
    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    .restart local v2       #s1:[Landroid/content/pm/Signature;
    goto :goto_0

    .line 1844
    .end local v2           #s1:[Landroid/content/pm/Signature;
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    monitor-exit v5

    move v4, v6

    goto :goto_2

    .line 1847
    :cond_2
    monitor-exit v5

    move v4, v6

    goto :goto_2

    .line 1853
    .restart local v2       #s1:[Landroid/content/pm/Signature;
    :cond_3
    instance-of v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v4, :cond_4

    .line 1854
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    .restart local v3       #s2:[Landroid/content/pm/Signature;
    goto :goto_1

    .line 1856
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :cond_4
    monitor-exit v5

    move v4, v6

    goto :goto_2

    .line 1859
    :cond_5
    monitor-exit v5

    move v4, v6

    goto :goto_2

    .line 1862
    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #s1:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method cleanupInstallFailedPackage(Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 7
    .parameter "ps"

    .prologue
    const-string v6, "Unable to remove old code file: "

    const-string v5, "PackageManager"

    .line 1033
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up incompletely installed app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_3

    .line 1035
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v2

    .line 1036
    .local v2, retCode:I
    if-gez v2, :cond_0

    .line 1037
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove app data directory for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .end local v2           #retCode:I
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 1047
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1048
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to remove old code file: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_1
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    if-eqz v3, :cond_2

    .line 1052
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1053
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to remove old code file: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_2
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1042
    :cond_3
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1043
    .local v1, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 6440
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6443
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$8;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6467
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 6738
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 6739
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6740
    .local v1, uid:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 6741
    .local v0, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_2

    .line 6742
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 6745
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 6747
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6749
    monitor-exit v2

    .line 6760
    :goto_0
    return-void

    .line 6751
    :cond_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6756
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6757
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 6759
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v1           #uid:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 6763
    const/4 v0, 0x0

    .line 6764
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6765
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6767
    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6768
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 6769
    const/4 v0, 0x1

    goto :goto_0

    .line 6772
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_1
    return v0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "names"

    .prologue
    .line 1358
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .line 1359
    .local v1, out:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1360
    :try_start_0
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1361
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1362
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    :goto_1
    aput-object v4, v1, v0

    .line 1360
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1362
    :cond_0
    aget-object v4, p1, v0

    goto :goto_1

    .line 1364
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    monitor-exit v3

    .line 1365
    return-object v1

    .line 1364
    .end local v0           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 6514
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_CACHE_FILES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6517
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$9;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6533
    return-void
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 6125
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6128
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/PackageManagerService$7;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6141
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 7003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "android.permission.DUMP"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v24

    if-eqz v24, :cond_0

    .line 7005
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", uid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " without permission "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "android.permission.DUMP"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7294
    .end local p1
    :goto_0
    return-void

    .line 7013
    .restart local p1
    :cond_0
    const/16 v17, 0x0

    .line 7015
    .local v17, packageName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 7016
    .local v15, opti:I
    :cond_1
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 7017
    aget-object v14, p3, v15

    .line 7018
    .local v14, opt:Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_2

    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x2d

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 7036
    .end local v14           #opt:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 7037
    aget-object v6, p3, v15

    .line 7038
    .local v6, cmd:Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    .line 7040
    const-string v24, "android"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "."

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 7041
    :cond_3
    move-object/from16 v17, v6

    .line 7045
    .end local v6           #cmd:Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    .line 7047
    .local v20, printedTitle:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 7048
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object/from16 v25, v0

    const-string v26, "Activity Resolver Table:"

    const-string v27, "  "

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 7049
    const/16 v20, 0x1

    .line 7051
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object/from16 v25, v0

    if-eqz v20, :cond_10

    const-string v26, "\nReceiver Resolver Table:"

    :goto_2
    const-string v27, "  "

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 7054
    const/16 v20, 0x1

    .line 7056
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object/from16 v25, v0

    if-eqz v20, :cond_11

    const-string v26, "\nService Resolver Table:"

    :goto_3
    const-string v27, "  "

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 7059
    const/16 v20, 0x1

    .line 7061
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v25

    if-eqz v20, :cond_12

    const-string v26, "\nPreferred Activities:"

    :goto_4
    const-string v27, "  "

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 7064
    const/16 v20, 0x1

    .line 7066
    :cond_8
    const/16 v19, 0x0

    .line 7068
    .local v19, printedSomething:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/PackageManagerService$BasePermission;

    .line 7069
    .local v16, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v17, :cond_a

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 7072
    :cond_a
    if-nez v19, :cond_c

    .line 7073
    if-eqz v20, :cond_b

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7074
    :cond_b
    const-string v25, "Permissions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7075
    const/16 v19, 0x1

    .line 7076
    const/16 v20, 0x1

    .line 7078
    :cond_c
    const-string v25, "  Permission ["

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v25, "] ("

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7079
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7080
    const-string v25, "):"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7081
    const-string v25, "    sourcePackage="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7082
    const-string v25, "    uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7083
    const-string v25, " gids="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7084
    const-string v25, " type="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7085
    const-string v25, " prot="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7086
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 7087
    const-string v25, "    packageSetting="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7089
    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 7090
    const-string v25, "    perm="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 7276
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #p:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v19           #printedSomething:Z
    .end local p1
    :catchall_0
    move-exception v25

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 7021
    .end local v20           #printedTitle:Z
    .restart local v14       #opt:Ljava/lang/String;
    .restart local p1
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 7022
    const-string v24, "-a"

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 7024
    const-string v24, "-h"

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 7025
    const-string v24, "Package manager dump options:"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7026
    const-string v24, "  [-h] [cmd] ..."

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7027
    const-string v24, "  cmd may be one of:"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7028
    const-string v24, "    [package.name]: info about given package"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7031
    :cond_f
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown argument: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; use -h for help"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7051
    .end local v14           #opt:Ljava/lang/String;
    .restart local v20       #printedTitle:Z
    :cond_10
    :try_start_1
    const-string v26, "Receiver Resolver Table:"

    goto/16 :goto_2

    .line 7056
    :cond_11
    const-string v26, "Service Resolver Table:"

    goto/16 :goto_3

    .line 7061
    :cond_12
    const-string v26, "Preferred Activities:"

    goto/16 :goto_4

    .line 7094
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v19       #printedSomething:Z
    :cond_13
    const/16 v19, 0x0

    .line 7095
    const/16 v18, 0x0

    .line 7097
    .local v18, packageSharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 7098
    .local v21, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v17, :cond_15

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 7102
    :cond_15
    if-nez v19, :cond_17

    .line 7103
    if-eqz v20, :cond_16

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7104
    :cond_16
    const-string v25, "Packages:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7105
    const/16 v19, 0x1

    .line 7106
    const/16 v20, 0x1

    .line 7108
    :cond_17
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    .line 7109
    const-string v25, "  Package ["

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7110
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7111
    const-string v25, "] ("

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7112
    invoke-static/range {v21 .. v21}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7113
    const-string v25, "):"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7114
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18

    .line 7115
    const-string v25, "    compat name="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7117
    :cond_18
    const-string v25, "    userId="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7118
    const-string v25, " gids="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->gids:[I

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7119
    const-string v25, "    sharedUser="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7120
    const-string v25, "    pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7121
    const-string v25, "    codePath="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7122
    const-string v25, "    resourcePath="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7123
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    .line 7124
    const-string v25, "    dataDir="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7125
    const-string v25, "    targetSdk="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7126
    const-string v25, "    supportsScreens=["

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7127
    const/4 v9, 0x1

    .line 7128
    .local v9, first:Z
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 7130
    if-nez v9, :cond_19

    const-string v25, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7131
    :cond_19
    const/4 v9, 0x0

    .line 7132
    const-string v25, "medium"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7134
    :cond_1a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x800

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 7136
    if-nez v9, :cond_1b

    const-string v25, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7137
    :cond_1b
    const/4 v9, 0x0

    .line 7138
    const-string v25, "large"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7140
    :cond_1c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x200

    move/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 7142
    if-nez v9, :cond_1d

    const-string v25, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7143
    :cond_1d
    const/4 v9, 0x0

    .line 7144
    const-string v25, "small"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7146
    :cond_1e
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x1000

    move/from16 v25, v0

    if-eqz v25, :cond_20

    .line 7148
    if-nez v9, :cond_1f

    const-string v25, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7149
    :cond_1f
    const/4 v9, 0x0

    .line 7150
    const-string v25, "resizeable"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7152
    :cond_20
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x2000

    move/from16 v25, v0

    if-eqz v25, :cond_22

    .line 7154
    if-nez v9, :cond_21

    const-string v25, ", "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7155
    :cond_21
    const/4 v9, 0x0

    .line 7156
    const-string v25, "anyDensity"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7159
    .end local v9           #first:Z
    :cond_22
    const-string v25, "]"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7160
    const-string v25, "    timeStamp="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStampStr()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7161
    const-string v25, "    signatures="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7162
    const-string v25, "    permissionsFixed="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7163
    const-string v25, " haveGids="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->haveGids:Z

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7164
    const-string v25, "    pkgFlags=0x"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7165
    const-string v25, " installStatus="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->installStatus:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7166
    const-string v25, " enabled="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7167
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    move-result v25

    if-lez v25, :cond_24

    .line 7168
    const-string v25, "    disabledComponents:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7169
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_24

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 7170
    .local v22, s:Ljava/lang/String;
    const-string v25, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 7110
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_6

    .line 7173
    :cond_24
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    move-result v25

    if-lez v25, :cond_25

    .line 7174
    const-string v25, "    enabledComponents:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7175
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_25

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 7176
    .restart local v22       #s:Ljava/lang/String;
    const-string v25, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 7179
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    move-result v25

    if-lez v25, :cond_14

    .line 7180
    const-string v25, "    grantedPermissions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7181
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 7182
    .restart local v22       #s:Ljava/lang/String;
    const-string v25, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 7187
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v21           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v22           #s:Ljava/lang/String;
    :cond_26
    const/16 v19, 0x0

    .line 7188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    if-lez v25, :cond_2b

    .line 7190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local p1
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_27
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 7191
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_28

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_28

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_27

    .line 7195
    :cond_28
    if-nez v19, :cond_2a

    .line 7196
    if-eqz v20, :cond_29

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7197
    :cond_29
    const-string v25, "Renamed packages:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7198
    const/16 v19, 0x1

    .line 7199
    const/16 v20, 0x1

    .line 7201
    :cond_2a
    const-string v25, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v25, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7202
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 7205
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_2b
    const/16 v19, 0x0

    .line 7206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    if-lez v25, :cond_32

    .line 7207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_2c
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_32

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 7208
    .restart local v21       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v17, :cond_2d

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2d

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 7212
    :cond_2d
    if-nez v19, :cond_2f

    .line 7213
    if-eqz v20, :cond_2e

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7214
    :cond_2e
    const-string v25, "Hidden system packages:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7215
    const/16 v19, 0x1

    .line 7216
    const/16 v20, 0x1

    .line 7218
    :cond_2f
    const-string v25, "  Package ["

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7219
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_31

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_c
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7220
    const-string v25, "] ("

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7221
    invoke-static/range {v21 .. v21}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7222
    const-string v25, "):"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7223
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_30

    .line 7224
    const-string v25, "    compat name="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7226
    :cond_30
    const-string v25, "    userId="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7227
    const-string v25, "    sharedUser="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7228
    const-string v25, "    codePath="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7229
    const-string v25, "    resourcePath="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7219
    :cond_31
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_c

    .line 7232
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_32
    const/16 v19, 0x0

    .line 7234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService$Settings;->access$3400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_33
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 7235
    .local v23, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v17, :cond_34

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_33

    .line 7238
    :cond_34
    if-nez v19, :cond_36

    .line 7239
    if-eqz v20, :cond_35

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7240
    :cond_35
    const-string v25, "Shared users:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7241
    const/16 v19, 0x1

    .line 7242
    const/16 v20, 0x1

    .line 7244
    :cond_36
    const-string v25, "  SharedUser ["

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v25, "] ("

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7245
    invoke-static/range {v23 .. v23}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7246
    const-string v25, "):"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7247
    const-string v25, "    userId="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7248
    const-string v25, " gids="

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7249
    const-string v25, "    grantedPermissions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7250
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_33

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 7251
    .restart local v22       #s:Ljava/lang/String;
    const-string v25, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 7256
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    .end local v23           #su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_37
    if-nez v17, :cond_39

    .line 7257
    if-eqz v20, :cond_38

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7258
    :cond_38
    const/16 v20, 0x1

    .line 7259
    const-string v25, "Settings parse messages:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7262
    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7263
    const-string v25, "Package warning messages:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7264
    invoke-static {}, Lcom/android/server/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 7267
    .local v10, fname:Ljava/io/File;
    :try_start_2
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7268
    .local v13, in:Ljava/io/FileInputStream;
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 7269
    .local v5, avail:I
    new-array v7, v5, [B

    .line 7270
    .local v7, data:[B
    invoke-virtual {v13, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 7271
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7276
    .end local v5           #avail:I
    .end local v7           #data:[B
    .end local v10           #fname:Ljava/io/File;
    .end local v13           #in:Ljava/io/FileInputStream;
    :cond_39
    :goto_e
    :try_start_3
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 7279
    const/16 v19, 0x0

    .line 7280
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3a
    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Provider;

    .line 7281
    .local v16, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v17, :cond_3b

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3a

    .line 7284
    :cond_3b
    if-nez v19, :cond_3d

    .line 7285
    if-eqz v20, :cond_3c

    const-string v25, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7286
    :cond_3c
    const-string v25, "Registered ContentProviders:"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7287
    const/16 v19, 0x1

    .line 7288
    const/16 v20, 0x1

    .line 7290
    :cond_3d
    const-string v25, "  ["

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v25, "]: "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7291
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 7293
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_1
    move-exception v25

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v25

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_5
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 7273
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v10       #fname:Ljava/io/File;
    :catch_0
    move-exception v25

    goto/16 :goto_e

    .line 7272
    :catch_1
    move-exception v25

    goto/16 :goto_e
.end method

.method public enterSafeMode()V
    .locals 1

    .prologue
    .line 6958
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 6959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    .line 6961
    :cond_0
    return-void
.end method

.method findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 17
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 1982
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 1984
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    const/high16 v15, 0x1

    and-int v15, v15, p3

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    :goto_0
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .line 1987
    .local v11, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 1991
    const/4 v9, 0x0

    .line 1992
    .local v9, match:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    .line 1994
    .local v5, N:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    if-ge v8, v5, :cond_2

    .line 1995
    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1998
    .local v12, ri:Landroid/content/pm/ResolveInfo;
    iget v14, v12, Landroid/content/pm/ResolveInfo;->match:I

    if-le v14, v9, :cond_0

    iget v9, v12, Landroid/content/pm/ResolveInfo;->match:I

    .line 1994
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1984
    .end local v5           #N:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 2002
    .restart local v5       #N:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v11       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_2
    const/high16 v14, 0xfff

    and-int/2addr v9, v14

    .line 2003
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .line 2004
    .local v4, M:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v4, :cond_8

    .line 2005
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 2006
    .local v10, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    if-eq v14, v9, :cond_4

    .line 2004
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2009
    :cond_4
    iget-object v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2014
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_3

    .line 2015
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_3

    .line 2016
    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 2017
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 2015
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2021
    :cond_6
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2029
    move-object v0, v10

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PreferredActivity;->sameSet(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_7

    .line 2030
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result set changed, dropping preferred activity for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 2033
    const/4 v14, 0x0

    monitor-exit v13

    move-object v13, v14

    .line 2043
    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :goto_4
    return-object v13

    .line 2037
    .restart local v4       #M:I
    .restart local v5       #N:I
    .restart local v6       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v10       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    monitor-exit v13

    move-object v13, v12

    goto :goto_4

    .line 2042
    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_8
    monitor-exit v13

    .line 2043
    const/4 v13, 0x0

    goto :goto_4

    .line 2042
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method

.method public finishPackageInstall(I)V
    .locals 4
    .parameter "token"

    .prologue
    .line 4760
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4761
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4762
    return-void
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .locals 3
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$2;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1577
    return-void
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "freeStorageSize"
    .parameter "observer"

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$1;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1549
    return-void
.end method

.method generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1329
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_0

    .line 1331
    invoke-static {p1, v3, p2}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1338
    :goto_0
    return-object v2

    .line 1333
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1334
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 1335
    goto :goto_0

    .line 1337
    :cond_1
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v0, v2

    .line 1338
    .local v0, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1
    iget-object v2, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    invoke-static {p1, v2, p2}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    goto :goto_0

    .end local v0           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_2
    move-object v0, v1

    .line 1337
    goto :goto_1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1581
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$900(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1584
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1585
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1591
    :goto_0
    return-object v1

    .line 1587
    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1588
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1590
    :cond_1
    monitor-exit v1

    .line 1591
    const/4 v1, 0x0

    goto :goto_0

    .line 1590
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 6
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1463
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1464
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1465
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1467
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 1468
    .local v3, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v3, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1471
    .end local v0           #N:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v3           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1470
    .restart local v0       #N:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 5
    .parameter "appPackageName"

    .prologue
    .line 6936
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6937
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6938
    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_0

    .line 6939
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6942
    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6941
    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1507
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1511
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 1513
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1522
    :goto_0
    return-object v1

    .line 1515
    :cond_0
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1516
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1518
    :cond_2
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_3

    .line 1519
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1521
    :cond_3
    monitor-exit v1

    .line 1522
    const/4 v1, 0x0

    goto :goto_0

    .line 1521
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 7
    .parameter "componentName"

    .prologue
    .line 6946
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6947
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6948
    .local v1, packageNameStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6949
    .local v2, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_0

    .line 6950
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6954
    .end local v1           #packageNameStr:Ljava/lang/String;
    .end local v2           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6952
    .restart local v1       #packageNameStr:Ljava/lang/String;
    .restart local v2       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6953
    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageSetting;->currentEnabledStateLP(Ljava/lang/String;)I

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public getDatabaseStoragePackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10012
    const-string v0, "/system/etc/purenandpackages.txt"

    .line 10013
    .local v0, CONFIG_FILE:Ljava/lang/String;
    const-string v1, "/system/etc/purenandpackages.txt"

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService;->getStoragePackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getDatabaseStoragePackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->getDatabaseStoragePackageList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getInstallLocation()I
    .locals 3

    .prologue
    .line 10002
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 8
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2340
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2341
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_1

    .line 2342
    :try_start_0
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2343
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2344
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2345
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v5, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2346
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 2347
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2363
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2352
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2353
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 2355
    .local v4, p:Landroid/content/pm/PackageParser$Package;
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    .line 2356
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2357
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 2358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2363
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v4           #p:Landroid/content/pm/PackageParser$Package;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2364
    return-object v1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 9
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2312
    and-int/lit16 v8, p1, 0x2000

    if-eqz v8, :cond_1

    .line 2313
    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2314
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2315
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2316
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v8, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2317
    .local v6, psPkg:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_0

    .line 2318
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2334
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v6           #psPkg:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2323
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2324
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2326
    .local v3, p:Landroid/content/pm/PackageParser$Package;
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    .line 2327
    invoke-virtual {p0, v3, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2328
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_2

    .line 2329
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2334
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3           #p:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 6926
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 6927
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6928
    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_0

    .line 6929
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6932
    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6931
    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2453
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2454
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2455
    .local v0, i:Landroid/content/pm/PackageParser$Instrumentation;
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2456
    .end local v0           #i:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 7
    .parameter "uid"

    .prologue
    .line 1911
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1912
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1913
    .local v1, obj:Ljava/lang/Object;
    instance-of v5, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_0

    .line 1914
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v3, v0

    .line 1915
    .local v3, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    move-object v4, v5

    .line 1921
    .end local v3           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_0
    return-object v4

    .line 1916
    :cond_0
    instance-of v5, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v5, :cond_1

    .line 1917
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v2, v0

    .line 1918
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    monitor-exit v4

    move-object v4, v5

    goto :goto_0

    .line 1920
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    monitor-exit v4

    .line 1921
    const/4 v4, 0x0

    goto :goto_0

    .line 1920
    .end local v1           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1395
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1396
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1400
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1401
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1402
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 1403
    .local v2, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    :goto_0
    monitor-exit v3

    move-object v3, v4

    .line 1407
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_1
    return-object v3

    .line 1403
    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v2       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_0
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;->gids:[I

    goto :goto_0

    .line 1405
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    const/4 v3, 0x0

    new-array v3, v3, [I

    goto :goto_1

    .line 1405
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1343
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1347
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 1348
    invoke-virtual {p0, v0, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1354
    :goto_0
    return-object v1

    .line 1350
    :cond_0
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_1

    .line 1351
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1353
    :cond_1
    monitor-exit v1

    .line 1354
    const/4 v1, 0x0

    goto :goto_0

    .line 1353
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 6566
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6569
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$10;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 6586
    return-void
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    .line 1380
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1381
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1382
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 1383
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-exit v2

    move v2, v3

    .line 1390
    :goto_0
    return v2

    .line 1385
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1386
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2

    .line 1387
    :cond_1
    monitor-exit v2

    move v2, v4

    goto :goto_0

    .line 1389
    :cond_2
    iget-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1390
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    monitor-exit v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 1391
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 13
    .parameter "uid"

    .prologue
    .line 1890
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1891
    :try_start_0
    iget-object v10, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v10, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v5

    .line 1892
    .local v5, obj:Ljava/lang/Object;
    instance-of v10, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v10, :cond_1

    .line 1893
    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v8, v0

    .line 1894
    .local v8, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 1895
    .local v1, N:I
    new-array v7, v1, [Ljava/lang/String;

    .line 1896
    .local v7, res:[Ljava/lang/String;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1897
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 1898
    .end local v2           #i:I
    .end local p0
    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1899
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    aput-object v10, v7, v3

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 1901
    :cond_0
    monitor-exit v9

    move-object v9, v7

    .line 1907
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v7           #res:[Ljava/lang/String;
    .end local v8           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_1
    return-object v9

    .line 1902
    .restart local p0
    :cond_1
    instance-of v10, v5, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v10, :cond_2

    .line 1903
    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v6, v0

    .line 1904
    .local v6, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v6, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    monitor-exit v9

    move-object v9, v10

    goto :goto_1

    .line 1906
    .end local v6           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    monitor-exit v9

    .line 1907
    const/4 v9, 0x0

    goto :goto_1

    .line 1906
    .end local v5           #obj:Ljava/lang/Object;
    .end local p0
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {p0, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1425
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1426
    .local v0, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_0

    .line 1427
    invoke-static {v0, p2}, Lcom/android/server/PackageManagerService;->generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1429
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1430
    .end local v0           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPersistentApplications(I)Ljava/util/List;
    .locals 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2371
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2372
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2374
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 2378
    :cond_1
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2381
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2383
    return-object v0
.end method

.method public getPreferenceStoragePackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10017
    const-string v0, "/system/etc/purenandpackages_pref.txt"

    .line 10018
    .local v0, CONFIG_FILE:Ljava/lang/String;
    const-string v1, "/system/etc/purenandpackages_pref.txt"

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService;->getStoragePackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getPreferenceStoragePackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->getPreferenceStoragePackageList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 6778
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 6779
    .local v1, num:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 6780
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6781
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6782
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6783
    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    if-eqz p3, :cond_1

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6785
    :cond_1
    if-eqz p1, :cond_2

    .line 6786
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6788
    :cond_2
    if-eqz p2, :cond_0

    .line 6789
    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6793
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6795
    return v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1596
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$900(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1599
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1600
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1603
    :goto_0
    return-object v1

    .line 1602
    :cond_0
    monitor-exit v1

    .line 1603
    const/4 v1, 0x0

    goto :goto_0

    .line 1602
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 1607
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1608
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->access$1000(Lcom/android/server/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 1611
    .local v0, s:Landroid/content/pm/PackageParser$Service;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1612
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1615
    :goto_0
    return-object v1

    .line 1614
    :cond_0
    monitor-exit v1

    .line 1615
    const/4 v1, 0x0

    goto :goto_0

    .line 1614
    .end local v0           #s:Landroid/content/pm/PackageParser$Service;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 7

    .prologue
    .line 1634
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1635
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1636
    .local v0, featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 1637
    .local v3, size:I
    if-lez v3, :cond_0

    .line 1638
    add-int/lit8 v5, v3, 0x1

    new-array v1, v5, [Landroid/content/pm/FeatureInfo;

    .line 1639
    .local v1, features:[Landroid/content/pm/FeatureInfo;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1640
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1641
    .local v2, fi:Landroid/content/pm/FeatureInfo;
    const-string v5, "ro.opengles.version"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1643
    aput-object v2, v1, v3

    .line 1644
    monitor-exit v4

    move-object v4, v1

    .line 1647
    .end local v1           #features:[Landroid/content/pm/FeatureInfo;
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :goto_0
    return-object v4

    .line 1646
    :cond_0
    monitor-exit v4

    .line 1647
    const/4 v4, 0x0

    goto :goto_0

    .line 1646
    .end local v0           #featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1620
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1621
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1622
    .local v0, libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1623
    .local v2, size:I
    if-lez v2, :cond_0

    .line 1624
    new-array v1, v2, [Ljava/lang/String;

    .line 1625
    .local v1, libs:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1626
    monitor-exit v3

    move-object v3, v1

    .line 1629
    .end local v1           #libs:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1628
    :cond_0
    monitor-exit v3

    .line 1629
    const/4 v3, 0x0

    goto :goto_0

    .line 1628
    .end local v0           #libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 6
    .parameter "sharedUserName"

    .prologue
    const/4 v5, -0x1

    .line 1925
    if-nez p1, :cond_0

    move v1, v5

    .line 1933
    :goto_0
    return v1

    .line 1928
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1929
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v0

    .line 1930
    .local v0, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_1

    .line 1931
    monitor-exit v1

    move v1, v5

    goto :goto_0

    .line 1933
    :cond_1
    iget v2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1934
    .end local v0           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getUidTargetSdkVersionLockedLP(I)I
    .locals 10
    .parameter "uid"

    .prologue
    .line 6642
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v9, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v4

    .line 6643
    .local v4, obj:Ljava/lang/Object;
    instance-of v9, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v9, :cond_2

    .line 6644
    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v6, v0

    .line 6645
    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v9, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 6646
    .local v1, N:I
    const/16 v8, 0x2710

    .line 6647
    .local v8, vers:I
    iget-object v9, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6648
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .line 6649
    .local v2, i:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6650
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 6651
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_0

    .line 6652
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6653
    .local v7, v:I
    if-ge v7, v8, :cond_0

    move v8, v7

    goto :goto_0

    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v7           #v:I
    :cond_1
    move v9, v8

    .line 6663
    .end local v1           #N:I
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v6           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .end local v8           #vers:I
    :goto_1
    return v9

    .line 6657
    :cond_2
    instance-of v9, v4, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v9, :cond_3

    .line 6658
    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v5, v0

    .line 6659
    .restart local v5       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_3

    .line 6660
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_1

    .line 6663
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    const/16 v9, 0x2710

    goto :goto_1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSystemUidErrors()Z
    .locals 1

    .prologue
    .line 6985
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)V
    .locals 1
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 4742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 4743
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 7
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 4749
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 4753
    .local v6, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/PackageManagerService$InstallParams;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$InstallParams;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4755
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4756
    return-void
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .locals 2
    .parameter "actionName"

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 6981
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .locals 12
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    const/16 v5, 0x10

    const/16 v4, 0x8

    const-string v1, "PackageManager"

    .line 9826
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MOVE_PACKAGE"

    invoke-virtual {v1, v3, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9828
    const/4 v10, 0x1

    .line 9829
    .local v10, returnCode:I
    const/4 v6, 0x0

    .line 9830
    .local v6, currFlags:I
    const/4 v8, 0x0

    .line 9831
    .local v8, newFlags:I
    iget-object v11, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v11

    .line 9832
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    .line 9833
    .local v9, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v9, :cond_1

    .line 9834
    const/4 v10, -0x2

    .line 9863
    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq v10, v1, :cond_7

    .line 9864
    new-instance v0, Lcom/android/server/PackageManagerService$MoveParams;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$MoveParams;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;)V

    invoke-direct {p0, v0, v10}, Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V

    .line 9874
    :goto_1
    monitor-exit v11

    .line 9875
    return-void

    .line 9837
    :cond_1
    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 9839
    const-string v1, "PackageManager"

    const-string v3, "Cannot move system application"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9840
    const/4 v10, -0x3

    goto :goto_0

    .line 9841
    :cond_2
    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 9843
    const-string v1, "PackageManager"

    const-string v3, "Cannot move forward locked app."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9844
    const/4 v10, -0x4

    goto :goto_0

    .line 9847
    :cond_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_4

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    .line 9849
    const-string v1, "PackageManager"

    const-string v3, "Ambigous flags specified for move location."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9850
    const/4 v10, -0x5

    goto :goto_0

    .line 9852
    :cond_4
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_5

    move v8, v4

    .line 9854
    :goto_2
    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    move v6, v4

    .line 9856
    :goto_3
    if-ne v8, v6, :cond_0

    .line 9857
    const-string v1, "PackageManager"

    const-string v3, "No move required. Trying to move to same location"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9858
    const/4 v10, -0x5

    goto :goto_0

    :cond_5
    move v8, v5

    .line 9852
    goto :goto_2

    :cond_6
    move v6, v5

    .line 9854
    goto :goto_3

    .line 9866
    :cond_7
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 9867
    .local v7, msg:Landroid/os/Message;
    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v2

    .line 9869
    .local v2, srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;
    new-instance v0, Lcom/android/server/PackageManagerService$MoveParams;

    move-object v1, p0

    move-object v3, p2

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$MoveParams;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;)V

    .line 9871
    .local v0, mp:Lcom/android/server/PackageManagerService$MoveParams;
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9872
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v7}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 9874
    .end local v0           #mp:Lcom/android/server/PackageManagerService$MoveParams;
    .end local v2           #srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;
    .end local v7           #msg:Landroid/os/Message;
    .end local v9           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "lastPackage"

    .prologue
    const/4 v2, 0x0

    .line 4609
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4610
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-nez v1, :cond_0

    .line 4614
    monitor-exit v0

    move-object v0, v2

    .line 4619
    .end local p0
    :goto_0
    return-object v0

    .line 4616
    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    .line 4617
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4619
    :cond_1
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_1
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 4621
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1023
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    .line 1026
    const-string v1, "PackageManager"

    const-string v2, "Package Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    :cond_0
    throw v0
.end method

.method public performDexOpt(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2715
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 2727
    :goto_0
    return v1

    .line 2720
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2721
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 2722
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-eqz v2, :cond_2

    .line 2723
    :cond_1
    monitor-exit v1

    move v1, v3

    goto :goto_0

    .line 2725
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2726
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2727
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v2

    goto :goto_0

    .line 2725
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_3
    move v2, v3

    .line 2727
    goto :goto_1

    .line 2728
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2422
    const/4 v0, 0x0

    .line 2424
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 2425
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    move-object v1, v0

    .line 2426
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2427
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 2428
    .local v3, p:Landroid/content/pm/PackageParser$Provider;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v6, p3}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 2435
    :cond_1
    if-nez v1, :cond_4

    .line 2436
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2438
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_1
    :try_start_2
    invoke-static {v3, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v1, v0

    .line 2441
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_0

    .line 2442
    .end local v3           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2444
    if-eqz v1, :cond_3

    .line 2445
    sget-object v4, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2448
    :cond_3
    return-object v1

    .line 2442
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :catchall_0
    move-exception v5

    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_3

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v3       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_4
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_1

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :cond_5
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2464
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2465
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2466
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2468
    .local v2, p:Landroid/content/pm/PackageParser$Instrumentation;
    if-eqz p1, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v4, v4, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2470
    :cond_1
    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2474
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2476
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2048
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2049
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 2050
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2051
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2052
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 2053
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2054
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2055
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v6, v2

    .line 2071
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v6

    .line 2060
    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2061
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2062
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2063
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2066
    :cond_2
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2067
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3

    .line 2068
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2071
    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2072
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 22
    .parameter "caller"
    .parameter "specifics"
    .parameter "specificTypes"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2078
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 2080
    .local v13, resultsAction:Ljava/lang/String;
    or-int/lit8 v20, p6, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 2084
    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .line 2095
    .local v18, specificsPos:I
    if-eqz p2, :cond_d

    .line 2096
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 2097
    aget-object v17, p2, v9

    .line 2098
    .local v17, sintent:Landroid/content/Intent;
    if-nez v17, :cond_1

    .line 2096
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2103
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2104
    .local v5, action:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2107
    const/4 v5, 0x0

    .line 2109
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2110
    .local v8, comp:Landroid/content/ComponentName;
    const/4 v14, 0x0

    .line 2111
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 2112
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_a

    .line 2113
    if-eqz p3, :cond_9

    aget-object v20, p3, v9

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 2117
    if-eqz v14, :cond_0

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2123
    :cond_3
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2124
    new-instance v8, Landroid/content/ComponentName;

    .end local v8           #comp:Landroid/content/ComponentName;
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    .restart local v8       #comp:Landroid/content/ComponentName;
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2138
    .local v4, N:I
    move/from16 v11, v18

    .local v11, j:I
    :goto_3
    if-ge v11, v4, :cond_b

    .line 2139
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 2140
    .local v19, sri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    if-eqz v5, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 2144
    :cond_6
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2148
    if-nez v14, :cond_7

    .line 2149
    move-object/from16 v14, v19

    .line 2151
    :cond_7
    add-int/lit8 v11, v11, -0x1

    .line 2152
    add-int/lit8 v4, v4, -0x1

    .line 2138
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2113
    .end local v4           #N:I
    .end local v11           #j:I
    .end local v19           #sri:Landroid/content/pm/ResolveInfo;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 2127
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2128
    if-nez v6, :cond_4

    goto/16 :goto_1

    .line 2157
    .restart local v4       #N:I
    .restart local v11       #j:I
    :cond_b
    if-nez v14, :cond_c

    .line 2158
    new-instance v14, Landroid/content/pm/ResolveInfo;

    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    invoke-direct {v14}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2159
    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2161
    :cond_c
    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2162
    iput v9, v14, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 2163
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 2169
    .end local v4           #N:I
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #comp:Landroid/content/ComponentName;
    .end local v9           #i:I
    .end local v11           #j:I
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v17           #sintent:Landroid/content/Intent;
    :cond_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2170
    .restart local v4       #N:I
    move/from16 v9, v18

    .restart local v9       #i:I
    :goto_4
    const/16 v20, 0x1

    sub-int v20, v4, v20

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 2171
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2172
    .local v15, rii:Landroid/content/pm/ResolveInfo;
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 2170
    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2178
    :cond_f
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2179
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_e

    .line 2182
    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 2183
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2184
    .restart local v5       #action:Ljava/lang/String;
    if-eqz v13, :cond_11

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 2189
    :cond_11
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #j:I
    :goto_6
    if-ge v11, v4, :cond_10

    .line 2190
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 2191
    .local v16, rij:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 2192
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2196
    add-int/lit8 v11, v11, -0x1

    .line 2197
    add-int/lit8 v4, v4, -0x1

    .line 2189
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2204
    .end local v5           #action:Ljava/lang/String;
    .end local v11           #j:I
    .end local v16           #rij:Landroid/content/pm/ResolveInfo;
    :cond_13
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_e

    .line 2205
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_5

    .line 2210
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #rii:Landroid/content/pm/ResolveInfo;
    :cond_14
    if-eqz p1, :cond_15

    .line 2211
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2212
    const/4 v9, 0x0

    .end local p0
    :goto_7
    if-ge v9, v4, :cond_15

    .line 2213
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    .line 2214
    .local v7, ainfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 2216
    invoke-interface {v12, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2225
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_15
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_17

    .line 2226
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 2227
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v4, :cond_17

    .line 2228
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 2227
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2212
    .restart local v7       #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2233
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_17
    return-object v12
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2238
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2239
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 2240
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2241
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2242
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 2243
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2244
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2245
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v6, v2

    .line 2261
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v6

    .line 2250
    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2251
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2252
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2253
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2256
    :cond_2
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2257
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3

    .line 2258
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2261
    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2262
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2281
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2282
    .local v0, comp:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 2283
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2284
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p3}, Lcom/android/server/PackageManagerService;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 2285
    .local v5, si:Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_0

    .line 2286
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2287
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2288
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v6, v1

    .line 2304
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #si:Landroid/content/pm/ServiceInfo;
    :goto_0
    return-object v6

    .line 2293
    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 2294
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 2295
    .local v3, pkgName:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2296
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2299
    :cond_2
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2300
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_3

    .line 2301
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2304
    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .line 2305
    .end local v2           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v3           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1434
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1435
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1436
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1437
    .local v2, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez p1, :cond_2

    .line 1438
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1439
    :cond_1
    invoke-static {v2, p2}, Lcom/android/server/PackageManagerService;->generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1452
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1442
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .restart local v2       #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_2
    :try_start_1
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1443
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1448
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1449
    monitor-exit v3

    move-object v3, v1

    .line 1451
    :goto_1
    return-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter "outNames"
    .parameter "outInfo"

    .prologue
    .line 2402
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 2403
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2406
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2408
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 2410
    .local v2, p:Landroid/content/pm/PackageParser$Provider;
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 2413
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2414
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2417
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2418
    return-void
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 1240
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 1242
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1243
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v0, :cond_0

    .line 1244
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1245
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1250
    .local v3, outerDepth:I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v9, :cond_5

    if-ne v5, v10, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_5

    .line 1252
    :cond_2
    if-eq v5, v10, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    .line 1257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1258
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1259
    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, gidStr:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1261
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .line 1262
    .local v1, gid:I
    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    .line 1268
    .end local v1           #gid:I
    .end local v2           #gidStr:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1264
    .restart local v2       #gidStr:Ljava/lang/String;
    :cond_4
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1270
    .end local v2           #gidStr:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions()V
    .locals 15

    .prologue
    const/16 v12, 0x20

    const-string v14, "etc/permissions/platform.xml"

    const-string v13, " cannot be read"

    const-string v11, "PackageManager"

    .line 1061
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/permissions"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1062
    .local v5, libraryDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1063
    :cond_0
    const-string v9, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .end local p0
    :goto_0
    return-void

    .line 1066
    .restart local p0
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1067
    const-string v9, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be read"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1072
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_6

    aget-object v1, v0, v2

    .line 1074
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "etc/permissions/platform.xml"

    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1072
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1078
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1079
    const-string v9, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-xml file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " directory, ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1082
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1083
    const-string v9, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permissions library file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be read"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1087
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_2

    .line 1091
    .end local v1           #f:Ljava/io/File;
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/permissions/platform.xml"

    invoke-direct {v7, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1093
    .local v7, permFile:Ljava/io/File;
    invoke-direct {p0, v7}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    .line 1095
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1096
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v9, "Libs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1098
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1099
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1101
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1105
    .end local v6           #name:Ljava/lang/String;
    :cond_7
    const-string v9, "PackageManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1108
    const-string v9, "Features:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1110
    .end local p0
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1111
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1112
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1114
    :cond_8
    const-string v9, "PackageManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 6634
    const-string v0, "PackageManager"

    const-string v1, "removePackageFromPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6635
    return-void
.end method

.method removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 18
    .parameter "pkg"
    .parameter "chatty"

    .prologue
    .line 3846
    if-eqz p2, :cond_0

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 3850
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    .line 3852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3853
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_1

    .line 3854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3857
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 3858
    .local v9, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v9, :cond_2

    iget-object v14, v9, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v14, :cond_2

    .line 3868
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3869
    .local v2, N:I
    const/4 v10, 0x0

    .line 3871
    .local v10, r:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_8

    .line 3872
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Provider;

    .line 3873
    .local v8, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v14, v0

    new-instance v15, Landroid/content/ComponentName;

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3875
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 3871
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3883
    :cond_4
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3884
    .local v7, names:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v14, v7

    if-ge v6, v14, :cond_6

    .line 3885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v7, v6

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_5

    .line 3886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v7, v6

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3887
    if-eqz p2, :cond_5

    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unregistered content provider: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v7, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", className = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isSyncable = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3893
    :cond_6
    if-eqz p2, :cond_3

    .line 3894
    if-nez v10, :cond_7

    .line 3895
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3899
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_3
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 4003
    .end local v2           #N:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v9           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v10           #r:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 3897
    .restart local v2       #N:I
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #names:[Ljava/lang/String;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v9       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :cond_7
    const/16 v14, 0x20

    :try_start_1
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3902
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_8
    if-eqz v10, :cond_9

    .line 3903
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Providers: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3907
    const/4 v10, 0x0

    .line 3908
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_c

    .line 3909
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Service;

    .line 3910
    .local v11, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v14, v0

    invoke-virtual {v14, v11}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 3911
    if-eqz p2, :cond_a

    .line 3912
    if-nez v10, :cond_b

    .line 3913
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3917
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_5
    iget-object v14, v11, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3915
    :cond_b
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3920
    .end local v11           #s:Landroid/content/pm/PackageParser$Service;
    :cond_c
    if-eqz v10, :cond_d

    .line 3921
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Services: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3925
    const/4 v10, 0x0

    .line 3926
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_10

    .line 3927
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 3928
    .local v3, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v14, v0

    const-string v15, "receiver"

    invoke-virtual {v14, v3, v15}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3929
    if-eqz p2, :cond_e

    .line 3930
    if-nez v10, :cond_f

    .line 3931
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3935
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_7
    iget-object v14, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3933
    :cond_f
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 3938
    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_10
    if-eqz v10, :cond_11

    .line 3939
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Receivers: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3943
    const/4 v10, 0x0

    .line 3944
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_14

    .line 3945
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 3946
    .restart local v3       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v14, v0

    const-string v15, "activity"

    invoke-virtual {v14, v3, v15}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 3947
    if-eqz p2, :cond_12

    .line 3948
    if-nez v10, :cond_13

    .line 3949
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3953
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_9
    iget-object v14, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3944
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 3951
    :cond_13
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3956
    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_14
    if-eqz v10, :cond_15

    .line 3957
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Activities: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3961
    const/4 v10, 0x0

    .line 3962
    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_19

    .line 3963
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Permission;

    .line 3964
    .local v8, p:Landroid/content/pm/PackageParser$Permission;
    const/4 v12, 0x0

    .line 3965
    .local v12, tree:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3966
    .local v4, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v4, :cond_16

    .line 3967
    const/4 v12, 0x1

    .line 3968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .line 3970
    .restart local v4       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_16
    if-eqz v4, :cond_17

    iget-object v14, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v14, v8, :cond_17

    .line 3971
    const/4 v14, 0x0

    iput-object v14, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 3972
    if-eqz p2, :cond_17

    .line 3973
    if-nez v10, :cond_18

    .line 3974
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3978
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_b
    iget-object v14, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3962
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 3976
    :cond_18
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 3982
    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v12           #tree:Z
    :cond_19
    if-eqz v10, :cond_1a

    .line 3983
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Permissions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3987
    const/4 v10, 0x0

    .line 3988
    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_1d

    .line 3989
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Instrumentation;

    .line 3990
    .local v3, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    if-eqz p2, :cond_1b

    .line 3992
    if-nez v10, :cond_1c

    .line 3993
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3997
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_d
    iget-object v14, v3, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v14, v14, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3988
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 3995
    :cond_1c
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 4000
    .end local v3           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_1d
    if-eqz v10, :cond_1e

    .line 4001
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Instrumentation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_1e
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4004
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 1800
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1801
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    .line 1802
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1803
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_1

    .line 1804
    iget v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1805
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1812
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1809
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v2}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1812
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1813
    return-void
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 8
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v4, "PackageManager"

    .line 6692
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 6693
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6696
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 6697
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 category."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6700
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-eqz v4, :cond_3

    .line 6704
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have no data authorities, paths, schemes or types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6708
    :cond_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 6709
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 6712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_4

    .line 6714
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6716
    monitor-exit v4

    .line 6735
    :goto_0
    return-void

    .line 6718
    :cond_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6722
    :cond_5
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6723
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 6724
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 6725
    .local v1, category:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 6727
    .local v3, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6728
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 6729
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed preferred activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6730
    new-instance v5, Landroid/util/LogPrinter;

    const/4 v6, 0x4

    const-string v7, "PackageManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p1, v5, v6}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .line 6734
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v3           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 6733
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #category:Ljava/lang/String;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_7
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 6734
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2387
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2388
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 2389
    .local v0, provider:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2395
    .end local v0           #provider:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 1939
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1940
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 2267
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2269
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .line 2270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 2273
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v1, p0

    .line 2276
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method schedulePackageCleaning(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 4625
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4626
    return-void
.end method

.method scheduleWriteSettingsLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 651
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 654
    :cond_0
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1
    .parameter "appPackageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 6800
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6801
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 6805
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6807
    return-void
.end method

.method public setInstallLocation(I)Z
    .locals 4
    .parameter "loc"

    .prologue
    const/4 v3, 0x1

    .line 9986
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9988
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->getInstallLocation()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v3

    .line 9998
    :goto_0
    return v0

    .line 9991
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9994
    :cond_1
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v3

    .line 9996
    goto :goto_0

    .line 9998
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startCleaningPackages()V
    .locals 4

    .prologue
    .line 4629
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 4630
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-nez v3, :cond_1

    .line 4631
    monitor-exit v2

    .line 4646
    :cond_0
    :goto_0
    return-void

    .line 4633
    :cond_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 4634
    monitor-exit v2

    goto :goto_0

    .line 4636
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4637
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4638
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4639
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4640
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 4642
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4643
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6964
    iput-boolean v3, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    .line 6969
    const-string v1, "PackageManager"

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6971
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "compatibility_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 6974
    .local v0, compatibilityModeEnabled:Z
    :goto_0
    invoke-static {v0}, Landroid/content/pm/PackageParser;->setCompatibilityModeEnabled(Z)V

    .line 6978
    return-void

    .line 6971
    .end local v0           #compatibilityModeEnabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public updateExternalMediaStatus(ZZ)V
    .locals 7
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    const-string v6, "unmounted"

    const-string v5, "mounted"

    .line 9543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 9544
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Media status can only be updated by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9546
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 9547
    :try_start_0
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating external media status from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-eqz v4, :cond_1

    const-string v4, "mounted"

    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v4, "mounted"

    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9552
    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-ne p1, v2, :cond_4

    .line 9553
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 9555
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9556
    monitor-exit v1

    .line 9567
    .end local v0           #msg:Landroid/os/Message;
    :goto_3
    return-void

    .line 9547
    :cond_1
    const-string v4, "unmounted"

    move-object v4, v6

    goto :goto_0

    :cond_2
    const-string v4, "unmounted"

    move-object v4, v6

    goto :goto_1

    .line 9553
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 9558
    :cond_4
    iput-boolean p1, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    .line 9559
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9561
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/PackageManagerService$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/PackageManagerService$11;-><init>(Lcom/android/server/PackageManagerService;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 9559
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
