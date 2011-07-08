.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    .line 265
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 394
    :goto_0
    :pswitch_0
    return-void

    .line 273
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v24

    .line 277
    .local v24, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v24, :cond_0

    .line 278
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v18, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v16, v0

    .line 286
    .local v16, oldJournal:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 290
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 292
    .local v13, b:Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    .end local v13           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v15           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 295
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 301
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 309
    new-instance v5, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformBackupTask;->run()V

    goto/16 :goto_0

    .line 311
    :cond_3
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 322
    .end local v16           #oldJournal:Ljava/io/File;
    .end local v18           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v24           #transport:Lcom/android/internal/backup/IBackupTransport;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/BackupManagerService$RestoreParams;

    .line 323
    .local v17, params:Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v5, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v7, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v8, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-wide v9, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object v11, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->run()V

    goto/16 :goto_0

    .line 331
    .end local v17           #params:Lcom/android/server/BackupManagerService$RestoreParams;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/BackupManagerService$ClearParams;

    .line 332
    .local v17, params:Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v5, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v7, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    move-object v8, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_0

    .line 341
    .end local v17           #params:Lcom/android/server/BackupManagerService$ClearParams;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 342
    :try_start_2
    new-instance v19, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 343
    .local v19, queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 344
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    new-instance v5, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_0

    .line 344
    .end local v19           #queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 353
    :pswitch_5
    const/16 v21, 0x0

    .line 354
    .local v21, sets:[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    .line 356
    .local v17, params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    :try_start_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v21

    .line 358
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object v5, v0

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 359
    :try_start_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    iput-object v0, v1, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 360
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 361
    if-nez v21, :cond_4

    const/16 v5, 0xb0f

    const/4 v6, 0x0

    :try_start_6
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 365
    :cond_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 367
    :try_start_7
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 375
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 360
    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 362
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 363
    .local v14, e:Ljava/lang/Exception;
    :try_start_a
    const-string v5, "BackupManagerService"

    const-string v6, "Error from transport getting set list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 365
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 367
    :try_start_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 375
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 368
    .end local v14           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object/from16 v20, v5

    .line 369
    .local v20, re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 370
    .end local v20           #re:Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    move-object v14, v5

    .line 371
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    invoke-static {v5, v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 368
    :catch_3
    move-exception v5

    move-object/from16 v20, v5

    .line 369
    .restart local v20       #re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 370
    .end local v20           #re:Landroid/os/RemoteException;
    :catch_4
    move-exception v5

    move-object v14, v5

    .line 371
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    invoke-static {v5, v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 365
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v6, v0

    if-eqz v6, :cond_7

    .line 367
    :try_start_c
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 375
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 368
    :catch_5
    move-exception v6

    move-object/from16 v20, v6

    .line 369
    .restart local v20       #re:Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Unable to report listing to observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 370
    .end local v20           #re:Landroid/os/RemoteException;
    :catch_6
    move-exception v6

    move-object v14, v6

    .line 371
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    const-string v7, "Restore observer threw"

    invoke-static {v6, v7, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 382
    .end local v14           #e:Ljava/lang/Exception;
    .end local v17           #params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .end local v21           #sets:[Landroid/app/backup/RestoreSet;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 383
    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 384
    .local v23, token:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v1, v23

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v22

    .line 385
    .local v22, state:I
    if-nez v22, :cond_8

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v1, v23

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 390
    monitor-exit v5

    goto/16 :goto_0

    .end local v22           #state:I
    .end local v23           #token:I
    :catchall_4
    move-exception v6

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v6

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
