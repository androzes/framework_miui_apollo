.class public Lcom/broadcom/bt/service/hid/BluetoothHIDService;
.super Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;
.source "BluetoothHIDService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_HID_SERVICE:Ljava/lang/String; = "bluetooth_hid"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PERM_WARNING:Ljava/lang/String; = "Need BLUETOOTH_ADMIN permission"

.field private static final HH_STATUS_DB_FULL:I = 0x21

.field private static final HH_STATUS_DRIVER_ERR:I = 0x22

.field private static final HH_STATUS_ERR:I = 0x20

.field private static final HH_STATUS_OK:I = 0x0

.field private static final MESSAGE_CORRUPTED_INFO:I = 0x3

.field private static final MESSAGE_DISABLE_BT:I = 0x1

.field private static final MESSAGE_TOO_MANY_DEV:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothHIDService"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 92
    invoke-static {}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->classInitNative()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;-><init>()V

    .line 95
    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$1;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v1, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService$2;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 175
    iput-object p2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 176
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 182
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->initNative()V

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    .line 196
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/hid/BluetoothHIDService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/hid/BluetoothHIDService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/hid/BluetoothHIDService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->handleBtDisableMsg(I)V

    return-void
.end method

.method private native addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private declared-synchronized completeDisable()V
    .locals 3

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothHIDService"

    const-string v2, "HID profile has been disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disableNative()V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PROFILE_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.PROFILE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 217
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native connectHidNative(Ljava/lang/String;I)V
.end method

.method private native disableNative()V
.end method

.method private native disconnectHidNative(Ljava/lang/String;)V
.end method

.method private native enableNative()V
.end method

.method private declared-synchronized findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 595
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move-object v2, v3

    .line 604
    :goto_0
    monitor-exit p0

    return-object v2

    .line 599
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 600
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 601
    goto :goto_0

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    move-object v2, v3

    .line 604
    goto :goto_0

    .line 595
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private native getProtocolModeNative(Ljava/lang/String;)V
.end method

.method private native getReportNative(Ljava/lang/String;BBI)V
.end method

.method private declared-synchronized handleBtDisableMsg(I)V
    .locals 8
    .parameter "delayCount"

    .prologue
    const-string v5, "BluetoothHIDService"

    .line 226
    monitor-enter p0

    :try_start_0
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 229
    const-string v5, "BluetoothHIDService"

    const-string v6, "#### handleBtDisableMsg: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    const-string v5, "BluetoothHIDService"

    const-string v6, "handleBtDisableMsg: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 237
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 241
    :cond_1
    const/4 v1, 0x1

    .line 242
    .local v1, disconnectDone:Z
    :try_start_2
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 243
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 244
    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBtDisableMsg: device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 249
    :pswitch_0
    if-lez p1, :cond_2

    .line 250
    const/4 v1, 0x0

    goto :goto_1

    .line 253
    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 259
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_3
    if-eqz v1, :cond_4

    .line 260
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 261
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 262
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v5, v6, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 266
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 9

    .prologue
    const-string v5, "BluetoothHIDService"

    .line 271
    monitor-enter p0

    :try_start_0
    const-string v5, "BluetoothHIDService"

    const-string v6, "onBluetoothDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 274
    const-string v5, "BluetoothHIDService"

    const-string v6, "#### onBluetoothDisable: mDevices is null ####"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    const-string v5, "BluetoothHIDService"

    const-string v6, "onBluetoothDisable: mDevices is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 282
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 286
    :cond_1
    const/4 v1, 0x1

    .line 287
    .local v1, disconnectDone:Z
    :try_start_2
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 288
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 289
    .local v4, state:I
    const-string v5, "BluetoothHIDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBluetoothDisable: device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 293
    :pswitch_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 294
    const/4 v5, 0x3

    invoke-direct {p0, v0, v4, v5}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 295
    const/4 v1, 0x0

    .line 296
    goto :goto_1

    .line 298
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 303
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #state:I
    :cond_2
    if-eqz v1, :cond_3

    .line 304
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 305
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 306
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->completeDisable()V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 310
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    const-string v0, "BluetoothHIDService"

    .line 208
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothHIDService"

    const-string v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "BluetoothHIDService"

    const-string v1, "#### onBluetoothEnable: mDevices is not null ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    .line 213
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->enableNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidConnected(Ljava/lang/String;I)V
    .locals 7
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothHIDService"

    .line 507
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidConnected: address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 510
    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidConnected: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 514
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 515
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 516
    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidConnected: device = null, must be incoming connection."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 518
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 522
    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidConnected: device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-nez p2, :cond_3

    .line 525
    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 526
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_0

    .line 527
    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 530
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #state:I
    :cond_3
    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0x21

    if-ne v3, v4, :cond_4

    .line 531
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 533
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    shr-int/lit8 v5, p2, 0x8

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 534
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 536
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    const/16 v3, 0x22

    if-ne p2, v3, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 538
    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onHidDisabled(I)V
    .locals 3
    .parameter "status"

    .prologue
    const-string v0, "BluetoothHIDService"

    .line 499
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHidDisabled: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz p1, :cond_0

    .line 502
    const-string v0, "BluetoothHIDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops, failed to disable HID profile. status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidDisconnected(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 543
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidDisconnected: address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 546
    const-string v2, "BluetoothHIDService"

    const-string v3, "#### onHidDisconnected: mDevices = null ####"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 550
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 551
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 552
    const-string v2, "BluetoothHIDService"

    const-string v3, "onHidDisconnected: device = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 556
    .restart local v0       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 557
    .local v1, state:I
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHidDisconnected: device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-nez p2, :cond_0

    .line 560
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized onHidEnabled(I)V
    .locals 10
    .parameter "status"

    .prologue
    const-string v7, "BluetoothHIDService"

    .line 467
    monitor-enter p0

    :try_start_0
    const-string v7, "BluetoothHIDService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onHidEnabled: status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    if-eqz p1, :cond_1

    .line 470
    const-string v7, "BluetoothHIDService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops, failed to enable HID profile. status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 475
    const-string v7, "BluetoothHIDService"

    const-string v8, "Oops, onHidEnabled but BT is disabled."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 479
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->listHidInfo()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, hidList:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 484
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, addresses:[Ljava/lang/String;
    if-nez v1, :cond_3

    .line 486
    const-string v7, "BluetoothHIDService"

    const-string v8, "addresses = null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_3
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 491
    .local v0, address:Ljava/lang/String;
    iget-object v7, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v0}, Landroid/server/BluetoothService;->getHidInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, hidInfo:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 493
    invoke-direct {p0, v0, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->addHidInfoNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private declared-synchronized onHidInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "address"
    .parameter "info"

    .prologue
    const/4 v6, 0x3

    const-string v3, "BluetoothHIDService"

    .line 565
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1, p2}, Landroid/server/BluetoothService;->addHidInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 569
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 570
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 572
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 573
    const-string v3, "BluetoothHIDService"

    const-string v4, "#### onHidDisconnected: mDevices = null ####"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 565
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 577
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->findDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 578
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3

    .line 579
    const-string v3, "BluetoothHIDService"

    const-string v4, "onHidDisconnected: device = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :cond_3
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 584
    .local v2, state:I
    const-string v3, "BluetoothHIDService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHidDisconnected: device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-eq v2, v6, :cond_0

    if-eqz v2, :cond_0

    .line 588
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 589
    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private native sendDataNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setProtocolModeNative(Ljava/lang/String;B)V
