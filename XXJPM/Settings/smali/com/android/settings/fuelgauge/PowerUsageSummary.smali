.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceActivity;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$2;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x5

.field private static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 85
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUidCache:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 738
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUidCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 13
    .parameter "uSecNow"

    .prologue
    const-wide v11, 0x408f400000000000L

    .line 494
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    div-long v3, v0, v9

    .line 495
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v0, v9

    div-double v6, v0, v11

    .line 497
    .local v6, btPower:D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v8

    .line 498
    .local v8, btPingCount:I
    int-to-double v0, v8

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v0, v9

    div-double/2addr v0, v11

    add-double/2addr v6, v0

    .line 501
    const v0, 0x7f090348

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020040

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 503
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    .locals 7
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 550
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 551
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 552
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [D

    const/4 v1, 0x0

    aput-wide p6, v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 553
    .local v0, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->usageTime:J

    .line 554
    iput p5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->iconId:I

    .line 555
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 487
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 489
    .local v6, idlePower:D
    const v0, 0x7f09034b

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020047

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 491
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 426
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 428
    .local v6, phoneOnPower:D
    const v0, 0x7f09034a

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02004f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 430
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 20
    .parameter "uSecNow"

    .prologue
    .line 454
    const-wide/16 v11, 0x0

    .line 455
    .local v11, power:D
    const/4 v13, 0x5

    .line 456
    .local v13, BINS:I
    const-wide/16 v8, 0x0

    .line 457
    .local v8, signalTimeMs:J
    const/4 v15, 0x0

    .end local v13           #BINS:I
    .local v15, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v15, v5, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move v1, v15

    move-wide/from16 v2, p1

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v18, v5, v13

    .line 459
    .local v18, strengthTimeMs:J
    const-wide/16 v5, 0x3e8

    div-long v5, v18, v5

    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "radio.on"

    invoke-virtual {v7, v10, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 461
    add-long v8, v8, v18

    .line 457
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 463
    .end local v18           #strengthTimeMs:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v16, v5, v13

    .line 464
    .local v16, scanningTimeMs:J
    const-wide/16 v5, 0x3e8

    div-long v5, v16, v5

    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "radio.scanning"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 466
    const v5, 0x7f090349

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v10, 0x7f020042

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    move-result-object v14

    .line 469
    .local v14, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-eqz v5, :cond_1

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v7, v0

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v5, v10

    long-to-double v5, v5

    const-wide/high16 v10, 0x4059

    mul-double/2addr v5, v10

    long-to-double v7, v8

    div-double/2addr v5, v7

    iput-wide v5, v14, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->noCoveragePercent:D

    .line 473
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 20
    .parameter "uSecNow"

    .prologue
    .line 433
    const-wide/16 v11, 0x0

    .line 434
    .local v11, power:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v8, v5, v7

    .line 435
    .local v8, screenOnTimeMs:J
    long-to-double v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "screen.on"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "screen.full"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    .line 438
    .local v18, screenFullPower:D
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v15, v5, :cond_0

    .line 439
    int-to-float v5, v15

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-double v5, v5

    mul-double v5, v5, v18

    const-wide/high16 v13, 0x4014

    div-double v16, v5, v13

    .line 441
    .local v16, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move v1, v15

    move-wide/from16 v2, p1

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v13, v5, v13

    .line 442
    .local v13, brightnessTime:J
    long-to-double v5, v13

    mul-double v5, v5, v16

    add-double/2addr v11, v5

    .line 438
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 448
    .end local v13           #brightnessTime:J
    .end local v16           #screenBinPower:D
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double/2addr v11, v5

    .line 449
    const v5, 0x7f090346

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v10, 0x7f02003f

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 451
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 477
    .local v8, onTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 478
    .local v3, runningTimeMs:J
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v8

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 481
    .local v6, wifiPower:D
    const v0, 0x7f090347

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020050

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 483
    return-void
.end method

.method private getAverageDataCost()D
    .locals 26

    .prologue
    .line 506
    const-wide/32 v6, 0xf4240

    .line 507
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 508
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 510
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 512
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 514
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 516
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 517
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v22, v22, v16

    move-wide/from16 v10, v22

    .line 521
    .local v10, mobileBps:J
    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 522
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 523
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 524
    move-wide v0, v14

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 527
    :goto_1
    return-wide v22

    .line 517
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v22, 0x30d40

    move-wide/from16 v10, v22

    goto :goto_0

    .line 527
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 5

    .prologue
    .line 561
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 562
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 563
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 564
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 565
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 568
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PowerUsageSummary"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 62

    .prologue
    .line 310
    const-string v5, "sensor"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/hardware/SensorManager;

    .line 311
    .local v43, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v61, v0

    .line 312
    .local v61, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v48

    .line 313
    .local v48, speedSteps:I
    move/from16 v0, v48

    new-array v0, v0, [D

    move-object/from16 v33, v0

    .line 314
    .local v33, powerCpuNormal:[D
    move/from16 v0, v48

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 315
    .local v16, cpuSpeedStepTimes:[J
    const/16 v30, 0x0

    .local v30, p:I
    :goto_0
    move/from16 v0, v30

    move/from16 v1, v48

    if-ge v0, v1, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "cpu.active"

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v7

    aput-wide v7, v33, v30

    .line 315
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v12

    .line 319
    .local v12, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    move-object v0, v5

    move-wide v1, v7

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v56

    .line 320
    .local v56, uSecTime:J
    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 321
    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateStatsPeriod(J)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v58

    .line 323
    .local v58, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v58 .. v58}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 324
    .local v11, NU:I
    const/16 v27, 0x0

    .local v27, iu:I
    :goto_1
    move/from16 v0, v27

    move v1, v11

    if-ge v0, v1, :cond_b

    .line 325
    move-object/from16 v0, v58

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid;

    .line 326
    .local v9, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v31, 0x0

    .line 327
    .local v31, power:D
    const-wide/16 v24, 0x0

    .line 328
    .local v24, highestDrain:D
    const/4 v6, 0x0

    .line 330
    .local v6, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v36

    .line 331
    .local v36, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v17, 0x0

    .line 332
    .local v17, cpuTime:J
    const-wide/16 v14, 0x0

    .line 333
    .local v14, cpuFgTime:J
    const-wide/16 v22, 0x0

    .line 334
    .local v22, gpsTime:J
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 337
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 339
    .local v19, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/BatteryStats$Uid$Proc;

    .line 340
    .local v37, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v37

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v59

    .line 341
    .local v59, userTime:J
    move-object/from16 v0, v37

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v50

    .line 342
    .local v50, systemTime:J
    move-object/from16 v0, v37

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v20

    .line 343
    .local v20, foregroundTime:J
    const-wide/16 v7, 0xa

    mul-long v7, v7, v20

    add-long/2addr v14, v7

    .line 344
    add-long v7, v59, v50

    const-wide/16 v20, 0xa

    mul-long v53, v7, v20

    .line 345
    .local v53, tmpCpuTime:J
    const/16 v55, 0x0

    .line 347
    .local v55, totalTimeAtSpeeds:I
    const/16 v49, 0x0

    .end local v20           #foregroundTime:J
    .local v49, step:I
    :goto_3
    move/from16 v0, v49

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    .line 348
    move-object/from16 v0, v37

    move/from16 v1, v49

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v7

    aput-wide v7, v16, v49

    .line 349
    move/from16 v0, v55

    int-to-long v0, v0

    move-wide v7, v0

    aget-wide v20, v16, v49

    add-long v7, v7, v20

    move-wide v0, v7

    long-to-int v0, v0

    move/from16 v55, v0

    .line 347
    add-int/lit8 v49, v49, 0x1

    goto :goto_3

    .line 351
    :cond_2
    if-nez v55, :cond_3

    const/16 v55, 0x1

    .line 353
    :cond_3
    const-wide/16 v34, 0x0

    .line 354
    .local v34, processPower:D
    const/16 v49, 0x0

    :goto_4
    move/from16 v0, v49

    move/from16 v1, v48

    if-ge v0, v1, :cond_4

    .line 355
    aget-wide v7, v16, v49

    long-to-double v7, v7

    move/from16 v0, v55

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v38, v7, v20

    .line 356
    .local v38, ratio:D
    move-wide/from16 v0, v53

    long-to-double v0, v0

    move-wide v7, v0

    mul-double v7, v7, v38

    aget-wide v20, v33, v49

    mul-double v7, v7, v20

    add-double v34, v34, v7

    .line 354
    add-int/lit8 v49, v49, 0x1

    goto :goto_4

    .line 358
    .end local v38           #ratio:D
    :cond_4
    add-long v17, v17, v53

    .line 359
    add-double v31, v31, v34

    .line 360
    cmpg-double v5, v24, v34

    if-gez v5, :cond_1

    .line 361
    move-wide/from16 v24, v34

    .line 362
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 369
    .end local v19           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v34           #processPower:D
    .end local v37           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v49           #step:I
    .end local v50           #systemTime:J
    .end local v53           #tmpCpuTime:J
    .end local v55           #totalTimeAtSpeeds:I
    .end local v59           #userTime:J
    :cond_5
    cmp-long v5, v14, v17

    if-lez v5, :cond_6

    .line 373
    move-wide/from16 v17, v14

    .line 375
    :cond_6
    const-wide v7, 0x408f400000000000L

    div-double v31, v31, v7

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v9, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v9, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v19

    add-long v7, v7, v19

    long-to-double v7, v7

    mul-double/2addr v7, v12

    add-double v31, v31, v7

    .line 382
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v44

    .line 384
    .local v44, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/Map$Entry;

    .line 385
    .local v42, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v42 .. v42}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/BatteryStats$Uid$Sensor;

    .line 386
    .local v40, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v40 .. v40}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v47

    .line 387
    .local v47, sensorType:I
    invoke-virtual/range {v40 .. v40}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v52

    .line 388
    .local v52, timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v52

    move-wide/from16 v1, v56

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    const-wide/16 v19, 0x3e8

    div-long v45, v7, v19

    .line 389
    .local v45, sensorTime:J
    const-wide/16 v28, 0x0

    .line 390
    .local v28, multiplier:D
    packed-switch v47, :pswitch_data_0

    .line 396
    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v41

    .line 398
    .local v41, sensorData:Landroid/hardware/Sensor;
    if-eqz v41, :cond_7

    .line 399
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 406
    .end local v41           #sensorData:Landroid/hardware/Sensor;
    :cond_7
    :goto_6
    move-wide/from16 v0, v45

    long-to-double v0, v0

    move-wide v7, v0

    mul-double v7, v7, v28

    const-wide v19, 0x408f400000000000L

    div-double v7, v7, v19

    add-double v31, v31, v7

    .line 407
    goto :goto_5

    .line 392
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v7, "gps.on"

    invoke-virtual {v5, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v28

    .line 393
    move-wide/from16 v22, v45

    .line 394
    goto :goto_6

    .line 410
    .end local v28           #multiplier:D
    .end local v40           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v42           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v45           #sensorTime:J
    .end local v47           #sensorType:I
    .end local v52           #timer:Landroid/os/BatteryStats$Timer;
    :cond_8
    const-wide/16 v7, 0x0

    cmpl-double v5, v31, v7

    if-eqz v5, :cond_9

    .line 411
    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v8, 0x0

    const/4 v5, 0x1

    new-array v10, v5, [D

    const/4 v5, 0x0

    aput-wide v31, v10, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 413
    .local v4, app:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    move-wide/from16 v0, v17

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuTime:J

    .line 414
    move-wide/from16 v0, v22

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->gpsTime:J

    .line 415
    iput-wide v14, v4, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuFgTime:J

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v4           #app:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    move-wide v7, v0

    cmpl-double v5, v31, v7

    if-lez v5, :cond_a

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 419
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    move-wide v7, v0

    add-double v7, v7, v31

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 324
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 422
    .end local v6           #packageWithHighestDrain:Ljava/lang/String;
    .end local v9           #u:Landroid/os/BatteryStats$Uid;
    .end local v14           #cpuFgTime:J
    .end local v17           #cpuTime:J
    .end local v22           #gpsTime:J
    .end local v24           #highestDrain:D
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v31           #power:D
    .end local v36           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v44           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    :cond_b
    return-void

    .line 390
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 532
    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 533
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 534
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 535
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 540
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 541
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 542
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 543
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 544
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 545
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 546
    return-void
.end method

.method private refreshStats()V
    .locals 13

    .prologue
    const-wide/high16 v11, 0x4059

    const-wide/16 v8, 0x0

    .line 257
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v7, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 260
    :cond_0
    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 261
    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 263
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 264
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 265
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 268
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 270
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 271
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 272
    .local v6, sipper:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4014

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_1

    .line 273
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v7, v9

    mul-double v3, v7, v11

    .line 274
    .local v3, percentOfTotal:D
    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v3, v7

    if-ltz v7, :cond_1

    .line 275
    new-instance v5, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, p0, v7, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;)V

    .line 276
    .local v5, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v7

    mul-double/2addr v7, v11

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v1, v7, v9

    .line 277
    .local v1, percentOfMax:D
    iput-wide v3, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->percent:D

    .line 278
    iget-object v7, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v5, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 280
    const v7, 0x7fffffff

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 281
    invoke-virtual {v5, v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setGaugeValue(D)V

    .line 282
    iget-object v7, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v7, :cond_2

    .line 283
    iget-object v7, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 286
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_1

    .line 289
    .end local v1           #percentOfMax:D
    .end local v3           #percentOfTotal:D
    .end local v5           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v6           #sipper:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 290
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 291
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_4

    .line 292
    new-instance v8, Ljava/lang/Thread;

    const-string v9, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 293
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 294
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 296
    :cond_4
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 298
    :cond_5
    monitor-exit v7

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private updateStatsPeriod(J)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 302
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, durationString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f09033c

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    return-void

    .line 303
    .end local v1           #label:Ljava/lang/String;
    :cond_0
    const v2, 0x7f09033d

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 107
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 109
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 110
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 111
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x2

    const v1, 0x7f09036e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 252
    :goto_0
    return v0

    .line 240
    :pswitch_0
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 245
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 246
    goto :goto_0

    .line 243
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 248
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 249
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 250
    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 123
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 127
    return-void

    .line 124
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 14
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 131
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object v2, v0

    .line 132
    .local v2, pgp:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    move-result-object v5

    .line 133
    .local v5, sipper:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "title"

    iget-object v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v9, "percent"

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    iget-wide v12, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v9, "gauge"

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    iget-wide v12, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v9, "duration"

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v1, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    const-string v9, "iconPackage"

    iget-object v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v9, "iconId"

    iget v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->iconId:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v9, "noCoverage"

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->noCoveragePercent:D

    invoke-virtual {v1, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 143
    iget-object v9, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v9, :cond_0

    .line 144
    const-string v9, "uid"

    iget-object v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    :cond_0
    const-string v9, "drainType"

    iget-object v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 198
    const/4 v9, 0x1

    new-array v6, v9, [I

    const/4 v9, 0x0

    const v10, 0x7f090354

    aput v10, v6, v9

    .line 201
    .local v6, types:[I
    const/4 v9, 0x1

    new-array v8, v9, [D

    const/4 v9, 0x0

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->usageTime:J

    long-to-double v10, v10

    aput-wide v10, v8, v9

    .line 206
    .local v8, values:[D
    :goto_0
    const-string v9, "types"

    invoke-virtual {v1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 207
    const-string v9, "values"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    return v9

    .line 153
    .end local v6           #types:[I
    .end local v8           #values:[D
    :pswitch_0
    iget-object v7, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 154
    .local v7, uid:Landroid/os/BatteryStats$Uid;
    const/4 v9, 0x7

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    .line 163
    .restart local v6       #types:[I
    const/4 v9, 0x7

    new-array v8, v9, [D

    const/4 v9, 0x0

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuTime:J

    long-to-double v10, v10

    aput-wide v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuFgTime:J

    long-to-double v10, v10

    aput-wide v10, v8, v9

    const/4 v9, 0x2

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->gpsTime:J

    long-to-double v10, v10

    aput-wide v10, v8, v9

    const/4 v9, 0x3

    if-eqz v7, :cond_1

    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v10

    long-to-double v10, v10

    :goto_1
    aput-wide v10, v8, v9

    const/4 v9, 0x4

    if-eqz v7, :cond_2

    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v10

    long-to-double v10, v10

    :goto_2
    aput-wide v10, v8, v9

    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    const/4 v9, 0x6

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 173
    .restart local v8       #values:[D
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 174
    .local v4, result:Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 175
    .local v3, printWriter:Ljava/io/PrintWriter;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v10, ""

    iget v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    invoke-virtual {v9, v3, v10, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 176
    const-string v9, "report_details"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    new-instance v4, Ljava/io/StringWriter;

    .end local v4           #result:Ljava/io/Writer;
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 179
    .restart local v4       #result:Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    .end local v3           #printWriter:Ljava/io/PrintWriter;
    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    .restart local v3       #printWriter:Ljava/io/PrintWriter;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    invoke-virtual {v9, v3, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 181
    const-string v9, "report_checkin_details"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 163
    .end local v3           #printWriter:Ljava/io/PrintWriter;
    .end local v4           #result:Ljava/io/Writer;
    .end local v8           #values:[D
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_2

    .line 186
    .end local v6           #types:[I
    .end local v7           #uid:Landroid/os/BatteryStats$Uid;
    :pswitch_1
    const/4 v9, 0x2

    new-array v6, v9, [I

    fill-array-data v6, :array_1

    .line 190
    .restart local v6       #types:[I
    const/4 v9, 0x2

    new-array v8, v9, [D

    const/4 v9, 0x0

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->usageTime:J

    long-to-double v10, v10

    aput-wide v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->noCoveragePercent:D

    aput-wide v10, v8, v9

    .line 195
    .restart local v8       #values:[D
    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 154
    :array_0
    .array-data 0x4
        0x4ct 0x3t 0x9t 0x7ft
        0x4dt 0x3t 0x9t 0x7ft
        0x4et 0x3t 0x9t 0x7ft
        0x50t 0x3t 0x9t 0x7ft
        0x51t 0x3t 0x9t 0x7ft
        0x52t 0x3t 0x9t 0x7ft
        0x53t 0x3t 0x9t 0x7ft
    .end array-data

    .line 186
    :array_1
    .array-data 0x4
        0x54t 0x3t 0x9t 0x7ft
        0x55t 0x3t 0x9t 0x7ft
    .end array-data
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 117
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 118
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 725
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v2, :cond_1

    .line 727
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 728
    monitor-exit v1

    return-void

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 731
    .local v0, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 731
    .end local v0           #bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
