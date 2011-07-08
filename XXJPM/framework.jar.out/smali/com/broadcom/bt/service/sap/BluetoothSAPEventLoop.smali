.class public Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothSAPEventLoop.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothSAPEventLoop"


# instance fields
.field private final BLUETOOTH_PERM:Ljava/lang/String;

.field private deviceAddr:Ljava/lang/String;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEnabled:Z

.field private mIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 80
    invoke-static {}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->classEventLoopInitNative()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/sap/BluetoothSAPService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 68
    iput v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCurState:I

    .line 72
    const-string v0, "android.permission.BLUETOOTH"

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->BLUETOOTH_PERM:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 90
    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mIsFinish:Z

    .line 91
    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mEnabled:Z

    .line 92
    iput v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCurState:I

    .line 93
    return-void
.end method

.method private static native classEventLoopInitNative()V
.end method

.method private native cleanupEventLoopNative()V
.end method

.method private native disableNative()V
.end method

.method private native enableNative()V
.end method

.method private native initEventLoopNative()V
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->disableNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothSAPEventLoop"

    const-string v2, "disableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 171
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->enableNative()V

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 174
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothSAPEventLoop"

    const-string v2, "enableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->finish()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mIsFinish:Z

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 140
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->cleanupEventLoopNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothSAPEventLoop"

    const-string v2, "Unable to cleanup SAP EventLoop service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 138
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->deviceAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->deviceAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 203
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "bluetooth_sap"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->initEventLoopNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnectStateChanged(B)V
    .locals 4
    .parameter "state"

    .prologue
    .line 207
    iget v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCurState:I

    if-eq v1, p1, :cond_0

    .line 208
    const-string v1, "BluetoothSAPEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectStateChanged: mCurState/state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCurState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    iput p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCurState:I

    .line 211
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 213
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 216
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onConnected(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->deviceAddr:Ljava/lang/String;

    .line 223
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->onConnectStateChanged(B)V

    .line 225
    iget-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 226
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 229
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;->onConnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 232
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 237
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .prologue
    .line 243
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->onConnectStateChanged(B)V

    .line 244
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->deviceAddr:Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 248
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;->onDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 254
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 259
    return-void
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->enable()V

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->disable()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->deviceAddr:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->onConnectStateChanged(B)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
