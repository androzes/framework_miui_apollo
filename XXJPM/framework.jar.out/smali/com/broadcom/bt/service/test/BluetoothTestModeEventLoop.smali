.class public Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothTestModeEventLoop.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothTestModeEventLoop"


# instance fields
.field private mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

.field private mNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->classInitNative()Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()Z
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "bluetooth_test"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 0

    .prologue
    .line 141
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method onBtldApiCmdInd(II[B)V
    .locals 4
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 129
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBtldApiCmdInd(cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onBtldApiCmdInd(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onTX_Test() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onEnterDUTMode(I)V
    .locals 4
    .parameter "status"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 94
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterDUTMode(status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnterDUTMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onEnterDUTMode() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onEnterTestMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 76
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnterTestMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onEnterTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onExitDUTMode(I)V
    .locals 4
    .parameter "status"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 103
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitDUTMode(status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onExitDUTMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onExitDUTMode() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onExitTestMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 85
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onExitTestMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onExitTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onGetTestMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 67
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onGetTestMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onGetTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onSetTestMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 57
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onSetTestMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onSetTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onTx_Rx_Test(II)V
    .locals 4
    .parameter "mode"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothTestModeEventLoop"

    .line 112
    const-string v1, "BluetoothTestModeEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTX_Test(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onTx_Rx_Test(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeEventLoop"

    const-string v1, "onTX_Test() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .locals 2
    .parameter "callback"

    .prologue
    const-string v0, "BluetoothTestModeEventLoop"

    .line 36
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "BluetoothTestModeEventLoop"

    const-string v1, "Call back is already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 v0, 0x0

    .line 47
    :goto_0
    monitor-exit p0

    return v0

    .line 41
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .line 42
    const-string v0, "BluetoothTestModeEventLoop"

    const-string v1, "#### Registered callback ####"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "BluetoothTestModeEventLoop"

    const-string v1, "#### Call Back is NULL ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    const/4 v0, -0x1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->initializeNativeDataNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "BluetoothTestModeEventLoop"

    const-string v1, "initializeNativeDataNative() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->onStateChangeEvent(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->cleanupNativeDataNative()V

    .line 157
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->unregisterBluetoothTestModeCallback()V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->onStateChangeEvent(Z)V

    .line 159
    return-void
.end method

.method declared-synchronized unregisterBluetoothTestModeCallback()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
