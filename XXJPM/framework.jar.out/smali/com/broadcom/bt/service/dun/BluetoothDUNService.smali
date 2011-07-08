.class public Lcom/broadcom/bt/service/dun/BluetoothDUNService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothDUNService.java"


# static fields
.field private static final DBG:Z = false

.field public static final INVALID_APP_ID:B = 0xft

.field public static final PORT_STATE_CLOSED:B = 0x3t

.field public static final PORT_STATE_LISTENING:B = 0x1t

.field public static final PORT_STATE_OPENED:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BluetoothDUNService"


# instance fields
.field private final BLUETOOTH_PERM:Ljava/lang/String;

.field private mAppId:B

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurState:I

.field private mDeviceAddr:Ljava/lang/String;

.field private mIsFinish:Z

.field final mPortState:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 90
    invoke-static {}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->classInitNative()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 79
    const-string v0, "android.permission.BLUETOOTH"

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->BLUETOOTH_PERM:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCurState:I

    .line 97
    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 98
    iput v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCurState:I

    .line 99
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native closeNative(B)V
.end method

.method private native disableNative()V
.end method

.method private native enableNative()V
.end method

.method private native initNative()V
.end method

.method private onConnectStateChanged(B)V
    .locals 3
    .parameter "state"

    .prologue
    .line 179
    iget v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCurState:I

    if-eq v1, p1, :cond_0

    .line 182
    iput p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCurState:I

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 186
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 189
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public close(B)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->closeNative(B)V

    .line 154
    return-void
.end method

.method public closeDunServer()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 194
    iget-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->close(B)V

    .line 195
    :cond_0
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
    .line 147
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->finish()V

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 150
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 128
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->cleanupNative()V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothDUNService"

    const-string v2, "Unable to cleanup DUN service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getAllPortStatus()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v1, v0

    .line 142
    monitor-exit v3

    .line 143
    return-object v1

    .line 142
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "bluetooth_dun"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->initNative()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDisableEvent()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onEnableEvent()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 160
    return-void
.end method

.method protected onPortStateChangeEvent(BBLjava/lang/String;)V
    .locals 6
    .parameter "appId"
    .parameter "portState"
    .parameter "address"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 203
    iput-object p3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 204
    iput-byte p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 205
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onConnectStateChanged(B)V

    .line 214
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 215
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 217
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;

    invoke-interface {v2, p1, p2, p3}, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;->onPortStateChangeEvent(BBLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 207
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 208
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onConnectStateChanged(B)V

    .line 209
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 210
    const/16 v2, 0xf

    iput-byte v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    goto :goto_0

    .line 223
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 224
    return-void

    .line 218
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 230
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->enableNative()V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->disableNative()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mDeviceAddr:Ljava/lang/String;

    .line 120
    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mAppId:B

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onConnectStateChanged(B)V

    .line 122
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 236
    :cond_0
    return-void
.end method
