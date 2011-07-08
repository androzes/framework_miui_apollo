.class public Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverEventLoop.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmReceiverEventLoop"


# instance fields
.field private mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 97
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->classFmInitNative()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 229
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    .line 104
    iput-object p2, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 105
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->startFM_Loop()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method private static native classFmInitNative()V
.end method

.method private native cleanupLoopNative()V
.end method

.method private native disableNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private initializeStateMachine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 164
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 165
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 166
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 167
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 168
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 169
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 170
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 171
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 172
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 173
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 174
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 175
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 176
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 177
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 178
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 179
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 180
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 181
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 182
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 183
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 184
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 185
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 186
    return-void
.end method

.method private sendAudioModeEventCallback(I)V
    .locals 5
    .parameter "audioMode"

    .prologue
    .line 410
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendAudioModeEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 412
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 415
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 417
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 420
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 421
    return-void
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 398
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendAudioModeEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendAudioModeEventCallback(I)V

    .line 400
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .locals 5
    .parameter "audioPath"

    .prologue
    .line 441
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendAudioPathEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 443
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 446
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 448
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 451
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 452
    return-void
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendAudioPathEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendAudioPathEventCallback(I)V

    .line 431
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .locals 5
    .parameter "nfl"

    .prologue
    .line 503
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendEstimateNflEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 505
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 508
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 510
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 513
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    return-void
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendEstimateNflEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendEstimateNflEventCallback(I)V

    .line 493
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .locals 6
    .parameter "rssi"

    .prologue
    const-string v5, "FmReceiverEventLoop"

    .line 534
    const-string v3, "FmReceiverEventLoop"

    const-string v3, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 536
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 539
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 541
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 544
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 545
    const-string v3, "FmReceiverEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radio_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendLiveAudioQualityEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendLiveAudioQualityEventCallback(I)V

    .line 524
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 5
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 378
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendRdsDataEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 380
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 383
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 386
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 389
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 390
    return-void
.end method

.method private sendRdsDataEventCallbackFromLocalStore()V
    .locals 3

    .prologue
    .line 365
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "TEST RDS MESSAGE"

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 366
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .locals 5
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    .line 345
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendRdsModeEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 347
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 353
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 357
    return-void
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 325
    const-string v2, "FmReceiverEventLoop"

    const-string v3, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, rds:I
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v2, :cond_1

    move v0, v4

    .line 329
    .local v0, af:I
    :goto_0
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v2, :cond_0

    .line 330
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v2, :cond_2

    move v1, v4

    .line 332
    :cond_0
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendRdsModeEventCallback(II)V

    .line 333
    return-void

    .line 327
    .end local v0           #af:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 330
    .restart local v0       #af:I
    :cond_2
    const/4 v2, 0x2

    move v1, v2

    goto :goto_1
.end method

.method private sendSeekCompleteEventCallback(IIZ)V
    .locals 5
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"

    .prologue
    .line 305
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendSeekCompleteEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 307
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 310
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 313
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 316
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 317
    return-void
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore()V
    .locals 3

    .prologue
    .line 288
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendSeekCompleteEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendSeekCompleteEventCallback(IIZ)V

    .line 291
    return-void
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 206
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendStatusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .line 208
    .local v9, callbacks:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 220
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 224
    return-void
.end method

.method private sendVolumeEventCallback(II)V
    .locals 5
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 558
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendVolumeEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 560
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 563
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 565
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 568
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 569
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .locals 5
    .parameter "worldRegion"

    .prologue
    .line 472
    const-string v3, "FmReceiverEventLoop"

    const-string v4, "sendWorldRegionEventCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 474
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 479
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 482
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 483
    return-void
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendWorldRegionEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendWorldRegionEventCallback(I)V

    .line 462
    return-void
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 2

    .prologue
    .line 577
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendLiveAudioQualityEventCallback(I)V

    .line 579
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->stopFM_Loop()V

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 4
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 717
    const-string v0, "FmReceiverEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    if-nez p1, :cond_0

    .line 724
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 725
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 726
    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 730
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 770
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 777
    if-nez p1, :cond_0

    .line 779
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 780
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 782
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendLiveAudioQualityEventCallbackFromLocalStore()V

    .line 783
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 734
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 743
    if-nez p1, :cond_0

    .line 745
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendAudioModeEventCallbackFromLocalStore()V

    .line 748
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    .line 752
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 761
    if-nez p1, :cond_0

    .line 763
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendAudioPathEventCallbackFromLocalStore()V

    .line 766
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    .line 875
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 882
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .locals 2
    .parameter "status"
    .parameter "muted"

    .prologue
    .line 642
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-nez p1, :cond_0

    .line 647
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 657
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallbackFromLocalStore()V

    .line 658
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 915
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 924
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 925
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 926
    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 613
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez p1, :cond_0

    .line 618
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    const/4 v0, 0x3

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v0, v1, :cond_1

    .line 626
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_2

    .line 628
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 637
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallbackFromLocalStore()V

    .line 638
    return-void

    .line 632
    :cond_2
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioOnEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 584
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-nez p1, :cond_0

    .line 587
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v2, v0, :cond_1

    .line 596
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v0, :cond_2

    .line 598
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 608
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallbackFromLocalStore()V

    .line 609
    return-void

    .line 602
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .locals 3
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    const-string v2, "FmReceiverEventLoop"

    .line 787
    const-string v0, "FmReceiverEventLoop"

    const-string v0, "onRadioRdsModeEvent()"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    if-nez p1, :cond_0

    .line 792
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 793
    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 794
    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 795
    const-string v0, "FmReceiverEventLoop"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 804
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendRdsModeEventCallbackFromLocalStore()V

    .line 807
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 809
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .locals 4
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 814
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    if-nez p1, :cond_0

    .line 819
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 822
    :cond_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_1

    .line 825
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 828
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendRdsModeEventCallbackFromLocalStore()V

    .line 831
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_1
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_0
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    const-string v3, ","

    .line 843
    const-string v0, "FmReceiverEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-nez p1, :cond_0

    .line 850
    packed-switch p2, :pswitch_data_0

    .line 869
    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 871
    :cond_0
    return-void

    .line 852
    :pswitch_1
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    .line 855
    :pswitch_2
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    .line 858
    :pswitch_3
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    .line 861
    :pswitch_4
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    .line 897
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 906
    if-nez p1, :cond_0

    .line 908
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 909
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 911
    :cond_0
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 886
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 893
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 697
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 706
    if-nez p1, :cond_0

    .line 708
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 709
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 710
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 712
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 713
    return-void
.end method

.method public onRadioSearchEvent(II)V
    .locals 3
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 681
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 689
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 690
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 691
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 692
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 693
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 662
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 671
    if-nez p1, :cond_0

    .line 673
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 674
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallbackFromLocalStore()V

    .line 677
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 930
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 938
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendVolumeEventCallback(II)V

    .line 939
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public sendStatusEventCallbackFromLocalStore()V
    .locals 9

    .prologue
    .line 274
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "sendStatusEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    return-void
.end method

.method public declared-synchronized setFMService(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 2
    .parameter "fmService"

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string v1, "setFMService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    monitor-exit p0

    return-void

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->startFM_Loop()V

    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOnRadio(I)I

    .line 126
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "FmReceiverEventLoop"

    const-string/jumbo v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->initLoopNative()V

    .line 145
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverEventLoop"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->stopFM_Loop()V

    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->mService:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I

    .line 137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "FmReceiverEventLoop"

    const-string/jumbo v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->cleanupLoopNative()V

    .line 153
    return-void
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
    .line 89
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverEventLoop;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
