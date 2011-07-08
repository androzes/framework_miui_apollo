.class public Lcom/android/internal/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsLocationProvider$GpsConfig;,
        Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;,
        Lcom/android/internal/location/GpsLocationProvider$HybridGps;,
        Lcom/android/internal/location/GpsLocationProvider$Listener;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_ARRAY_SIZE:I = 0x8

.field private static final ACCURACY_INDEX:I = 0x2

.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final ALTITUDE_INDEX:I = 0x2

.field private static final BEARING_INDEX:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static HYBRID_GPS_ENABLE:I = 0x0

.field private static final HYBRID_GPS_NATIVE_ENABLE:Z = true

.field private static final HYPOS_LPP_CHANGED_FULLPOWER:I = 0x3

.field private static final HYPOS_LPP_CHANGED_LOWPOWER:I = 0x1

.field private static final HYPOS_LPP_INVALID:I = -0x1

.field private static final HYPOS_LPP_OPERATION_MODE_MAX:I = 0x4

.field private static final HYPOS_LPP_RETAINED_FULLPOWER:I = 0x2

.field private static final HYPOS_LPP_RETAINED_LOWPOWER:I = 0x0

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LATITUDE_INDEX:I = 0x0

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LONGITUDE_INDEX:I = 0x1

.field private static final MAGNETICFIELD_ARRAY_SIZE:I = 0x8

.field private static final MAX_NTP_SYSTEM_TIME_OFFSET:J = 0x493e0L

.field private static final MAX_SVS:I = 0x20

.field private static final MIN_FIX_COUNT:I = 0xa

.field private static final NO_FIX_TIMEOUT:I = 0x3c

.field private static final NTP_INTERVAL:J = 0xdbba00L

.field private static final ORIENTATION_ARRAY_SIZE:I = 0x4

.field private static final PDR_LOGGING:Ljava/lang/String; = "GpsLogging"

.field private static final PDR_LOGGING_TEMP:Ljava/lang/String; = "DynamicAccuracyValue"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0xaL

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SEC_TEST_MODE_ENABLE:Ljava/lang/String; = "TestModeStarted"

.field private static final SEC_TEST_MODE_SERVER_URL:Ljava/lang/String; = "www.spirent-lcs.com"

.field private static final SPEED_INDEX:I = 0x1

.field private static final SUPL_HASH_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionLock:Ljava/lang/Object;

.field private mAGpsDataConnectionState:I

