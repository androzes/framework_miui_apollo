.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$PssStats;,
        Lcom/android/server/Watchdog$PssRequestor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$RebootReceiver;,
        Lcom/android/server/Watchdog$CheckupReceiver;,
        Lcom/android/server/Watchdog$GlobalPssCollected;,
        Lcom/android/server/Watchdog$HeartbeatHandler;,
        Lcom/android/server/Watchdog$MemMonitor;
    }
.end annotation


# static fields
.field static final CHECKUP_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.CHECKUP"

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field static final DB:Z = false

.field static final GLOBAL_PSS:I = 0xa9f

.field static final MEMCHECK_DEFAULT_EXEC_END_TIME:I = 0x4650

.field static final MEMCHECK_DEFAULT_EXEC_START_TIME:I = 0xe10

.field static final MEMCHECK_DEFAULT_INTERVAL:I = 0x708

.field static final MEMCHECK_DEFAULT_LOG_REALTIME_INTERVAL:I = 0x1c20

.field static final MEMCHECK_DEFAULT_MIN_ALARM:I = 0xb4

.field static final MEMCHECK_DEFAULT_MIN_SCREEN_OFF:I = 0x12c

.field static final MEMCHECK_DEFAULT_PHONE_HARD_THRESHOLD:I = 0xc00000

.field static final MEMCHECK_DEFAULT_PHONE_SOFT_THRESHOLD:I = 0x800000

.field static final MEMCHECK_DEFAULT_RECHECK_INTERVAL:I = 0x12c

.field static final MEMCHECK_DEFAULT_SYSTEM_HARD_THRESHOLD:I = 0x1400000

.field static final MEMCHECK_DEFAULT_SYSTEM_SOFT_THRESHOLD:I = 0x1000000

.field static final MONITOR:I = 0xa9e

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_DEFAULT_INTERVAL:I = 0x0

.field static final REBOOT_DEFAULT_START_TIME:I = 0x2a30

.field static final REBOOT_DEFAULT_WINDOW:I = 0xe10

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_RESTART:I = 0xea60

.field static final TIME_TO_WAIT:I = 0x7530

.field private static day:Ljava/lang/String;

.field private static hour:Ljava/lang/String;

.field static final localLOGV:Z

.field private static mFreeMem:J

.field private static min:Ljava/lang/String;

.field private static month:Ljava/lang/String;

.field static sWatchdog:Lcom/android/server/Watchdog;

.field private static sec:Ljava/lang/String;

.field private static sysdump_time:Ljava/lang/String;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBattery:Lcom/android/server/BatteryService;

.field mBootTime:J

.field final mCalendar:Ljava/util/Calendar;

.field mCheckupIntent:Landroid/app/PendingIntent;

.field mCompleted:Z

.field mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field mForceKillSystem:Z

.field final mGlobalPssCollected:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field mHaveGlobalPss:Z

.field mHavePss:Z

.field mLastLogGlobalMemoryTime:J

.field mLastMemCheckRealtime:J

.field mLastMemCheckTime:J

