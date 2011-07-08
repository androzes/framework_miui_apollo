.class public Lcom/android/settings/ManageApplications;
.super Landroid/app/TabActivity;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ManageApplications$AlphaComparator;,
        Lcom/android/settings/ManageApplications$SizeComparator;,
        Lcom/android/settings/ManageApplications$AppInfoCache;,
        Lcom/android/settings/ManageApplications$PackageIntentReceiver;,
        Lcom/android/settings/ManageApplications$PkgSizeObserver;,
        Lcom/android/settings/ManageApplications$AppInfoAdapter;,
        Lcom/android/settings/ManageApplications$AppViewHolder;,
        Lcom/android/settings/ManageApplications$AppInfo;,
        Lcom/android/settings/ManageApplications$ResourceLoaderThread;,
        Lcom/android/settings/ManageApplications$AddRemoveInfo;,
        Lcom/android/settings/ManageApplications$TaskRunner;,
        Lcom/android/settings/ManageApplications$SizeObserver;
    }
.end annotation


# static fields
.field private static final ADD_PKG_DONE:I = 0x6

.field private static final ADD_PKG_START:I = 0x5

.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field public static final APP_PKG_NAME:Ljava/lang/String; = "pkg"

.field private static final ATTR_GET_SIZE_STATUS:Ljava/lang/String; = "passed"

.field private static final ATTR_PKGS:Ljava/lang/String; = "ps"

.field private static final ATTR_PKG_NAME:Ljava/lang/String; = "p"

.field private static final ATTR_PKG_SIZE_STR:Ljava/lang/String; = "f"

.field private static final ATTR_PKG_STATS:Ljava/lang/String; = "s"

.field private static final ATTR_SIZE_STRS:Ljava/lang/String; = "fs"

.field private static final ATTR_STATS:Ljava/lang/String; = "ss"

.field private static final COMPUTE_BULK_SIZE:I = 0x2

.field private static final COMPUTE_END:I = 0xa

.field private static final DEBUG_SIZE:Z = false

.field private static final DEBUG_TIME:Z = false

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_LOADING:I = 0x1

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_RUNNING:I = 0x1

.field public static final FILTER_APPS_SDCARD:I = 0x3

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x2

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field private static final INIT_PKG_INFO:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field private static final NEXT_LOAD_STEP:I = 0x9

.field private static final PREFS_NAME:Ljava/lang/String; = "ManageAppsInfo.prefs"

.field private static final PREF_DISABLE_CACHE:Ljava/lang/String; = "disableCache"

.field private static final REFRESH_DONE:I = 0x8

.field private static final REFRESH_ICONS:I = 0xb

.field private static final REFRESH_LABELS:I = 0x7

.field private static final REMOVE_PKG:I = 0x3

.field private static final REORDER_LIST:I = 0x4

.field private static final SIZE_INVALID:I = -0x1

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAB_ALL:Ljava/lang/String; = "All"

.field static final TAB_DOWNLOADED:Ljava/lang/String; = "Downloaded"

.field static final TAB_RUNNING:Ljava/lang/String; = "Running"

.field static final TAB_SDCARD:Ljava/lang/String; = "OnSdCard"

.field private static final TAG:Ljava/lang/String; = "ManageApplications"

.field private static mDefaultAppIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private DEBUG_PKG_DELAY:Z

.field private localLOGV:Z

.field private mAddRemoveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

.field private mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

.field private mComputeSizesFinished:Z

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mFilterApps:I

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mJustCreated:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadLabelsFinished:Z

.field private mLoadTimeStart:J

.field private mObserver:Lcom/android/settings/ManageApplications$PkgSizeObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

.field mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

.field private mRootView:Landroid/view/View;

.field private mSetListViewLater:Z

.field private mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

.field private mSizesFirst:Z

