.class public Lcom/broadcom/bt/service/test/BluetoothTestModeService;
.super Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.source "BluetoothTestModeService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field public static final DISABLE_RX_TEST_MODE:I = 0x3

.field public static final DISABLE_TESTMODE:I = 0x0

.field public static final DISABLE_TX_TEST_MODE:I = 0x0

.field public static final ENABLE_RX_TEST_MODE:I = 0x2

.field public static final ENABLE_TESTMODE:I = 0x1

.field public static final ENABLE_TX_TEST_MODE:I = 0x1

.field public static final GET_TESTMODE:I = -0x1

.field public static final SET_DUT:I = 0x11

.field public static final SET_RX_TEST:I = 0x41

.field public static final SET_TRACE_LEVEL:I = -0x10000

.field public static final SET_TX_CARRIER_FREQ:I = 0x21

.field public static final SET_TX_TEST:I = 0x31

.field private static final TAG:Ljava/lang/String; = "BluetoothTestModeService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsEventLoopStarted:Z

.field private mTxRxParams:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "bluetooth_test"

    .line 163
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;-><init>()V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    .line 164
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mContext:Landroid/content/Context;

    .line 165
    const-string v1, "bluetooth_test"

    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    .line 167
    const-string v1, "bluetooth_test"

    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;

    .line 168
    .local v0, eventLoop:Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method private native SendBtldApiCmdNative(II[B)I
.end method

.method private native Set_TestNative(Ljava/lang/Object;)V
.end method

.method private native createTestModeNative()V
.end method

.method private native enterDUTModeNative()V
.end method

.method private native exitDUTModeNative()V
.end method

.method private declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .locals 2
    .parameter "cb"

    .prologue
    .line 120
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 122
    :try_start_0
    const-string v1, "bluetooth_test"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;

    .line 123
    .local v0, eventLoop:Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 127
    .end local v0           #eventLoop:Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method public SendBtldApiCmd(II[B)I
    .locals 6
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const/4 v5, -0x1

    const-string v4, "BluetoothTestModeService"

    .line 358
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 359
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 368
    :goto_0
    return v1

    .line 364
    :cond_0
    :try_start_0
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBtldApiCmd(cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothTestModeService"

    const-string v2, "SendBtldApiCmd() call SendBtldApiCmd()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->SendBtldApiCmdNative(II[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 367
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call SendBtldApiCmdNative Failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v5

    .line 368
    goto :goto_0
.end method

.method public Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .locals 5
    .parameter "txRxTestParam"

    .prologue
    const/4 v4, -0x1

    const-string v3, "BluetoothTestModeService"

    .line 332
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 333
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 345
    :goto_0
    return v1

    .line 338
    :cond_0
    :try_start_0
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Set_TX_Test() call Set_TX_TestNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    .line 340
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_TestNative(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    const/4 v1, 0x1

    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 342
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call Set_TX_TestNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 343
    goto :goto_0
.end method

.method public declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .locals 4
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 174
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v2, :cond_0

    .line 175
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Bluetooth Test Mode Service Not Available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const/4 v2, -0x1

    .line 189
    :goto_0
    monitor-exit p0

    return v2

    .line 182
    :cond_0
    :try_start_1
    const-string v2, "BluetoothTestModeService"

    const-string v3, "createTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v1

    .line 184
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v2, v1

    .line 189
    goto :goto_0

    .line 185
    .end local v1           #ret_val:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 186
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enterDUTMode()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-string v3, "BluetoothTestModeService"

    .line 296
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 297
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 308
    :goto_0
    return v1

    .line 302
    :cond_0
    :try_start_0
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterDUTMode() call enterDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTModeNative()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v1, 0x1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call enterDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 306
    goto :goto_0
.end method

.method public declared-synchronized enterTestMode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 198
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 199
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Bluetooth Test Mode Service Not Available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 210
    :goto_0
    monitor-exit p0

    return v1

    .line 204
    :cond_0
    :try_start_1
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterTestMode() call enterTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 210
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 207
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enterTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 208
    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized exitCurrentTestMode()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 278
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Bluetooth Test Mode Service Not Available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 290
    :goto_0
    monitor-exit p0

    return v1

    .line 284
    :cond_0
    :try_start_1
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 290
    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 287
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitCurrentTestMode() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 288
    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public exitDUTMode()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-string v3, "BluetoothTestModeService"

    .line 314
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 315
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Bluetooth Test Mode Service Not Available"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 326
    :goto_0
    return v1

    .line 320
    :cond_0
    :try_start_0
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitDUTMode() call exitDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTModeNative()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v1, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call exitDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 324
    goto :goto_0
.end method

.method public declared-synchronized exitTestMode()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 217
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 218
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Bluetooth Test Mode Service Not Available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 229
    :goto_0
    monitor-exit p0

    return v1

    .line 223
    :cond_0
    :try_start_1
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitTestMode() call exitTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    const/4 v1, 0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 226
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 227
    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 147
    const-string v1, "bluetooth_test"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;

    .line 148
    .local v0, eventLoop:Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->unregisterBluetoothTestModeCallback()V

    .line 150
    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeEventLoop;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method public declared-synchronized getTestMode()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 233
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v1, :cond_0

    .line 234
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Bluetooth Test Mode Service Not Available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 245
    :goto_0
    monitor-exit p0

    return v1

    .line 239
    :cond_0
    :try_start_1
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getTestMode() call setTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    const/4 v1, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 242
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call setTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 243
    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    .line 376
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    .line 380
    return-void
.end method

.method public declared-synchronized setTraceLevel(BB)I
    .locals 6
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const/4 v5, -0x1

    const-string v2, "BluetoothTestModeService"

    .line 255
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mIsEventLoopStarted:Z

    if-nez v2, :cond_0

    .line 256
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Bluetooth Test Mode Service Not Available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    .line 268
    :goto_0
    monitor-exit p0

    return v2

    .line 261
    :cond_0
    const/high16 v2, -0x1

    shl-int/lit8 v3, p1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/lit16 v3, p2, 0xff

    or-int v1, v2, v3

    .line 262
    .local v1, set_level:I
    :try_start_1
    const-string v2, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTraceLevel( set_level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) call setTestModeNative()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    const/4 v2, 0x1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 265
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call setTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v5

    .line 266
    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #set_level:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
