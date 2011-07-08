.class public Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
.super Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;
.source "BluetoothDataGatewayService.java"


# static fields
.field public static final BLUETOOTH_DUN_DG_SERVICE_ID:B = 0x2t

.field public static final BLUETOOTH_FAX_DG_SERVICE_ID:B = 0x3t

.field public static final BLUETOOTH_SPP_CONNECTED:I = 0x2

.field public static final BLUETOOTH_SPP_CONNECTED_TO_HOST:I = 0x2

.field public static final BLUETOOTH_SPP_CONNECTING_TO_HOST:I = 0x4

.field public static final BLUETOOTH_SPP_CONNECTING_TO_HOST_FAILED:I = 0x5

.field public static final BLUETOOTH_SPP_DATA_RECEIVED:I = 0x7

.field public static final BLUETOOTH_SPP_DATA_SENT:I = 0x6

.field public static final BLUETOOTH_SPP_DG_SERVICE_ID:B = 0x1t

.field public static final BLUETOOTH_SPP_DISCONNECTED:I = 0x3

.field public static final BLUETOOTH_SPP_PORT_CREATED:I = 0x0

.field public static final BLUETOOTH_SPP_PORT_DISABLED:I = 0x8

.field public static final BLUETOOTH_SPP_PORT_ENABLED:I = 0x1

.field public static final BLUETOOTH_SPP_PORT_ID_INVALID:B = -0x1t

.field public static final BLUETOOTH_SPP_PORT_STATE_ERROR:I = -0x1

.field public static final BLUETOOTH_SPP_PORT_STATE_UNKNOWN:I = 0x64

.field private static final DATA_GATEWAY_DISABLED:I = 0x0

.field private static final DATA_GATEWAY_ENABLED:I = 0x1

.field public static final DATA_GATEWAY_MAX_SPP_PORT:I = 0x5

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDataGatewayService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataGatewayNativeData:I

.field private mIsFinish:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSppCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->classInitNative()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isAppService"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mContext:Landroid/content/Context;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    .line 176
    if-nez p2, :cond_0

    .line 177
    new-instance v0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService$1;-><init>(Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;)V

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupBluetoothDataGatewayDataNative()V
.end method

.method private native cleanupSerialPortNative(B)V
.end method

.method private native dataGatewayCloseNative(BB)V
.end method

.method private native dataGatewayDisableNative()V
.end method

.method private native dataGatewayEnableNative()V
.end method

.method private native dataGatewayListenNative(BBLjava/lang/String;B)V
.end method

.method private native dataGatewayOpenNative(Ljava/lang/String;BBLjava/lang/String;B)V
.end method

.method private native dataGatewayShutdownNative(BB)V
.end method

.method private native getSerialPortStatusNative(B)I
.end method

.method private native initBluetoothDataGatewayDataNative()V
.end method

.method private onDataArrivedOnPort(BB)V
    .locals 4
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 558
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Arrived on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 580
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 563
    .restart local p0
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortDataArrived(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 565
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortDataArrived() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDataGatewayClosed(BB)V
    .locals 4
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 530
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Closed on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    packed-switch p1, :pswitch_data_0

    .line 554
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 535
    .restart local p0
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortDisconnected(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 537
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortDisconnected() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDataGatewayEnabled()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "BluetoothDataGatewayService"

    const-string v1, "#### Data Gateway Enabled ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method private onDataGatewayListen(BB)V
    .locals 4
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 453
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Listen on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    packed-switch p1, :pswitch_data_0

    .line 475
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 458
    .restart local p0
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onSppServerPortEnabled(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onSppServerPortEnabled() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDataGatewayOpen(BBLjava/lang/String;)V
    .locals 4
    .parameter "serviceId"
    .parameter "appId"
    .parameter "bdAddress"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 504
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Connected on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    packed-switch p1, :pswitch_data_0

    .line 527
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 509
    .restart local p0
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2, p3}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortConnected(BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 511
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortConnectingToHost() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDataGatewayOpening(BB)V
    .locals 4
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 478
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Openning on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    packed-switch p1, :pswitch_data_0

    .line 501
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 483
    .restart local p0
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;->onPortConnectingToHost(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 485
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortConnectingToHost() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private native setSerialPortStatusNative(BI)V
.end method

.method private native sppReadNative(B)[B
.end method

.method private native sppWriteNative(BI[B)I
.end method

.method private native waitForDataOnPortNative(B)V
.end method


# virtual methods
.method public declared-synchronized cleanupSerialPort(B)V
    .locals 3
    .parameter "appId"

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->cleanupSerialPortNative(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    monitor-exit p0

    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "cleanupSerialPortNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 435
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayClose(BB)V
    .locals 3
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayCloseNative(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayCloseNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayDisable()V
    .locals 3

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayDisableNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayDisableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayEnable()V
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayEnableNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayEnableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayListen(BBLjava/lang/String;B)V
    .locals 3
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayListenNative(BBLjava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayListenNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    .locals 3
    .parameter "bdAddress"
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayOpenNative(Ljava/lang/String;BBLjava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayOpenNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayShutdown(BB)V
    .locals 3
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->dataGatewayShutdownNative(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayShutdownNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->finish()V

    .line 146
    invoke-super {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->finalize()V

    .line 147
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 135
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->cleanupBluetoothDataGatewayDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "Unable to cleanup data gateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFirstAvailableSerialPort()B
    .locals 5

    .prologue
    .line 228
    monitor-enter p0

    const/4 v2, -0x1

    .line 229
    .local v2, portState:I
    const/4 v1, 0x0

    .local v1, i:B
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 231
    :try_start_0
    invoke-direct {p0, v1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->getSerialPortStatusNative(B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 235
    :goto_1
    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    move v3, v1

    .line 240
    :goto_2
    monitor-exit p0

    return v3

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "BluetoothDataGatewayService"

    const-string v4, "getSerialPortStatusNative failed in getFirstAvailableSerialPort"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 229
    :cond_0
    add-int/lit8 v3, v1, 0x1

    int-to-byte v1, v3

    goto :goto_0

    .line 240
    :cond_1
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public declared-synchronized getSerialPortStatus(B)I
    .locals 3
    .parameter "appId"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->getSerialPortStatusNative(B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 407
    :goto_0
    monitor-exit p0

    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayShutdownNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    const/4 v1, -0x1

    goto :goto_0

    .line 404
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->initBluetoothDataGatewayDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V
    .locals 2
    .parameter "portId"
    .parameter "callback"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSerialPortStatus(BI)V
    .locals 3
    .parameter "appId"
    .parameter "status"

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->setSerialPortStatusNative(BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "setSerialPortStatusNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppRead(B)[B
    .locals 3
    .parameter "appId"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->sppReadNative(B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 376
    :goto_0
    monitor-exit p0

    return-object v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "sppReadNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    const/4 v1, 0x0

    goto :goto_0

    .line 373
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppWrite(BI[B)I
    .locals 3
    .parameter "appId"
    .parameter "length"
    .parameter "dataBuffer"

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->sppWriteNative(BI[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 359
    :goto_0
    monitor-exit p0

    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "sppWriteNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    const/4 v1, -0x1

    goto :goto_0

    .line 356
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterSppCallback(I)V
    .locals 2
    .parameter "portId"

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForDataOnPort(B)V
    .locals 3
    .parameter "appId"

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->waitForDataOnPortNative(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothDataGatewayService"

    const-string/jumbo v2, "waitForDataOnPort Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 390
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
