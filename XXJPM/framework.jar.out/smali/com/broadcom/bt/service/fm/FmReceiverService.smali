.class public Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.source "FmReceiverService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 96
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getFmReceiverEventLoop()Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    .line 97
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->setFMService(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 100
    :cond_0
    return-void
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initNativeDataNative()V
.end method

.method private native muteNative(Z)Z
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 7
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 880
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    const/4 v2, 0x0

    .line 885
    .local v2, returnStatus:I
    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eqz p1, :cond_1

    .line 888
    const/4 v2, 0x4

    .line 914
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 889
    :cond_1
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_2

    .line 890
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v2, 0x3

    goto :goto_0

    .line 893
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 895
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 896
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 897
    const/16 v3, 0x63

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 898
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 899
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 903
    const/4 v2, 0x0

    .line 910
    :goto_1
    if-eqz v2, :cond_0

    .line 911
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 880
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 905
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 908
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->finalize()V

    .line 120
    return-void
.end method

.method public declared-synchronized getStatus()I
    .locals 4

    .prologue
    const-string v1, "FmReceiverService"

    .line 336
    monitor-enter p0

    :try_start_0
    const-string v1, "FmReceiverService"

    const-string v2, "getStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_0

    .line 341
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v0, 0x3

    .line 349
    :goto_0
    monitor-exit p0

    return v0

    .line 346
    :cond_0
    :try_start_1
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallbackFromLocalStore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v0           #returnStatus:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 0

    .prologue
    .line 114
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 6
    .parameter "mute"

    .prologue
    const-string v3, "FmReceiverService"

    .line 360
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 365
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    const/4 v2, 0x3

    .line 389
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 368
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 370
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 371
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 372
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 373
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    const/4 v2, 0x0

    .line 385
    :goto_1
    if-eqz v2, :cond_0

    .line 386
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 360
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 380
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 383
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 8
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 463
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "seekRdsStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    const/4 v2, 0x0

    .line 468
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    if-le p2, v7, :cond_2

    .line 470
    :cond_0
    const/4 v2, 0x4

    .line 506
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 471
    :cond_2
    if-ltz p4, :cond_3

    if-le p4, v7, :cond_4

    .line 473
    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    .line 474
    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v5, :cond_5

    if-eq p3, v6, :cond_5

    .line 477
    const/4 v2, 0x4

    goto :goto_0

    .line 478
    :cond_5
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_6

    .line 479
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v2, 0x3

    goto :goto_0

    .line 482
    :cond_6
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 485
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 486
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 487
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    and-int/lit16 p1, p1, 0x82

    .line 494
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 495
    const/4 v2, 0x0

    .line 502
    :goto_1
    if-eqz v2, :cond_1

    .line 503
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 463
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 497
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 500
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized seekStation(II)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const-string v3, "FmReceiverService"

    .line 406
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "seekStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    const/4 v2, 0x0

    .line 411
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    .line 413
    :cond_0
    const/4 v2, 0x4

    .line 442
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 414
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 415
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v2, 0x3

    goto :goto_0

    .line 418
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 420
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 421
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 422
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 423
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    and-int/lit16 p1, p1, 0x82

    .line 430
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    const/4 v2, 0x0

    .line 438
    :goto_1
    if-eqz v2, :cond_1

    .line 439
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 406
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 433
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 436
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 6

    .prologue
    const-string v3, "FmReceiverService"

    .line 519
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "seekStationAbort()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 524
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    const/4 v2, 0x3

    .line 548
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 527
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 529
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 530
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 531
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 532
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :try_start_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    const/4 v2, 0x0

    .line 544
    :goto_1
    if-eqz v2, :cond_0

    .line 545
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 519
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 539
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 542
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "searchAbortNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 6
    .parameter "audioMode"

    .prologue
    const-string v3, "FmReceiverService"

    .line 629
    monitor-enter p0

    const/4 v2, 0x0

    .line 631
    .local v2, returnStatus:I
    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 634
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    const/4 v2, 0x3

    .line 662
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 637
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 639
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 640
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 641
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 642
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    and-int/lit8 p1, p1, 0x3

    .line 649
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    const/4 v2, 0x0

    .line 657
    :goto_1
    if-eqz v2, :cond_0

    .line 658
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 629
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 652
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 655
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 6
    .parameter "audioPath"

    .prologue
    const-string v3, "FmReceiverService"

    .line 679
    monitor-enter p0

    const/4 v2, 0x0

    .line 681
    .local v2, returnStatus:I
    :try_start_0
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioPath("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 684
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v2, 0x3

    .line 708
    :goto_0
    if-eqz v2, :cond_0

    .line 709
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :cond_0
    monitor-exit p0

    return v2

    .line 687
    :cond_1
    const/4 v3, 0x4

    :try_start_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 689
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 690
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 691
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 692
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    and-int/lit8 p1, p1, 0x3

    .line 699
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 700
    const/4 v2, 0x0

    goto :goto_0

    .line 702
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 705
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 679
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 6
    .parameter "volume"

    .prologue
    const-string v3, "FmReceiverService"

    .line 774
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v2, 0x0

    .line 779
    .local v2, returnStatus:I
    if-ltz p1, :cond_0

    const/16 v3, 0x100

    if-le p1, v3, :cond_2

    .line 781
    :cond_0
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volume is illegal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    const/4 v2, 0x4

    .line 808
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 783
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 784
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x3

    goto :goto_0

    .line 787
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 789
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 790
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 791
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 792
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 794
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFMVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 797
    const/4 v2, 0x0

    .line 804
    :goto_1
    if-eqz v2, :cond_1

    .line 805
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 774
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 799
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 802
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolumeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 5
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const-string v2, "STATE = "

    const-string v2, "FmReceiverService"

    .line 932
    monitor-enter p0

    const/4 v1, 0x0

    .line 934
    .local v1, returnStatus:I
    :try_start_0
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_0

    const v2, 0x186a0

    if-le p2, v2, :cond_1

    .line 939
    :cond_0
    const/4 v1, 0x4

    .line 960
    :goto_0
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return v1

    .line 940
    :cond_1
    :try_start_1
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v2, :cond_2

    .line 941
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v1, 0x3

    goto :goto_0

    .line 944
    :cond_2
    const/4 v2, 0x2

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 949
    const/4 v1, 0x0

    .line 957
    :goto_1
    const/4 v2, 0x2

    :try_start_3
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 932
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 951
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 952
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 953
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 954
    :try_start_4
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 11
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "FmReceiverService"

    .line 567
    monitor-enter p0

    const/4 v5, 0x0

    .line 569
    .local v5, returnStatus:I
    :try_start_0
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    if-ltz p4, :cond_0

    const/16 v6, 0xff

    if-le p4, v6, :cond_2

    .line 574
    :cond_0
    const/4 v5, 0x4

    .line 613
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 575
    :cond_2
    const/4 v6, 0x2

    :try_start_1
    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v7, :cond_3

    .line 576
    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v5, 0x3

    goto :goto_0

    .line 579
    :cond_3
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 580
    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 582
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 583
    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    .line 584
    const/16 v6, 0x64

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 585
    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v6, v6, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v6, v6, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    and-int/lit8 p1, p1, 0x3

    .line 590
    and-int/lit8 p3, p3, 0x1

    .line 591
    and-int/lit8 p2, p2, 0x7c

    .line 592
    if-eqz p1, :cond_4

    move v4, v9

    .line 593
    .local v4, rdsOnNative:Z
    :goto_1
    if-eqz p3, :cond_5

    move v0, v9

    .line 596
    .local v0, afOnNative:Z
    :goto_2
    and-int/lit8 v3, p1, 0x1

    .line 600
    .local v3, rdsModeNative:I
    :try_start_2
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    .line 601
    const/4 v5, 0x0

    .line 609
    :goto_3
    if-eqz v5, :cond_1

    .line 610
    :try_start_3
    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v6, v6, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 567
    .end local v0           #afOnNative:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v2       #msg:Landroid/os/Message;
    :cond_4
    move v4, v10

    .line 592
    goto :goto_1

    .restart local v4       #rdsOnNative:Z
    :cond_5
    move v0, v10

    .line 593
    goto :goto_2

    .line 603
    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    :cond_6
    const/4 v5, 0x2

    goto :goto_3

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "FmReceiverService"

    const-string v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 607
    const/4 v5, 0x2

    goto :goto_3
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 6
    .parameter "stepSize"

    .prologue
    const-string v3, "FmReceiverService"

    .line 728
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setStepSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    const/4 v2, 0x0

    .line 733
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    .line 735
    const/4 v2, 0x4

    .line 761
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 736
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 737
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v2, 0x3

    goto :goto_0

    .line 740
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 742
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 743
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 744
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 745
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 750
    const/4 v2, 0x0

    .line 757
    :goto_1
    if-eqz v2, :cond_0

    .line 758
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 728
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 752
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 755
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 824
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string v4, "setWorldRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    const/4 v2, 0x0

    .line 829
    .local v2, returnStatus:I
    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    .line 832
    const/4 v2, 0x4

    .line 861
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 833
    :cond_1
    if-eqz p2, :cond_2

    const/16 v3, 0x40

    if-eq p2, v3, :cond_2

    .line 835
    const/4 v2, 0x4

    goto :goto_0

    .line 836
    :cond_2
    :try_start_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_3

    .line 837
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v2, 0x3

    goto :goto_0

    .line 840
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 842
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 843
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 844
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 845
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 850
    const/4 v2, 0x0

    .line 857
    :goto_1
    if-eqz v2, :cond_0

    .line 858
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 824
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 852
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 853
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 854
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 855
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 284
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "tuneRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const/4 v2, 0x0

    .line 289
    .local v2, returnStatus:I
    if-lt p1, v5, :cond_0

    const v3, 0x1869f

    if-le p1, v3, :cond_2

    .line 292
    :cond_0
    const/4 v2, 0x4

    .line 324
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 295
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 297
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v2, 0x3

    goto :goto_0

    .line 302
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 304
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 305
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 306
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 307
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 313
    const/4 v2, 0x0

    .line 320
    :goto_1
    if-eqz v2, :cond_1

    .line 321
    :try_start_3
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 284
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 315
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 318
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 6

    .prologue
    const-string v3, "FmReceiverService"

    .line 235
    monitor-enter p0

    :try_start_0
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "turnOffRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_0

    .line 241
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :cond_0
    const/4 v3, 0x3

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 246
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 247
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 248
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    const/4 v2, 0x0

    .line 261
    :goto_0
    if-eqz v2, :cond_1

    .line 263
    :try_start_2
    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v3, v3, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    :cond_1
    const/4 v3, 0x0

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    monitor-exit p0

    return v2

    .line 255
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 258
    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 8
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x1

    const-string v5, "FmReceiverService"

    .line 165
    monitor-enter p0

    :try_start_0
    const-string v5, "FmReceiverService"

    const-string/jumbo v6, "turnOnRadio()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v4, 0x0

    .line 168
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 169
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 172
    .local v2, requestedRdsFeatures:I
    if-eq v3, v7, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    if-eqz v3, :cond_1

    .line 176
    const/4 v4, 0x4

    .line 221
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 178
    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_2

    .line 181
    const/4 v4, 0x4

    goto :goto_0

    .line 183
    :cond_2
    :try_start_1
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_3

    .line 185
    const-string v5, "FmReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v4, 0x3

    goto :goto_0

    .line 190
    :cond_3
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 191
    const/4 v5, 0x1

    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 193
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 194
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 195
    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 196
    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v5, v5, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v5, v5, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    and-int/lit8 p1, p1, 0x73

    .line 204
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    const/4 v4, 0x0

    .line 216
    :goto_1
    if-eqz v4, :cond_0

    .line 217
    :try_start_3
    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    iget-object v5, v5, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 165
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #requestedRdsFeatures:I
    .end local v3           #requestedRegion:I
    .end local v4           #returnStatus:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 210
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #requestedRdsFeatures:I
    .restart local v3       #requestedRegion:I
    .restart local v4       #returnStatus:I
    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 214
    :try_start_4
    const-string v5, "FmReceiverService"

    const-string/jumbo v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mFM_Loop:Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
