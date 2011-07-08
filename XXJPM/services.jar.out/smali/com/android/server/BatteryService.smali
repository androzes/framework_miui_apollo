.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final CRITICAL_BATTERY_LEVEL:I = 0x5

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final LOCAL_LOGV:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcOnline:Z

.field private mBatteryFullBeforeSystemReady:Z

.field private mBatteryFullNotification:Landroid/app/Notification;

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryVoltage:I

.field private final mContext:Landroid/content/Context;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastPlugType:I

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugNotification:Landroid/app/Notification;

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbOnline:Z

.field private mWasBatteryLowButNotSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 136
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    .line 187
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 145
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 148
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 150
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 153
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=power_supply"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method private final getIcon(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 640
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 641
    const v0, 0x108029b

    .line 647
    :goto_0
    return v0

    .line 642
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 645
    :cond_1
    const v0, 0x1080293

    goto :goto_0

    .line 647
    :cond_2
    const v0, 0x10802a2

    goto :goto_0
.end method

.method private final logBatteryStats()V
    .locals 12

    .prologue
    const-string v9, "BATTERY_DISCHARGE_INFO"

    const-string v11, "failed to delete temporary dumpsys file: "

    const-string v10, "failed to close dumpsys output stream"

    .line 574
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 575
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 578
    .local v1, db:Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v9}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 580
    const/4 v2, 0x0

    .line 581
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 584
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 586
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 587
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 590
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 597
    if-eqz v5, :cond_2

    .line 599
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 604
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_3

    .line 605
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 608
    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_0

    .line 591
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 592
    .local v6, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 597
    if-eqz v4, :cond_4

    .line 599
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 604
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_4
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 605
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 593
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 594
    .local v6, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 597
    if-eqz v4, :cond_5

    .line 599
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 604
    :cond_5
    :goto_6
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 605
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 597
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v4, :cond_6

    .line 599
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 604
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 605
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_7
    throw v7

    .line 600
    :catch_2
    move-exception v6

    .line 601
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 600
    .local v6, e:Landroid/os/RemoteException;
    :catch_3
    move-exception v6

    .line 601
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 600
    :catch_4
    move-exception v6

    .line 601
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 600
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    .line 601
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 597
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_7

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_7

    .line 593
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_5

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_5

    .line 591
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_8
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2
.end method

.method private final logOutlier(J)V
    .locals 10
    .parameter "duration"

    .prologue
    .line 612
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 613
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, durationThresholdString:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 620
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 621
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 622
    .local v1, dischargeThreshold:I
    cmp-long v7, p1, v3

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_0
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 632
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_update()V
.end method

