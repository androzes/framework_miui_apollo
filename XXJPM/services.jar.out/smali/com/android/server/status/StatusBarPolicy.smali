.class public Lcom/android/server/status/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final DELAYED_TIME_DISCHARGE_POPUP:I = 0x4e20

.field private static final DELAYED_TIME_DISCHARGE_TONE:I = 0x4e20

.field private static final DELAYED_TIME_FULLCHARGE_TONE:I = 0x2710

.field private static final EVENT_BATTERY_CLOSE:I = 0x4

.field private static final EVENT_DISCHARGE_POPUP:I = 0x8

.field private static final EVENT_DISCHARGE_TONE:I = 0x10

.field private static final EVENT_FULLCHARGE_TONE:I = 0x20

.field private static final GPS_NOTI_STATUS:Ljava/lang/String; = "gps_notification_sounds"

.field private static final SHOW_BATTERY_WARNINGS_IN_CALL:Z = true

.field private static final SHOW_LOW_BATTERY_WARNING:Z = true

.field private static final SUPPORT_BATT_FULL_POPUP:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarPolicy"

.field private static final VIBRATE_REQUEST:I = 0x7010001

.field private static final VIBRATION_DURATION:I = 0x3e8

.field private static final sDataNetType_1x:[I = null

.field private static final sDataNetType_3g:[I = null

.field private static final sDataNetType_e:[I = null

.field private static final sDataNetType_g:[I = null

.field private static final sDataNetType_h:[I = null

.field private static sInstance:Lcom/android/server/status/StatusBarPolicy; = null

.field private static final sRoamingIndicatorImages_cdma:[I = null

.field private static final sSignalImages:[I = null

.field private static final sSignalImages_r:[I = null

.field private static final sWifiSignalImages:[I = null

.field private static final sWifiTemporarilyNotConnectedImage:I = 0x10802f8


# instance fields
.field private ALARM_ACTION:Ljava/lang/String;

.field private mAlarmClockIcon:Landroid/os/IBinder;

.field private mAlarmClockIconData:Lcom/android/server/status/IconData;

.field private mBattIntent:Landroid/app/PendingIntent;

.field private mBatteryData:Lcom/android/server/status/IconData;

.field private mBatteryFirst:Z

.field private mBatteryIcon:Landroid/os/IBinder;

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothData:Lcom/android/server/status/IconData;

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothHidConnected:Z

.field private mBluetoothIcon:Landroid/os/IBinder;

.field private mCalendar:Ljava/util/Calendar;

.field private mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

.field private mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

.field private mCityzoneIconData:Lcom/android/server/status/IconData;

.field private mClockData:Lcom/android/server/status/IconData;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mClockIcon:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataData:Lcom/android/server/status/IconData;

.field private mDataIcon:Landroid/os/IBinder;

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mDisChargeDialog:Landroid/app/AlertDialog;

.field private mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDisChargeTextView:Landroid/widget/TextView;

.field private mFullChargeDialog:Landroid/app/AlertDialog;

.field private mFullChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFullChargeTextView:Landroid/widget/TextView;

.field private mGpsEnabledIconData:Lcom/android/server/status/IconData;

.field private mGpsFixIconData:Lcom/android/server/status/IconData;

.field private mGpsIcon:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field private mHomezoneIcon:Landroid/os/IBinder;

.field private mHomezoneIconData:Lcom/android/server/status/IconData;

.field private mHspaDataDistinguishable:Z

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDisCharged:Z

.field private mIsFullCharged:Z

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mMyContext:Landroid/content/Context;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneData:Lcom/android/server/status/IconData;

.field private mPhoneIcon:Landroid/os/IBinder;

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:Lcom/android/server/status/StatusBarService;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSyncActiveIcon:Landroid/os/IBinder;

.field private mSyncFailingIcon:Landroid/os/IBinder;

.field private mTTYModeEnableIconData:Lcom/android/server/status/IconData;

.field private mTTYModeIcon:Landroid/os/IBinder;

.field private mVolumeData:Lcom/android/server/status/IconData;

.field private mVolumeIcon:Landroid/os/IBinder;

.field private mVolumeVisible:Z

.field private mWL:Landroid/os/PowerManager$WakeLock;

.field private mWifiData:Lcom/android/server/status/IconData;

.field private mWifiIcon:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 185
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .line 192
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_r:[I

    .line 199
    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 302
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    .line 308
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    .line 314
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_e:[I

    .line 321
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_h:[I

    .line 330
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1x:[I

    .line 367
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    return-void

    .line 185
    :array_0
    .array-data 0x4
        0xdat 0x2t 0x8t 0x1t
        0xdct 0x2t 0x8t 0x1t
        0xdet 0x2t 0x8t 0x1t
        0xe0t 0x2t 0x8t 0x1t
        0xe2t 0x2t 0x8t 0x1t
    .end array-data

    .line 192
    :array_1
    .array-data 0x4
        0xc4t 0x2t 0x8t 0x1t
        0xc6t 0x2t 0x8t 0x1t
        0xc8t 0x2t 0x8t 0x1t
        0xcat 0x2t 0x8t 0x1t
        0xcct 0x2t 0x8t 0x1t
    .end array-data

    .line 199
    :array_2
    .array-data 0x4
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
    .end array-data

    .line 302
    :array_3
    .array-data 0x4
        0xa7t 0x2t 0x8t 0x1t
        0xact 0x2t 0x8t 0x1t
        0xb6t 0x2t 0x8t 0x1t
        0xb1t 0x2t 0x8t 0x1t
    .end array-data

    .line 308
    :array_4
    .array-data 0x4
        0xa5t 0x2t 0x8t 0x1t
        0xaat 0x2t 0x8t 0x1t
        0xb4t 0x2t 0x8t 0x1t
        0xaft 0x2t 0x8t 0x1t
    .end array-data

    .line 314
    :array_5
    .array-data 0x4
        0xa6t 0x2t 0x8t 0x1t
        0xabt 0x2t 0x8t 0x1t
        0xb5t 0x2t 0x8t 0x1t
        0xb0t 0x2t 0x8t 0x1t
    .end array-data

    .line 321
    :array_6
    .array-data 0x4
        0xa8t 0x2t 0x8t 0x1t
        0xadt 0x2t 0x8t 0x1t
        0xb7t 0x2t 0x8t 0x1t
        0xb2t 0x2t 0x8t 0x1t
    .end array-data

    .line 330
    :array_7
    .array-data 0x4
        0xa4t 0x2t 0x8t 0x1t
        0xa9t 0x2t 0x8t 0x1t
        0xb3t 0x2t 0x8t 0x1t
        0xaet 0x2t 0x8t 0x1t
    .end array-data

    .line 367
    :array_8
    .array-data 0x4
        0xf9t 0x2t 0x8t 0x1t
        0xfat 0x2t 0x8t 0x1t
        0xfbt 0x2t 0x8t 0x1t
        0xfct 0x2t 0x8t 0x1t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    .locals 10
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v5, "phone"

    const-string v9, "homezone"

    const-string v8, "gps"

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v3, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/server/status/StatusBarPolicy;Lcom/android/server/status/StatusBarPolicy$1;)V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 150
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    .line 174
    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 300
    sget-object v3, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 339
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 340
    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    .line 341
    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    .line 342
    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 376
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 377
    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 414
    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->ALARM_ACTION:Ljava/lang/String;

    .line 415
    new-instance v3, Lcom/android/server/status/StatusBarPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/status/StatusBarPolicy$1;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1120
    new-instance v3, Lcom/android/server/status/StatusBarPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/status/StatusBarPolicy$3;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1129
    new-instance v3, Lcom/android/server/status/StatusBarPolicy$4;

    invoke-direct {v3, p0}, Lcom/android/server/status/StatusBarPolicy$4;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1160
    new-instance v3, Lcom/android/server/status/StatusBarPolicy$5;

    invoke-direct {v3, p0}, Lcom/android/server/status/StatusBarPolicy$5;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1186
    new-instance v3, Lcom/android/server/status/StatusBarPolicy$6;

    invoke-direct {v3, p0}, Lcom/android/server/status/StatusBarPolicy$6;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 487
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 488
    iput-object p2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    .line 489
    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 490
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 493
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    .line 494
    const-string v3, "clock"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/server/status/IconData;->makeText(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    .line 495
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    .line 496
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateClock()V

    .line 499
    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 500
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v4, Lcom/android/server/status/StorageNotification;

    invoke-direct {v4, p1}, Lcom/android/server/status/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 504
    const-string v3, "battery"

    const v4, 0x10802a2

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    .line 506
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIcon:Landroid/os/IBinder;

    .line 509
    const-string v3, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 510
    const-string v3, "phone_signal"

    const v4, 0x10802ea

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    .line 512
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    .line 515
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x1e1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 524
    const-string v3, "data_connection"

    const v4, 0x10802a7

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    .line 526
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    .line 527
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 530
    const-string v3, "wifi"

    sget-object v4, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v4, v4, v6

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    .line 531
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    .line 532
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 536
    const-string v3, "tty"

    const v4, 0x10802f0

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    .line 538
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    .line 539
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 542
    const-string v3, "cdma_eri"

    const v4, 0x10802d5

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    .line 544
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    .line 545
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 548
    const-string v3, "bluetooth"

    const v4, 0x1080080

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    .line 550
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    .line 551
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 552
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 557
    :goto_0
    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 558
    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 559
    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    .line 561
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 564
    const-string v3, "gps"

    const v3, 0x10802c0

    invoke-static {v8, v7, v3, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    .line 566
    const-string v3, "gps"

    const v3, 0x10802c1

    invoke-static {v8, v7, v3, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconData:Lcom/android/server/status/IconData;

    .line 568
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    .line 569
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 572
    const-string v3, "alarm_clock"

    const v4, 0x108028b

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIconData:Lcom/android/server/status/IconData;

    .line 575
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    .line 576
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 579
    const-string v3, "sync_active"

    const v4, 0x108028f

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    .line 581
    const-string v3, "sync_failing"

    const v4, 0x1080290

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIcon:Landroid/os/IBinder;

    .line 583
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 584
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 587
    const-string v3, "volume"

    const v4, 0x10802d3

    invoke-static {v3, v7, v4, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    .line 589
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    .line 590
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 591
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateVolume()V

    .line 594
    const-string v3, "homezone"

    const v3, 0x1080359

    invoke-static {v9, v7, v3, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIconData:Lcom/android/server/status/IconData;

    .line 596
    const-string v3, "homezone"

    const v3, 0x1080358

    invoke-static {v9, v7, v3, v6, v6}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCityzoneIconData:Lcom/android/server/status/IconData;

    .line 598
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIconData:Lcom/android/server/status/IconData;

    invoke-virtual {p2, v3, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    .line 599
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {p2, v3, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 601
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 604
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v3, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string v3, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string v3, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v3, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v3, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v3, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->ALARM_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 635
    :try_start_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_1
    return-void

    .line 555
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_0

    .line 637
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 638
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_1
.end method

.method private GenerateBeep()V
    .locals 5

    .prologue
    .line 1617
    const/4 v1, 0x0

    .line 1621
    .local v1, mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #mFocusToneGenerator:Landroid/media/ToneGenerator;
    .local v2, mFocusToneGenerator:Landroid/media/ToneGenerator;
    move-object v1, v2

    .line 1627
    .end local v2           #mFocusToneGenerator:Landroid/media/ToneGenerator;
    .restart local v1       #mFocusToneGenerator:Landroid/media/ToneGenerator;
    :goto_0
    if-eqz v1, :cond_0

    .line 1628
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1629
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1631
    :cond_0
    return-void

    .line 1622
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1624
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mMyContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateHomezone(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateClock()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/status/StatusBarPolicy;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/status/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/status/StatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/status/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/status/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/status/StatusBarPolicy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->showDisChargePopup(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/status/StatusBarPolicy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarPolicy;->playDelayedTone(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/status/StatusBarPolicy;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/status/StatusBarPolicy;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/status/StatusBarPolicy;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1181
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1184
    :cond_0
    return-void
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 1345
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1346
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1347
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 1348
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 1350
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1357
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1363
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1351
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1352
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1353
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1354
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1358
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1359
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1360
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1361
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1363
    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 5

    .prologue
    .line 1367
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1368
    .local v0, evdoDbm:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1369
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 1370
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 1372
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1378
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1384
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1373
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1374
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1375
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1376
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1379
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1380
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1381
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1382
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1384
    goto :goto_2
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 650
    .local v9, b24:Z
    if-eqz v9, :cond_2

    .line 651
    const v17, 0x1040070

    .line 656
    .local v17, res:I
    :goto_0
    const v5, 0xef00

    .line 657
    .local v5, MAGIC1:C
    const v6, 0xef01

    .line 660
    .local v6, MAGIC2:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 661
    .local v11, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 667
    const/4 v7, -0x1

    .line 668
    .local v7, a:I
    const/16 v16, 0x0

    .line 669
    .local v16, quoted:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 670
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 672
    .local v10, c:C
    const/16 v20, 0x27

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 673
    if-nez v16, :cond_3

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 676
    :cond_0
    :goto_2
    if-nez v16, :cond_4

    const/16 v20, 0x61

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 677
    move v7, v13

    .line 682
    .end local v10           #c:C
    :cond_1
    if-ltz v7, :cond_6

    .line 684
    move v8, v7

    .line 685
    .local v8, b:I
    :goto_3
    if-lez v7, :cond_5

    const/16 v20, 0x1

    sub-int v20, v7, v20

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 686
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 653
    .end local v5           #MAGIC1:C
    .end local v6           #MAGIC2:C
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v11           #format:Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #quoted:Z
    .end local v17           #res:I
    :cond_2
    const v17, 0x104006f

    .restart local v17       #res:I
    goto :goto_0

    .line 673
    .restart local v5       #MAGIC1:C
    .restart local v6       #MAGIC2:C
    .restart local v7       #a:I
    .restart local v10       #c:C
    .restart local v11       #format:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v16       #quoted:Z
    :cond_3
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_2

    .line 669
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 688
    .end local v10           #c:C
    .restart local v8       #b:I
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef01

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v8, 0x1

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 692
    .end local v8           #b:I
    :cond_6
    new-instance v19, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v19, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 693
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mClockFormatString:Ljava/lang/String;

    .line 697
    .end local v7           #a:I
    .end local v13           #i:I
    .end local v16           #quoted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 699
    .local v18, result:Ljava/lang/String;
    const v20, 0xef00

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 700
    .local v14, magic1:I
    const v20, 0xef01

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 702
    .local v15, magic2:I
    if-ltz v14, :cond_8

    if-le v15, v14, :cond_8

    .line 703
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 705
    .local v12, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v20, Landroid/text/style/RelativeSizeSpan;

    const v21, 0x3f333333

    invoke-direct/range {v20 .. v21}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v21, 0x22

    move-object v0, v12

    move-object/from16 v1, v20

    move v2, v14

    move v3, v15

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 708
    add-int/lit8 v20, v15, 0x1

    move-object v0, v12

    move v1, v15

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 709
    add-int/lit8 v20, v14, 0x1

    move-object v0, v12

    move v1, v14

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v12

    .line 713
    .end local v12           #formatted:Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v20

    .line 695
    .end local v14           #magic1:I
    .end local v15           #magic2:I
    .end local v18           #result:Ljava/lang/String;
    .end local v19           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v19, v0

    .restart local v19       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .restart local v14       #magic1:I
    .restart local v15       #magic2:I
    .restart local v18       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v18

    .line 713
    goto :goto_5
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1262
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1268
    :pswitch_0
    const/4 v0, 0x1

    .line 1271
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1266
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1271
    goto :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideBatteryPopup()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public static installIcons(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 643
    new-instance v0, Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/status/StatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sInstance:Lcom/android/server/status/StatusBarPolicy;

    .line 644
    return-void
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThereKeyguard()Z
    .locals 3

    .prologue
    .line 1781
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1782
    .local v0, tKM:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning()V

    .line 848
    :cond_0
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 856
    :cond_0
    return-void
.end method

.method private playDelayedTone(II)V
    .locals 4
    .parameter "eventType"
    .parameter "delayedTime"

    .prologue
    .line 1064
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playDelayedTone() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1067
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1068
    return-void
.end method

.method private playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 1071
    const-string v3, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, -0x1

    .line 1075
    .local v0, ringerMode:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1076
    .local v1, tAM:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1078
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1079
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1084
    :goto_0
    return-void

    .line 1081
    :cond_0
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    .line 1082
    .local v2, vib:Landroid/os/Vibrator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private scheduleCloseBatteryView()V
    .locals 4

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1174
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1175
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1176
    return-void
.end method

.method private setBatteryLevel(Landroid/view/View;IIII)V
    .locals 4
    .parameter "parent"
    .parameter "id"
    .parameter "height"
    .parameter "background"
    .parameter "level"

    .prologue
    .line 911
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 912
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 913
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v3, p3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 914
    if-eqz p4, :cond_0

    .line 915
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 916
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 917
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 919
    .end local v0           #bkg:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private showBatteryView()V
    .locals 18

    .prologue
    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 864
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    move/from16 v16, v0

    .line 866
    .local v16, level:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x109001d

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 867
    .local v9, v:Landroid/view/View;
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 868
    const/4 v7, -0x3

    .line 869
    .local v7, pixelFormat:I
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 870
    .local v15, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_1

    .line 871
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 874
    :cond_1
    const/16 v6, 0x1a

    .line 878
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 880
    or-int/lit8 v6, v6, 0x4

    .line 883
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d5

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 890
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 892
    .local v14, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    const/high16 v4, 0x3f00

    invoke-virtual {v14, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 893
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 895
    const-string v3, "Battery"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 897
    const v3, 0x102017d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 898
    .local v17, levelTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x10402d0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v6           #flags:I
    move-result-object v7

    .end local v7           #pixelFormat:I
    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const v10, 0x1020181

    const/16 v3, 0x64

    sub-int v11, v3, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/status/StatusBarPolicy;->setBatteryLevel(Landroid/view/View;IIII)V

    .line 902
    const v10, 0x1020182

    const v12, 0x10800a1

    move-object/from16 v8, p0

    move/from16 v11, v16

    move/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/android/server/status/StatusBarPolicy;->setBatteryLevel(Landroid/view/View;IIII)V

    .line 905
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->scheduleCloseBatteryView()V

    .line 908
    return-void
.end method

.method private showDisChargePopup(Z)V
    .locals 9
    .parameter "muteMode"

    .prologue
    const/4 v7, 0x0

    const-string v8, "StatusBarPolicy"

    .line 991
    const-string v5, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDisChargePopup() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 995
    .local v3, tPM:Landroid/os/PowerManager;
    const/4 v5, 0x6

    const-string v6, "StatusBarPolicy"

    invoke-virtual {v3, v5, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 996
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 999
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x10403ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, disChargeText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x1090075

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1002
    .local v4, v:Landroid/view/View;
    const v5, 0x102022b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1003
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1006
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1007
    const v5, 0x10403ad

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1008
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1009
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1011
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1012
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1013
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1014
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1015
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    .line 1017
    if-eqz p1, :cond_0

    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    .line 1022
    :goto_0
    return-void

    .line 1018
    :cond_0
    const/16 v5, 0xd

    invoke-direct {p0, v5}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    goto :goto_0
.end method

.method private showFullChargePopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1026
    const-string v4, "StatusBarPolicy"

    const-string v5, "showFullChargePopup()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x10403af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, fullChargeText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1090075

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1031
    .local v3, v:Landroid/view/View;
    const v4, 0x102022b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeTextView:Landroid/widget/TextView;

    .line 1032
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1035
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1036
    const v4, 0x10403ad

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1037
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1038
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1040
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1041
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1042
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1043
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1044
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    .line 1046
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    .line 1050
    return-void
.end method

.method private showLowBatteryWarning()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 922
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 926
    iget v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    const/4 v10, 0x5

    if-ge v9, v10, :cond_1

    .line 927
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x10403b1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, levelText:Ljava/lang/CharSequence;
    :goto_0
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 932
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    :goto_1
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 971
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v9, "power_sounds_enabled"

    invoke-static {v1, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 974
    const-string v9, "low_battery_sound"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, soundPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 977
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 978
    .local v7, soundUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 979
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 980
    .local v5, sfx:Landroid/media/Ringtone;
    if-eqz v5, :cond_0

    .line 981
    invoke-virtual {v5, v11}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 982
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 987
    .end local v5           #sfx:Landroid/media/Ringtone;
    .end local v6           #soundPath:Ljava/lang/String;
    .end local v7           #soundUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 929
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #levelText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x10403b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #levelText:Ljava/lang/CharSequence;
    goto :goto_0

    .line 934
    :cond_2
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x109001c

    invoke-static {v9, v10, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 935
    .local v8, v:Landroid/view/View;
    const v9, 0x102017d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 937
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 940
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 941
    const v9, 0x10402d2

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 942
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 943
    const v9, 0x1080027

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 944
    const v9, 0x104000a

    invoke-virtual {v0, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x5880

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 951
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 952
    const v9, 0x10402d5

    new-instance v10, Lcom/android/server/status/StatusBarPolicy$2;

    invoke-direct {v10, p0, v3}, Lcom/android/server/status/StatusBarPolicy$2;-><init>(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 963
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 964
    .local v2, d:Landroid/app/AlertDialog;
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 965
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 966
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 967
    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 727
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 728
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 729
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "level"

    const-string v12, "alarm"

    .line 740
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const-string v6, "icon-small"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/status/IconData;->iconId:I

    .line 741
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const-string v6, "level"

    invoke-virtual {p1, v13, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/server/status/IconData;->iconLevel:I

    .line 742
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIcon:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 744
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v3, v10

    .line 745
    .local v3, plugged:Z
    :goto_0
    const-string v5, "level"

    const/4 v5, -0x1

    invoke-virtual {p1, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 754
    .local v1, level:I
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:Z

    .line 756
    .local v2, oldPlugged:Z
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:Z

    .line 757
    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    .line 759
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v5, :cond_0

    .line 760
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    .line 780
    :cond_0
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    .line 782
    const-string v5, "status"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 783
    .local v4, status:I
    const-string v5, "health"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, batteryHealth:I
    const-string v5, "StatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BAT. status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " health:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 787
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    .line 788
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 789
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 792
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsFullCharged:Z

    .line 793
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 794
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 797
    :cond_2
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 829
    :cond_3
    :goto_1
    return-void

    .end local v0           #batteryHealth:I
    .end local v1           #level:I
    .end local v2           #oldPlugged:Z
    .end local v3           #plugged:Z
    .end local v4           #status:I
    :cond_4
    move v3, v9

    .line 744
    goto :goto_0

    .line 799
    .restart local v0       #batteryHealth:I
    .restart local v1       #level:I
    .restart local v2       #oldPlugged:Z
    .restart local v3       #plugged:Z
    .restart local v4       #status:I
    :cond_5
    if-ne v4, v11, :cond_8

    .line 800
    if-eq v0, v11, :cond_6

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    .line 801
    :cond_6
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v5

    if-nez v5, :cond_7

    .line 802
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_7

    .line 803
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    invoke-direct {p0, v5}, Lcom/android/server/status/StatusBarPolicy;->showDisChargePopup(Z)V

    .line 806
    :cond_7
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    goto :goto_1

    .line 808
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    if-ne v0, v5, :cond_a

    .line 809
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    .line 811
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_9

    .line 812
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 815
    :cond_9
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 817
    :cond_a
    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 818
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mIsFullCharged:Z

    if-nez v5, :cond_3

    .line 819
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v5

    if-nez v5, :cond_3

    .line 820
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mIsFullCharged:Z

    goto :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1512
    const v3, 0x1080080

    .line 1513
    .local v3, iconId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1515
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1516
    .local v4, state:I
    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    move v5, v8

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1541
    .end local v4           #state:I
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-eqz v5, :cond_1

    .line 1545
    :cond_0
    const v3, 0x10802a3

    .line 1548
    :cond_1
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    iput v3, v5, Lcom/android/server/status/IconData;->iconId:I

    .line 1549
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1550
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1551
    :cond_2
    return-void

    .restart local v4       #state:I
    :cond_3
    move v5, v7

    .line 1516
    goto :goto_0

    .line 1517
    .end local v4           #state:I
    :cond_4
    const-string v5, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1518
    const-string v5, "android.bluetooth.headset.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1520
    :cond_5
    const-string v5, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1521
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1522
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1523
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1525
    :cond_6
    iput-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1527
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_7
    const-string v5, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1528
    new-instance v2, Lcom/broadcom/bt/service/hid/BluetoothHID;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/broadcom/bt/service/hid/BluetoothHID;-><init>(Landroid/content/Context;)V

    .line 1529
    .local v2, hid:Lcom/broadcom/bt/service/hid/BluetoothHID;
    invoke-virtual {v2}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getConnectedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1530
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    goto :goto_1

    .line 1532
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1087
    iput p1, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    .line 1093
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1094
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 1095
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 1105
    :cond_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1106
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1110
    :cond_3
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1111
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1113
    :cond_4
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "StatusBarPolicy"

    .line 1689
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1690
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1734
    :goto_0
    return-void

    .line 1694
    :cond_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1695
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 1699
    :cond_1
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 1700
    .local v1, iconList:[I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1701
    .local v0, iconIndex:I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 1703
    .local v2, iconMode:I
    if-ne v0, v4, :cond_2

    .line 1704
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1708
    :cond_2
    if-ne v2, v4, :cond_3

    .line 1709
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1713
    :cond_3
    if-ne v0, v6, :cond_4

    .line 1715
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 1719
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 1733
    :goto_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_0

    .line 1721
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    aget v4, v1, v0

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 1722
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1723
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 1726
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    const v4, 0x10802d6

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 1728
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1729
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 1719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateClock()V
    .locals 4

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 721
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 723
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 724
    return-void
.end method

.method private final updateDataIcon()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1424
    const/4 v3, 0x1

    .line 1426
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1428
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_3

    .line 1429
    :cond_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    if-ne v4, v6, :cond_2

    .line 1430
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 1441
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v8

    .line 1444
    .local v0, iconId:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1445
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1478
    .end local v0           #iconId:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1480
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1486
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v4, v3, :cond_1

    .line 1487
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1488
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconVisible:Z

    .line 1490
    :cond_1
    return-void

    .line 1432
    .end local v1           #ident:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 1433
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1435
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1436
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1438
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v10

    .line 1439
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1447
    .end local v0           #iconId:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1450
    :cond_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    const v5, 0x10802c2

    iput v5, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1451
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1455
    :cond_4
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    if-ne v4, v6, :cond_5

    .line 1456
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    .line 1468
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v8

    .line 1471
    .restart local v0       #iconId:I
    :goto_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1472
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1458
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 1459
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1461
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1462
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1464
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v10

    .line 1465
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1474
    .end local v0           #iconId:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1483
    .restart local v1       #ident:J
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1481
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1456
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 1
    .parameter "net"

    .prologue
    .line 1389
    packed-switch p1, :pswitch_data_0

    .line 1417
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 1420
    :goto_0
    return-void

    .line 1391
    :pswitch_0
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_e:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1394
    :pswitch_1
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1399
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1400
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_h:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1402
    :cond_0
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1407
    :pswitch_3
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1x:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1410
    :pswitch_4
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1x:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1414
    :pswitch_5
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1635
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, action:Ljava/lang/String;
    const-string v3, "enabled"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1639
    .local v1, enabled:Z
    const/4 v2, 0x0

    .line 1641
    .local v2, valueFromPrefs:Z
    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1643
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1644
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1668
    :goto_0
    return-void

    .line 1645
    :cond_0
    const-string v3, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1647
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 1650
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1651
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method private final updateHomezone(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "android.servicestate.HOME_ZONE_CHANGE"

    .line 1737
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, action:Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1740
    .local v1, type:I
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v5, :cond_1

    .line 1741
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1742
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1744
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 1745
    :cond_2
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1746
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCityzoneIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1747
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1276
    const/4 v0, -0x1

    .line 1280
    .local v0, iconLevel:I
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1282
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1284
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const v3, 0x10802e9

    iput v3, v2, Lcom/android/server/status/IconData;->iconId:I

    .line 1288
    :goto_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1342
    :goto_1
    return-void

    .line 1286
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const v3, 0x10802ea

    iput v3, v2, Lcom/android/server/status/IconData;->iconId:I

    goto :goto_0

    .line 1292
    :cond_1
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1294
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 1312
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1313
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_r:[I

    .line 1333
    .local v1, iconList:[I
    :goto_2
    const/4 v2, 0x4

    if-le v0, v2, :cond_6

    .line 1334
    const/4 v0, 0x4

    .line 1340
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    aget v3, v1, v0

    iput v3, v2, Lcom/android/server/status/IconData;->iconId:I

    .line 1341
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1315
    .end local v1           #iconList:[I
    :cond_3
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .restart local v1       #iconList:[I
    goto :goto_2

    .line 1318
    .end local v1           #iconList:[I
    :cond_4
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .line 1323
    .restart local v1       #iconList:[I
    iget v2, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isEvdo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1324
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->getEvdoLevel()I

    move-result v0

    goto :goto_2

    .line 1329
    :cond_5
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->getCdmaLevel()I

    move-result v0

    goto :goto_2

    .line 1336
    :cond_6
    if-gez v0, :cond_2

    .line 1337
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1225
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1246
    :goto_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    .line 1247
    return-void

    .line 1229
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1230
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1232
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1233
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1235
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1237
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1238
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1241
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1244
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 732
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 733
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 734
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 737
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 1671
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1672
    .local v0, action:Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1676
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 1679
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1680
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1686
    :goto_0
    return-void

    .line 1684
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 1493
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1494
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1495
    .local v2, ringerMode:I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_3

    :cond_0
    move v3, v6

    .line 1497
    .local v3, visible:Z
    :goto_0
    if-ne v2, v6, :cond_4

    const v4, 0x10802d4

    move v1, v4

    .line 1501
    .local v1, iconId:I
    :goto_1
    if-eqz v3, :cond_1

    .line 1502
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    iput v1, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1503
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1505
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_2

    .line 1506
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1507
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeVisible:Z

    .line 1509
    :cond_2
    return-void

    .line 1495
    .end local v1           #iconId:I
    .end local v3           #visible:Z
    :cond_3
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 1497
    .restart local v3       #visible:Z
    :cond_4
    const v4, 0x10802d3

    move v1, v4

    goto :goto_1
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1554
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1557
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move v1, v9

    .line 1560
    .local v1, enabled:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1562
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1613
    .end local v1           #enabled:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v8

    .line 1557
    goto :goto_0

    .line 1565
    :cond_2
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1566
    const-string v6, "connected"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1568
    .restart local v1       #enabled:Z
    if-nez v1, :cond_0

    .line 1569
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 1571
    .end local v1           #enabled:Z
    :cond_3
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1573
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1577
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1578
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1579
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v6, v7, :cond_4

    .line 1580
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v2, v6, v8

    .line 1586
    .local v2, iconId:I
    :goto_2
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1597
    :goto_3
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    iput v2, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 1598
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1582
    .end local v2           #iconId:I
    :cond_4
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v2, v6, v7

    .restart local v2       #iconId:I
    goto :goto_2

    .line 1589
    .end local v2           #iconId:I
    :cond_5
    iput v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1590
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1591
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v2, v6, v8

    .line 1594
    .restart local v2       #iconId:I
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_3

    .line 1599
    .end local v2           #iconId:I
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1600
    const-string v6, "newRssi"

    const/16 v7, -0xc8

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1601
    .local v4, newRssi:I
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    array-length v6, v6

    invoke-static {v4, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    .line 1603
    .local v5, newSignalLevel:I
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v5, v6, :cond_0

    .line 1604
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1605
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v6, :cond_7

    .line 1606
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    sget-object v7, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v7, v7, v5

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 1610
    :goto_4
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_1

    .line 1608
    :cond_7
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    const v7, 0x10802f8

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    goto :goto_4
.end method
