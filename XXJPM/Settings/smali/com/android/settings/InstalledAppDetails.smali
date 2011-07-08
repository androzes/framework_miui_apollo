.class public Lcom/android/settings/InstalledAppDetails;
.super Landroid/app/Activity;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;,
        Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final ATTR_PACKAGE_STATS:Ljava/lang/String; = "PackageStats"

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x5

.field private static final DLG_MOVE_FAILED:I = 0x6

.field private static final GET_PKG_SIZE:I = 0x2

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PACKAGE_MOVE:I = 0x4

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InstalledAppDetails"

.field private static final _UNKNOWN_APP:I = 0x7f090292


# instance fields
.field private localLOGV:Z

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mCacheSize:Landroid/widget/TextView;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveErrorCode:I

.field private mMoveInProgress:Z

.field private mPackageMoveObserver:Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field mSizeInfo:Landroid/content/pm/PackageStats;

.field private mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/InstalledAppDetails;->mMoveInProgress:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    .line 125
    new-instance v0, Lcom/android/settings/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/InstalledAppDetails$1;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 689
    new-instance v0, Lcom/android/settings/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/settings/InstalledAppDetails$7;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->refreshSizeInfo(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/InstalledAppDetails;)Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 698
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 700
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/InstalledAppDetails;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 704
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 683
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 685
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->checkForceStop()V

    .line 687
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    const-string v1, ""

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 217
    const-string v0, ""

    move-object v0, v1

    :goto_0
    return-object v0

    .line 205
    :pswitch_0
    const v0, 0x7f0902b2

    invoke-virtual {p0, v0}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_1
    const v0, 0x7f0902b3

    invoke-virtual {p0, v0}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    const v0, 0x7f0902b4

    invoke-virtual {p0, v0}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_3
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_4
    const v0, 0x7f0902b6

    invoke-virtual {p0, v0}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_5
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 187
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initAppInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    const/4 v1, 0x1

    .line 301
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 299
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f090295

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f09028d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private initMoveButton()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 221
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 222
    .local v7, pkgName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 223
    .local v0, dataOnly:Z
    const/4 v2, 0x0

    .line 224
    .local v2, info1:Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 227
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 228
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 232
    :goto_0
    if-nez v2, :cond_1

    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    move v0, v12

    .line 233
    :goto_1
    const/4 v5, 0x1

    .line 234
    .local v5, moveDisable:Z
    if-eqz v0, :cond_2

    .line 235
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v9, 0x7f0902ae

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 266
    :cond_0
    :goto_2
    if-eqz v5, :cond_6

    .line 267
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    :goto_3
    return-void

    .end local v5           #moveDisable:Z
    :cond_1
    move v0, v11

    .line 232
    goto :goto_1

    .line 236
    .restart local v5       #moveDisable:Z
    :cond_2
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x4

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 237
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v9, 0x7f0902af

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 239
    const/4 v5, 0x0

    goto :goto_2

    .line 241
    :cond_3
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v9, 0x7f0902b0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 242
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x10

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    if-eqz v6, :cond_0

    .line 245
    iget v8, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    if-eq v8, v13, :cond_4

    iget v8, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    if-nez v8, :cond_5

    .line 247
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 248
    :cond_5
    iget v8, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 249
    const-string v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 253
    .local v3, ipm:Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getInstallLocation()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 258
    .local v4, loc:I
    if-ne v4, v13, :cond_0

    .line 261
    const/4 v5, 0x0

    goto :goto_2

    .line 254
    .end local v4           #loc:I
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "InstalledAppDetails"

    const-string v9, "Is Pakage Manager running?"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 269
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #ipm:Landroid/content/pm/IPackageManager;
    :cond_6
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v8, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 230
    .end local v5           #moveDisable:Z
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 276
    const/4 v0, 0x1

    .line 277
    .local v0, enabled:Z
    iget-boolean v1, p0, Lcom/android/settings/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f09028e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_0
    return-void

    .line 275
    .end local v0           #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    .restart local v0       #enabled:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 282
    const/4 v0, 0x0

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f09028c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 6

    .prologue
    const-string v5, "InstalledAppDetails"

    .line 566
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 569
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 571
    new-instance v3, Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    .line 573
    :cond_0
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 574
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 575
    .local v2, res:Z
    if-nez v2, :cond_1

    .line 577
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f09029d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 517
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 518
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 519
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f09028d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 520
    if-ne v1, v4, :cond_0

    .line 521
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 541
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 542
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 544
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/InstalledAppDetails;->mMoveInProgress:Z

    .line 545
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 546
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 554
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/InstalledAppDetails;->initAppInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    :goto_1
    return-void

    .line 550
    :cond_0
    iput v1, p0, Lcom/android/settings/InstalledAppDetails;->mMoveErrorCode:I

    .line 551
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->refreshButtons()V

    goto :goto_1
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-boolean v0, p0, Lcom/android/settings/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->initUninstallButtons()V

    .line 531
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->initDataButtons()V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->initMoveButton()V

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0902b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshCacheInfo(J)V
    .locals 2
    .parameter "cacheSize"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private refreshSizeInfo(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x0

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, changed:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "PackageStats"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageStats;

    .line 457
    .local v3, newPs:Landroid/content/pm/PackageStats;
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v11, v3, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v9, v11

    iget-wide v11, v3, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v4, v9, v11

    .line 458
    .local v4, newTot:J
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    if-nez v9, :cond_3

    .line 459
    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    .line 460
    invoke-direct {p0, v4, v5}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    .end local v8           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->dataSize:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 490
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 492
    :cond_1
    iget-object v9, v3, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const-string v10, "com.android.settings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 494
    const-string v9, "InstalledAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PackageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    :cond_2
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 499
    .local v1, data:J
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-direct {p0, v9, v10}, Lcom/android/settings/InstalledAppDetails;->refreshCacheInfo(J)V

    .line 500
    return-void

    .line 466
    .end local v1           #data:J
    :cond_3
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v9, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v9, v11

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v6, v9, v11

    .line 467
    .local v6, oldTot:J
    cmp-long v9, v4, v6

    if-eqz v9, :cond_4

    .line 468
    invoke-direct {p0, v4, v5}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    .line 469
    .restart local v8       #str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    const/4 v0, 0x1

    .line 472
    .end local v8           #str:Ljava/lang/String;
    :cond_4
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 473
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const/4 v0, 0x1

    .line 476
    :cond_5
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 477
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    const/4 v0, 0x1

    .line 480
    :cond_6
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 481
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const/4 v0, 0x1

    .line 484
    :cond_7
    if-eqz v0, :cond_0

    .line 485
    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    goto/16 :goto_0
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .parameter "pkgInfo"

    .prologue
    const/4 v7, 0x0

    .line 388
    const v3, 0x7f0b0058

    invoke-virtual {p0, v3}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 389
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f0b0076

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 390
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    const v3, 0x7f0b0077

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const v3, 0x7f0b0078

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 397
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const v4, 0x7f0902ad

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 4
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 440
    iget-boolean v1, p0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/InstalledAppDetails;->setResult(ILandroid/content/Intent;)V

    .line 444
    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/InstalledAppDetails;->finish()V

    .line 447
    :cond_1
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/android/settings/InstalledAppDetails;->showDialog(I)V

    .line 587
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 677
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 678
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 679
    invoke-direct {p0, v4, v4}, Lcom/android/settings/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 680
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 711
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 712
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_2

    .line 713
    iget-boolean v3, p0, Lcom/android/settings/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 714
    invoke-direct {p0, v6}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_3

    .line 719
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 720
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 721
    :cond_3
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 722
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 727
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0

    .line 729
    :cond_5
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 731
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    if-nez v3, :cond_6

    .line 732
    new-instance v3, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    .line 734
    :cond_6
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 735
    :cond_7
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_8

    .line 736
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_8
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_0

    .line 738
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;

    if-nez v3, :cond_9

    .line 739
    new-instance v3, Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;

    .line 741
    :cond_9
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    move v1, v5

    .line 743
    .local v1, moveFlags:I
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/InstalledAppDetails;->mMoveInProgress:Z

    .line 744
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->refreshButtons()V

    .line 745
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .end local v1           #moveFlags:I
    :cond_a
    move v1, v6

    .line 741
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 308
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/InstalledAppDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/InstalledAppDetails;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 315
    .local v10, intent:Landroid/content/Intent;
    const-string v17, "pkg"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 316
    .local v12, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/settings/InstalledAppDetails;->initAppInfo(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 384
    .end local p1
    :goto_0
    return-void

    .line 322
    .restart local p1
    :cond_0
    const v17, 0x7f0902aa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    move-object v8, v0

    .local v8, dataSizeStr:Ljava/lang/CharSequence;
    move-object v4, v8

    .local v4, appSizeStr:Ljava/lang/CharSequence;
    move-object/from16 v16, v8

    .line 324
    .local v16, totalSizeStr:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    const-string v17, "InstalledAppDetails"

    const-string v18, "Have to compute package sizes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    new-instance v17, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    .line 326
    const v17, 0x7f030020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->setContentView(I)V

    .line 330
    const v17, 0x7f0b005c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const v17, 0x7f0b005e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const v17, 0x7f0b0061

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const v17, 0x7f0b0059

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 339
    .local v7, btnPanel:Landroid/view/View;
    const v17, 0x7f0b00de

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f090288

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 341
    const v17, 0x7f0b00df

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    const v17, 0x7f0b0062

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 346
    .local v9, data_buttons_panel:Landroid/view/View;
    const v17, 0x7f0b00de

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 347
    const v17, 0x7f0b00df

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 350
    const v17, 0x7f0b0066

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const v17, 0x7f0b0067

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 355
    const v17, 0x7f0b0069

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 356
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v14, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v11, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v14

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v17, "InstalledAppDetails"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Have "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " number of activities in prefered list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    const v17, 0x7f0b0068

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 363
    .local v6, autoLaunchView:Landroid/widget/TextView;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_3

    .line 365
    const v17, 0x7f090290

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 373
    :goto_1
    const v17, 0x7f0b006a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 374
    .local v13, permsView:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/AppSecurityPermissions;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    .local v5, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v17

    if-lez v17, :cond_4

    .line 376
    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    const v17, 0x7f0b006b

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 380
    .local v15, securityList:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 368
    .end local v5           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v13           #permsView:Landroid/widget/LinearLayout;
    .end local v15           #securityList:Landroid/widget/LinearLayout;
    :cond_3
    const v17, 0x7f09028f

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 382
    .restart local v5       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v13       #permsView:Landroid/widget/LinearLayout;
    :cond_4
    const/16 v17, 0x8

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const v4, 0x7f0902a2

    const v3, 0x7f0902a1

    const/4 v7, 0x0

    const v6, 0x7f0902a0

    const v5, 0x1080027

    .line 591
    packed-switch p1, :pswitch_data_0

    move-object v1, v7

    .line 671
    :goto_0
    return-object v1

    .line 593
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09029e

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09029f

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/InstalledAppDetails$2;

    invoke-direct {v2, p0}, Lcom/android/settings/InstalledAppDetails$2;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 607
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902a5

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902a6

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/settings/InstalledAppDetails$3;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 621
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/InstalledAppDetails$4;

    invoke-direct {v3, p0}, Lcom/android/settings/InstalledAppDetails$4;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 634
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902a7

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902a8

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/InstalledAppDetails$5;

    invoke-direct {v2, p0}, Lcom/android/settings/InstalledAppDetails$5;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 648
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902b7

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902b8

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/InstalledAppDetails$6;

    invoke-direct {v2, p0}, Lcom/android/settings/InstalledAppDetails$6;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 662
    :pswitch_5
    const v1, 0x7f0902ba

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/InstalledAppDetails;->mMoveErrorCode:I

    invoke-direct {p0, v4}, Lcom/android/settings/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902b9

    invoke-virtual {p0, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 408
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 410
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 411
    invoke-direct {p0, v3, v3}, Lcom/android/settings/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/InstalledAppDetails;->initAppInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v1, 0x0

    .line 421
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 429
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->checkForceStop()V

    .line 430
    invoke-direct {p0, v1}, Lcom/android/settings/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->refreshButtons()V

    .line 434
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_0

    .line 423
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 424
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0
.end method
