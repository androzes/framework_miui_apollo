.class public Landroid/net/wifi/WifiStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$SettingsObserver;,
        Landroid/net/wifi/WifiStateTracker$DhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;,
        Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DISCONNECT_DELAY_MSECS:I = 0x1388

.field private static final DRIVER_HUNG:I = 0x2

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_STARTED:I = 0x0

.field private static final DRIVER_STOPPED:I = 0x1

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0xc368

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0xc365

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0xc369

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc366

.field private static final EVENT_ABOUT_WPS:I = 0xc

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xa

.field private static final EVENT_DEFERRED_RECONNECT:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x9

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0xd

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x6

.field private static final EVENT_MAYBE_START_SCAN_POST_DISCONNECT:I = 0xf

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0xe

.field private static final EVENT_POLL_INTERVAL:I = 0x8

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SHOW_AP_LIST_DIALOG:I = 0x10

.field private static final EVENT_SUPPLICANT_CONNECTION:I = 0x1

.field private static final EVENT_SUPPLICANT_DISCONNECT:I = 0x2

.field private static final EVENT_SUPPLICANT_STATE_CHANGED:I = 0x3

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080291

.field private static final KICKSTART_SCANNING_DELAY_MSECS:I = 0x3a98

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final RECONNECT_DELAY_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field public static final SUPPL_SCAN_HANDLING_LIST_ONLY:I = 0x2

.field public static final SUPPL_SCAN_HANDLING_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DhcpHandler"

.field private static final WPS_FAIL:I = 0x2

.field private static final WPS_OVERLAP:I = 0x3

.field private static final WPS_SUCCESS:I = 0x1

.field private static final WPS_TIMEOUT:I = 0x4

.field private static final WPS_UNDEFINE:I = 0x5

.field private static final mRunStateNames:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

.field private mDisconnectExpected:Z

.field private mDisconnectPending:Z

.field private mEnableRssiPolling:Z

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsScanModeActive:Z

.field private mIsScanOnly:Z

.field private mLastBssid:Ljava/lang/String;

.field private mLastNetworkId:I

.field private mLastSignalLevel:I

.field private mLastSsid:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumAllowedChannels:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumSupplicantLoopIterations:I

.field private mNumSupplicantStateChanges:I

.field private mObtainingIpAddress:Z

.field private mPasswordKeyMayBeIncorrect:Z

.field private mReconnectCount:I

.field private mRunState:I

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