.field private mAcc:[[F

.field private mAccReady:Z

.field private mAccuracyMagneticField:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAttitude:[[F

.field private mAttitudeReady:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDeliverLocation:[D

.field private mDeliverLocationExt:[F

.field private mDownloadXtraDataPending:Z

.field private volatile mEnabled:Z

.field private mEngineOn:Z

.field private mEventThread:Ljava/lang/Thread;

.field private mFirstWifiConnected:Z

.field private mFixCount:I

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Z

.field private mLPPCurrentMode:I

.field private mLPPIsInStop:Z

.field private mLPPPreviousMode:I

.field private mLPPTest_PositionMode:I

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mMag:[[F

.field private mMagReady:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private mNtpServer:Ljava/lang/String;

.field private mPDRIsValid:Z

.field private mPreviousSamplingTime:J

.field private mProperties:Ljava/util/Properties;

.field private mRequestLocation:[D

.field private mRequestLocationExt:[F

.field private mRequestValid:[I

.field private mSamplingTime:[J

.field private mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

.field private mSensorAccelerometerIndex:I

.field private mSensorMagneticFieldIndex:I

.field private mSensorOrientationCnt:I

.field private mSensorOrientationIndex:I

.field private mSnrs:[F

.field private mSnrsPDR:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSvAzimuths:[F

.field private mSvAzimuthsPDR:[F

.field private mSvCount:I

.field private mSvCountSatInUse:I

.field private mSvCountUsePDR:I

.field private mSvCountViewPDR:I

.field private mSvElevations:[F

.field private mSvElevationsPDR:[F

.field private mSvMasks:[I

.field private mSvMasksPDR:[I

.field private mSvs:[I

.field private mSvsPDR:[I

.field private mSystemTime:[J

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private mTimeStampLastReportedLocation:J

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    .line 2668
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 12
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 234
    iput v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 256
    iput-boolean v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 257
    iput-boolean v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 260
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 263
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    .line 266
    iput v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    .line 272
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 275
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    .line 277
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 291
    new-instance v5, Landroid/location/Location;

    const-string v6, "gps"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 292
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 300
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 304
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionLock:Ljava/lang/Object;

    .line 322
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 339
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    .line 353
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mFirstWifiConnected:Z

    .line 355
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$1;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$1;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 406
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$2;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$2;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 2102
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$3;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$3;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2659
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    .line 2660
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    .line 2661
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    .line 2662
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2663
    new-array v5, v10, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    .line 2666
    const/16 v5, 0x78

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 2737
    filled-new-array {v11, v10}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mAcc:[[F

    .line 2750
    const/4 v5, 0x4

    filled-new-array {v11, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mMag:[[F

    .line 2763
    const/4 v5, 0x4

    const/4 v6, 0x4

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mAttitude:[[F

    .line 2767
    new-array v5, v11, [J

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSystemTime:[J

    .line 2771
    new-array v5, v11, [J

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSamplingTime:[J

    .line 2776
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mPreviousSamplingTime:J

    .line 2784
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mAttitudeReady:Z

    .line 2788
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mAccReady:Z

    .line 2792
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mMagReady:Z

    .line 2797
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorAccelerometerIndex:I

    .line 2802
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I

    .line 2807
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationIndex:I

    .line 2812
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mAccuracyMagneticField:I

    .line 2817
    iput v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationCnt:I

    .line 2827
    new-array v5, v10, [D

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mDeliverLocation:[D

    .line 2833
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mDeliverLocationExt:[F

    .line 2839
    new-array v5, v10, [D

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mRequestLocation:[D

    .line 2845
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mRequestLocationExt:[F

    .line 2849
    new-array v5, v9, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mRequestValid:[I

    .line 2851
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mPDRIsValid:Z

    .line 2856
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J

    .line 2860
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvsPDR:[I

    .line 2861
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrsPDR:[F

    .line 2862
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevationsPDR:[F

    .line 2863
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuthsPDR:[F

    .line 2864
    new-array v5, v10, [I

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasksPDR:[I

    .line 2877
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPPreviousMode:I

    .line 2878
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPCurrentMode:I

    .line 2880
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    .line 513
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 514
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 515
    new-instance v5, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v5, p1, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 517
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 520
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 521
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "GpsLocationProvider"

    invoke-virtual {v3, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 523
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 524
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 525
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 527
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 530
    const-string v5, "batteryinfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 532
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 534
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 536
    .local v4, stream:Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 537
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 538
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "NTP_SERVER"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    .line 540
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 541
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, portString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 544
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "C2K_HOST"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 551
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "C2K_PORT"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 554
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 564
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    new-instance v5, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v5, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 565
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 568
    :goto_2
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 574
    return-void

    .line 545
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #portString:Ljava/lang/String;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 546
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to parse SUPL_PORT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 559
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 560
    .local v0, e:Ljava/io/IOException;
    const-string v5, "GpsLocationProvider"

    const-string v6, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 555
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #portString:Ljava/lang/String;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 556
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to parse C2K_PORT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 570
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #portString:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 571
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/location/GpsLocationProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mPreviousSamplingTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/internal/location/GpsLocationProvider;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mPreviousSamplingTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAttitudeReady:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAttitudeReady:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAccReady:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAccReady:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mMagReady:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mMagReady:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorAccelerometerIndex:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorAccelerometerIndex:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorAccelerometerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorAccelerometerIndex:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I

    return p1
.end method

.method static synthetic access$2508(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorMagneticFieldIndex:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationIndex:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationIndex:I

    return p1
.end method

.method static synthetic access$2608(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAccuracyMagneticField:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAccuracyMagneticField:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationCnt:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationCnt:I

    return p1
.end method

.method static synthetic access$2808(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSensorOrientationCnt:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_initialize(I)V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/internal/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mPDRIsValid:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/location/GpsLocationProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/internal/location/GpsLocationProvider;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/internal/location/GpsLocationProvider;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasksPDR:[I

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountUsePDR:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_finalize()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/location/GpsLocationProvider;)[D
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mDeliverLocation:[D

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/location/GpsLocationProvider;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mDeliverLocationExt:[F

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountSatInUse:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/location/GpsLocationProvider;[D[F[IJII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_deliver_gps_data([D[F[IJII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/location/GpsLocationProvider;)Lcom/android/internal/location/GpsLocationProvider$HybridGps;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_deliver_rotation_data(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/internal/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_support_inverse_portrait_mode(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/location/GpsLocationProvider;)[D
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mRequestLocation:[D

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/location/GpsLocationProvider;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mRequestLocationExt:[F

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/location/GpsLocationProvider;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mRequestValid:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/location/GpsLocationProvider;[D[F[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_request_gps_data([D[F[I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPCurrentMode:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPCurrentMode:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/internal/location/GpsLocationProvider;)[[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAcc:[[F

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/internal/location/GpsLocationProvider;)[[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mMag:[[F

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/internal/location/GpsLocationProvider;)[[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAttitude:[[F

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/internal/location/GpsLocationProvider;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSystemTime:[J

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/location/GpsLocationProvider;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSamplingTime:[J

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/location/GpsLocationProvider;[[F[[F[[F[J[J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/internal/location/GpsLocationProvider;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    return-wide v0
.end method

.method static synthetic access$5802(Lcom/android/internal/location/GpsLocationProvider;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPPreviousMode:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPPreviousMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/android/internal/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_stop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/internal/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    return-void
.end method

.method static synthetic access$6402(Lcom/android/internal/location/GpsLocationProvider;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    return p1
.end method

.method static synthetic access$6502(Lcom/android/internal/location/GpsLocationProvider;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    return-wide p1
.end method

.method static synthetic access$6600(Lcom/android/internal/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPTest_PositionMode:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/internal/location/GpsLocationProvider;IZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_hybrid_gps_deliver_sv_status()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/location/GpsLocationProvider;IDDDFFFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/location/GpsLocationProvider;->reportLocation(IDDDFFFJ)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/internal/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_wait_for_event()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/internal/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/internal/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/internal/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/internal/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/internal/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/internal/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$8502(Lcom/android/internal/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/internal/location/GpsLocationProvider;ILjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const-string v10, "GpsLocationProvider"

    .line 443
    const-string v8, "GpsLocationProvider"

    const-string v8, "checkSmsSuplInit"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 445
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 446
    const-string v8, "GpsLocationProvider"

    const-string v8, "checkSmsSuplInit() get sms"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v8, "pdus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 448
    .local v7, pdus:[Ljava/lang/Object;
    array-length v8, v7

    new-array v4, v8, [Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 450
    .local v4, msgs:[Lcom/android/internal/telephony/gsm/SmsMessage;
    const-string v8, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSmsSuplInit() msgs.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v4

    if-ge v3, v8, :cond_0

    .line 453
    aget-object v8, v7, v3

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v6, v0

    .line 454
    .local v6, pdu:[B
    aget-object v8, v7, v3

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v3

    .line 455
    aget-object v8, v4, v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v5

    .line 457
    .local v5, payload:[B
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    iget-object v8, v8, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/internal/location/GpsLocationProvider;->getHmac([B[B)[B

    move-result-object v2

    .line 459
    .local v2, hash:[B
    const-string v8, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->getByteArrayAsString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v8, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hash : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->getByteArrayAsString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-direct {p0, v5, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_ni_message([B[B)V

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    .end local v2           #hash:[B
    .end local v3           #i:I
    .end local v4           #msgs:[Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v5           #payload:[B
    .end local v6           #pdu:[B
    .end local v7           #pdus:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const-string v5, "GpsLocationProvider"

    .line 468
    const-string v3, "GpsLocationProvider"

    const-string v3, "checkWapSuplInit"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    .line 470
    .local v2, payload:[B
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    iget-object v3, v3, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/location/GpsLocationProvider;->getHmac([B[B)[B

    move-result-object v1

    .line 471
    .local v1, hash:[B
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WpaPush : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->getByteArrayAsString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v3, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->getByteArrayAsString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0, v2, v1}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_ni_message([B[B)V

    .line 474
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    .line 1123
    if-nez p1, :cond_1

    .line 1124
    const v0, 0xffff

    .line 1142
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1143
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1144
    const/4 v1, 0x1

    .line 1147
    :goto_1
    return v1

    .line 1126
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 1127
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1128
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1129
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1130
    :cond_4
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1131
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1132
    :cond_6
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1133
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1134
    :cond_8
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1135
    :cond_9
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1136
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1137
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1138
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1139
    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1147
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private static getByteArrayAsString([B)Ljava/lang/String;
    .locals 7
    .parameter "byteArray"

    .prologue
    .line 498
    const-string v0, ""

    .line 501
    .local v0, byteAsString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p0, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_0
    return-object v0
.end method

.method private static getHmac([B[B)[B
    .locals 8
    .parameter "key"
    .parameter "message"

    .prologue
    const-string v5, "HmacSHA1"

    .line 477
    const/4 v1, 0x0

    .line 480
    .local v1, hash:[B
    :try_start_0
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 481
    .local v3, instance:Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA1"

    invoke-direct {v2, p0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 482
    .local v2, hashKey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 483
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 485
    .local v4, tempHash:[B
    const/16 v5, 0x8

    new-array v1, v5, [B

    .line 487
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    .end local v2           #hashKey:Ljavax/crypto/spec/SecretKeySpec;
    .end local v3           #instance:Ljavax/crypto/Mac;
    .end local v4           #tempHash:[B
    :goto_0
    return-object v1

    .line 489
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 490
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 492
    .local v0, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleAddListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 1016
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1017
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1019
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    monitor-exit v1

    .line 1031
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1025
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1030
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1026
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    const-string v2, "GpsLocationProvider"

    .line 897
    const-string v1, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-nez v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 901
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    .line 902
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_disable()V

    .line 905
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    .line 915
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_cleanup()V

    .line 919
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_3

    .line 920
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->reportStatus(I)V

    .line 922
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/location/GpsLocationProvider;->reportStatus(I)V

    goto :goto_0

    .line 908
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 909
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GpsLocationProvider"

    const-string v1, "InterruptedException when joining mEventThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDownloadXtraData()V
    .locals 6

    .prologue
    const/4 v4, 0x6

    .line 721
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-nez v2, :cond_0

    .line 723
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 741
    :goto_0
    return-void

    .line 726
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 729
    new-instance v1, Lcom/android/internal/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 730
    .local v1, xtraDownloader:Lcom/android/internal/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/internal/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 731
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 733
    const-string v2, "GpsLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    goto :goto_0

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 739
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleEnable()V
    .locals 3

    .prologue
    const-string v2, "GpsLocationProvider"

    .line 853
    const-string v0, "GpsLocationProvider"

    const-string v0, "handleEnable"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    .line 858
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mOperationMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mOperationMode:Ljava/lang/String;

    const-string v1, "STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 860
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpPort:I

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerPort:I

    .line 863
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_4

    .line 864
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 865
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 868
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 872
    :cond_3
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$GpsEventThread;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    .line 873
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 875
    new-instance v0, Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    goto :goto_0

    .line 878
    :cond_4
    const-string v0, "GpsLocationProvider"

    const-string v0, "Failed to enable location provider"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEnableLocationTracking(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 961
    if-eqz p1, :cond_0

    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 963
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 964
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->startNavigating()V

    .line 970
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 967
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 968
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_0
.end method

.method private handleInjectNtpTime()V
    .locals 19

    .prologue
    .line 676
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    move v2, v0

    if-nez v2, :cond_0

    .line 678
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 718
    :goto_0
    return-void

    .line 681
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 683
    new-instance v8, Landroid/net/SntpClient;

    invoke-direct {v8}, Landroid/net/SntpClient;-><init>()V

    .line 686
    .local v8, client:Landroid/net/SntpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mNtpServer:Ljava/lang/String;

    move-object v2, v0

    const/16 v3, 0x2710

    invoke-virtual {v8, v2, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 687
    invoke-virtual {v8}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    .line 688
    .local v3, time:J
    invoke-virtual {v8}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v5

    .line 689
    .local v5, timeReference:J
    invoke-virtual {v8}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v15

    const-wide/16 v17, 0x2

    div-long v15, v15, v17

    long-to-int v7, v15

    .line 690
    .local v7, certainty:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 691
    .local v11, now:J
    sub-long v13, v3, v11

    .line 693
    .local v13, systemTimeOffset:J
    const-string v2, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #client:Landroid/net/SntpClient;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NTP server returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") reference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " certainty: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " system time offset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-gez v2, :cond_1

    .line 701
    neg-long v13, v13

    .line 703
    :cond_1
    const-wide/32 v15, 0x493e0

    cmp-long v2, v13, v15

    if-gez v2, :cond_2

    move-object/from16 v2, p0

    .line 704
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 709
    .end local v3           #time:J
    :goto_1
    const-wide/32 v9, 0xdbba00

    .line 716
    .end local v5           #timeReference:J
    .end local v7           #certainty:I
    .end local v11           #now:J
    .end local v13           #systemTimeOffset:J
    .local v9, delay:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 706
    .end local v9           #delay:J
    .restart local v3       #time:J
    .restart local v5       #timeReference:J
    .restart local v7       #certainty:I
    .restart local v11       #now:J
    .restart local v13       #systemTimeOffset:J
    :cond_2
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #time:J
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NTP time differs from system time by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms.  Ignoring."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 711
    .end local v5           #timeReference:J
    .end local v7           #certainty:I
    .end local v11           #now:J
    .end local v13           #systemTimeOffset:J
    .restart local v8       #client:Landroid/net/SntpClient;
    :cond_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "requestTime failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-wide/32 v9, 0x493e0

    .restart local v9       #delay:J
    goto :goto_2
.end method

.method private handleRemoveListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    const-string v1, "GpsLocationProvider"

    .line 1040
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1041
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 1043
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    monitor-exit v1

    .line 1055
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1047
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1049
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1054
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1050
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1051
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 759
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 6
    .parameter "state"
    .parameter "info"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v5, "WIFI"

    const-string v3, "GpsLocationProvider"

    .line 629
    if-ne p1, v2, :cond_0

    move v1, v4

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 632
    const-string v1, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v2, :cond_3

    const-string v2, "available"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFirstWifiConnected:Z

    if-nez v1, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-ne v1, v4, :cond_4

    .line 636
    const-string v1, "GpsLocationProvider"

    const-string v1, "first WIFI connected"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput-boolean v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mFirstWifiConnected:Z

    .line 643
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-ne v2, v4, :cond_2

    .line 646
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, apnName:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 648
    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 649
    const-string v2, "GpsLocationProvider"

    const-string v3, "call native_agps_data_conn_open"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0, v0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 651
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 660
    .end local v0           #apnName:Ljava/lang/String;
    :cond_2
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    return-void

    .line 632
    :cond_3
    const-string/jumbo v2, "unavailable"

    goto :goto_0

    .line 638
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mFirstWifiConnected:Z

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 639
    const-string v1, "GpsLocationProvider"

    const-string v1, "WIFI connected"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_update_wifi_connected_status()V

    goto :goto_1

    .line 653
    .restart local v0       #apnName:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, "GpsLocationProvider"

    const-string v3, "call native_agps_data_conn_failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 655
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 656
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_2

    .line 660
    .end local v0           #apnName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private hibernate()V
    .locals 8

    .prologue
    .line 1233
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->stopNavigating()V

    .line 1234
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    .line 1235
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1236
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1238
    .local v0, now:J
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1240
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 578
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 579
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v2, "sms"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 593
    const-string v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 596
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    :try_start_0
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 603
    return-void

    .line 599
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 600
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Malmofer SUPL init mime type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_agps_ni_message([B[B)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_agps_set_ref_location_mac(I[B)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_disable()V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_hybrid_gps_deliver_gps_data([D[F[IJII)V
.end method

.method private native native_hybrid_gps_deliver_rotation_data(I)V
.end method

.method private native native_hybrid_gps_deliver_sensors_data([[F[[F[[F[J[J)I
.end method

.method private native native_hybrid_gps_deliver_sv_status()V
.end method

.method private native native_hybrid_gps_finalize()V
.end method

.method private native native_hybrid_gps_initialize(I)V
.end method

.method private native native_hybrid_gps_request_gps_data([D[F[I)V
.end method

.method private native native_hybrid_gps_support_inverse_portrait_mode(I)V
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea(I[BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_fix_frequency(I)V
.end method

.method private native native_start(IZI)Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_gps_parameters()V
.end method

.method private native native_update_wifi_connected_status()V
.end method

.method private native native_wait_for_event()V
.end method

.method private reportAGpsStatus(II)V
    .locals 6
    .parameter "type"
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const-string v1, "enableSUPL"

    .line 1598
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1599
    packed-switch p2, :pswitch_data_0

    .line 1635
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v1

    .line 1636
    return-void

    .line 1601
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string v4, "enableSUPL"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1603
    .local v0, result:I
    if-nez v0, :cond_2

    .line 1604
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1605
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 1606
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 1635
    .end local v0           #result:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1608
    .restart local v0       #result:I
    :cond_1
    :try_start_1
    const-string v2, "GpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .line 1611
    :cond_2
    if-ne v0, v5, :cond_3

    .line 1612
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 1614
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .line 1618
    .end local v0           #result:I
    :pswitch_2
    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_0

    .line 1619
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string v4, "enableSUPL"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1621
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1622
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAGpsDataConnectionState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 23
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    move v3, v0

    if-nez v3, :cond_1

    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 1253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    move-wide v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    move-wide v5, v0

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 1254
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTFF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v3, v0

    monitor-enter v3

    .line 1258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1259
    .local v22, size:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    .local v21, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    move v5, v0

    invoke-interface {v4, v5}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1259
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .line 1264
    .local v17, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "GpsLocationProvider"

    const-string v5, "RemoteException in stopNavigating"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 1270
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v21           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    .end local v19           #i:I
    .end local v22           #size:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_pdr_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1276
    .local v16, CurrentPDRSetting:I
    sget v3, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_2

    .line 1277
    const/4 v3, 0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_9

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$800(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 1282
    :goto_2
    sput v16, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    .line 1283
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportLocation PDR setting has been changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_2
    sget v3, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-wide/from16 v14, p11

    invoke-static/range {v3 .. v15}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1000(Lcom/android/internal/location/GpsLocationProvider$HybridGps;IDDDFFFJ)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1100(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1200(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1300(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)D

    move-result-wide p2

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1400(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)D

    move-result-wide p4

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1500(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)D

    move-result-wide p6

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1600(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)F

    move-result p8

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1700(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)F

    move-result p9

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1800(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)F

    move-result v18

    .line 1303
    .local v18, hybridGpsAccuracy:F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide v3, v0

    const-wide v5, 0x4072c00000000000L

    cmpl-double v3, v3, v5

    if-lez v3, :cond_a

    .line 1304
    const/16 p1, 0x0

    .line 1305
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPDRIsValid:Z

    .line 1307
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportLocation LOCATION_INVALID PDR\'s accuracy is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    .end local v18           #hybridGpsAccuracy:F
    :cond_3
    :goto_3
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 1338
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v3, v0

    monitor-enter v3

    .line 1339
    :try_start_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 1340
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p11

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 1345
    :cond_5
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 1350
    :goto_4
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 1355
    :goto_5
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_f

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 1360
    :goto_6
    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_10

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1367
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1371
    :goto_8
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    move v3, v0

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    .line 1376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    move v3, v0

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_6

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1381
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    move v3, v0

    if-eqz v3, :cond_7

    .line 1383
    const-string v3, "GpsLocationProvider"

    const-string v4, "send an intent to notify that the GPS is receiving fixes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.location.GPS_FIX_CHANGE"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v20, intent:Landroid/content/Intent;
    const-string v3, "enabled"

    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1387
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1391
    .end local v20           #intent:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    move v3, v0

    add-int/lit8 v4, v3, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    move v3, v0

    const/16 v4, 0x14

    if-le v3, v4, :cond_8

    .line 1392
    const-string v3, "GpsLocationProvider"

    const-string v4, "exceeded MIN_FIX_COUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider;->hibernate()V

    .line 1395
    :cond_8
    return-void

    .line 1270
    .end local v16           #CurrentPDRSetting:I
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 1280
    .restart local v16       #CurrentPDRSetting:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    goto/16 :goto_2

    .line 1312
    .restart local v18       #hybridGpsAccuracy:F
    :cond_a
    if-nez p1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    move v3, v0

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1313
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 1315
    const-string v3, "GpsLocationProvider"

    const-string v4, "reportLocation Set mTTFF = 1 to be sent an intent GPS_FIX_CHANGE_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_b
    const/16 p1, 0x1f

    .line 1319
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPDRIsValid:Z

    .line 1322
    cmpl-float v3, v18, p10

    if-eqz v3, :cond_3

    .line 1323
    const/high16 v3, 0x41f0

    add-float p10, v18, v3

    goto/16 :goto_3

    .line 1328
    .end local v18           #hybridGpsAccuracy:F
    :cond_c
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/GpsLocationProvider;->mPDRIsValid:Z

    .line 1330
    const-string v3, "GpsLocationProvider"

    const-string v4, "reportLocation Bypass raw GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1348
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_4

    .line 1371
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 1353
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_5

    .line 1358
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_6

    .line 1363
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_7

    .line 1368
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 1369
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v4, "GpsLocationProvider"

    const-string v5, "RemoteException calling reportLocation"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_8
.end method

.method private reportNmea(IJ)V
    .locals 9
    .parameter "index"
    .parameter "timestamp"

    .prologue
    .line 1642
    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1643
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1644
    .local v5, size:I
    if-lez v5, :cond_0

    .line 1646
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, p1, v7, v8}, Lcom/android/internal/location/GpsLocationProvider;->native_read_nmea(I[BI)I

    move-result v2

    .line 1647
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1649
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1650
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    .local v3, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v7, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7, p2, p3, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1649
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1653
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 1654
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1657
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1661
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_0
    monitor-exit v6

    .line 1662
    return-void

    .line 1661
    .end local v5           #size:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method private reportStatus(I)V
    .locals 12
    .parameter "status"

    .prologue
    const/4 v11, 0x1

    const-string v7, "RemoteException in reportStatus"

    const-string v7, "GpsLocationProvider"

    .line 1403
    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1404
    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 1406
    .local v6, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    .line 1424
    :goto_0
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1425
    const-string v8, "GpsLocationProvider"

    const-string v9, "Acquiring wakelock"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1429
    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eq v6, v8, :cond_6

    .line 1430
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1431
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 1432
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    .local v3, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_2

    .line 1435
    iget-object v8, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1431
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1408
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_0
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    .line 1409
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1484
    .end local v6           #wasNavigating:Z
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1412
    .restart local v6       #wasNavigating:Z
    :pswitch_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1415
    :pswitch_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1418
    :pswitch_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    .line 1419
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1437
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_2
    :try_start_4
    iget-object v8, v3, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1439
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 1440
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v8, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1443
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1449
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_3
    :try_start_6
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int v1, v8, v11

    :goto_3
    if-ltz v1, :cond_5

    .line 1450
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1451
    .local v5, uid:I
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_4

    .line 1452
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 1449
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1454
    :cond_4
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 1457
    .end local v5           #uid:I
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 1458
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v8, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v8, "GpsLocationProvider"

    const-string v9, "send an intent to notify that the GPS has been enabled or disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    iget-boolean v9, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1465
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1469
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_6
    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mEngineOn:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1474
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Releasing wakelock. Remaining Listener Count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", LPPMode("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPPreviousMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPCurrentMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), LPPIsInStop : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    sget v8, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    if-ne v8, v11, :cond_8

    iget-boolean v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    if-ne v8, v11, :cond_8

    .line 1479
    const-string v8, "GpsLocationProvider"

    const-string v9, "LPP : Do NOT release WakeLock"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_7
    :goto_5
    monitor-exit v7

    .line 1485
    return-void

    .line 1481
    :cond_8
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 1406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 15

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 1494
    .local v1, svCount:I
    sget v0, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1495
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$1900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 1497
    const/4 v14, 0x0

    .line 1498
    .local v14, svCountUse:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v1, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    aget v3, v3, v10

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    shl-int/2addr v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 1501
    add-int/lit8 v14, v14, 0x1

    .line 1498
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1506
    :cond_1
    iput v14, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountSatInUse:I

    .line 1509
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasksPDR:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-le v14, v0, :cond_3

    .line 1510
    :cond_2
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvsPDR:[I

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1511
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrsPDR:[F

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1512
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevationsPDR:[F

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1513
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuthsPDR:[F

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasksPDR:[I

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1515
    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountViewPDR:I

    .line 1516
    iput v14, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountUsePDR:I

    .line 1518
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSvStatus Keep Valid SatInfo - SatInView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountViewPDR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), SatInUse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountUsePDR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mPDRIsValid:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 1525
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasksPDR:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-nez v0, :cond_4

    .line 1527
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSvStatus Bypass SatInfo - SatInView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), SatInUse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    .end local v10           #i:I
    .end local v14           #svCountUse:I
    :cond_4
    :goto_1
    iget-object v11, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1550
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1551
    .local v13, size:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v13, :cond_6

    .line 1552
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    .local v12, listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v0, v12, Lcom/android/internal/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    invoke-interface/range {v0 .. v8}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1551
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1542
    .end local v12           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .end local v13           #size:I
    .restart local v14       #svCountUse:I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvMasksPDR:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 1543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCountUsePDR:I

    .line 1545
    const-string v0, "GpsLocationProvider"

    const-string v2, "reportSvStatus Clear satellite information kept for PDR"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1557
    .end local v14           #svCountUse:I
    .restart local v12       #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    .restart local v13       #size:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1558
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "GpsLocationProvider"

    const-string v2, "RemoteException in reportSvInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1561
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 1564
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v12           #listener:Lcom/android/internal/location/GpsLocationProvider$Listener;
    :cond_6
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1581
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1583
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .end local v1           #svCount:I
    iget-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 1586
    const-string v0, "GpsLocationProvider"

    const-string v1, "send an intent to notify that the GPS is no longer receiving fixes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "enabled"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1589
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1590
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1592
    .end local v11           #intent:Landroid/content/Intent;
    :cond_7
    return-void

    .line 1564
    .end local v10           #i:I
    .end local v13           #size:I
    .restart local v1       #svCount:I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private requestRefLocation(I)V
    .locals 13
    .parameter "flags"

    .prologue
    const/4 v1, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x3

    const-string v9, "GpsLocationProvider"

    .line 2054
    const/4 v2, 0x0

    .line 2055
    .local v2, mcc:I
    const/4 v3, 0x0

    .line 2056
    .local v3, mnc:I
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2057
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 2058
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    .line 2059
    .local v7, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRefLocation: gsm_cell = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v11, :cond_5

    .line 2061
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2063
    :try_start_0
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2069
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2074
    :goto_1
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRefLocation: mcc = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mnc = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_0
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-eq v0, v10, :cond_1

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 2081
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2098
    .end local v7           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 2064
    .restart local v7       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2065
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse substring(0,3): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2070
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 2071
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v0, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse substring(3): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2083
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-eq v0, v11, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 2085
    :cond_3
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    move v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    goto :goto_2

    .line 2088
    :cond_4
    const-string v0, "GpsLocationProvider"

    const-string v0, "requestRefLocation: Unknown network"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2092
    :cond_5
    const-string v0, "GpsLocationProvider"

    const-string v0, "Error getting cell location info."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2096
    .end local v7           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    const-string v0, "GpsLocationProvider"

    const-string v0, "CDMA not supported."

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private startNavigating()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "GpsLocationProvider"

    .line 1151
    iget-boolean v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-nez v2, :cond_0

    .line 1152
    const-string v2, "GpsLocationProvider"

    const-string/jumbo v2, "startNavigating"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iput-boolean v5, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 1162
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "TestModeStarted"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1163
    .local v0, isTestMode:I
    const-string v2, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNavigating : isTestMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1166
    const/4 v1, 0x1

    .line 1171
    .local v1, positionMode:I
    :goto_0
    const-string v2, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNavigating : positionMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {p0, v1, v4, v5}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1173
    iput-boolean v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 1174
    const-string v2, "GpsLocationProvider"

    const-string v2, "native_start failed in startNavigating()"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .end local v0           #isTestMode:I
    .end local v1           #positionMode:I
    :cond_0
    :goto_1
    return-void

    .line 1168
    .restart local v0       #isTestMode:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #positionMode:I
    goto :goto_0

    .line 1180
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    .line 1181
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPPreviousMode:I

    .line 1182
    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPTest_PositionMode:I

    .line 1184
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_pdr_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    .line 1185
    sget v2, Lcom/android/internal/location/GpsLocationProvider;->HYBRID_GPS_ENABLE:I

    if-ne v2, v5, :cond_3

    .line 1186
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$800(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 1191
    :cond_3
    invoke-direct {p0, v5, v4}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1192
    iput v4, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixCount:I

    .line 1193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1196
    iget v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    .line 1197
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private stopNavigating()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v5, "GpsLocationProvider"

    .line 1204
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v0, "stopNavigating"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1206
    iput-boolean v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStarted:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_stop()Z

    .line 1208
    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mTTFF:I

    .line 1209
    iput-wide v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mLastFixTime:J

    .line 1210
    iput v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationFlags:I

    .line 1213
    invoke-direct {p0, v2, v1}, Lcom/android/internal/location/GpsLocationProvider;->updateStatus(II)V

    .line 1218
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPIsInStop:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    const-string v0, "GpsLocationProvider"

    const-string v0, "Releasing wakelock"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1226
    :cond_1
    iput-wide v3, p0, Lcom/android/internal/location/GpsLocationProvider;->mTimeStampLastReportedLocation:J

    .line 1227
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHybridGps:Lcom/android/internal/location/GpsLocationProvider$HybridGps;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider$HybridGps;->access$900(Lcom/android/internal/location/GpsLocationProvider$HybridGps;)V

    .line 1228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLPPPreviousMode:I

    .line 1229
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 939
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 940
    :cond_0
    iput p1, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    .line 941
    iput p2, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    .line 942
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 945
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1668
    const-string v0, "GpsLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1670
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1671
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1011
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1012
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1013
    return-void
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 889
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 891
    .local v0, m:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 892
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 893
    monitor-exit v1

    .line 894
    return-void

    .line 893
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 845
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, m:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 848
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    monitor-exit v1

    .line 850
    return-void

    .line 849
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 953
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 954
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 956
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 957
    monitor-exit v1

    .line 958
    return-void

    .line 955
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 957
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 932
    if-eqz p1, :cond_0

    .line 933
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    :cond_0
    iget v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 948
    iget-wide v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1035
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1036
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1037
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2138
    const-string v8, "GpsLocationProvider"

    const-string v9, "reportNiNotification: entered"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notificationId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", niType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", notifyFlags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", defaultResponse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestorId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", requestorIdEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", textEncoding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2152
    .local v7, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2153
    iput p2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2154
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2155
    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2156
    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2157
    iput p4, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2158
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2159
    move-object/from16 v0, p6

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2160
    move-object/from16 v0, p7

    move-object v1, v7

    iput-object v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2161
    move/from16 v0, p8

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2162
    move/from16 v0, p9

    move-object v1, v7

    iput v0, v1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2166
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2168
    .local v2, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 2169
    :cond_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 2172
    .local v5, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v8, Ljava/io/StringBufferInputStream;

    move-object v0, v8

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    :goto_3
    invoke-virtual {v5}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1
    .end local p2
    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2181
    .local v4, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2154
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5           #extraProp:Ljava/util/Properties;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p1
    .restart local p2
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 2155
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 2156
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 2174
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v5       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 2176
    .local v3, e:Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2184
    .end local v3           #e:Ljava/io/IOException;
    .end local p1
    .end local p2
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_4
    iput-object v2, v7, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2186
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8, v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2187
    return-void
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1059
    const-string v0, "delete_aiding_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-direct {p0, p2}, Lcom/android/internal/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v0

    .line 1117
    :goto_0
    return v0

    .line 1062
    :cond_0
    const-string v0, "force_time_injection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1064
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    .line 1065
    goto :goto_0

    .line 1067
    :cond_1
    const-string v0, "force_xtra_injection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->xtraDownloadRequest()V

    move v0, v2

    .line 1070
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1072
    goto :goto_0

    .line 1076
    :cond_3
    const-string v0, "set_basic_parameters"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    invoke-virtual {v0, p2}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setBasicParameters(Landroid/os/Bundle;)V

    .line 1079
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_update_gps_parameters()V

    move v0, v2

    .line 1080
    goto :goto_0

    .line 1083
    :cond_4
    const-string v0, "set_fix_parameters"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    invoke-virtual {v0, p2}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setFixParameters(Landroid/os/Bundle;)V

    move v0, v2

    .line 1085
    goto :goto_0

    .line 1088
    :cond_5
    const-string v0, "set_xtra"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1089
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    invoke-virtual {v0, p2}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setXtra(Landroid/os/Bundle;)V

    .line 1090
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_update_gps_parameters()V

    move v0, v2

    .line 1091
    goto :goto_0

    .line 1094
    :cond_6
    const-string v0, "set_nmea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1095
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    invoke-virtual {v0, p2}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setNmea(Landroid/os/Bundle;)V

    move v0, v2

    .line 1096
    goto :goto_0

    .line 1099
    :cond_7
    const-string v0, "set_csc_parameters"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1100
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mSecConf:Lcom/android/internal/location/GpsLocationProvider$GpsConfig;

    invoke-virtual {v0, p2}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setCscParameters(Landroid/os/Bundle;)V

    .line 1101
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_update_gps_parameters()V

    move v0, v2

    .line 1102
    goto/16 :goto_0

    .line 1106
    :cond_8
    const-string/jumbo v0, "start_gps_fact_test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1107
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2, v2}, Lcom/android/internal/location/GpsLocationProvider;->native_start(IZI)Z

    move v0, v2

    .line 1108
    goto/16 :goto_0

    .line 1112
    :cond_9
    const-string/jumbo v0, "stop_gps_fact_test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1113
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider;->native_stop()Z

    move v0, v2

    .line 1114
    goto/16 :goto_0

    .line 1116
    :cond_a
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendExtraCommand: unknown command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1117
    goto/16 :goto_0
.end method

.method public setMinTime(J)V
    .locals 4
    .parameter "minTime"

    .prologue
    .line 973
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 976
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 977
    .local v0, interval:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 978
    const/4 v0, 0x1

    .line 980
    :cond_0
    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider;->mFixInterval:I

    .line 982
    .end local v0           #interval:I
    :cond_1
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    const/4 v2, 0x7

    .line 748
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 750
    .local v0, m:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 751
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 752
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 3
    .parameter "state"
    .parameter "info"

    .prologue
    const/4 v2, 0x4

    .line 621
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 624
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    return-void
.end method