.method private final notifyIfBatteryFull()V
    .locals 15

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x5

    const/4 v12, 0x0

    const-string v14, "notification"

    .line 276
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-nez v8, :cond_2

    .line 277
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v10, v8, :cond_1

    .line 278
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "System is not ready and Battery is full"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-boolean v11, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iput-boolean v12, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    goto :goto_0

    .line 284
    :cond_2
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v8, v9, :cond_3

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    if-eqz v8, :cond_0

    .line 285
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/BatteryService;->mBatteryFullBeforeSystemReady:Z

    .line 287
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v10, v8, :cond_9

    .line 288
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is full"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 293
    .local v5, powerManager:Landroid/os/IPowerManager;
    if-nez v5, :cond_4

    .line 294
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "notifyIfBatteryFull : fail to get PowerManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v5, v8, v9, v10, v11}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 305
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-nez v3, :cond_5

    .line 306
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "notifyIfBatteryFull : fail to get NotificationManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 311
    .local v6, r:Landroid/content/res/Resources;
    const v8, 0x10403ad

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 312
    .local v7, title:Ljava/lang/CharSequence;
    const v8, 0x10403af

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 314
    .local v2, message:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    if-nez v8, :cond_6

    .line 315
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    .line 316
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    const v9, 0x1080371

    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 317
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 320
    :cond_6
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 322
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    if-ne v8, v13, :cond_8

    .line 323
    :cond_7
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 324
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x3

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 330
    :goto_2
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 331
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iput-object v2, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 333
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 336
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 338
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 326
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :cond_8
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 327
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 339
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #powerManager:Landroid/os/IPowerManager;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_9
    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v10, v8, :cond_0

    .line 340
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery was full but is not full now"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 343
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    if-eqz v8, :cond_a

    .line 344
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryFullNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 346
    :cond_a
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "have not registered notification."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #powerManager:Landroid/os/IPowerManager;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method private final notifyPlugCharger()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v3, v7, v9

    .line 222
    .local v3, now:J
    const-wide/16 v7, 0x28

    cmp-long v7, v3, v7

    if-gez v7, :cond_1

    .line 223
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "If you want to hear notification sound for TA detecting, Time should be reach 40 sec from boot. But now is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v7, v8, :cond_2

    .line 226
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHARGER :: mBatteryStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v7, v11, :cond_0

    .line 231
    :try_start_0
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 232
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    .line 233
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    .line 234
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    .line 235
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 238
    :cond_3
    if-eqz v2, :cond_0

    .line 239
    const v1, 0x108001e

    .line 241
    .local v1, notificationId:I
    const/4 v5, -0x1

    .line 243
    .local v5, ringerMode:I
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 244
    .local v6, tAM:Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 247
    if-ne v5, v11, :cond_4

    .line 248
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    const-string v8, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 252
    :goto_1
    const v7, 0x108001e

    iget-object v8, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #ringerMode:I
    .end local v6           #tAM:Landroid/media/AudioManager;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 257
    .local v0, ex:Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #notificationId:I
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    .restart local v5       #ringerMode:I
    .restart local v6       #tAM:Landroid/media/AudioManager;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private final sendIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 537
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/IBatteryStats;->setOnBattery(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_1
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 548
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v2, "scale"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBattery level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " health:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " voltage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " technology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AC powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " USB powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 571
    return-void

    .line 541
    .end local v0           #icon:I
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 542
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method private final shutdownIfNoPower()V
    .locals 3

    .prologue
    .line 210
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "No power and Send ACTION_REQUEST_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final shutdownIfOverTemp()V
    .locals 3

    .prologue
    .line 267
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    const/16 v2, 0x2a8

    if-le v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 273
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final declared-synchronized update()V
    .locals 12

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, logOutlier:Z
    const-wide/16 v0, 0x0

    .line 361
    .local v0, dischargeDuration:J
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 363
    invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyIfBatteryFull()V

    .line 365
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/4 v9, 0x5

    if-gt v8, v9, :cond_10

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 366
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v8, :cond_11

    .line 367
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 374
    :goto_1
    invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyPlugCharger()V

    .line 376
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v8, v9, :cond_0

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v8, v9, :cond_f

    .line 384
    :cond_0
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v8, v9, :cond_1

    .line 385
    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v8, :cond_13

    .line 390
    iget-wide v8, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v8, v9, :cond_1

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v0, v8, v10

    .line 392
    const/4 v2, 0x1

    .line 393
    const/16 v8, 0xaaa

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 396
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 404
    :cond_1
    :goto_2
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v8, v9, :cond_2

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v8, v9, :cond_3

    .line 408
    :cond_2
    const/16 v8, 0xaa3

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-boolean v11, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v11, :cond_14

    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 412
    :cond_3
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v8, v9, :cond_4

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v8, v9, :cond_4

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v8, v9, :cond_5

    .line 415
    :cond_4
    const/16 v8, 0xaa2

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 418
    :cond_5
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v8, v9, :cond_6

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_6

    .line 423
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v9, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-interface {v8, v9}, Lcom/android/internal/app/IBatteryStats;->recordCurrentLevel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 428
    :cond_6
    :goto_4
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v8, :cond_7

    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_7

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v0, v8, v10

    .line 433
    const/4 v2, 0x1

    .line 436
    :cond_7
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    move v4, v8

    .line 437
    .local v4, plugged:Z
    :goto_5
    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    move v3, v8

    .line 445
    .local v3, oldPlugged:Z
    :goto_6
    if-nez v4, :cond_17

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_17

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v8, v9, :cond_17

    if-nez v3, :cond_8

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v8, v9, :cond_17

    :cond_8
    const/4 v8, 0x1

    move v6, v8

    .line 450
    .local v6, sendBatteryLow:Z
    :goto_7
    if-nez v4, :cond_18

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_18

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v8, :cond_18

    if-nez v3, :cond_9

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v8, :cond_18

    :cond_9
    const/4 v8, 0x1

    move v5, v8

    .line 455
    .local v5, sendBatteryCritical:Z
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 460
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v7, statusIntent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v8, :cond_19

    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v8, :cond_19

    .line 463
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    :cond_a
    :goto_9
    if-nez v6, :cond_b

    if-nez v5, :cond_b

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v8, :cond_c

    .line 472
    :cond_b
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 473
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is (critical) low but system is not ready"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 475
    const/4 v6, 0x0

    .line 476
    const/4 v5, 0x0

    .line 492
    :cond_c
    :goto_a
    if-eqz v5, :cond_1f

    .line 493
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 494
    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is critical and send ACTION_BATTERY_LOW"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_d
    :goto_b
    if-eqz v2, :cond_e

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_e

    .line 521
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->logOutlier(J)V

    .line 524
    :cond_e
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 525
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 526
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 527
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 528
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 529
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 530
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iput v8, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 531
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    .end local v3           #oldPlugged:Z
    .end local v4           #plugged:Z
    .end local v5           #sendBatteryCritical:Z
    .end local v6           #sendBatteryLow:Z
    .end local v7           #statusIntent:Landroid/content/Intent;
    :cond_f
    monitor-exit p0

    return-void

    .line 365
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 368
    :cond_11
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v8, :cond_12

    .line 369
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 356
    .end local v0           #dischargeDuration:J
    .end local v2           #logOutlier:Z
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 371
    .restart local v0       #dischargeDuration:J
    .restart local v2       #logOutlier:Z
    :cond_12
    const/4 v8, 0x0

    :try_start_4
    iput v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 398
    :cond_13
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_1

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 401
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_2

    .line 408
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 436
    :cond_15
    const/4 v8, 0x0

    move v4, v8

    goto/16 :goto_5

    .line 437
    .restart local v4       #plugged:Z
    :cond_16
    const/4 v8, 0x0

    move v3, v8

    goto/16 :goto_6

    .line 445
    .restart local v3       #oldPlugged:Z
    :cond_17
    const/4 v8, 0x0

    move v6, v8

    goto/16 :goto_7

    .line 450
    .restart local v6       #sendBatteryLow:Z
    :cond_18
    const/4 v8, 0x0

    move v5, v8

    goto/16 :goto_8

    .line 466
    .restart local v5       #sendBatteryCritical:Z
    .restart local v7       #statusIntent:Landroid/content/Intent;
    :cond_19
    iget v8, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_a

    iget v8, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v8, :cond_a

    .line 467
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 477
    :cond_1a
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v8, :cond_1c

    if-nez v4, :cond_1b

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v8, v9, :cond_1c

    .line 478
    :cond_1b
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "System is ready now but battery is not low"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 480
    const/4 v6, 0x0

    .line 481
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 483
    :cond_1c
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v8, :cond_1d

    .line 484
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "System was not ready but system is ready now"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 487
    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v8, v9, :cond_1e

    const/4 v8, 0x1

    move v6, v8

    .line 488
    :goto_c
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    goto/16 :goto_a

    .line 487
    :cond_1e
    const/4 v8, 0x0

    move v6, v8

    goto :goto_c

    .line 497
    :cond_1f
    if-eqz v6, :cond_20

    .line 498
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 499
    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is low and send ACTION_BATTERY_LOW"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 502
    :cond_20
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v8, :cond_d

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v9, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v8, v9, :cond_d

    .line 503
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 504
    const-string v8, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "Battery is recovered and send ACTION_BATTERY_OKAY"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_b

    .line 424
    .end local v3           #oldPlugged:Z
    .end local v4           #plugged:Z
    .end local v5           #sendBatteryCritical:Z
    .end local v6           #sendBatteryLow:Z
    .end local v7           #statusIntent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    goto/16 :goto_4
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    :goto_0
    return-void

    .line 662
    :cond_0
    monitor-enter p0

    .line 663
    :try_start_0
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getBatteryLevel()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getPlugType()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPowered(I)Z
    .locals 4
    .parameter "plugTypeSet"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 180
    :goto_0
    return v1

    .line 170
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    .line 171
    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, plugTypeBit:I
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v1, :cond_2

    .line 175
    or-int/lit8 v0, v0, 0x1

    .line 177
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v1, :cond_3

    .line 178
    or-int/lit8 v0, v0, 0x2

    .line 180
    :cond_3
    and-int v1, p1, v0

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 205
    return-void
.end method
