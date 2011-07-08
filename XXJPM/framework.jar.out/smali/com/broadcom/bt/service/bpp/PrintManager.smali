.class public Lcom/broadcom/bt/service/bpp/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"


# static fields
.field private static final MAX_JOBS:I = 0xa

.field private static final MAX_JOB_STATUS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "PrintManager"

.field static mIncrementalJobIndex:J

.field static mJobHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/bpp/PrintJob;",
            ">;"
        }
    .end annotation
.end field

.field static mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/bpp/PrintJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addJobHistory(Lcom/broadcom/bt/service/bpp/PrintJob;)V
    .locals 3
    .parameter "job"

    .prologue
    .line 57
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 58
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_0
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 13
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"

    .prologue
    .line 25
    const-wide/16 v3, -0x1

    .line 26
    .local v3, jobId:J
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-wide v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    sput-wide v5, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .end local v3           #jobId:J
    .local v1, jobId:J
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V

    return-object v0

    .line 28
    .end local v1           #jobId:J
    .restart local v3       #jobId:J
    :catchall_0
    move-exception p0

    move-wide v1, v3

    .end local v3           #jobId:J
    .end local p0
    .restart local v1       #jobId:J
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0
.end method

.method static declared-synchronized dequeueJob()Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 4

    .prologue
    .line 49
    const-class v1, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dequeueJob(): current queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    sget-object v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 5
    .parameter "jobId"

    .prologue
    .line 80
    const-class v2, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 81
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/bpp/PrintJob;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 83
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 88
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :goto_0
    monitor-exit v2

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 80
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/bpp/PrintJob;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method static declared-synchronized queueJob(Lcom/broadcom/bt/service/bpp/PrintJob;)Z
    .locals 6
    .parameter "job"

    .prologue
    const/4 v5, 0x1

    .line 36
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queueJob("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): current queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 39
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {p0}, Lcom/broadcom/bt/service/bpp/PrintManager;->addJobHistory(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 44
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized removeAllJobHistory()V
    .locals 2

    .prologue
    .line 76
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized removeJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    .locals 5
    .parameter "jobId"

    .prologue
    .line 64
    const-class v2, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/bpp/PrintJob;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 67
    .local v1, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    iget-wide v3, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 72
    .end local v1           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :goto_0
    monitor-exit v2

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 64
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/bpp/PrintJob;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method
