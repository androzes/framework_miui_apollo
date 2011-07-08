.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_ENABLE_SOON:Ljava/lang/String; = "wifi_enable_soon"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_WPS:Ljava/lang/String; = "wps_event"

.field public static final GET_WPS_EVENT_ACTION:Ljava/lang/String; = "android.net.wifi.GET_WPS_EVENT"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SHOW_AP_LIST_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_AP_LIST_DIALOG"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0x1

.field public static final WIFI_AP_STATE_DISABLING:I = 0x0

.field public static final WIFI_AP_STATE_ENABLED:I = 0x3

.field public static final WIFI_AP_STATE_ENABLING:I = 0x2

.field public static final WIFI_AP_STATE_FAILED:I = 0x4

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_WPS_FAIL:I = 0x2

.field public static final WIFI_WPS_OVERLAP:I = 0x3

.field public static final WIFI_WPS_SUCCESS:I = 0x1

.field public static final WIFI_WPS_TIMEOUT:I = 0x4

.field public static final WIFI_WPS_UNDEFINE:I = 0x5


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field private mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 420
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 421
    new-instance v0, Landroid/net/wifi/WifiProgressStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiProgressStore;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    .line 422
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 4
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, -0x64

    .line 936
    if-nez p0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return v1

    .line 939
    :cond_1
    if-le p0, v3, :cond_0

    .line 941
    const/16 v1, -0x37

    if-lt p0, v1, :cond_2

    .line 942
    sub-int v1, p1, v2

    goto :goto_0

    .line 944
    :cond_2
    const/16 v1, 0x2d

    sub-int v2, p1, v2

    div-int v0, v1, v2

    .line 945
    .local v0, partitionSize:I
    sub-int v1, p0, v3

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 959
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 465
    if-nez p1, :cond_0

    .line 469
    :goto_0
    return v0

    .line 468
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 469
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public checkWpsInProgress()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getWpsInProgress()Z

    move-result v0

    return v0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .parameter "tag"

    .prologue
    .line 1242
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1208
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .parameter "tag"

    .prologue
    .line 1224
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 557
    :goto_0
    return v1

    .line 556
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 570
    :goto_0
    return v1

    .line 569
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 541
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 542
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    :goto_0
    return-object v1

    .line 445
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 657
    :goto_0
    return-object v1

    .line 656
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 657
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 865
    :goto_0
    return-object v1

    .line 864
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 865
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumAllowedChannels()I
    .locals 2

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumAllowedChannels()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 816
    :goto_0
    return v1

    .line 815
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getProgressLapseTime()I
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getLapseTime()I

    move-result v0

    return v0
.end method

.method public getProgressMode()I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressMode()I

    move-result v0

    return v0
.end method

.method public getProgressPinNumber()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressPinNumber()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressValue()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
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
    .line 667
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 669
    :goto_0
    return-object v1

    .line 668
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 669
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValidChannelCounts()[I
    .locals 2

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getValidChannelCounts()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 852
    :goto_0
    return-object v1

    .line 851
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 852
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1037
    :goto_0
    return-object v1

    .line 1036
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1037
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApInfo()I
    .locals 2

    .prologue
    .line 992
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 994
    :goto_0
    return v1

    .line 993
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 1010
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1012
    :goto_0
    return v1

    .line 1011
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1012
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 909
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 911
    :goto_0
    return v1

    .line 910
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 1424
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    const/4 v1, 0x1

    .line 1427
    :goto_0
    return v1

    .line 1426
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1427
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1412
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1414
    :goto_0
    return v1

    .line 1413
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1414
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingAccessPointListDialog()Z
    .locals 2

    .prologue
    .line 790
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isShowingAccessPointListDialog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 792
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 792
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 921
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_0

    move v1, v2

    .line 613
    :goto_0
    return v1

    .line 611
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 612
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 613
    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 596
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 584
    :goto_0
    return v1

    .line 583
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 520
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 522
    :goto_0
    return v1

    .line 521
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 522
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    :goto_0
    return v1

    .line 685
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 686
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveCurrentTime(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 755
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiProgressStore;->setCurrentTime(J)V

    .line 756
    return-void
.end method

.method public saveProgressLapseTime(I)V
    .locals 1
    .parameter "saveTime"

    .prologue
    .line 741
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setLapseTime(I)V

    .line 742
    return-void
.end method

.method public saveProgressMode(I)V
    .locals 1
    .parameter "saveDialogMode"

    .prologue
    .line 748
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressMode(I)V

    .line 749
    return-void
.end method

.method public saveProgressPinNumber(I)V
    .locals 1
    .parameter "savePinNumber"

    .prologue
    .line 752
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressPinNumber(I)V

    .line 753
    return-void
.end method

.method public saveProgressValue(I)V
    .locals 1
    .parameter "saveValue"

    .prologue
    .line 744
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressValue(I)V

    .line 745
    return-void
.end method

.method public setNumAllowedChannels(IZ)Z
    .locals 2
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setNumAllowedChannels(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 837
    :goto_0
    return v1

    .line 836
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 837
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShowAccessPointListDialog(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setShowAccessPointListDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 800
    :goto_0
    return v1

    .line 799
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 976
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 978
    :goto_0
    return v1

    .line 977
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 878
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 880
    :goto_0
    return v1

    .line 879
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabledDialog(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabledDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 895
    :goto_0
    return v1

    .line 894
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 895
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWpsInProgress(Z)V
    .locals 1
    .parameter "inWpsProgress"

    .prologue
    .line 759
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setWpsInProgress(Z)V

    .line 760
    return-void
.end method

.method public showApDialog()Z
    .locals 2

    .prologue
    .line 784
    const-string v0, "WifiManager"

    const-string/jumbo v1, "showApDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isShowingAccessPointListDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 627
    :goto_0
    return v1

    .line 626
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v3

    .line 627
    goto :goto_0
.end method

.method public startScanActive()Z
    .locals 3

    .prologue
    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 645
    :goto_0
    return v1

    .line 644
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 645
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 488
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 489
    :cond_0
    const/4 v0, -0x1

    .line 491
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public wpsCommandCancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 731
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsCommandCancel()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 733
    :goto_0
    return v1

    .line 732
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 733
    goto :goto_0
.end method

.method public wpsPbcConnect()Z
    .locals 2

    .prologue
    .line 700
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 701
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsPbcConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 703
    :goto_0
    return v1

    .line 702
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 703
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wpsPinConnect(Ljava/lang/String;)I
    .locals 2
    .parameter "bssid"

    .prologue
    .line 714
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 715
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->wpsPinConnect(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
