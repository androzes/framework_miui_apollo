.class public Lcom/android/server/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 89
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 212
    new-instance v0, Lcom/android/server/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 68
    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 89
    :array_2
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 102
    :array_3
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    .line 66
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .line 86
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 87
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    .line 108
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    .line 112
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad1:F

    .line 113
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad5:F

    .line 114
    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad15:F

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 141
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    .line 233
    iput-boolean p1, p0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    .line 234
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
    .locals 28
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 316
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ProcessStats$Stats;>;"
    .local p6, workingProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ProcessStats$Stats;>;"
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->clear()V

    .line 318
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v20

    .line 319
    .local v20, pids:[I
    if-nez v20, :cond_1

    const/4 v5, 0x0

    move v12, v5

    .line 320
    .local v12, NP:I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 321
    .local v13, NS:I
    const/4 v14, 0x0

    .line 322
    .local v14, curStatsIndex:I
    const/4 v15, 0x0

    .end local p1
    .local v15, i:I
    :goto_1
    if-ge v15, v12, :cond_0

    .line 323
    aget v7, v20, v15

    .line 324
    .local v7, pid:I
    if-gez v7, :cond_2

    .line 325
    move v12, v7

    .line 450
    .end local v7           #pid:I
    :cond_0
    :goto_2
    if-ge v14, v13, :cond_10

    .line 452
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/ProcessStats$Stats;

    .line 453
    .local v23, st:Lcom/android/server/ProcessStats$Stats;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 454
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 455
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 456
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 457
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    .line 458
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 460
    add-int/lit8 v13, v13, -0x1

    .line 462
    goto :goto_2

    .line 319
    .end local v12           #NP:I
    .end local v13           #NS:I
    .end local v14           #curStatsIndex:I
    .end local v15           #i:I
    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    .restart local p1
    :cond_1
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    move v12, v5

    goto :goto_0

    .line 328
    .end local p1
    .restart local v7       #pid:I
    .restart local v12       #NP:I
    .restart local v13       #NS:I
    .restart local v14       #curStatsIndex:I
    .restart local v15       #i:I
    :cond_2
    if-ge v14, v13, :cond_4

    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ProcessStats$Stats;

    move-object/from16 v23, p1

    .line 330
    .restart local v23       #st:Lcom/android/server/ProcessStats$Stats;
    :goto_3
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-ne v5, v7, :cond_9

    .line 332
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    .line 333
    add-int/lit8 v14, v14, 0x1

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v21, v0

    .line 337
    .local v21, procStats:[J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, v21

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-nez v5, :cond_5

    .line 322
    .end local v21           #procStats:[J
    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 328
    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v23, v5

    goto :goto_3

    .line 342
    .restart local v21       #procStats:[J
    .restart local v23       #st:Lcom/android/server/ProcessStats$Stats;
    :cond_5
    const/4 v5, 0x0

    aget-wide v18, v21, v5

    .line 343
    .local v18, minfaults:J
    const/4 v5, 0x1

    aget-wide v16, v21, v5

    .line 344
    .local v16, majfaults:J
    const/4 v5, 0x2

    aget-wide v26, v21, v5

    .line 345
    .local v26, utime:J
    const/4 v5, 0x3

    aget-wide v24, v21, v5

    .line 347
    .local v24, stime:J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    cmp-long v5, v26, v5

    if-nez v5, :cond_6

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    cmp-long v5, v24, v5

    if-nez v5, :cond_6

    .line 348
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 349
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 350
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 351
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 352
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 353
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    goto :goto_4

    .line 358
    :cond_6
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-nez v5, :cond_7

    .line 359
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    .line 362
    :cond_7
    if-gez p2, :cond_8

    .line 363
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 365
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    .line 371
    :cond_8
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    sub-long v5, v26, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 372
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    sub-long v5, v24, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 373
    move-wide/from16 v0, v26

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 374
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    .line 375
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    move-wide v5, v0

    sub-long v5, v18, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 376
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v5, v0

    sub-long v5, v16, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 377
    move-wide/from16 v0, v18

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    .line 378
    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    .line 382
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 386
    .end local v16           #majfaults:J
    .end local v18           #minfaults:J
    .end local v21           #procStats:[J
    .end local v24           #stime:J
    .end local v26           #utime:J
    :cond_9
    if-eqz v23, :cond_a

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-le v5, v7, :cond_f

    .line 388
    :cond_a
    new-instance v23, Lcom/android/server/ProcessStats$Stats;

    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    move v5, v0

    move-object/from16 v0, v23

    move v1, v7

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ProcessStats$Stats;-><init>(IIZ)V

    .line 389
    .restart local v23       #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p5

    move v1, v14

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 390
    add-int/lit8 v14, v14, 0x1

    .line 391
    add-int/lit8 v13, v13, 0x1

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v22, v0

    .line 395
    .local v22, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v21, v0

    .line 396
    .restart local v21       #procStats:[J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 399
    if-gez p2, :cond_c

    const/4 v5, 0x0

    aget-object v5, v22, v5

    :goto_5
    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 401
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 402
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    .line 403
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    .line 410
    :goto_6
    if-gez p2, :cond_e

    .line 411
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    .line 423
    :cond_b
    :goto_7
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 424
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 425
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 426
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 427
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    .line 428
    if-nez p3, :cond_3

    .line 429
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 399
    :cond_c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 405
    :cond_d
    const-string v5, "<unknown>"

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 406
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    .line 407
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    goto :goto_6

    .line 413
    :cond_e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 414
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    .line 415
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_b

    .line 416
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    goto/16 :goto_7

    .line 435
    .end local v21           #procStats:[J
    .end local v22           #procStatsString:[Ljava/lang/String;
    :cond_f
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    .line 436
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    .line 437
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    .line 438
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    .line 439
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    .line 440
    move-object/from16 v0, p6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    add-int/lit8 v13, v13, -0x1

    .line 446
    add-int/lit8 v15, v15, -0x1

    .line 447
    goto/16 :goto_4

    .line 464
    .end local v7           #pid:I
    .end local v23           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_10
    return-object v20
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .parameter "out"

    .prologue
    const/16 v13, 0x14

    const/4 v12, 0x0

    .line 503
    move-object v6, p1

    .line 504
    .local v6, tempTimes:[J
    iget-object v5, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    .line 505
    .local v5, tempSpeeds:[J
    const/16 v0, 0x14

    .line 506
    .local v0, MAX_SPEEDS:I
    if-nez p1, :cond_0

    .line 507
    new-array v6, v13, [J

    .line 508
    new-array v5, v13, [J

    .line 510
    :cond_0
    const/4 v3, 0x0

    .line 511
    .local v3, speed:I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 514
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 516
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, token:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 519
    .local v8, val:J
    aput-wide v8, v5, v3

    .line 520
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 521
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 522
    aput-wide v8, v6, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 524
    if-ne v3, v13, :cond_1

    .line 534
    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #val:J
    :cond_2
    if-nez p1, :cond_3

    .line 535
    new-array p1, v3, [J

    .line 536
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    .line 537
    iget-object v10, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :cond_3
    return-object p1

    .line 529
    .restart local v4       #st:Ljava/util/StringTokenizer;
    .restart local v7       #token:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 530
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "ProcessStats"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 6
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    const/4 v5, 0x1

    .line 699
    iget-object v2, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 700
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 701
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 703
    move-object v2, v0

    .line 704
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, i:I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    .line 706
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    .end local v0           #cmdName:Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 711
    :cond_2
    iput-object v2, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 712
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    .line 714
    :cond_3
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    const-string v2, " "

    const-string v1, " + "

    .line 636
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    if-nez p4, :cond_0

    const/4 p4, 0x1

    .line 640
    :cond_0
    add-int v0, p5, p6

    add-int/2addr v0, p7

    add-int/2addr v0, p8

    add-int/2addr v0, p9

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 641
    const-string v0, "% = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    mul-int/lit8 v0, p5, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 643
    const-string v0, "% user + "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    mul-int/lit8 v0, p6, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 645
    const-string v0, "% kernel"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    if-lez p7, :cond_1

    .line 647
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    mul-int/lit8 v0, p7, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 649
    const-string v0, "% iowait"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    :cond_1
    if-lez p8, :cond_2

    .line 652
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    mul-int/lit8 v0, p8, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 654
    const-string v0, "% irq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    :cond_2
    if-lez p9, :cond_3

    .line 657
    const-string v0, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    mul-int/lit8 v0, p9, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 659
    const-string v0, "% softirq"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    :cond_3
    if-gtz p10, :cond_4

    if-lez p11, :cond_6

    .line 662
    :cond_4
    const-string v0, " / faults:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    if-lez p10, :cond_5

    .line 664
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(I)V

    .line 666
    const-string v0, " minor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    :cond_5
    if-lez p11, :cond_6

    .line 669
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->print(I)V

    .line 671
    const-string v0, " major"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 675
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 679
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 680
    .local v1, is:Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 681
    .local v2, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 683
    if-lez v2, :cond_2

    .line 685
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 686
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    aget-byte v3, v3, v0

    if-ne v3, p2, :cond_1

    .line 690
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :goto_1
    return-object v3

    .line 685
    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    .restart local v2       #len:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :catch_0
    move-exception v3

    .line 695
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 692
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public final countWorkingStats()I
    .locals 2

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 8
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .line 470
    .local v1, statsData:[J
    sget-object v4, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .local v2, time:J
    move-wide v4, v2

    .line 476
    .end local v2           #time:J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 485
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_0

    .line 486
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    .line 487
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 489
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/android/server/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 493
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .line 495
    .local v1, temp:J
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 496
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    .end local v1           #temp:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 568
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/ProcessStats$Stats;

    return-object p0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/server/ProcessStats;->update()V

    .line 246
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    .line 237
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentState()Ljava/lang/String;
    .locals 23

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    move v2, v0

    if-nez v2, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    sget-object v3, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 587
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 590
    :cond_0
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 591
    .local v21, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 592
    .local v3, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad1:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 594
    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad5:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 596
    const-string v2, " / "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad15:F

    move v2, v0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 601
    .local v18, now:J
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v4, v0

    sub-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 603
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v4, v0

    sub-long v4, v18, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 605
    const-string v2, "ms ago:"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v4, v0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    move v4, v0

    add-int v6, v2, v4

    .line 610
    .local v6, totalTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 611
    .local v15, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_6

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/ProcessStats$Stats;

    .line 613
    .local v20, st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v2, v0

    if-eqz v2, :cond_1

    const-string v2, " +"

    move-object v4, v2

    :goto_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v7, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    move v12, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    move v13, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 616
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 617
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 618
    .local v14, M:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_2
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_5

    .line 619
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/ProcessStats$Stats;

    .line 620
    .local v22, tst:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v2, v0

    if-eqz v2, :cond_3

    const-string v2, "   +"

    move-object v4, v2

    :goto_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v7, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 618
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 613
    .end local v14           #M:I
    .end local v17           #j:I
    .end local v22           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-eqz v2, :cond_2

    const-string v2, " -"

    move-object v4, v2

    goto :goto_1

    :cond_2
    const-string v2, "  "

    move-object v4, v2

    goto/16 :goto_1

    .line 620
    .restart local v14       #M:I
    .restart local v17       #j:I
    .restart local v22       #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_3
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v2, v0

    if-eqz v2, :cond_4

    const-string v2, "   -"

    move-object v4, v2

    goto :goto_3

    :cond_4
    const-string v2, "    "

    move-object v4, v2

    goto :goto_3

    .line 611
    .end local v14           #M:I
    .end local v17           #j:I
    .end local v22           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 628
    .end local v20           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_6
    const-string v4, ""

    const-string v5, "TOTAL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 631
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 29

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v21, v0

    .line 253
    .local v21, loadAverages:[F
    const-string v5, "/proc/loadavg"

    sget-object v6, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 255
    const/4 v5, 0x0

    aget v18, v21, v5

    .line 256
    .local v18, load1:F
    const/4 v5, 0x1

    aget v20, v21, v5

    .line 257
    .local v20, load5:F
    const/4 v5, 0x2

    aget v19, v21, v5

    .line 258
    .local v19, load15:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad1:F

    move v5, v0

    cmpl-float v5, v18, v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad5:F

    move v5, v0

    cmpl-float v5, v20, v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad15:F

    move v5, v0

    cmpl-float v5, v19, v5

    if-eqz v5, :cond_1

    .line 259
    :cond_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad1:F

    .line 260
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad5:F

    .line 261
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad15:F

    .line 262
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ProcessStats;->onLoadChanged(FFF)V

    .line 266
    .end local v18           #load1:F
    .end local v19           #load15:F
    .end local v20           #load5:F
    :cond_1
    const-string v6, "/proc"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mFirst:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurPids:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurPids:[I

    .line 268
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v24, v0

    .line 271
    .local v24, sysCpu:[J
    const-string v5, "/proc/stat"

    sget-object v6, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v24

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    const/4 v5, 0x0

    aget-wide v5, v24, v5

    const/4 v7, 0x1

    aget-wide v7, v24, v7

    add-long v27, v5, v7

    .line 276
    .local v27, usertime:J
    const/4 v5, 0x2

    aget-wide v25, v24, v5

    .line 278
    .local v25, systemtime:J
    const/4 v5, 0x3

    aget-wide v12, v24, v5

    .line 280
    .local v12, idletime:J
    const/4 v5, 0x4

    aget-wide v14, v24, v5

    .line 281
    .local v14, iowaittime:J
    const/4 v5, 0x5

    aget-wide v16, v24, v5

    .line 282
    .local v16, irqtime:J
    const/4 v5, 0x6

    aget-wide v22, v24, v5

    .line 284
    .local v22, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelUserTime:I

    .line 285
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    .line 286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    move-wide v5, v0

    sub-long v5, v14, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    .line 287
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    move-wide v5, v0

    sub-long v5, v16, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    .line 288
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    move-wide v5, v0

    sub-long v5, v22, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    .line 289
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    move-wide v5, v0

    sub-long v5, v12, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    .line 300
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    .line 301
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    .line 302
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    .line 303
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    .line 304
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    .line 305
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    .line 308
    .end local v12           #idletime:J
    .end local v14           #iowaittime:J
    .end local v16           #irqtime:J
    .end local v22           #softirqtime:J
    .end local v25           #systemtime:J
    .end local v27           #usertime:J
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .line 309
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mFirst:Z

    .line 310
    return-void
.end method
