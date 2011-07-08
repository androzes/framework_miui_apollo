.class public Lcom/android/settings/wifi/AccessPointListDialog;
.super Landroid/preference/PreferenceActivity;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointListDialog$Scanner;
    }
.end annotation


# static fields
.field private static final MENU_ID_ADVANCED:I = 0x2

.field private static final MENU_ID_CONNECT:I = 0x3

.field private static final MENU_ID_FORGET:I = 0x4

.field private static final MENU_ID_MODIFY:I = 0x5

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AccessPointListDialog"

.field private static final WPS_MAX_TIME:I = 0x1d4c0

.field private static final WPS_PBC_MODE:I = 0x1

.field private static final WPS_PIN_MODE:I = 0x2


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLapseTime:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mRandomPinNumber:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mTimer:Landroid/os/CountDownTimer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsButton:Landroid/preference/Preference;

.field private mWpsInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointListDialog$1;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPointListDialog$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AccessPointListDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AccessPointListDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$420(Lcom/android/settings/wifi/AccessPointListDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/AccessPointListDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/AccessPointListDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method private connect(I)V
    .locals 9
    .parameter "networkId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 561
    if-ne p1, v7, :cond_0

    .line 600
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    const-string v4, "AccessPointListDialog"

    const-string v5, "Broadcasting intent: WifiManager.NETWORK_STATE_CHANGED_ACTION, WifiManager.EXTRA_NETWORK_INFO: DISCONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->setDisconnectedState()V

    .line 568
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x3000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    const-string v4, "networkInfo"

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 576
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    iget v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    const v5, 0xf4240

    if-le v4, v5, :cond_4

    .line 577
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 578
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v4, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 579
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v7, :cond_2

    .line 580
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 581
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 582
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 583
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 577
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 586
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iput v8, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 590
    .end local v2           #i:I
    :cond_4
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 591
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 592
    iget v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 593
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 594
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 597
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 598
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 599
    iput-boolean v6, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    goto/16 :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "AccessPointListDialog"

    .line 462
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v1, :cond_1

    .line 466
    const-string v1, "AccessPointListDialog"

    const-string v1, "dismissProgressDialog(), mProgressDialog.dissmiss()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 471
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    .line 472
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v2, -0x63

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 476
    .local v0, result:Z
    if-nez v0, :cond_2

    .line 477
    const-string v1, "AccessPointListDialog"

    const-string v1, "ENABLE ALL is fail"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_2
    const-string v1, "AccessPointListDialog"

    const-string v1, "ENABLE ALL is success"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 603
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 605
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 606
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 603
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 609
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 610
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 557
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 558
    return-void
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "milliSecond"

    .prologue
    .line 503
    div-int/lit16 v2, p0, 0x3e8

    div-int/lit8 v0, v2, 0x3c

    .line 504
    .local v0, min:I
    div-int/lit16 v2, p0, 0x3e8

    rem-int/lit8 v1, v2, 0x3c

    .line 506
    .local v1, second:I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "AccessPointListDialog"

    .line 681
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWifiState(I)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 686
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 687
    :cond_2
    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 688
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 689
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 691
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 692
    :cond_4
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 693
    const-string v3, "newState"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 695
    :cond_5
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 696
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 697
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 698
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 700
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 701
    const-string v3, "AccessPointListDialog"

    const-string v3, "Network is connected, activity will finish"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->finish()V

    goto :goto_0

    .line 706
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_6
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 707
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 710
    :cond_7
    const-string v3, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    const-string v3, "AccessPointListDialog"

    const-string v3, "handleEvent(), GET_WPS_EVENT_ACTION"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v3, "wps_event"

    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWpsEvent(I)V

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 546
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 548
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 549
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 616
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 617
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 393
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 394
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 395
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 7
    .parameter "wpsMode"

    .prologue
    const v5, 0x1d4c0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "AccessPointListDialog"

    const-string v1, "showProgressDialog(), dissmiss former dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 409
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 410
    iput v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f0902a1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$2;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 424
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 426
    const-string v0, "%08d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, eightDigitPin:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 433
    .end local v6           #eightDigitPin:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const-string v1, "%2d:%2d"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show()V

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 446
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$3;

    const-wide/32 v2, 0x1d8a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/AccessPointListDialog$3;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 458
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showWpsToast(I)V
    .locals 4
    .parameter "messageResId"

    .prologue
    const-string v3, "AccessPointListDialog"

    .line 747
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 749
    const-string v0, "AccessPointListDialog"

    const-string v0, "showWpsToast(), WPS FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const v0, 0x7f090101

    if-ne p1, v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "AccessPointListDialog"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    .line 757
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 758
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 767
    :cond_2
    return-void
.end method

.method private updateAccessPoints()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "AccessPointListDialog"

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 623
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 624
    iput v11, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 625
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 628
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 632
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    if-le v9, v10, :cond_1

    .line 633
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 637
    :cond_1
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_3

    .line 638
    const/4 v9, 0x2

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 643
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 644
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 645
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v9, :cond_2

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 640
    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 649
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v9, "AccessPointListDialog"

    const-string v9, "updateAccessPoints(), WifiConfigureation list updated"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 652
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_8

    .line 653
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 655
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 660
    const/4 v4, 0x0

    .line 661
    .local v4, found:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 662
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 663
    const/4 v4, 0x1

    goto :goto_3

    .line 666
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_7
    if-nez v4, :cond_5

    .line 667
    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 671
    .end local v4           #found:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    const-string v9, "AccessPointListDialog"

    const-string v9, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 674
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v11}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 675
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 676
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 678
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 771
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    .line 777
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 784
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 785
    if-eqz p1, :cond_3

    .line 786
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 789
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 790
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 789
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 779
    .end local v0           #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-nez v1, :cond_2

    .line 780
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    goto :goto_1

    .line 793
    .restart local v0       #i:I
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 795
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 796
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 801
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 802
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 813
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0
.end method