.field private mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wifi/WifiManager;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Starting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 339
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v9, "dhcp."

    .line 382
    const-string v5, "WIFI"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 192
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 197
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 205
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 213
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 237
    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 240
    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 241
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 246
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 384
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 385
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 386
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 387
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 388
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    .line 389
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;

    .line 392
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 393
    iput v3, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 398
    new-instance v0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    .line 399
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->register()V

    .line 401
    new-instance v0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$SettingsObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    .line 403
    const-string/jumbo v0, "wifi.interface"

    const-string v1, "eth0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 404
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 408
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 411
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 412
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v0, "DhcpHandler"

    invoke-virtual {v7, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 415
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelDisconnect()V
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1414
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->removeMessages(I)V

    .line 1415
    return-void
.end method

.method private checkIsBluetoothPlaying()V
    .locals 6

    .prologue
    .line 730
    const/4 v3, 0x0

    .line 731
    .local v3, isBluetoothPlaying:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    .line 733
    .local v0, connected:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 734
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 735
    const/4 v3, 0x1

    .line 739
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    .line 740
    return-void
.end method

.method private declared-synchronized checkPollTimer()V
    .locals 3

    .prologue
    .line 675
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :cond_0
    monitor-exit p0

    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkUseStaticIp()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2517
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 2518
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2520
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v3, "wifi_use_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 2563
    :cond_0
    :goto_0
    return-void

    .line 2523
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2524
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0

    .line 2528
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "wifi_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2529
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2530
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2534
    const-string/jumbo v3, "wifi_static_gateway"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2535
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2536
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->gateway:I

    .line 2540
    const-string/jumbo v3, "wifi_static_netmask"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2541
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2542
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->netmask:I

    .line 2546
    const-string/jumbo v3, "wifi_static_dns1"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2547
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2548
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns1:I

    .line 2552
    const-string/jumbo v3, "wifi_static_dns2"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2553
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2554
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2562
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    goto :goto_0

    .line 2556
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2558
    .end local v0           #addr:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 2559
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v3, "WifiStateTracker"

    const-string v4, "checkUseStaticIp(): UnknownHostException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private configureInterface()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 1319
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 1320
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1321
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_1

    .line 1322
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_0

    .line 1323
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1324
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1329
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1330
    const/4 v0, 0x6

    .line 1331
    .local v0, event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1333
    .end local v0           #event:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1334
    const/4 v0, 0x7

    .line 1335
    .restart local v0       #event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 2584
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 3
    .parameter "newState"
    .parameter "disableInterface"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1349
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    if-eqz v0, :cond_0

    .line 1350
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1352
    :cond_0
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1353
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1354
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1355
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1357
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1358
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1359
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1360
    return-void
.end method

.method private isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .parameter "newSupplicantState"

    .prologue
    .line 772
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 774
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    if-eq v0, p1, :cond_1

    .line 775
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 776
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    if-eqz v0, :cond_2

    .line 778
    const-string v0, "WifiStateTracker"

    const-string v1, "isSupplicantLooping(), will not count mNumSupplicantLoopIterations during WPS connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 790
    :cond_1
    :goto_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 780
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    goto :goto_0

    .line 786
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_1

    .line 787
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto :goto_1

    .line 790
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private noteRunState()V
    .locals 2

    .prologue
    .line 696
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 697
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning()V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V
    .locals 19
    .parameter "info"

    .prologue
    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->status()Ljava/lang/String;

    move-result-object v14

    .line 1441
    .local v14, reply:Ljava/lang/String;
    if-nez v14, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    const/4 v3, 0x0

    .line 1450
    .local v3, SSID:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1451
    .local v2, BSSID:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1454
    .local v15, suppState:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1457
    .local v7, ipAddress:Ljava/lang/String;
    const/4 v12, -0x1

    .line 1458
    .local v12, netId:I
    const-string v17, "\n"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1459
    .local v10, lines:[Ljava/lang/String;
    move-object v4, v10

    .local v4, arr$:[Ljava/lang/String;
    array-length v8, v4

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_8

    aget-object v9, v4, v6

    .line 1460
    .local v9, line:Ljava/lang/String;
    const-string v17, " *= *"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1461
    .local v13, prop:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 1459
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1463
    :cond_3
    const/16 v17, 0x0

    aget-object v11, v13, v17

    .line 1464
    .local v11, name:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v16, v13, v17

    .line 1465
    .local v16, value:Ljava/lang/String;
    const-string v17, "id"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1466
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_2

    .line 1467
    :cond_4
    const-string/jumbo v17, "ssid"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1468
    move-object/from16 v3, v16

    goto :goto_2

    .line 1469
    :cond_5
    const-string v17, "bssid"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1470
    move-object/from16 v2, v16

    goto :goto_2

    .line 1471
    :cond_6
    const-string/jumbo v17, "wpa_state"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1472
    move-object/from16 v15, v16

    goto :goto_2

    .line 1474
    :cond_7
    const-string v17, "ip_address"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1475
    move-object/from16 v7, v16

    goto :goto_2

    .line 1478
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #prop:[Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1479
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 1480
    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1483
    if-eqz v7, :cond_9

    .line 1485
    :try_start_0
    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v17

    sget-object v18, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    if-eqz v15, :cond_0

    .line 1501
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1486
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .line 1487
    .local v5, e:Ljava/net/UnknownHostException;
    invoke-virtual {v5}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1488
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    goto :goto_3
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V
    .locals 6
    .parameter "info"
    .parameter "polling"

    .prologue
    const/4 v5, -0x1

    const/16 v4, -0xc8

    .line 1510
    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssiApprox()I

    move-result v3

    move v1, v3

    .line 1511
    .local v1, newRssi:I
    :goto_0
    if-eq v1, v5, :cond_4

    if-ge v4, v1, :cond_4

    const/16 v3, 0x100

    if-ge v1, v3, :cond_4

    .line 1515
    if-lez v1, :cond_0

    add-int/lit16 v1, v1, -0x100

    .line 1516
    :cond_0
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1530
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1531
    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    if-eq v2, v3, :cond_1

    .line 1532
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendRssiChangeBroadcast(I)V

    .line 1534
    :cond_1
    iput v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1538
    .end local v2           #newSignalLevel:I
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getLinkSpeed()I

    move-result v0

    .line 1539
    .local v0, newLinkSpeed:I
    if-eq v0, v5, :cond_2

    .line 1540
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    :cond_2
    monitor-exit p0

    return-void

    .line 1510
    .end local v0           #newLinkSpeed:I
    .end local v1           #newRssi:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssi()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 1536
    .restart local v1       #newRssi:I
    :cond_4
    const/16 v3, -0xc8

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1510
    .end local v1           #newRssi:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private resetNotificationTimer()V
    .locals 2

    .prologue
    .line 2365
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2366
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 2367
    return-void
.end method

.method private resetSupplicantLoopState()V
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 798
    return-void
.end method

.method private scheduleDisconnect()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1407
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1410
    :cond_0
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "bssid"

    .prologue
    .line 1553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1556
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1557
    if-eqz p1, :cond_0

    .line 1558
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1560
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2
    .parameter "newRssi"

    .prologue
    .line 1545
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1548
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1550
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 424
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 425
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 426
    return-void
.end method

.method private setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .parameter "stateName"

    .prologue
    .line 438
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Ljava/lang/String;)V

    .line 439
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 440
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 441
    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 451
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 452
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 453
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .locals 8
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 2567
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2568
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 2569
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    .end local v5           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 2579
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2572
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2573
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 2574
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 2575
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2577
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private updateNetworkInfo()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 529
    return-void
.end method

.method private wifiManagerDisableNetwork(I)Z
    .locals 4
    .parameter "networkId"

    .prologue
    const-string v3, "WifiStateTracker"

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, disabledNetwork:Z
    if-ltz p1, :cond_0

    .line 1302
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 1304
    if-eqz v0, :cond_0

    .line 1305
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_0
    if-nez v0, :cond_1

    .line 1311
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disable network: invalid network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized addNetwork()I
    .locals 2

    .prologue
    .line 1805
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1806
    const/4 v0, -0x1

    .line 1808
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    .line 1871
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1872
    const/4 v0, 0x0

    .line 1874
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBlacklist()Z
    .locals 2

    .prologue
    .line 1883
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1884
    const/4 v0, 0x0

    .line 1886
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeSupplicantConnection()V
    .locals 1

    .prologue
    .line 1702
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    monitor-exit p0

    return-void

    .line 1702
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectToSupplicant()Z
    .locals 1

    .prologue
    .line 1695
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1845
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1846
    const/4 v0, 0x0

    .line 1848
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .locals 2

    .prologue
    .line 1781
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    const/4 v0, 0x0

    .line 1784
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectAndStop()Z
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 1602
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1604
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1606
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1607
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    .line 1608
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1613
    :goto_0
    monitor-exit p0

    return v0

    .line 1610
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1613
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1832
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1833
    const/4 v0, 0x0

    .line 1835
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRssiPolling(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 743
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eq v0, p1, :cond_0

    .line 744
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    .line 745
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 747
    :cond_0
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLinkSpeed()I
    .locals 2

    .prologue
    .line 1980
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    const/4 v0, -0x1

    .line 1983
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1980
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1992
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1993
    const/4 v0, 0x0

    .line 1995
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "netId"
    .parameter "name"

    .prologue
    .line 1909
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1910
    const/4 v0, 0x0

    .line 1912
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumAllowedChannels()I
    .locals 2

    .prologue
    .line 2161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2162
    const/4 v0, -0x1

    .line 2164
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getNumAllowedChannelsCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssi()I
    .locals 2

    .prologue
    .line 1956
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1957
    const/4 v0, -0x1

    .line 1959
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssiApprox()I
    .locals 2

    .prologue
    .line 1968
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1969
    const/4 v0, -0x1

    .line 1971
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 804
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 1297
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 807
    :pswitch_1
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_ABOUT_WPS: arg1 ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 809
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 810
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.GET_WPS_EVENT"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v12, intent:Landroid/content/Intent;
    const-string/jumbo v23, "wps_event"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 819
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 826
    :pswitch_3
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 827
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->noteRunState()V

    .line 828
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    .line 830
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    .line 834
    new-instance v7, Landroid/os/HandlerThread;

    const-string v23, "DHCP Handler Thread"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 835
    .local v7, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 836
    new-instance v23, Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 837
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    .line 838
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 839
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 840
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v20

    .line 847
    .local v20, supplState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMacAddress()Ljava/lang/String;

    move-result-object v13

    .line 849
    .local v13, macaddr:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 852
    :cond_1
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Connection to supplicant established, state="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const v23, 0xc369

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 864
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 867
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 869
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 870
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v23, "connected"

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 874
    .end local v12           #intent:Landroid/content/Intent;
    :cond_3
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 875
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 884
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->initializeMulticastFiltering()Z

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 887
    new-instance v23, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 889
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkIsBluetoothPlaying()V

    .line 892
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    goto/16 :goto_0

    .line 877
    :cond_5
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    .line 896
    .end local v7           #dhcpThread:Landroid/os/HandlerThread;
    .end local v13           #macaddr:Ljava/lang/String;
    .end local v20           #supplState:Landroid/net/wifi/SupplicantState;
    :pswitch_4
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 897
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->noteRunState()V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 900
    .local v8, died:Z
    :goto_2
    if-eqz v8, :cond_a

    .line 901
    const-string v23, "WifiStateTracker"

    const-string v24, "Supplicant died unexpectedly"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_3
    const v23, 0xc369

    if-eqz v8, :cond_b

    const/16 v24, 0x2

    :goto_4
    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->closeSupplicantConnection()V

    .line 912
    if-eqz v8, :cond_6

    .line 913
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 916
    :cond_6
    monitor-enter p0

    .line 917
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Looper;->quit()V

    .line 919
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 921
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 923
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 924
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v23, "connected"

    const/16 v24, 0x0

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 928
    .end local v12           #intent:Landroid/content/Intent;
    :cond_8
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 929
    sget-object v23, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 930
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 931
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 932
    if-eqz v8, :cond_0

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 898
    .end local v8           #died:Z
    :cond_9
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_2

    .line 903
    .restart local v8       #died:Z
    :cond_a
    const-string v23, "WifiStateTracker"

    const-string v24, "Connection to supplicant lost"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 909
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 921
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 940
    .end local v8           #died:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 941
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_0

    .line 946
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 947
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    .line 949
    .local v21, supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v16, v0

    .line 950
    .local v16, newState:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 955
    .local v6, currentState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v23

    and-int/lit8 v10, v23, 0x3f

    .line 956
    .local v10, eventLogParam:I
    const v23, 0xc366

    move/from16 v0, v23

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 958
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Changing supplicant state: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ==> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    move v14, v0

    .line 968
    .local v14, networkId:I
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 969
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 975
    :cond_c
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_d

    sget-object v23, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 977
    :cond_d
    const/16 v23, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 986
    :cond_e
    const/4 v11, 0x0

    .line 987
    .local v11, failedToAuthenticate:Z
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 988
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    move v11, v0

    .line 990
    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 996
    const/4 v9, 0x0

    .line 997
    .local v9, disabledNetwork:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 999
    const-string v23, "WifiStateTracker"

    const-string v24, "Stop WPA supplicant loop and disable network"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    move-result v9

    .line 1005
    :cond_10
    if-eqz v9, :cond_11

    .line 1009
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto/16 :goto_0

    .line 1010
    :cond_11
    move-object/from16 v0, v16

    move-object v1, v6

    if-ne v0, v1, :cond_12

    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1012
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1013
    sget-object v23, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 1015
    const/16 v23, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 1016
    .local v17, reconnectMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 1017
    :cond_13
    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1021
    .local v15, newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :goto_5
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_17

    const/16 v23, -0x1

    move v0, v14

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    .line 1030
    const-wide/16 v23, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    .end local v15           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #reconnectMsg:Landroid/os/Message;
    :cond_14
    :goto_6
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1058
    new-instance v12, Landroid/content/Intent;

    const-string v23, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1059
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v23, 0x3000

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1061
    const-string v23, "newState"

    move-object v0, v12

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1062
    if-eqz v11, :cond_15

    .line 1063
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to authenticate, disabling network "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    .line 1065
    const-string/jumbo v23, "supplicantError"

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1069
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1019
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v17       #reconnectMsg:Landroid/os/Message;
    :cond_16
    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .restart local v15       #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    goto/16 :goto_5

    .line 1031
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    goto :goto_6

    .line 1033
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_6

    .line 1036
    .end local v15           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v17           #reconnectMsg:Landroid/os/Message;
    :cond_19
    sget-object v23, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 1037
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1038
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v23

    if-nez v23, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 1039
    :cond_1a
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_6

    .line 1041
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_6

    .line 1043
    :cond_1c
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    .line 1048
    sget-object v23, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v6

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1d

    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    sget-object v23, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    sget-object v23, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    sget-object v23, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 1053
    :cond_1d
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_6

    .line 1085
    .end local v6           #currentState:Landroid/net/wifi/SupplicantState;
    .end local v9           #disabledNetwork:Z
    .end local v10           #eventLogParam:I
    .end local v11           #failedToAuthenticate:Z
    .end local v14           #networkId:I
    .end local v16           #newState:Landroid/net/wifi/SupplicantState;
    .end local v21           #supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    .line 1091
    .local v18, result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v23

    and-int/lit8 v10, v23, 0x3f

    .line 1092
    .restart local v10       #eventLogParam:I
    const v23, 0xc365

    move/from16 v0, v23

    move v1, v10

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1094
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "New network state is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 1100
    const-string v23, "WifiStateTracker"

    const-string v24, "Dropping event in scan-only mode"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1103
    :cond_1e
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1f

    .line 1109
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 1119
    :cond_1f
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_20

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1121
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_0

    .line 1125
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1126
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v23, v0

    if-nez v23, :cond_22

    .line 1128
    :cond_21
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1131
    :cond_22
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 1136
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v22, v0

    .line 1138
    .local v22, wasDisconnectPending:Z
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1144
    if-eqz v22, :cond_23

    .line 1145
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 1146
    .local v19, saveState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1150
    .end local v19           #saveState:Landroid/net/NetworkInfo$DetailedState;
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1151
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1153
    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 1154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v23, v0

    if-eqz v23, :cond_25

    .line 1155
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1160
    .end local v22           #wasDisconnectPending:Z
    :cond_24
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1157
    .restart local v22       #wasDisconnectPending:Z
    :cond_25
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_7

    .line 1164
    .end local v10           #eventLogParam:I
    .end local v18           #result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    .end local v22           #wasDisconnectPending:Z
    :pswitch_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_26

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1167
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->sendScanResultsAvailable()V

    .line 1172
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setScanMode(Z)Z

    goto/16 :goto_0

    .line 1176
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1178
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    goto/16 :goto_0

    .line 1183
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1184
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_0

    .line 1193
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v5, v23

    .line 1198
    .local v5, BSSID:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMaxDhcpRetries()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_27

    .line 1201
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed reconnect count: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Disabling "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1206
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_0

    .line 1193
    .end local v5           #BSSID:Ljava/lang/String;
    :cond_28
    const/16 v23, 0x0

    move-object/from16 v5, v23

    goto :goto_8

    .line 1216
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1219
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    .line 1220
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1221
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1223
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v23, v0

    if-nez v23, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_29

    .line 1225
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1230
    :goto_9
    const-string v23, "WifiStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IP configuration: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const v23, 0xc368

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1237
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    goto/16 :goto_0

    .line 1228
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 1241
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1245
    const v23, 0xc368

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1246
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1248
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1249
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    goto/16 :goto_0

    .line 1258
    :pswitch_e
    const v23, 0xc367

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1260
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 1290
    :goto_a
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->noteRunState()V

    goto/16 :goto_0

    .line 1267
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    .line 1268
    monitor-enter p0

    .line 1269
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 1270
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v23, v0

    if-nez v23, :cond_2b

    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    .line 1279
    :cond_2a
    :goto_b
    monitor-exit p0

    goto :goto_a

    :catchall_1
    move-exception v23

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v23

    .line 1276
    :cond_2b
    const/16 v23, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_b

    .line 1282
    :pswitch_11
    const-string v23, "WifiStateTracker"

    const-string v24, "Wifi Driver reports HUNG - reloading."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_a

    .line 1294
    :pswitch_12
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    goto/16 :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_e
        :pswitch_12
        :pswitch_5
        :pswitch_2
    .end packed-switch

    .line 1260
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public interpretScanResultsAvailable()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2250
    iget-boolean v6, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v6, :cond_1

    .line 2288
    :cond_0
    :goto_0
    return-void

    .line 2252
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2254
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 2255
    .local v5, state:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_2

    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_5

    .line 2259
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 2260
    .local v4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_5

    .line 2261
    const/4 v2, 0x0

    .line 2262
    .local v2, numOpenNetworks:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v9

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 2263
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 2265
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2266
    add-int/lit8 v2, v2, 0x1

    .line 2262
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2270
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-lez v2, :cond_5

    .line 2271
    iget v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 2279
    invoke-virtual {p0, v9, v2, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 2287
    .end local v0           #i:I
    .end local v2           #numOpenNetworks:I
    .end local v4           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 2

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 510
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 509
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isConnectionCompleted()Z
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isDriverStopped()Z
    .locals 2

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listNetworks()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1895
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1896
    const/4 v0, 0x0

    .line 1898
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDriver()Z
    .locals 1

    .prologue
    .line 1657
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyDriverHung()V
    .locals 3

    .prologue
    .line 667
    const/16 v0, 0xd

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 668
    return-void
.end method

.method notifyDriverStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    const/16 v0, 0xd

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void
.end method

.method notifyDriverStopped()V
    .locals 3

    .prologue
    .line 616
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 619
    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 620
    return-void
.end method

.method notifyGetWpsEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "wpsEvent"

    .prologue
    .line 644
    const/4 v0, 0x5

    .line 645
    .local v0, arg1:I
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyGetWpsEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string/jumbo v1, "wps_success"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    const/4 v0, 0x1

    .line 658
    :cond_0
    :goto_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 659
    return-void

    .line 648
    :cond_1
    const-string/jumbo v1, "wps_fail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    const/4 v0, 0x2

    goto :goto_0

    .line 650
    :cond_2
    const-string/jumbo v1, "wps_overlap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    const/4 v0, 0x3

    goto :goto_0

    .line 652
    :cond_3
    const-string/jumbo v1, "wps_timeout"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 653
    const/4 v0, 0x4

    goto :goto_0

    .line 654
    :cond_4
    const-string/jumbo v1, "wps_not_defined"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    const/4 v0, 0x5

    goto :goto_0
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .locals 1

    .prologue
    .line 553
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 554
    return-void
.end method

.method notifyScanResultsAvailable()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 601
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 602
    return-void
.end method

.method notifyShowApListDialog()V
    .locals 1

    .prologue
    .line 633
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 634
    return-void
.end method

.method notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 3
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    .line 571
    const/4 v1, 0x3

    new-instance v2, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;-><init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 574
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 575
    return-void
.end method

.method notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 3
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    .line 588
    const/4 v1, 0x4

    new-instance v2, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 591
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 592
    return-void
.end method

.method notifySupplicantConnection()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 562
    return-void
.end method

.method notifySupplicantLost()V
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 610
    return-void
.end method

.method public declared-synchronized ping()Z
    .locals 2

    .prologue
    .line 1711
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1712
    const/4 v0, 0x0

    .line 1714
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reassociate()Z
    .locals 2

    .prologue
    .line 1857
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1858
    const/4 v0, 0x0

    .line 1860
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1857
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1582
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_1

    .line 1583
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v2

    .line 1590
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1587
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1590
    goto :goto_0
.end method

.method public declared-synchronized reconnectCommand()Z
    .locals 2

    .prologue
    .line 1793
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    const/4 v0, 0x0

    .line 1796
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 763
    return-void
.end method

.method public declared-synchronized reloadConfig()Z
    .locals 2

    .prologue
    .line 2215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2216
    const/4 v0, 0x0

    .line 2218
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reloadConfigCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetwork(I)Z
    .locals 2
    .parameter "networkId"

    .prologue
    .line 1818
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1819
    const/4 v0, 0x0

    .line 1821
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1435
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1436
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public resetConnections(Z)V
    .locals 3
    .parameter "disableInterface"

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    .line 1367
    const-string v0, "WifiStateTracker"

    const-string v0, "Reset connections and stopping DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1369
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1370
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1376
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1379
    monitor-enter p0

    .line 1380
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1382
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1384
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1386
    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_1
    if-eqz p1, :cond_2

    .line 1394
    const-string v0, "WifiStateTracker"

    const-string v0, "Disabling interface"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1397
    :cond_2
    return-void

    .line 1384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized restart()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1617
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1618
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1619
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1620
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1624
    :goto_0
    monitor-exit p0

    return v0

    .line 1621
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1622
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v0, v2

    .line 1624
    goto :goto_0

    .line 1617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveConfig()Z
    .locals 2

    .prologue
    .line 2203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2204
    const/4 v0, 0x0

    .line 2206
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scan(Z)Z
    .locals 2
    .parameter "forceActive"

    .prologue
    .line 1724
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1725
    const/4 v0, 0x0

    .line 1727
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanResults()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1754
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    const/4 v0, 0x0

    .line 1757
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothCoexistenceMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 2177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    const/4 v0, 0x0

    .line 2180
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothScanMode(Z)V
    .locals 2
    .parameter "isBluetoothPlaying"

    .prologue
    .line 2191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2195
    :goto_0
    monitor-exit p0

    return-void

    .line 2194
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1924
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1925
    const/4 v0, 0x0

    .line 1927
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1924
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNotificationVisible(ZIZI)V
    .locals 10
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x1080291

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2308
    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 2355
    :cond_0
    :goto_0
    return-void

    .line 2313
    :cond_1
    if-eqz p1, :cond_3

    .line 2316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 2320
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 2324
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    .line 2325
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2326
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 2327
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2328
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2332
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2334
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2336
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2337
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2341
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2352
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    .local v1, message:Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    int-to-long v4, p4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2354
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    goto :goto_0

    .line 2347
    .end local v1           #message:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2349
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_1
.end method

.method public declared-synchronized setNumAllowedChannels()Z
    .locals 3

    .prologue
    .line 2123
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2124
    const/4 v1, 0x0

    .line 2136
    :goto_0
    monitor-exit p0

    return v1

    .line 2127
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_num_allowed_channels"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 2130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2131
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_2
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    if-eqz v1, :cond_1

    .line 2132
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2136
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2123
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNumAllowedChannels(I)Z
    .locals 2
    .parameter "numChannels"

    .prologue
    .line 2148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    const/4 v0, 0x0

    .line 2152
    :goto_0
    monitor-exit p0

    return v0

    .line 2151
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 2152
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPowerMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 2110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    const/4 v0, 0x0

    .line 2113
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 2222
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setScanMode(Z)Z
    .locals 2
    .parameter "isScanModeActive"

    .prologue
    .line 1766
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    const/4 v0, 0x0

    .line 1772
    :goto_0
    monitor-exit p0

    return v0

    .line 1769
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    if-eq v0, p1, :cond_1

    .line 1770
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1772
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanOnlyMode(Z)V
    .locals 4
    .parameter "scanOnlyMode"

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    if-eq v1, p1, :cond_0

    .line 712
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .line 714
    .local v0, scanType:I
    :goto_0
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan-only mode changing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scanType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    .line 717
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    if-eqz p1, :cond_2

    .line 719
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    .end local v0           #scanType:I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 712
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 721
    .restart local v0       #scanType:I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 711
    .end local v0           #scanType:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScanResultHandling(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 1740
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    const/4 v0, 0x0

    .line 1743
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanResultsList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1426
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    monitor-exit p0

    return-void

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifiState(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 1632
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1633
    return-void
.end method

.method public declared-synchronized startDriver()Z
    .locals 2

    .prologue
    .line 2004
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2005
    const/4 v0, 0x0

    .line 2007
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2004
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventLoop()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 490
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    .line 486
    return-void
.end method

.method public declared-synchronized startPacketFiltering()Z
    .locals 2

    .prologue
    .line 2084
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2085
    const/4 v0, 0x0

    .line 2087
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2084
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSupplicant()Z
    .locals 1

    .prologue
    .line 1676
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2232
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized status()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1944
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1945
    const/4 v0, 0x0

    .line 1947
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1944
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDriver()Z
    .locals 2

    .prologue
    .line 2016
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2017
    const/4 v0, 0x0

    .line 2019
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2016
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketFiltering()Z
    .locals 2

    .prologue
    .line 2096
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2097
    const/4 v0, 0x0

    .line 2099
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2096
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()Z
    .locals 1

    .prologue
    .line 1685
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2242
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1566
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v0, :cond_1

    .line 1567
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v1

    .line 1574
    :goto_0
    return v0

    .line 1571
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1574
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2371
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2372
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2373
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2374
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 2375
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2379
    :goto_0
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2380
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2381
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", scanModeActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2386
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2377
    :cond_0
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public declared-synchronized unloadDriver()Z
    .locals 1

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsCommandCancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2063
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiStateTracker"

    const-string/jumbo v1, "wpsCommandCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2066
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2069
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2063
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsPbcConnect()Z
    .locals 2

    .prologue
    .line 2031
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiStateTracker"

    const-string/jumbo v1, "wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    const/4 v0, 0x0

    .line 2037
    :goto_0
    monitor-exit p0

    return v0

    .line 2036
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2037
    invoke-static {}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsPinConnect(Ljava/lang/String;)I
    .locals 3
    .parameter "bssid"

    .prologue
    .line 2047
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wpsPinConnect(), bssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    const/4 v0, -0x1

    .line 2053
    :goto_0
    monitor-exit p0

    return v0

    .line 2052
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2053
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->startWpsPinCommand(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 2047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