.field private mSortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    .line 150
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    .line 180
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mComputeSizesFinished:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->DEBUG_PKG_DELAY:Z

    .line 216
    new-instance v0, Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-direct {v0, p0}, Lcom/android/settings/ManageApplications$AppInfoCache;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    .line 219
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mLoadLabelsFinished:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mSizesFirst:Z

    .line 225
    iput-boolean v2, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mFirst:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/settings/ManageApplications;->mSetListViewLater:Z

    .line 266
    new-instance v0, Lcom/android/settings/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ManageApplications$1;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    .line 1993
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/ManageApplications;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/ManageApplications;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mLoadLabelsFinished:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/ManageApplications;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mLoadLabelsFinished:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$PkgSizeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mObserver:Lcom/android/settings/ManageApplications$PkgSizeObserver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mSetListViewLater:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/ManageApplications;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mSetListViewLater:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->initListView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->doneLoadingData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ManageApplications;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications;->updateAppList(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mSizesFirst:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->initComputeSizes()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->initResourceThread()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/ManageApplications;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications;->getTotalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/settings/ManageApplications;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->getSizeStr(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/settings/ManageApplications;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ManageApplications;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/settings/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->DEBUG_PKG_DELAY:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ManageApplications;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->initAppList(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mComputeSizesFinished:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/ManageApplications;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mComputeSizesFinished:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/ManageApplications;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mFirst:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/ManageApplications;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAddRemoveMap:Ljava/util/Map;

    return-object v0
.end method

.method private clearMessagesInHandler()V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1495
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1496
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1498
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1500
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1501
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1503
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    return-void
.end method

.method private dismissLoadingMsg()V
    .locals 2

    .prologue
    .line 1737
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    const-string v1, "Dismissing Loading message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->dismissDialog(I)V

    .line 1741
    return-void
.end method

.method private doneLoadingData()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->setProgressBarIndeterminateVisibility(Z)V

    .line 627
    return-void
.end method

.method private getRunningAppProcessesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 780
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getSizeStr(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "size"

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, appSize:Ljava/lang/CharSequence;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 966
    :goto_0
    return-object v1

    .line 965
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 966
    goto :goto_0
.end method

.method private getTotalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 954
    if-eqz p1, :cond_0

    .line 955
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 957
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private initAppList(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "filterOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .line 785
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->setProgressBarIndeterminateVisibility(Z)V

    .line 786
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mComputeSizesFinished:Z

    .line 787
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mLoadLabelsFinished:Z

    .line 789
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageApplications;->mAddRemoveMap:Ljava/util/Map;

    .line 790
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->initMapFromList(Ljava/util/List;I)V

    .line 791
    return-void
.end method

.method private initComputeSizes()V
    .locals 3

    .prologue
    .line 807
    iget-boolean v1, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ManageApplications"

    const-string v2, "Initiating compute sizes for first time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$TaskRunner;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$TaskRunner;->setAbort()V

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v0

    .line 812
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 813
    new-instance v1, Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/ManageApplications$TaskRunner;-><init>(Lcom/android/settings/ManageApplications;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mComputeSizesFinished:Z

    goto :goto_0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    iget v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortBaseList(I)V

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    .line 458
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->dismissLoadingMsg()V

    .line 461
    :cond_0
    return-void
.end method

.method private initResourceThread()V
    .locals 2

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->setAbort()V

    .line 798
    :cond_0
    new-instance v1, Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-direct {v1, p0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    .line 799
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v0

    .line 800
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v1, v0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->loadAllResources(Ljava/util/List;)V

    .line 803
    :cond_1
    return-void
.end method

.method private static matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .parameter "filter"
    .parameter
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, filterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 693
    .local v0, add:Z
    if-eqz p0, :cond_1

    .line 694
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    :cond_0
    const/4 v0, 0x0

    .line 698
    :cond_1
    return v0
.end method

.method private sendMessageToHandler(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1520
    return-void
.end method

.method private sendMessageToHandler(II)V
    .locals 2
    .parameter "msgId"
    .parameter "arg1"

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1508
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1509
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    return-void
.end method

.method private sendMessageToHandler(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "msgId"
    .parameter "data"

    .prologue
    .line 1513
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1514
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1515
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1516
    return-void
.end method

.method private showLoadingMsg()V
    .locals 2

    .prologue
    .line 1732
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->showDialog(I)V

    .line 1733
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    const-string v1, "Displaying Loading message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .prologue
    .line 2009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2010
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/InstalledAppDetails;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2011
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2013
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ManageApplications;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2014
    return-void
.end method

.method private updateAppList(Ljava/util/List;)Z
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v12, "ManageApplications"

    .line 580
    if-eqz p1, :cond_0

    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v10}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$1600(Lcom/android/settings/ManageApplications$AppInfoCache;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 581
    :cond_0
    const/4 v10, 0x0

    .line 622
    :goto_0
    return v10

    .line 583
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 584
    .local v3, existingList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 586
    .local v8, ret:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 587
    .local v0, N:I
    const/4 v10, 0x1

    sub-int v4, v0, v10

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_4

    .line 588
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 589
    .local v6, info:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 590
    .local v7, pkgName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v10, v7}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v1

    .line 591
    .local v1, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v1, :cond_2

    .line 592
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 595
    :cond_2
    iget-boolean v10, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v10, :cond_3

    const-string v10, "ManageApplications"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New pkg :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " installed when paused"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p0, v10, v7}, Lcom/android/settings/ManageApplications;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 600
    const/4 v8, 0x1

    goto :goto_2

    .line 605
    .end local v1           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .line 606
    .local v2, deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v10}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2700(Lcom/android/settings/ManageApplications$AppInfoCache;)Ljava/util/Set;

    move-result-object v9

    .line 607
    .local v9, staleList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 608
    .restart local v7       #pkgName:Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 609
    iget-boolean v10, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v10, :cond_6

    const-string v10, "ManageApplications"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pkg :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " deleted when paused"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_6
    if-nez v2, :cond_7

    .line 611
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .restart local v2       #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_7
    const/4 v8, 0x1

    goto :goto_3

    .line 618
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_a

    .line 619
    iget-boolean v10, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v10, :cond_9

    const-string v10, "ManageApplications"

    const-string v10, "Deleting right away"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_9
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v10, v2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removeFromList(Ljava/util/List;)V

    :cond_a
    move v10, v8

    .line 622
    goto/16 :goto_0
.end method

.method private updatePackageList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "actionStr"
    .parameter "pkgName"

    .prologue
    const-string v2, "p"

    .line 1615
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1617
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "p"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 1624
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1621
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v1, "p"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method getFilteredApps(Ljava/util/List;IZLjava/util/Map;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter "filterOption"
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, pAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p4, filterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v6, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez p1, :cond_1

    .line 774
    :cond_0
    return-object v6

    .line 712
    :cond_1
    const/4 v9, 0x3

    if-ne p2, v9, :cond_4

    .line 713
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 714
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 715
    .local v2, flag:Z
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x4

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    .line 717
    const/4 v2, 0x1

    .line 719
    :cond_3
    if-eqz v2, :cond_2

    .line 720
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, p4, v9}, Lcom/android/settings/ManageApplications;->matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 721
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #flag:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v9, 0x2

    if-ne p2, v9, :cond_8

    .line 727
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 728
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 729
    .restart local v2       #flag:Z
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_7

    .line 731
    const/4 v2, 0x1

    .line 736
    :cond_6
    :goto_2
    if-eqz v2, :cond_5

    .line 737
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, p4, v9}, Lcom/android/settings/ManageApplications;->matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 738
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 732
    :cond_7
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_6

    .line 734
    const/4 v2, 0x1

    goto :goto_2

    .line 743
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #flag:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_8
    const/4 v9, 0x1

    if-ne p2, v9, :cond_c

    .line 744
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->getRunningAppProcessesList()Ljava/util/List;

    move-result-object v5

    .line 745
    .local v5, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 749
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 751
    .local v7, runningMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 752
    .local v1, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_9

    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 753
    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v9

    .line 754
    .local v8, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v8, :cond_9

    .line 755
    iget-object v9, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 760
    .end local v1           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #i:I
    .end local v8           #size:I
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 761
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 762
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, p4, v9}, Lcom/android/settings/ManageApplications;->matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 763
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 769
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7           #runningMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 770
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, p4, v9}, Lcom/android/settings/ManageApplications;->matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 771
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method getInstalledApps(I)Ljava/util/List;
    .locals 13
    .parameter "filterOption"
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
    const/16 v11, 0x2000

    .line 630
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 632
    .local v7, installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v7, :cond_0

    .line 633
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 687
    :goto_0
    return-object v10

    .line 635
    :cond_0
    const/4 v10, 0x3

    if-ne p1, v10, :cond_3

    .line 636
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 638
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x4

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    .line 640
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    move-object v10, v1

    .line 643
    goto :goto_0

    .line 644
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v10, 0x2

    if-ne p1, v10, :cond_8

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 647
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 648
    .local v4, flag:Z
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_6

    .line 650
    const/4 v4, 0x1

    .line 655
    :cond_5
    :goto_3
    if-eqz v4, :cond_4

    .line 656
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 651
    :cond_6
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_5

    .line 653
    const/4 v4, 0x1

    goto :goto_3

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #flag:Z
    :cond_7
    move-object v10, v1

    .line 659
    goto :goto_0

    .line 660
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_8
    const/4 v10, 0x1

    if-ne p1, v10, :cond_e

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->getRunningAppProcessesList()Ljava/util/List;

    move-result-object v8

    .line 663
    .local v8, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    :cond_9
    move-object v10, v1

    .line 664
    goto :goto_0

    .line 667
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 668
    .local v2, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_b

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 669
    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v10

    .line 670
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    if-ge v5, v9, :cond_b

    .line 671
    const/4 v0, 0x0

    .line 673
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v11, v11, v5

    const/16 v12, 0x2000

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 679
    if-eqz v0, :cond_c

    .line 680
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 675
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 676
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ManageApplications"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error retrieving ApplicationInfo for pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #i:I
    .end local v9           #size:I
    :cond_d
    move-object v10, v1

    .line 685
    goto/16 :goto_0

    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_e
    move-object v10, v7

    .line 687
    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2080
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2083
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2085
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2086
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2087
    .local v1, rData:Landroid/os/Bundle;
    const-string v2, "p"

    iget-object v3, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 2089
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->finish()V

    .line 2054
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1965
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1966
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1633
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1634
    iget-boolean v6, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "ManageApplications"

    const-string v7, "Activity created"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1640
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, action:Ljava/lang/String;
    const-string v2, "Downloaded"

    .line 1642
    .local v2, defaultTabTag:Ljava/lang/String;
    const-string v6, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1643
    iput v10, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    .line 1644
    iput v9, p0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    .line 1645
    const-string v2, "All"

    .line 1646
    iput-boolean v8, p0, Lcom/android/settings/ManageApplications;->mSizesFirst:Z

    .line 1648
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    .line 1650
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/settings/ManageApplications;->requestWindowFeature(I)Z

    .line 1652
    invoke-virtual {p0, v10}, Lcom/android/settings/ManageApplications;->requestWindowFeature(I)Z

    .line 1653
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->showLoadingMsg()V

    .line 1654
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Lcom/android/settings/ManageApplications;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    .line 1656
    const v6, 0x7f0902ab

    invoke-virtual {p0, v6}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 1657
    const v6, 0x7f0902aa

    invoke-virtual {p0, v6}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 1659
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 1660
    iget-object v6, p0, Lcom/android/settings/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030014

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mRootView:Landroid/view/View;

    .line 1661
    new-instance v6, Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    invoke-direct {v6, p0, v11}, Lcom/android/settings/ManageApplications$PackageIntentReceiver;-><init>(Lcom/android/settings/ManageApplications;Lcom/android/settings/ManageApplications$1;)V

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    .line 1662
    new-instance v6, Lcom/android/settings/ManageApplications$PkgSizeObserver;

    invoke-direct {v6, p0}, Lcom/android/settings/ManageApplications$PkgSizeObserver;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mObserver:Lcom/android/settings/ManageApplications$PkgSizeObserver;

    .line 1664
    invoke-virtual {p0, v9}, Lcom/android/settings/ManageApplications;->getInstalledApps(I)Ljava/util/List;

    move-result-object v1

    .line 1665
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v6, Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-direct {v6, p0, p0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;-><init>(Lcom/android/settings/ManageApplications;Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    .line 1666
    iget-object v6, p0, Lcom/android/settings/ManageApplications;->mRootView:Landroid/view/View;

    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 1667
    .local v4, lv:Landroid/widget/ListView;
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1668
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 1669
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1670
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1671
    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 1672
    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 1682
    iget-object v6, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v6}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$3800(Lcom/android/settings/ManageApplications$AppInfoCache;)V

    .line 1687
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 1688
    .local v5, tabHost:Landroid/widget/TabHost;
    const-string v6, "Downloaded"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f090299

    invoke-virtual {p0, v7}, Lcom/android/settings/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1692
    const-string v6, "Running"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f09029a

    invoke-virtual {p0, v7}, Lcom/android/settings/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1696
    const-string v6, "All"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f090298

    invoke-virtual {p0, v7}, Lcom/android/settings/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1700
    const-string v6, "OnSdCard"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f09029b

    invoke-virtual {p0, v7}, Lcom/android/settings/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1704
    invoke-virtual {v5, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v5, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1706
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 1717
    if-ne p1, v2, :cond_0

    .line 1718
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1719
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1720
    const v1, 0x7f09029c

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1721
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1722
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v1, v0

    .line 1725
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2018
    const/4 v0, 0x4

    const v1, 0x7f090293

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020103

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2020
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f090294

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020104

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2022
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v0}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$3900(Lcom/android/settings/ManageApplications$AppInfoCache;)V

    .line 1712
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 1713
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2046
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2047
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 2048
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->startApplicationDetailsActivity()V

    .line 2049
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x4

    .line 2037
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2038
    .local v0, menuId:I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2039
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(II)V

    .line 2041
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2027
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mFirst:Z

    if-eqz v0, :cond_2

    .line 2028
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    if-eq v1, v4, :cond_0

    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2029
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    if-eq v1, v5, :cond_1

    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v3

    .line 2032
    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 2028
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2029
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2032
    goto :goto_2
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1940
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 1942
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->registerReceiver()V

    .line 1943
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(I)V

    .line 1944
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1948
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 1950
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->setAbort()V

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    if-eqz v0, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$TaskRunner;->setAbort()V

    .line 1957
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->clearMessagesInHandler()V

    .line 1959
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1960
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 2062
    const-string v1, "Downloaded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2063
    const/4 v0, 0x2

    .line 2074
    .local v0, newOption:I
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(II)V

    .line 2075
    .end local v0           #newOption:I
    :cond_0
    return-void

    .line 2064
    :cond_1
    const-string v1, "Running"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2065
    const/4 v0, 0x1

    .restart local v0       #newOption:I
    goto :goto_0

    .line 2066
    .end local v0           #newOption:I
    :cond_2
    const-string v1, "All"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2067
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 2068
    .end local v0           #newOption:I
    :cond_3
    const-string v1, "OnSdCard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2069
    const/4 v0, 0x3

    .restart local v0       #newOption:I
    goto :goto_0
.end method