.method private updateWpsEvent(I)V
    .locals 4
    .parameter "eventType"

    .prologue
    const v2, 0x7f090100

    const-string v3, "AccessPointListDialog"

    .line 718
    const-string v0, "AccessPointListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWpsEvent: eventType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 721
    packed-switch p1, :pswitch_data_0

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 723
    :pswitch_0
    const-string v0, "AccessPointListDialog"

    const-string v0, "WPS Success"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 732
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 735
    :pswitch_2
    const v0, 0x7f090101

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 738
    :pswitch_3
    const v0, 0x7f0900ff

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 741
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wpsCommandCancel()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method private wpsPbcConnect()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method private wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, -0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 341
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 343
    .local v1, forgetable:Z
    :goto_0
    if-ne p2, v6, :cond_2

    if-eqz v1, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 346
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3, v4}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_0
    :goto_1
    return-void

    .end local v1           #forgetable:Z
    :cond_1
    move v1, v5

    .line 341
    goto :goto_0

    .line 347
    .restart local v1       #forgetable:Z
    :cond_2
    if-ne p2, v4, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_8

    .line 348
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 350
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 354
    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v4, :cond_4

    .line 355
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    goto :goto_1

    .line 360
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 362
    .local v2, networkId:I
    if-ne v2, v4, :cond_5

    .line 363
    const v3, 0x7f09048d

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 366
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 367
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 368
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v3, v3, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 369
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 370
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 372
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 378
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #networkId:I
    :cond_8
    if-ne p2, v6, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 273
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 274
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 311
    :goto_0
    return v2

    .line 276
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 311
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 279
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    :cond_1
    :goto_1
    move v2, v4

    .line 293
    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 284
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 285
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 286
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 287
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 288
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 289
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 291
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 295
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 297
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    move v2, v4

    .line 298
    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 301
    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    :goto_2
    move v2, v4

    .line 309
    goto :goto_0

    .line 307
    :cond_4
    const v2, 0x7f090100

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_2

    .line 276
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "AccessPointListDialog"

    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 154
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x1a

    const-string v3, "AccessPointListDialog"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 161
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 163
    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->addPreferencesFromResource(I)V

    .line 165
    const-string v1, "access_points"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 167
    const-string v1, "add_network"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 170
    const-string v1, "AccessPointListDialog"

    const-string v1, "onCreate() finish"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 244
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 248
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 249
    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 250
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v7

    .line 251
    .local v0, connectable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_4

    move v1, v7

    .line 252
    .local v1, forgetable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    const/4 v3, 0x3

    const v4, 0x7f0900f4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 256
    :cond_0
    if-eqz v1, :cond_1

    .line 257
    const/4 v3, 0x4

    const v4, 0x7f0900f5

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 258
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_1

    .line 259
    const/4 v3, 0x5

    const v4, 0x7f0900f6

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, v3, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v3, :cond_2

    .line 269
    .end local v0           #connectable:Z
    .end local v1           #forgetable:Z
    :cond_2
    return-void

    :cond_3
    move v0, v5

    .line 250
    goto :goto_0

    .restart local v0       #connectable:Z
    :cond_4
    move v1, v5

    .line 251
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const-string v1, "AccessPointListDialog"

    .line 484
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-ne p1, v0, :cond_1

    .line 485
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), dismiss mDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-ne p1, v0, :cond_0

    .line 488
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), dismiss mProgressDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), mWpsInProgress is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 492
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 202
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 211
    const-string v0, "AccessPointListDialog"

    const-string v1, "onPause() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 316
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 317
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    :goto_0
    move v0, v3

    .line 337
    :goto_1
    return v0

    .line 319
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 320
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 321
    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsButton:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 325
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 326
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPbcConnect()V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    .line 335
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 181
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    .line 183
    :cond_1
    iput v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 185
    const-string v0, "AccessPointListDialog"

    const-string v1, "onResume() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method