.field final mMemInfoFields:[Ljava/lang/String;

.field final mMemInfoSizes:[J

.field mMemcheckExecEndTime:J

.field mMemcheckExecStartTime:J

.field mMemcheckLastTime:J

.field mMinAlarm:I

.field mMinScreenOff:I

.field final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field mNeedScheduledCheck:Z

.field final mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

.field mPhonePid:I

.field mPhonePss:I

.field mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

.field mPower:Lcom/android/server/PowerManagerService;

.field final mPrevVMStatSizes:[J

.field final mPssStats:Lcom/android/server/Watchdog$PssStats;

.field mRebootIntent:Landroid/app/PendingIntent;

.field mRebootInterval:I

.field mReqMinNextAlarm:I

.field mReqMinScreenOff:I

.field mReqRebootInterval:I

.field mReqRebootNoWait:Z

.field mReqRebootStartTime:I

.field mReqRebootWindow:I

.field mReqRecheckInterval:I

.field mResolver:Landroid/content/ContentResolver;

.field final mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

.field final mVMStatFields:[Ljava/lang/String;

.field final mVMStatSizes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/Watchdog;->mFreeMem:J

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 407
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    .line 119
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mLastMemCheckTime:J

    .line 121
    const-wide/32 v0, -0x6ddd00

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mLastMemCheckRealtime:J

    .line 123
    new-instance v0, Lcom/android/server/Watchdog$MemMonitor;

    const-string v2, "system"

    const-string v3, "memcheck_system_enabled"

    const-string v4, "memcheck_system_soft"

    const/high16 v5, 0x100

    const-string v6, "memcheck_system_hard"

    const/high16 v7, 0x140

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/Watchdog$MemMonitor;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    .line 129
    new-instance v0, Lcom/android/server/Watchdog$MemMonitor;

    const-string v2, "com.android.phone"

    const-string v3, "memcheck_phone_enabled"

    const-string v4, "memcheck_phone_soft"

    const/high16 v5, 0x80

    const-string v6, "memcheck_phone_hard"

    const/high16 v7, 0xc0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/Watchdog$MemMonitor;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    .line 140
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 141
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 150
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 151
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    .line 152
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    .line 153
    iput v8, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    .line 154
    iput v8, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    .line 155
    iput v8, p0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    .line 561
    new-instance v0, Lcom/android/server/Watchdog$PssStats;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$PssStats;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mPssStats:Lcom/android/server/Watchdog$PssStats;

    .line 562
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MemFree:"

    aput-object v1, v0, v9

    const-string v1, "Buffers:"

    aput-object v1, v0, v10

    const-string v1, "Cached:"

    aput-object v1, v0, v11

    const-string v1, "Active:"

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string v2, "Inactive:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AnonPages:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Mapped:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Slab:"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SReclaimable:"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SUnreclaim:"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PageTables:"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMemInfoFields:[Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMemInfoFields:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    .line 568
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pgfree "

    aput-object v1, v0, v9

    const-string v1, "pgactivate "

    aput-object v1, v0, v10

    const-string v1, "pgdeactivate "

    aput-object v1, v0, v11

    const-string v1, "pgfault "

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string v2, "pgmajfault "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    .line 572
    iget-object v0, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/Watchdog;->mPrevVMStatSizes:[J

    .line 408
    new-instance v0, Lcom/android/server/Watchdog$HeartbeatHandler;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$HeartbeatHandler;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Lcom/android/server/Watchdog$GlobalPssCollected;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$GlobalPssCollected;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mGlobalPssCollected:Ljava/lang/Runnable;

    .line 410
    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .locals 6
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 793
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 795
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 796
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 797
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 798
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 799
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 800
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 801
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 803
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 804
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 807
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 808
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 811
    :cond_0
    return-wide v0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 924
    const-string v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, tracesPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 930
    :goto_0
    return-object v1

    .line 929
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 930
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 403
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 457
    monitor-enter p0

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added while the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 461
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    return-void
.end method

.method checkMemory()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 493
    const-wide/16 v3, 0x0

    .line 495
    .local v3, nextTime:J
    iget-object v7, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "memcheck_recheck_interval"

    const-wide/16 v9, 0x12c

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 499
    .local v5, recheckInterval:J
    iget-object v7, p0, Lcom/android/server/Watchdog;->mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v8}, Lcom/android/server/Watchdog$MemMonitor;->retrieveSettings(Landroid/content/ContentResolver;)V

    .line 500
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v8}, Lcom/android/server/Watchdog$MemMonitor;->retrieveSettings(Landroid/content/ContentResolver;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 505
    .local v0, curTime:J
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/Watchdog;->mNeedScheduledCheck:Z

    .line 508
    iget-object v7, p0, Lcom/android/server/Watchdog;->mSystemMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->getPss(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/android/server/Watchdog$MemMonitor;->checkLocked(JII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 513
    monitor-exit p0

    .line 559
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    if-eqz v7, :cond_3

    .line 518
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    iget v8, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    iget v9, p0, Lcom/android/server/Watchdog;->mPhonePss:I

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/android/server/Watchdog$MemMonitor;->checkLocked(JII)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 521
    const-string v7, "Watchdog"

    const-string v8, "Watchdog is killing the phone process"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget v7, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 528
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/Watchdog;->mNeedScheduledCheck:Z

    .line 529
    .local v2, needScheduledCheck:Z
    if-eqz v2, :cond_2

    .line 532
    add-long v3, v0, v5

    .line 533
    iget-wide v7, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_4

    .line 534
    iget-wide v3, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    .line 548
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    if-eqz v2, :cond_5

    .line 553
    iget-object v7, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 554
    iget-object v7, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v11, v3, v4, v8}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 525
    .end local v2           #needScheduledCheck:Z
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/Watchdog;->mPhoneMemMonitor:Lcom/android/server/Watchdog$MemMonitor;

    invoke-virtual {v7}, Lcom/android/server/Watchdog$MemMonitor;->clear()V

    goto :goto_1

    .line 548
    .end local v0           #curTime:J
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 535
    .restart local v0       #curTime:J
    .restart local v2       #needScheduledCheck:Z
    :cond_4
    :try_start_2
    iget-wide v7, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    cmp-long v7, v3, v7

    if-ltz v7, :cond_2

    .line 539
    invoke-virtual {p0, v3, v4}, Lcom/android/server/Watchdog;->computeMemcheckTimesLocked(J)V

    .line 540
    iget-wide v3, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 557
    :cond_5
    iget-object v7, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method checkReboot(Z)V
    .locals 23
    .parameter "fromAlarm"

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v19, v0

    move/from16 v10, v19

    .line 616
    .local v10, rebootInterval:I
    :goto_0
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 617
    if-gtz v10, :cond_1

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 694
    :goto_1
    return-void

    .line 612
    .end local v10           #rebootInterval:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "reboot_interval"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v10, v19

    goto :goto_0

    .line 624
    .restart local v10       #rebootInterval:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v19, v0

    if-ltz v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v13, v19

    .line 628
    .local v13, rebootStartTime:J
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :goto_3
    const-wide/16 v21, 0x3e8

    mul-long v15, v19, v21

    .line 632
    .local v15, rebootWindowMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v19, v0

    if-ltz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    :goto_4
    const-wide/16 v21, 0x3e8

    mul-long v17, v19, v21

    .line 637
    .local v17, recheckInterval:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 642
    monitor-enter p0

    .line 643
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 644
    .local v6, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v6

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v8

    .line 647
    .local v8, realStartTime:J
    mul-int/lit8 v19, v10, 0x18

    mul-int/lit8 v19, v19, 0x3c

    mul-int/lit8 v19, v19, 0x3c

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide v11, v0

    .line 648
    .local v11, rebootIntervalMillis:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/Watchdog;->mBootTime:J

    move-wide/from16 v19, v0

    sub-long v19, v6, v19

    sub-long v21, v11, v15

    cmp-long v19, v19, v21

    if-ltz v19, :cond_7

    .line 650
    :cond_2
    if-eqz p1, :cond_6

    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_6

    .line 652
    const/16 v19, 0xaf8

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-wide v0, v13

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, ""

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 655
    const-string v19, "Checkin scheduled forced"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 656
    monitor-exit p0

    goto/16 :goto_1

    .line 688
    .end local v6           #now:J
    .end local v8           #realStartTime:J
    .end local v11           #rebootIntervalMillis:J
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 624
    .end local v13           #rebootStartTime:J
    .end local v15           #rebootWindowMillis:J
    .end local v17           #recheckInterval:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "reboot_start_time"

    const-wide/16 v21, 0x2a30

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v13, v19

    goto/16 :goto_2

    .line 628
    .restart local v13       #rebootStartTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "reboot_window"

    const-wide/16 v21, 0xe10

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    goto/16 :goto_3

    .line 632
    .restart local v15       #rebootWindowMillis:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v20, "memcheck_recheck_interval"

    const-wide/16 v21, 0x12c

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    goto/16 :goto_4

    .line 660
    .restart local v6       #now:J
    .restart local v8       #realStartTime:J
    .restart local v11       #rebootIntervalMillis:J
    .restart local v17       #recheckInterval:J
    :cond_6
    cmp-long v19, v6, v8

    if-gez v19, :cond_8

    .line 662
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v6

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v8

    .line 688
    :cond_7
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide v2, v8

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 664
    :cond_8
    add-long v19, v8, v15

    cmp-long v19, v6, v19

    if-gez v19, :cond_c

    .line 665
    :try_start_2
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, doit:Ljava/lang/String;
    const/16 v19, 0xaf8

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-wide v0, v13

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    if-eqz v5, :cond_9

    move-object/from16 v22, v5

    :goto_6
    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 669
    if-nez v5, :cond_a

    .line 670
    const-string v19, "Checked scheduled range"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 671
    monitor-exit p0

    goto/16 :goto_1

    .line 666
    :cond_9
    const-string v22, ""

    goto :goto_6

    .line 676
    :cond_a
    add-long v19, v6, v17

    add-long v21, v8, v15

    cmp-long v19, v19, v21

    if-ltz v19, :cond_b

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    add-long v20, v6, v11

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v8

    goto/16 :goto_5

    .line 680
    :cond_b
    add-long v8, v6, v17

    goto/16 :goto_5

    .line 684
    .end local v5           #doit:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    add-long v20, v6, v11

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide v3, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    goto/16 :goto_5
.end method

.method collectGlobalMemory()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mGlobalPssCollected:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->requestPss(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method collectMemory()V
    .locals 1

    .prologue
    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    invoke-interface {v0}, Lcom/android/server/Watchdog$PssRequestor;->requestPss()V

    .line 475
    :cond_0
    monitor-exit p0

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method computeMemcheckTimesLocked(J)V
    .locals 10
    .parameter "curTime"

    .prologue
    const-wide/32 v8, 0x15180

    .line 755
    iget-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckLastTime:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 787
    :goto_0
    return-void

    .line 759
    :cond_0
    iput-wide p1, p0, Lcom/android/server/Watchdog;->mMemcheckLastTime:J

    .line 761
    iget-object v4, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "memcheck_exec_start_time"

    const-wide/16 v6, 0xe10

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 764
    .local v2, memcheckExecStartTime:J
    iget-object v4, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "memcheck_exec_end_time"

    const-wide/16 v6, 0x4650

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 768
    .local v0, memcheckExecEndTime:J
    iget-object v4, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, p1, p2, v0, v1}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    .line 770
    iget-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_1

    .line 771
    add-long/2addr v2, v8

    .line 772
    add-long/2addr v0, v8

    .line 773
    iget-object v4, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, p1, p2, v0, v1}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    .line 776
    :cond_1
    iget-object v4, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, p1, p2, v2, v3}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    const-string v5, "com.android.service.Watchdog.REBOOT"

    const-string v4, "com.android.service.Watchdog.CHECKUP"

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 416
    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 417
    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    .line 418
    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 419
    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 421
    new-instance v0, Lcom/android/server/Watchdog$CheckupReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$CheckupReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.CHECKUP"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.CHECKUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCheckupIntent:Landroid/app/PendingIntent;

    .line 426
    new-instance v0, Lcom/android/server/Watchdog$RebootReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    .line 431
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mBootTime:J

    .line 436
    return-void
.end method

.method logGlobalMemory()V
    .locals 13

    .prologue
    .line 576
    iget-object v5, p0, Lcom/android/server/Watchdog;->mPssStats:Lcom/android/server/Watchdog$PssStats;

    .line 577
    .local v5, stats:Lcom/android/server/Watchdog$PssStats;
    iget-object v8, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/am/ActivityManagerService;->collectPss(Lcom/android/server/Watchdog$PssStats;)V

    .line 578
    const/16 v8, 0xaf6

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mEmptyPss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mEmptyCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mBackgroundPss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mBackgroundCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mServicePss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mServiceCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mVisiblePss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mVisibleCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mForegroundPss:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mForegroundCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    iget v11, v5, Lcom/android/server/Watchdog$PssStats;->mNoPssCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 585
    const/16 v8, 0xaf7

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, v5, Lcom/android/server/Watchdog$PssStats;->mProcDeaths:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 588
    const-string v8, "/proc/meminfo"

    iget-object v9, p0, Lcom/android/server/Watchdog;->mMemInfoFields:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    invoke-static {v8, v9, v10}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 589
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 590
    iget-object v8, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    aget-wide v9, v8, v2

    const-wide/16 v11, 0x400

    mul-long/2addr v9, v11

    aput-wide v9, v8, v2

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_0
    const/16 v8, 0xaf9

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x5

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x6

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/4 v12, 0x7

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/16 v12, 0x8

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/16 v12, 0x9

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    iget-object v11, p0, Lcom/android/server/Watchdog;->mMemInfoSizes:[J

    const/16 v12, 0xa

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 598
    .local v3, now:J
    iget-wide v8, p0, Lcom/android/server/Watchdog;->mLastLogGlobalMemoryTime:J

    sub-long v0, v3, v8

    .line 599
    .local v0, dur:J
    iput-wide v3, p0, Lcom/android/server/Watchdog;->mLastLogGlobalMemoryTime:J

    .line 600
    const-string v8, "/proc/vmstat"

    iget-object v9, p0, Lcom/android/server/Watchdog;->mVMStatFields:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    invoke-static {v8, v9, v10}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 601
    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 602
    iget-object v8, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    aget-wide v6, v8, v2

    .line 603
    .local v6, v:J
    iget-object v8, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    aget-wide v9, v8, v2

    iget-object v11, p0, Lcom/android/server/Watchdog;->mPrevVMStatSizes:[J

    aget-wide v11, v11, v2

    sub-long/2addr v9, v11

    aput-wide v9, v8, v2

    .line 604
    iget-object v8, p0, Lcom/android/server/Watchdog;->mPrevVMStatSizes:[J

    aput-wide v6, v8, v2

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    .end local v6           #v:J
    :cond_1
    const/16 v8, 0xafa

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/android/server/Watchdog;->mVMStatSizes:[J

    const/4 v12, 0x4

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 609
    return-void
.end method

.method public processStarted(Lcom/android/server/Watchdog$PssRequestor;Ljava/lang/String;I)V
    .locals 1
    .parameter "req"
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iput-object p1, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    .line 442
    iput p3, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/Watchdog;->mPhonePss:I

    .line 445
    :cond_0
    monitor-exit p0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 700
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    .line 702
    .local v0, pms:Lcom/android/server/PowerManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public reportPss(Lcom/android/server/Watchdog$PssRequestor;Ljava/lang/String;I)V
    .locals 1
    .parameter "req"
    .parameter "name"
    .parameter "pss"

    .prologue
    .line 449
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mPhoneReq:Lcom/android/server/Watchdog$PssRequestor;

    if-ne v0, p1, :cond_0

    .line 451
    iput p3, p0, Lcom/android/server/Watchdog;->mPhonePss:I

    .line 453
    :cond_0
    monitor-exit p0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method retrieveBrutalityAmount()V
    .locals 3

    .prologue
    .line 711
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 715
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 719
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_screen_off"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_alarm"

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public run()V
    .locals 21

    .prologue
    .line 816
    const/16 v20, 0x0

    .line 818
    .local v20, waitedHalf:Z
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0xa9e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    monitor-enter p0

    .line 822
    const-wide/16 v18, 0x7530

    .line 828
    .local v18, timeout:J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 829
    .local v16, start:J
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    move v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 831
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 835
    :goto_2
    const-wide/16 v3, 0x7530

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v16

    sub-long v18, v3, v5

    goto :goto_1

    .line 832
    :catch_0
    move-exception v13

    .line 833
    .local v13, e:Ljava/lang/InterruptedException;
    const-string v3, "Watchdog"

    invoke-static {v3, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 853
    .end local v13           #e:Ljava/lang/InterruptedException;
    .end local v16           #start:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 838
    .restart local v16       #start:J
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mCompleted:Z

    move v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    move v3, v0

    if-nez v3, :cond_1

    .line 840
    const/16 v20, 0x0

    .line 841
    monitor-exit p0

    goto :goto_0

    .line 844
    :cond_1
    if-nez v20, :cond_2

    .line 847
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v15, pids:Ljava/util/ArrayList;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    const/4 v3, 0x1

    invoke-static {v3, v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    .line 850
    .local v10, stack:Ljava/io/File;
    const/16 v20, 0x1

    .line 851
    monitor-exit p0

    goto :goto_0

    .line 853
    .end local v10           #stack:Ljava/io/File;
    .end local v15           #pids:Ljava/util/ArrayList;
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    move-object v3, v0

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 860
    .local v8, name:Ljava/lang/String;
    :goto_3
    const/16 v3, 0xaf2

    invoke-static {v3, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 862
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .restart local v15       #pids:Ljava/util/ArrayList;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move v3, v0

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_3
    if-nez v20, :cond_6

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3, v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    .line 871
    .restart local v10       #stack:Ljava/io/File;
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 880
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_4

    .line 881
    new-instance v14, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v14, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 882
    .local v14, mDataFileStats:Landroid/os/StatFs;
    const-string v3, "/data"

    invoke-virtual {v14, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v14}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v14}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/Watchdog;->mFreeMem:J

    .line 884
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 885
    .local v12, cal:Ljava/util/Calendar;
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/Watchdog;->month:Ljava/lang/String;

    .line 886
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/Watchdog;->day:Ljava/lang/String;

    .line 887
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/Watchdog;->hour:Ljava/lang/String;

    .line 888
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xc

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/Watchdog;->min:Ljava/lang/String;

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/Watchdog;->month:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/Watchdog;->day:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/Watchdog;->hour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/Watchdog;->min:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/Watchdog;->sysdump_time:Ljava/lang/String;

    .line 892
    .end local v12           #cal:Ljava/util/Calendar;
    .end local v14           #mDataFileStats:Landroid/os/StatFs;
    :cond_4
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 893
    const-string v3, "/data/log/dumpstate_sys_watchdog.log"

    invoke-static {v3}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 904
    :goto_5
    const-wide/16 v3, 0x2710

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 908
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const-string v4, "watchdog"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HistoryRecord;Lcom/android/server/am/HistoryRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 911
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v3

    if-nez v3, :cond_9

    .line 912
    const-string v3, "Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 914
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 919
    :goto_7
    const/16 v20, 0x0

    .line 920
    goto/16 :goto_0

    .line 859
    .end local v8           #name:Ljava/lang/String;
    .end local v10           #stack:Ljava/io/File;
    .end local v15           #pids:Ljava/util/ArrayList;
    :cond_5
    const-string v3, "null"

    move-object v8, v3

    goto/16 :goto_3

    .line 867
    .restart local v8       #name:Ljava/lang/String;
    .restart local v15       #pids:Ljava/util/ArrayList;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 895
    .restart local v10       #stack:Ljava/io/File;
    :cond_7
    sget-wide v3, Lcom/android/server/Watchdog;->mFreeMem:J

    const-wide/32 v5, 0xb71b00

    cmp-long v3, v3, v5

    if-ltz v3, :cond_8

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/dumpstate_sys_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/Watchdog;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_watchdog.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_5

    .line 898
    :cond_8
    const-string v3, "Watchdog"

    const-string v4, "An available memory usage is less than 12MB currently"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v3, "/data/log/dumpstate_sys_watchdog.log"

    invoke-static {v3}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_5

    .line 916
    :cond_9
    const-string v3, "Watchdog"

    const-string v4, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 905
    :catch_1
    move-exception v3

    goto/16 :goto_6
.end method

.method shouldWeBeBrutalLocked(J)Ljava/lang/String;
    .locals 4
    .parameter "curTime"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    :cond_0
    const-string v0, "battery"

    .line 745
    :goto_0
    return-object v0

    .line 735
    :cond_1
    iget v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->timeSinceScreenOn()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 737
    :cond_2
    const-string v0, "screen"

    goto :goto_0

    .line 740
    :cond_3
    iget v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->timeToNextAlarm()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 742
    :cond_4
    const-string v0, "alarm"

    goto :goto_0

    .line 745
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
