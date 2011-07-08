.class public Lcom/broadcom/bt/service/fm/FmReceiver;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmReceiver.java"


# static fields
.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final FM_VOLUME_MAX:I = 0x100

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x81

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmReceiver"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

.field private mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

.field private mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/fm/IFmReceiverService;Landroid/content/ServiceConnection;)V
    .locals 3
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 264
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 761
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiver$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/FmReceiver$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    .line 265
    iput-object p2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FmReceiver"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 4
    .parameter "nflLevel"

    .prologue
    .line 718
    monitor-enter p0

    const/4 v1, 0x2

    .line 721
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 726
    :goto_0
    monitor-exit p0

    return v1

    .line 722
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 723
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "estimateNoiseFloorLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 718
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 844
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 845
    return-void
.end method

.method public declared-synchronized getStatus()I
    .locals 4

    .prologue
    .line 412
    monitor-enter p0

    const/4 v1, 0x2

    .line 415
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 420
    :goto_0
    monitor-exit p0

    return v1

    .line 416
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "getStatus() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 433
    monitor-enter p0

    const/4 v1, 0x2

    .line 436
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->muteAudio(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 441
    :goto_0
    monitor-exit p0

    return v1

    .line 437
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 438
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 295
    return-void
.end method

.method public seekRdsStation(III)I
    .locals 1
    .parameter "scanMode"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 533
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 4
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 504
    monitor-enter p0

    const/4 v1, 0x2

    .line 507
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekRdsStation(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 513
    :goto_0
    monitor-exit p0

    return v1

    .line 509
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekRdsStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStation(I)I
    .locals 1
    .parameter "scanMode"

    .prologue
    .line 483
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 4
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 458
    monitor-enter p0

    const/4 v1, 0x2

    .line 461
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStation(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 466
    :goto_0
    monitor-exit p0

    return v1

    .line 462
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    .prologue
    .line 547
    monitor-enter p0

    const/4 v1, 0x2

    .line 550
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStationAbort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 555
    :goto_0
    monitor-exit p0

    return v1

    .line 551
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 552
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "seekStationAbort() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 4
    .parameter "audioMode"

    .prologue
    .line 599
    monitor-enter p0

    const/4 v1, 0x2

    .line 602
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioMode(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 607
    :goto_0
    monitor-exit p0

    return v1

    .line 603
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 599
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 624
    monitor-enter p0

    const/4 v1, 0x2

    .line 627
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioPath(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 632
    :goto_0
    monitor-exit p0

    return v1

    .line 628
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 668
    monitor-enter p0

    const/4 v1, 0x2

    .line 671
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setFMVolume(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 676
    :goto_0
    monitor-exit p0

    return v1

    .line 672
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setFMVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 4
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 742
    monitor-enter p0

    const/4 v1, 0x2

    .line 745
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 752
    :goto_0
    monitor-exit p0

    return v1

    .line 748
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 749
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string v3, "setLiveAudioPolling() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 4
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 574
    monitor-enter p0

    const/4 v1, 0x2

    .line 577
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 583
    :goto_0
    monitor-exit p0

    return v1

    .line 579
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 574
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 4
    .parameter "stepSize"

    .prologue
    .line 647
    monitor-enter p0

    const/4 v1, 0x2

    .line 650
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setStepSize(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 655
    :goto_0
    monitor-exit p0

    return v1

    .line 651
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 652
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 4
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 693
    monitor-enter p0

    const/4 v1, 0x2

    .line 696
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setWorldRegion(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 702
    :goto_0
    monitor-exit p0

    return v1

    .line 698
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setWorldRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 693
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 4
    .parameter "freq"

    .prologue
    .line 393
    monitor-enter p0

    const/4 v1, 0x2

    .line 396
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->tuneRadio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 401
    :goto_0
    monitor-exit p0

    return v1

    .line 397
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 398
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 4

    .prologue
    .line 372
    monitor-enter p0

    const/4 v1, 0x2

    .line 375
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOffRadio()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 380
    :goto_0
    monitor-exit p0

    return v1

    .line 376
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 377
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "turnOffRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public turnOnRadio()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .locals 4
    .parameter "functionalityMask"

    .prologue
    .line 334
    monitor-enter p0

    const/4 v1, 0x2

    .line 337
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOnRadio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    monitor-exit p0

    return v1

    .line 338
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "turnOnRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unregisterEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const-string v1, "FmReceiver"

    .line 306
    const-string v0, "FmReceiver"

    const-string v0, "<-- unregisterEventHandler(...)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    if-ne v0, p1, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mFmReceiverEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 310
    const-string v0, "FmReceiver"

    const-string v0, "APP\'s call back unregistered..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v0, "FmReceiver"

    const-string/jumbo v0, "unregisterEventHandler: Error Handle mismatch."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