.end method

.method private native setReportNative(Ljava/lang/String;BLjava/lang/String;)V
.end method

.method private setState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 437
    if-ne p3, p2, :cond_0

    .line 449
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState: device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    const-string v1, "com.broadcom.bt.service.hid.extra.STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native virtualUnplugHidNative(Ljava/lang/String;)V
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "BluetoothHIDService"

    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops, connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but BT is disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 348
    :goto_0
    monitor-exit p0

    return v1

    .line 326
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 327
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but mDevices is null ####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 328
    goto :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect new device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, state:I
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :goto_1
    if-eqz v0, :cond_3

    .line 342
    const-string v1, "BluetoothHIDService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 343
    goto :goto_0

    .line 338
    .end local v0           #state:I
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #state:I
    goto :goto_1

    .line 346
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->connectHidNative(Ljava/lang/String;I)V

    .line 347
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    .line 348
    goto/16 :goto_0

    .line 315
    .end local v0           #state:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but BT is disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    monitor-exit p0

    return-void

    .line 359
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 360
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### disconnect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but mDevices is null ####"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 363
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    const-string v2, "BluetoothHIDService"

    const-string v3, "disconnect: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 369
    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 377
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->disconnectHidNative(Ljava/lang/String;)V

    .line 378
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 373
    :pswitch_1
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 455
    .local v1, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 456
    iget-object v3, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 457
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 458
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 452
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 463
    .restart local v1       #devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getProtocolModeNative(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 1
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getReportNative(Ljava/lang/String;BBI)V

    .line 629
    return-void
.end method

.method public declared-synchronized getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move v1, v2

    .line 433
    :goto_0
    monitor-exit p0

    return v1

    .line 429
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 430
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_1

    move v1, v2

    .line 431
    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 425
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 1
    .parameter "device"
    .parameter "cData"

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->sendDataNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public declared-synchronized setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 1
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    .line 621
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setProtocolModeNative(Ljava/lang/String;B)V

    .line 622
    return-void
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    .locals 1
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setReportNative(Ljava/lang/String;BLjava/lang/String;)V

    .line 636
    return-void
.end method

.method public declared-synchronized virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHIDService"

    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualUnplug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, virtualUnplug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but BT is disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :goto_0
    monitor-exit p0

    return-void

    .line 389
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 390
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### virtualUnplug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but mDevices is null ####"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 393
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    const-string v2, "BluetoothHIDService"

    const-string/jumbo v3, "virtualUnplug: no such HID device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 399
    .local v1, state:I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, address:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 407
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->virtualUnplugHidNative(Ljava/lang/String;)V

    .line 408
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;->setState(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 403
    :pswitch_1
    const-string v2, "BluetoothHIDService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtualUnplug: no action, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
