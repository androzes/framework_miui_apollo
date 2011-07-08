.class Lcom/android/settings/RunningServices$State;
.super Ljava/lang/Object;
.source "RunningServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field final mActiveProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field mForegroundProcessMemory:J

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/RunningServices$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/RunningServices$ServiceProcessComparator;

.field mServiceProcessMemory:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    .line 414
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    .line 416
    new-instance v0, Lcom/android/settings/RunningServices$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/android/settings/RunningServices$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mServiceProcessComparator:Lcom/android/settings/RunningServices$ServiceProcessComparator;

    .line 420
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mProcessItems:Ljava/util/ArrayList;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RunningServices$State;->mSequence:I

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mLock:Ljava/lang/Object;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RunningServices$State;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/RunningServices$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/settings/RunningServices$State;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/RunningServices$State;->mItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 43
    .parameter "context"
    .parameter "am"

    .prologue
    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    .line 446
    .local v29, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/RunningServices$State;->mSequence:I

    .line 448
    const/4 v10, 0x0

    .line 450
    .local v10, changed:Z
    const/16 v39, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v35

    .line 452
    .local v35, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v35, :cond_1

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v7, v39

    .line 453
    .local v7, NS:I
    :goto_0
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v7, :cond_a

    .line 454
    move-object/from16 v0, v35

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 458
    .local v36, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v39, v0

    if-nez v39, :cond_2

    .line 453
    :cond_0
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 452
    .end local v7           #NS:I
    .end local v15           #i:I
    .end local v36           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/16 v39, 0x0

    move/from16 v7, v39

    goto :goto_0

    .line 463
    .restart local v7       #NS:I
    .restart local v15       #i:I
    .restart local v36       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x8

    if-nez v39, :cond_0

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/HashMap;

    .line 469
    .local v32, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/RunningServices$ProcessItem;>;"
    if-nez v32, :cond_3

    .line 470
    new-instance v32, Ljava/util/HashMap;

    .end local v32           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/RunningServices$ProcessItem;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 471
    .restart local v32       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/RunningServices$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    :cond_3
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 474
    .local v30, proc:Lcom/android/settings/RunningServices$ProcessItem;
    if-nez v30, :cond_4

    .line 475
    const/4 v10, 0x1

    .line 476
    new-instance v30, Lcom/android/settings/RunningServices$ProcessItem;

    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v39, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/RunningServices$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 477
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_4
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_8

    .line 481
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v39, v0

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_9

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v39, v0

    move/from16 v26, v39

    .line 482
    .local v26, pid:I
    :goto_3
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    move/from16 v0, v26

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    .line 483
    const/4 v10, 0x1

    .line 484
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 485
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    if-eqz v39, :cond_5

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->remove(I)V

    .line 488
    :cond_5
    if-eqz v26, :cond_6

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    :cond_6
    move/from16 v0, v26

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    .line 494
    :cond_7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->clear()V

    .line 495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    .line 497
    .end local v26           #pid:I
    :cond_8
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/RunningServices$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v39

    or-int v10, v10, v39

    goto/16 :goto_2

    .line 481
    :cond_9
    const/16 v39, 0x0

    move/from16 v26, v39

    goto :goto_3

    .line 502
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    .end local v32           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/RunningServices$ProcessItem;>;"
    .end local v36           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v31

    .line 504
    .local v31, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v31, :cond_d

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v39

    move/from16 v5, v39

    .line 505
    .local v5, NP:I
    :goto_4
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_e

    .line 506
    move-object/from16 v0, v31

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 507
    .local v25, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 508
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    if-nez v30, :cond_c

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 513
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    if-nez v30, :cond_b

    .line 514
    new-instance v30, Lcom/android/settings/RunningServices$ProcessItem;

    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v39, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/RunningServices$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 515
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    :cond_b
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->clear()V

    .line 520
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mRunningSeq:I

    .line 521
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 505
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 504
    .end local v5           #NP:I
    .end local v25           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_d
    const/16 v39, 0x0

    move/from16 v5, v39

    goto/16 :goto_4

    .line 526
    .restart local v5       #NP:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 527
    .local v6, NRP:I
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v6, :cond_13

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 529
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mRunningSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_12

    .line 530
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move v12, v0

    .line 531
    .local v12, clientPid:I
    if-eqz v12, :cond_11

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/RunningServices$ProcessItem;

    .line 533
    .local v11, client:Lcom/android/settings/RunningServices$ProcessItem;
    if-nez v11, :cond_f

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #client:Lcom/android/settings/RunningServices$ProcessItem;
    check-cast v11, Lcom/android/settings/RunningServices$ProcessItem;

    .line 536
    .restart local v11       #client:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_f
    if-eqz v11, :cond_10

    .line 537
    move-object v0, v11

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    .end local v11           #client:Lcom/android/settings/RunningServices$ProcessItem;
    .end local v12           #clientPid:I
    :cond_10
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 543
    .restart local v12       #clientPid:I
    :cond_11
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mClient:Lcom/android/settings/RunningServices$ProcessItem;

    goto :goto_7

    .line 546
    .end local v12           #clientPid:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7

    .line 553
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 554
    .local v4, NAP:I
    const/4 v15, 0x0

    :goto_8
    if-ge v15, v4, :cond_15

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 556
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_14

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v39, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/RunningServices$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v39

    or-int v10, v10, v39

    .line 554
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 562
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_15
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->size()I

    move-result v39

    move v0, v15

    move/from16 v1, v39

    if-ge v0, v1, :cond_1c

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/HashMap;

    .line 564
    .restart local v32       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/RunningServices$ProcessItem;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 565
    .local v28, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/RunningServices$ProcessItem;>;"
    :cond_16
    :goto_a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 566
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/RunningServices$ProcessItem;

    .line 567
    .local v25, pi:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_19

    .line 568
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/RunningServices$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 569
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    if-nez v39, :cond_17

    .line 572
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->clear()V

    .line 585
    :cond_17
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .line 586
    .local v37, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/RunningServices$ServiceItem;>;"
    :cond_18
    :goto_b
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_16

    .line 587
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/settings/RunningServices$ServiceItem;

    .line 588
    .local v36, si:Lcom/android/settings/RunningServices$ServiceItem;
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mCurSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_18

    .line 589
    const/4 v10, 0x1

    .line 590
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 575
    .end local v36           #si:Lcom/android/settings/RunningServices$ServiceItem;
    .end local v37           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/RunningServices$ServiceItem;>;"
    :cond_19
    const/4 v10, 0x1

    .line 576
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->remove()V

    .line 577
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->size()I

    move-result v39

    if-nez v39, :cond_1a

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->remove(I)V

    .line 580
    :cond_1a
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    if-eqz v39, :cond_16

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mActiveProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_a

    .line 562
    .end local v25           #pi:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    .line 596
    .end local v28           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/RunningServices$ProcessItem;>;"
    .end local v32           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/RunningServices$ProcessItem;>;"
    :cond_1c
    if-eqz v10, :cond_25

    .line 598
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v38, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$ProcessItem;>;"
    const/4 v15, 0x0

    .end local p2
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->size()I

    move-result v39

    move v0, v15

    move/from16 v1, v39

    if-ge v0, v1, :cond_21

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_20

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/RunningServices$ProcessItem;

    .line 601
    .restart local v25       #pi:Lcom/android/settings/RunningServices$ProcessItem;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mIsSystem:Z

    .line 602
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mIsStarted:Z

    .line 603
    const-wide v39, 0x7fffffffffffffffL

    move-wide/from16 v0, v39

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    .line 604
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_1f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/settings/RunningServices$ServiceItem;

    .line 605
    .restart local v36       #si:Lcom/android/settings/RunningServices$ServiceItem;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1e

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x1

    if-eqz v39, :cond_1e

    .line 608
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mIsSystem:Z

    .line 610
    :cond_1e
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1d

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v39, v0

    if-eqz v39, :cond_1d

    .line 612
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mIsStarted:Z

    .line 613
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    move-wide/from16 v39, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v41, v0

    cmp-long v39, v39, v41

    if-lez v39, :cond_1d

    .line 614
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/settings/RunningServices$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v39, v0

    move-wide/from16 v0, v39

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    goto :goto_e

    .line 618
    .end local v36           #si:Lcom/android/settings/RunningServices$ServiceItem;
    :cond_1f
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 599
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v25           #pi:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c

    .line 622
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mServiceProcessComparator:Lcom/android/settings/RunningServices$ServiceProcessComparator;

    move-object/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 624
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v20, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$BaseItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->clear()V

    .line 626
    const/4 v15, 0x0

    :goto_f
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v39

    move v0, v15

    move/from16 v1, v39

    if-ge v0, v1, :cond_24

    .line 627
    move-object/from16 v0, v38

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/RunningServices$ProcessItem;

    .line 628
    .restart local v25       #pi:Lcom/android/settings/RunningServices$ProcessItem;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/settings/RunningServices$ProcessItem;->mNeedDivider:Z

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/RunningServices$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 632
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    if-lez v39, :cond_22

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_22
    const/16 v19, 0x0

    .line 638
    .local v19, needDivider:Z
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_23

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/settings/RunningServices$ServiceItem;

    .line 639
    .restart local v36       #si:Lcom/android/settings/RunningServices$ServiceItem;
    move/from16 v0, v19

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/settings/RunningServices$ServiceItem;->mNeedDivider:Z

    .line 640
    const/16 v19, 0x1

    .line 641
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 626
    .end local v36           #si:Lcom/android/settings/RunningServices$ServiceItem;
    :cond_23
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 644
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #needDivider:Z
    .end local v25           #pi:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mLock:Ljava/lang/Object;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 645
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RunningServices$State;->mItems:Ljava/util/ArrayList;

    .line 646
    monitor-exit v39
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .end local v20           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$BaseItem;>;"
    .end local v38           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$ProcessItem;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->clear()V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 653
    const/16 v21, 0x0

    .line 654
    .local v21, numBackgroundProcesses:I
    const/16 v22, 0x0

    .line 655
    .local v22, numForegroundProcesses:I
    const/16 v24, 0x0

    .line 656
    .local v24, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 657
    const/4 v15, 0x0

    :goto_11
    if-ge v15, v6, :cond_29

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 659
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_28

    .line 662
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v39, v0

    const/16 v40, 0x190

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_26

    .line 664
    add-int/lit8 v21, v21, 0x1

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :goto_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 646
    .end local v21           #numBackgroundProcesses:I
    .end local v22           #numForegroundProcesses:I
    .end local v24           #numServiceProcesses:I
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    .restart local v20       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$BaseItem;>;"
    .restart local v38       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$ProcessItem;>;"
    :catchall_0
    move-exception v40

    :try_start_1
    monitor-exit v39
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v40

    .line 666
    .end local v20           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$BaseItem;>;"
    .end local v38           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/RunningServices$ProcessItem;>;"
    .restart local v21       #numBackgroundProcesses:I
    .restart local v22       #numForegroundProcesses:I
    .restart local v24       #numServiceProcesses:I
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_26
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v39, v0

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_27

    .line 668
    add-int/lit8 v22, v22, 0x1

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 671
    :cond_27
    const-string v39, "RunningServices"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unknown non-service process: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " #"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 675
    :cond_28
    add-int/lit8 v24, v24, 0x1

    goto :goto_12

    .line 679
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :cond_29
    const-wide/16 v8, 0x0

    .line 680
    .local v8, backgroundProcessMemory:J
    const-wide/16 v13, 0x0

    .line 681
    .local v13, foregroundProcessMemory:J
    const-wide/16 v33, 0x0

    .line 683
    .local v33, serviceProcessMemory:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 684
    .local v23, numProc:I
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 685
    .local v27, pids:[I
    const/4 v15, 0x0

    :goto_13
    move v0, v15

    move/from16 v1, v23

    if-ge v0, v1, :cond_2a

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RunningServices$ProcessItem;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mPid:I

    move/from16 v39, v0

    aput v39, v27, v15

    .line 685
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 688
    :cond_2a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v18

    .line 690
    .local v18, mem:[Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x1

    sub-int v15, v39, v40

    :goto_14
    if-ltz v15, :cond_2e

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/RunningServices$ProcessItem;

    .line 692
    .restart local v30       #proc:Lcom/android/settings/RunningServices$ProcessItem;
    aget-object v39, v18, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/RunningServices$ProcessItem;->updateSize(Landroid/content/Context;Landroid/os/Debug$MemoryInfo;I)Z

    move-result v39

    or-int v10, v10, v39

    .line 693
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mCurSeq:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/RunningServices$State;->mSequence:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2c

    .line 694
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mSize:J

    move-wide/from16 v39, v0

    add-long v33, v33, v39

    .line 690
    :cond_2b
    :goto_15
    add-int/lit8 v15, v15, -0x1

    goto :goto_14

    .line 695
    :cond_2c
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v39, v0

    const/16 v40, 0x190

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2d

    .line 697
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mSize:J

    move-wide/from16 v39, v0

    add-long v8, v8, v39

    goto :goto_15

    .line 698
    :cond_2d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v39, v0

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_2b

    .line 700
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/settings/RunningServices$ProcessItem;->mSize:J

    move-wide/from16 v39, v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    add-long v13, v13, v39

    goto :goto_15

    .line 703
    .end local v18           #mem:[Landroid/os/Debug$MemoryInfo;
    .end local v23           #numProc:I
    .end local v27           #pids:[I
    .end local v30           #proc:Lcom/android/settings/RunningServices$ProcessItem;
    :catch_0
    move-exception v39

    .line 706
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RunningServices$State;->mLock:Ljava/lang/Object;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 707
    :try_start_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/RunningServices$State;->mNumBackgroundProcesses:I

    .line 708
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/RunningServices$State;->mNumForegroundProcesses:I

    .line 709
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/RunningServices$State;->mNumServiceProcesses:I

    .line 710
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/RunningServices$State;->mBackgroundProcessMemory:J

    .line 711
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/RunningServices$State;->mForegroundProcessMemory:J

    .line 712
    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/RunningServices$State;->mServiceProcessMemory:J

    .line 713
    monitor-exit v39

    .line 715
    return v10

    .line 713
    :catchall_1
    move-exception v40

    monitor-exit v39
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v40
.end method
