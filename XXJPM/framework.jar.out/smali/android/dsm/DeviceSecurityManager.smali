.class public Landroid/dsm/DeviceSecurityManager;
.super Ljava/lang/Object;
.source "DeviceSecurityManager.java"


# static fields
.field public static MSISDN:Ljava/lang/String; = null

.field public static MTdata:Ljava/lang/String; = null

.field public static SIMmcc:I = 0x0

.field public static SIMmnc:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DSM"

.field public static cellid:Ljava/lang/String;

.field static expired:Z

.field static isGpsValid:Z

.field static isNonGpsSIMValid:Z

.field static isNonGpsValid:Z

.field public static lac:Ljava/lang/String;

.field public static mAccuracy:D

.field public static mAltitude:D

.field public static mBearing:D

.field public static mLatitude:D

.field public static mLongitude:D

.field public static mSpeed:D

.field public static mcc:I

.field public static mnc:I

.field static timerrun:Z


# instance fields
.field private final DELAY_BEFORE_PHONERESET:J

.field private mNonExistContentHandler:Landroid/os/Handler;

.field private service:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 31
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    .line 32
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->isNonGpsSIMValid:Z

    .line 33
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    .line 34
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    .line 35
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    .line 36
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    .line 37
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    .line 38
    sput-wide v2, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    .line 39
    sput v1, Landroid/dsm/DeviceSecurityManager;->mcc:I

    .line 40
    sput v1, Landroid/dsm/DeviceSecurityManager;->mnc:I

    .line 43
    sput-boolean v1, Landroid/dsm/DeviceSecurityManager;->expired:Z

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Landroid/dsm/DeviceSecurityManager;->timerrun:Z

    .line 45
    sput v1, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    .line 46
    sput v1, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    .line 51
    const-string v0, " "

    sput-object v0, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/dsm/DeviceSecurityManager;->mNonExistContentHandler:Landroid/os/Handler;

    .line 50
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Landroid/dsm/DeviceSecurityManager;->DELAY_BEFORE_PHONERESET:J

    return-void
.end method


# virtual methods
.method public GetGPSLocation()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "DSM"

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, gpsdata:[D
    invoke-static {}, Landroid/dsm/DSMService;->DSMgetGPSData()[D

    move-result-object v0

    .line 126
    const-string v1, "DSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpsdata is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez v0, :cond_0

    .line 128
    sput-boolean v3, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    move v1, v3

    .line 140
    :goto_0
    return v1

    .line 131
    :cond_0
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isGpsValid:Z

    .line 132
    aget-wide v1, v0, v3

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    .line 133
    aget-wide v1, v0, v4

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    .line 134
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    .line 135
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    .line 136
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    .line 137
    const/4 v1, 0x5

    aget-wide v1, v0, v1

    sput-wide v1, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    .line 138
    const-string v1, "DSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latitud is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Longitudude is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Altitude is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Bearing is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mBearing:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Speed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mSpeed:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Accuracy is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/dsm/DeviceSecurityManager;->mAccuracy:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 140
    goto :goto_0
.end method

.method public GetNonGPSLocation(Landroid/content/Context;)Z
    .locals 8
    .parameter "pcontext"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "DSM"

    .line 75
    move-object v0, p1

    .line 76
    .local v0, mcontext:Landroid/content/Context;
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, nonGPSdata:[I
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetnonGPSData(Landroid/content/Context;)[I

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    sput-boolean v6, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 82
    aget v2, v1, v5

    sput v2, Landroid/dsm/DeviceSecurityManager;->mcc:I

    .line 83
    aget v2, v1, v6

    sput v2, Landroid/dsm/DeviceSecurityManager;->mnc:I

    .line 84
    const-string v2, "%04x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget v4, v1, v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/dsm/DeviceSecurityManager;->lac:Ljava/lang/String;

    .line 85
    const-string v2, "%08x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/dsm/DeviceSecurityManager;->cellid:Ljava/lang/String;

    .line 86
    const-string v2, "DSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/dsm/DeviceSecurityManager;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mnc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/dsm/DeviceSecurityManager;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->lac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->cellid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 92
    :goto_0
    return v2

    .line 90
    :cond_0
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 91
    const-string v2, "DSM"

    const-string v2, "nonGPSdata is null"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 92
    goto :goto_0
.end method

.method public GetNonGpsSIMLoc(Landroid/content/Context;)Z
    .locals 7
    .parameter "pcontext"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "DSM"

    .line 98
    move-object v0, p1

    .line 99
    .local v0, mcontext:Landroid/content/Context;
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isNonGpsSIMValid:Z

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, nonGpsSIMdata:[I
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMgetNonGpsSIMData(Landroid/content/Context;)[I

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    sput-boolean v5, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 105
    aget v3, v1, v4

    sput v3, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    .line 106
    aget v3, v1, v5

    sput v3, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    .line 108
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 109
    .local v2, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/dsm/DeviceSecurityManager;->MSISDN:Ljava/lang/String;

    .line 111
    const-string v3, "DSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMDATA; SIMmcc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/dsm/DeviceSecurityManager;->SIMmcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SIMmnc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/dsm/DeviceSecurityManager;->SIMmnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MSISDN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/dsm/DeviceSecurityManager;->MSISDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 117
    .end local v2           #tel:Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .line 115
    :cond_0
    sput-boolean v4, Landroid/dsm/DeviceSecurityManager;->isNonGpsValid:Z

    .line 116
    const-string v3, "DSM"

    const-string v3, "nonGPSdata is null"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 117
    goto :goto_0
.end method

.method public PhoneLock(Landroid/content/Context;)V
    .locals 4
    .parameter "pcontext"

    .prologue
    .line 55
    const-string v2, "DSM"

    const-string v3, "Lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    move-object v0, p1

    .line 57
    .local v0, mcontext:Landroid/content/Context;
    new-instance v1, Lcom/android/internal/util/NVStore;

    invoke-direct {v1}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 58
    .local v1, mts:Lcom/android/internal/util/NVStore;
    const-string v2, "1"

    sget-object v3, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 59
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.MT.PHLOCK_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public StartGPSTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "pcontext"

    .prologue
    .line 145
    move-object v0, p1

    .line 146
    .local v0, mcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMstartGPSTracking(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public StopGpsTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "pcontext"

    .prologue
    .line 150
    move-object v0, p1

    .line 151
    .local v0, mcontext:Landroid/content/Context;
    invoke-static {v0}, Landroid/dsm/DSMService;->DSMremoveListener(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public Wipeout(Landroid/content/Context;)V
    .locals 5
    .parameter "pcontext"

    .prologue
    const-string v4, "DSM"

    .line 63
    move-object v1, p1

    .line 64
    .local v1, mcontext:Landroid/content/Context;
    const-string v3, "DSM"

    const-string/jumbo v3, "wipeout?"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 66
    .local v2, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    .line 67
    const-string v3, "DSM"

    sget-object v3, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.DSM.wipeout"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, i:Landroid/content/Intent;
    const-string v3, "MTDATA"

    sget-object v4, Landroid/dsm/DeviceSecurityManager;->MTdata:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public isMobileTrackerEnabled()Z
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 156
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method public isPhoneLockEnabled()Z
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 160
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 162
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
